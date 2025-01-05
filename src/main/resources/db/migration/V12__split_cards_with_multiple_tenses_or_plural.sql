-- split card 'child (sg), children (pl)' into two cards

DELETE
FROM card_contents
WHERE card_id = (SELECT card_id
                 FROM card_contents
                 WHERE content = 'child (sg), children (pl)'
                 LIMIT 1);

DELETE
FROM cards
WHERE card_id = (SELECT card_id
                 FROM card_contents
                 WHERE content = 'child (sg), children (pl)');

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (16,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 2'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 Welcome to London!')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('child', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('Kind', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (16,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 2'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 Welcome to London!')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('children', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('Kinder', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

-- split card 'to write, wrote, written' into three cards

DELETE
FROM card_contents
WHERE card_id = (SELECT card_id
                 FROM card_contents
                 WHERE content = 'to write, wrote, written'
                 LIMIT 1);

DELETE
FROM cards
WHERE card_id = (SELECT card_id
                 FROM card_contents
                 WHERE content = 'to write, wrote, written');

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (17,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 3'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 Welcome to London!')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('to write', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('schreiben', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (17,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 3'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 Welcome to London!')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('wrote', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('schreiben (simple past)', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('schreiben', 'de', 2,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('schrieb', 'de', 3,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (17,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 3'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 Welcome to London!')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('written', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('schreiben (past participle)', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('schreiben', 'de', 2,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('geschrieben', 'de', 3,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

-- split card 'to do, did, done' into three cards

DELETE
FROM card_contents
WHERE card_id = (SELECT card_id
                 FROM card_contents
                 WHERE content = 'to do, did, done'
                 LIMIT 1);

DELETE
FROM cards
WHERE card_id = (SELECT card_id
                 FROM card_contents
                 WHERE content = 'to do, did, done');

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (17,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 3'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 Welcome to London!')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('to do', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('machen; tun', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (17,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 3'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 Welcome to London!')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('did', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('machen; tun (simple past)', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('machen; tun', 'de', 2,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('machte; tat', 'de', 3,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (17,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 3'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 Welcome to London!')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('done', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('machen; tun (past participle)', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('machen; tun', 'de', 2,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('gemacht; getan', 'de', 3,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

-- split card 'to take, took, taken' into three cards

DELETE
FROM card_contents
WHERE card_id = (SELECT card_id
                 FROM card_contents
                 WHERE content = 'to take, took, taken'
                 LIMIT 1);

DELETE
FROM cards
WHERE card_id = (SELECT card_id
                 FROM card_contents
                 WHERE content = 'to take, took, taken');

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (12,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 1'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 Welcome to London!')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('to take', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('nehmen; mitnehmen', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (12,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 1'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 Welcome to London!')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('took', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('nehmen; mitnehmen (simple past)', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('nehmen; mitnehmen', 'de', 2,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('nahm; nahm mit', 'de', 3,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (12,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 1'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 Welcome to London!')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('taken', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('nehmen; mitnehmen (past participle)', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('nehmen; mitnehmen', 'de', 2,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('genommen; mitgenommen', 'de', 3,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

-- split card 'Hi., Hello.' into two cards

DELETE
FROM card_contents
WHERE card_id = (SELECT card_id
                 FROM card_contents
                 WHERE content = 'Hi., Hello.'
                 LIMIT 1);

DELETE
FROM cards
WHERE card_id = (SELECT card_id
                 FROM card_contents
                 WHERE content = 'Hi., Hello.');

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (8,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name IS NULL
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 Welcome to London!')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('Hi.', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('Hi.', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (8,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name IS NULL
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 Welcome to London!')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('Hello.', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('Hallo.', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

-- split card 'mouse (sg) , mice (pl)' into two cards

DELETE
FROM card_contents
WHERE card_id = (SELECT card_id
                 FROM card_contents
                 WHERE content = 'mouse (sg) , mice (pl)'
                 LIMIT 1);

DELETE
FROM cards
WHERE card_id = (SELECT card_id
                 FROM card_contents
                 WHERE content = 'mouse (sg) , mice (pl)');

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (17,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 2'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 That''s me')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('mouse', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('Maus', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (17,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 2'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 That''s me')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('mice', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('Mäuse', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

-- split card 'fish (sg) , fish (pl)' into two cards

DELETE
FROM card_contents
WHERE card_id = (SELECT card_id
                 FROM card_contents
                 WHERE content = 'fish (sg) , fish (pl)'
                 LIMIT 1);

DELETE
FROM cards
WHERE card_id = (SELECT card_id
                 FROM card_contents
                 WHERE content = 'fish (sg) , fish (pl)');

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (17,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 2'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 That''s me')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('fish (Singular)', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('fish', 'en', 2,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('Fisch', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (17,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 2'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 That''s me')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('fish (Plural)', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('fish', 'en', 2,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('Fische', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

-- split card 'shelf (sg) , shelves (pl)' into two cards

DELETE
FROM card_contents
WHERE card_id = (SELECT card_id
                 FROM card_contents
                 WHERE content = 'shelf (sg) , shelves (pl)'
                 LIMIT 1);

DELETE
FROM cards
WHERE card_id = (SELECT card_id
                 FROM card_contents
                 WHERE content = 'shelf (sg) , shelves (pl)');

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (20,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 3'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 That''s me')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('shelf', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('Regal', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO cards (page_number, sub_unit_id, is_approved)
VALUES (20,
        (SELECT sub_unit_id
         FROM sub_units
         WHERE name = 'Topic 3'
           AND unit_id = (SELECT unit_id
                          FROM units
                          WHERE name = 'Unit 1 That''s me')),
        TRUE);

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('shelves', 'en', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));

INSERT INTO card_contents(content, language, priority, card_id)
VALUES ('Regale', 'de', 1,
        (SELECT card_id
         FROM cards
         ORDER BY card_id DESC
         LIMIT 1));