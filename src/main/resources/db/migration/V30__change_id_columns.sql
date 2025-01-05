ALTER TABLE books
    RENAME COLUMN book_id TO id;

ALTER TABLE card_contents
    RENAME COLUMN card_content_id TO id;

ALTER TABLE cards
    RENAME COLUMN card_id TO id;

ALTER TABLE progress
    RENAME COLUMN progress_id TO id;

ALTER TABLE roles
    RENAME COLUMN role_id TO id;

ALTER TABLE solve_attempts
    RENAME COLUMN solve_attempt_id TO id;

ALTER TABLE sub_units
    RENAME COLUMN sub_unit_id TO id;

ALTER TABLE units
    RENAME COLUMN unit_id TO id;

ALTER TABLE users
    RENAME COLUMN user_id TO id;