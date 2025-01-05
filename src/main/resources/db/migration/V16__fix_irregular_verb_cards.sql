-- to be

UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to be' AND language = 'en' LIMIT 1);

UPDATE card_contents
SET content = 'was'
WHERE content = 'was/were'
  AND language = 'en';

UPDATE card_contents
SET content = 'sein (simple past, 1./3. Person Singular)'
WHERE content = 'simple past von to be (sein)'
  AND language = 'de';

INSERT INTO cards (page_number, sub_unit_id, is_approved)
    (SELECT page_number, sub_unit_id, is_approved
     FROM cards
     WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'was' AND language = 'en' LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('were', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sein (simple past, 2. Person Singular/alle Personen Plural)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('been', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sein (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to buy

UPDATE card_contents
SET content = 'kaufen (simple past)'
WHERE content = 'simple past von to buy (kaufen)'
  AND language = 'de';

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bought', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kaufen (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to come

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('came', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kommen (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('come', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kommen (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to do

UPDATE card_contents
SET content = 'machen (simple past)'
WHERE content = 'simple past von to do (machen)';

-- to drink
INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('drank', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('trinken (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('drunk', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('trinken (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to eat

UPDATE card_contents
SET content = 'essen (simple past)'
WHERE content = 'simple past von to eat (essen)';

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('eaten', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('essen (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to fall

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fell', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fallen (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fallen', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fallen (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to feed

UPDATE card_contents
SET content = 'to feed'
WHERE content = 'to feed, fed';

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fed', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('füttern (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fed', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('füttern (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to feel

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('felt', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fühlen (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('felt', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fühlen (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to find

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('found', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('finden (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('found', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('finden (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to get

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('got', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bekommen; werden; kommen (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('got', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bekommen; werden; kommen (past participle)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to give

UPDATE card_contents
SET content = 'geben (simple past)'
WHERE content = 'simple past von to give (geben)';

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('given', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('geben (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to go
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to go' AND language = 'en' LIMIT 1);

UPDATE card_contents
SET content = 'gehen (simple past)'
WHERE content = 'simple past von to go (gehen)'
  AND language = 'en';

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('gone', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('gehen (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to have got

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('had got', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('haben (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('had got', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('haben (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- to hear

UPDATE card_contents
SET content = 'to hear'
WHERE content = 'to hear, heard'
  AND language = 'en';

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('heard', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hören (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('heard', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hören (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));