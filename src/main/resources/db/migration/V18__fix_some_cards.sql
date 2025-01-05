-- Bye., Goodbye.

UPDATE card_contents
SET card_id = (SELECT card_id FROM card_contents WHERE content = 'Bye., Goodbye.')
WHERE content = 'Goodbye.';

UPDATE card_contents
SET card_id = (SELECT card_id FROM card_contents WHERE content = 'Bye., Goodbye.')
WHERE content = 'Bye.';

-- shelf

DELETE
FROM card_contents
WHERE card_id IS NULL
  AND content LIKE '%shelf%';

-- have/has got
UPDATE card_contents
SET content = 'besitzen; haben (1./2. Person Singular, Plural)'
WHERE content = 'besitzen; haben';

UPDATE card_contents
SET content = 'have got'
WHERE content = 'have/has got';

DELETE
FROM card_contents
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'have got' LIMIT 1)
  AND priority > 1;

INSERT INTO cards (is_approved)
VALUES (TRUE);

INSERT INTO card_contents (card_id, content, language, priority)
VALUES ((SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1), 'has got', 'en', 1);

INSERT INTO card_contents (card_id, content, language, priority)
VALUES ((SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1), 'besitzen; haben (3. Person Singular)', 'de', 1);
