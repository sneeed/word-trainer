-- to hold
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to hold');
UPDATE cards
SET is_approved = TRUE
WHERE card_id IN (SELECT card_id FROM card_contents WHERE content = 'held');

-- to keep
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to keep');
UPDATE cards
SET is_approved = TRUE
WHERE card_id IN (SELECT card_id FROM card_contents WHERE content = 'kept');

-- to know
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to know');

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('knew', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kennen; wissen <i>(simple past)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('known', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kennen; wissen <i>(past participle)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to leave
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to leave');
UPDATE cards
SET is_approved = TRUE
WHERE card_id IN (SELECT card_id FROM card_contents WHERE content = 'left');

-- to loose
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to loose');
UPDATE cards
SET is_approved = TRUE
WHERE card_id IN (SELECT card_id FROM card_contents WHERE content = 'lost');

-- to make
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to make');

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('made', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('machen; tun; erstellen; bilden; hier: bauen <i>(simple past)</i>', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('made', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('machen; tun; erstellen; bilden; hier: bauen <i>(past participle)</i>', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to meet
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to meet');

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('met', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('(sich) treffen; kennen lernen <i>(simple past)</i>', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('met', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('(sich) treffen; kennen lernen <i>(past participle)</i>', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to pay
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to pay');
UPDATE cards
SET is_approved = TRUE
WHERE card_id IN (SELECT card_id FROM card_contents WHERE content = 'paid');

-- to put
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to put');

UPDATE cards
SET is_approved = TRUE
WHERE card_id IN (SELECT card_id FROM card_contents WHERE content = 'put');

-- to read
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to read');

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('read', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('lesen <i>(simple past)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('read', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('lesen <i>(past participle)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to ride
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to ride');

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('rode', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fahren; reiten <i>(simple past)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ridden', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fahren; reiten <i>(past participle)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to run
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to run; ran');

UPDATE card_contents
SET content = 'to run'
WHERE content = 'to run; ran';

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ran', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('rennen; laufen; fahren <i>(simple past)</i>', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('run', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('rennen; laufen; fahren <i>(past participle)</i>', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to say
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to say');

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('said', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sagen; sprechen <i>(simple past)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('said', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sagen; sprechen <i>(past participle)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to see
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to see');

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('saw', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sehen <i>(simple past)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('seen', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sehen <i>(past participle)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to sell
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to sell');

UPDATE cards
SET is_approved = TRUE
WHERE card_id IN (SELECT card_id FROM card_contents WHERE content = 'sold');

-- to send
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to send');

UPDATE cards
SET is_approved = TRUE
WHERE card_id IN (SELECT card_id FROM card_contents WHERE content = 'sent');

-- to shine
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to shine');

UPDATE cards
SET is_approved = TRUE
WHERE card_id IN (SELECT card_id FROM card_contents WHERE content = 'shone');

-- to sing
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to sing');

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sang', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('singen <i>(simple past)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sung', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('singen <i>(past participle)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to sit
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to sit (down)');

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sat', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sitzen; sich hinsetzen; sich setzen <i>(simple past)</i>', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sat', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sitzen; sich hinsetzen; sich setzen <i>(past participle)</i>', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to sleep
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to sleep');

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('slept', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schlafen <i>(simple past)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('slept', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schlafen <i>(past participle)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to spend
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to spend, spent');

UPDATE card_contents
SET content = 'to spend'
WHERE content = 'to spend, spent';

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('spent', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ausgeben; verbringen <i>(simple past)</i>', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('spent', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ausgeben; verbringen <i>(past participle)</i>', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to stand
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to stand');

UPDATE cards
SET is_approved = TRUE
WHERE card_id IN (SELECT card_id FROM card_contents WHERE content = 'stood');

-- to steal
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to steal, stole');

UPDATE card_contents
SET content = 'to steal'
WHERE content = 'to steal, stole';

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('stole', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('stehlen <i>(simple past)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('stolen', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('stehlen <i>(past participle)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to swim
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to swim');

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('swam', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schwimmen <i>(simple past)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('swum', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schwimmen <i>(past participle)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to take
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to take');

UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'took');

UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'taken');

-- to teach
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to teach');

UPDATE cards
SET is_approved = TRUE
WHERE card_id IN (SELECT card_id FROM card_contents WHERE content = 'taught');

-- to tell
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to tell');

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('told', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('erzählen; sagen <i>(simple past)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('told', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('erzählen; sagen <i>(past participle)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to think
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to think');

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('thought', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('denken; glauben <i>(simple past)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('thought', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('denken; glauben <i>(past participle)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to wear
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to wear');

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('wore', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('anhaben; tragen <i>(simple past)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('wore', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('anhaben; tragen <i>(past participle)</i>', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to win
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to win');

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('won', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('gewinnen; siegen <i>(simple past)</i>', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('won', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('gewinnen; siegen <i>(past participle)</i>', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to write
UPDATE cards
SET is_approved = TRUE
WHERE card_id IN (SELECT card_id FROM card_contents WHERE content = 'to write');

UPDATE cards
SET is_approved = TRUE
WHERE card_id IN (SELECT card_id FROM card_contents WHERE content = 'wrote');

UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'written');