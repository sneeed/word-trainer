# word-trainer

This is a simple vocabulary trainer. It uses publicly available vocabulary lists of Bavarian school books.
I wrote the app to practice my Spring Boot and Thymeleaf skills.
It was successfully used by my daughter in grade 6 before too many bugs and feature requests collided with too little spare time.

**user credentials:**
 - username: user, password: user

**cool features:**
- periodically creates AI-generated English audio for words/sentences (and updates these audios if cards are changed)
- accepts (manually defined) synonyms/alternative spellings
- better diff for wrongly entered translations than most other apps
- uses original vocabulary lists of school books
- adds new vocabulary in interval to make sure all words are added till summer break
- keep Heroku dyno awake so it does not need time to wake up
- repetition intervals can be changed by environment variable
- extended logging
- feedback form to report faulty cards
- uses Renovate to automatically update dependencies

**things to improve:**
- write more unit tests
- improve UI
- use client-side rendering framework like React or Angular
- fetch synonyms/alternative spellings dynamically from Thesaurus API
- improve loading times by using Spring Boot Caching
- load vocabulary from JSON files
- improve TestContainers load time
- shown diff if input was wrong could be further improved
- use a more sophisticated algorithm to schedule repetitions (e.g. [FSRS](https://en.wikipedia.org/wiki/Spaced_repetition#Algorithms))
- add gamification (points/streaks/avatars)
- more (relevant) statistics

## TODO
- before adding admin operations (e.g. removing/adding cards) change/remove test users

## Connect to db
Local: `docker exec -it word-trainer-postgres psql -U word-trainer`\
Test: `heroku pg:psql -a word-trainer-test`

Run tests and generate JaCoCo report: `mvn clean test`

## Adding new cards
### converting
* … --> ...
* ' --> ''
* ’ --> ''

### add more possible solutions
* (sg)
* (pl)
* a/ (e.g. a/one hundred)
* to do, did, done --> move into separate cards
* You're welcome. --> also accept 'You are welcome.'

## Database backups and moving

### move database to a new provider (e.g. ElephantSql to Heroku Postgres)
1. download sql-file from old provider (was in the lzop backup over UI) [source](https://www.jucktion.com/dev/postgresql-elephantsql-to-heroku/)
1. start app and let Flyway migrations happen
1. `heroku pg:psql --app app-name < db.sql`
1. problem is that somehow the `is_approved` column of `cards` is not updated correctly, so we have to check `select is_approved, count(*) from cards group by is_approved;` and then probably do `word-trainer-live::DATABASE=> update cards set is_approved = true where card_id in (select distinct card_id from solve_attempts where user_id = 5);`

### pg_backup and restore
1. `pg_dump -Fp --no-acl --no-owner <DATABASE_CONNECTION_STRING > mydb.dump`
2. `docker exec -i word-trainer-postgres psql -U word-trainer -d word-trainer < mydb.dump`

### heroku postgres backup
`heroku pg:backups:capture -a word-trainer-live`

