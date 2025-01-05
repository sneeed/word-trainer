-- reset sub_unit_id for all cards
UPDATE cards
SET sub_unit_id = NULL;

-- create placeholder units and subunits for red line 1 and 2
INSERT INTO units (name, book_id)
VALUES ('red_line_1_no_unit_yet_assigned', (SELECT book_id FROM books WHERE name = 'Red Line 1'));

INSERT INTO units (name, book_id)
VALUES ('red_line_2_no_unit_yet_assigned', (SELECT book_id FROM books WHERE name = 'Red Line 2'));

INSERT INTO sub_units (name, unit_id)
VALUES ('red_line_1_no_subunit_yet_assigned',
        (SELECT unit_id FROM units WHERE name = 'red_line_1_no_unit_yet_assigned'));

INSERT INTO sub_units (name, unit_id)
VALUES ('red_line_2_no_subunit_yet_assigned',
        (SELECT unit_id FROM units WHERE name = 'red_line_2_no_unit_yet_assigned'));

-- assign cards to correct books by assigning it to placeholder subunit
UPDATE cards
SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'red_line_2_no_subunit_yet_assigned')
WHERE card_id <= (SELECT card_id FROM card_contents WHERE content = 'to happen');

UPDATE cards
SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'red_line_1_no_subunit_yet_assigned')
WHERE card_id > (SELECT card_id FROM card_contents WHERE content = 'to happen')
  AND card_id <= (SELECT card_id FROM card_contents WHERE content = 'headteacher');

UPDATE cards
SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'red_line_2_no_subunit_yet_assigned')
WHERE card_id > (SELECT card_id FROM card_contents WHERE content = 'headteacher')
  AND card_id <= (SELECT card_id FROM card_contents WHERE content = 'taken');

UPDATE cards
SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'red_line_1_no_subunit_yet_assigned')
WHERE card_id > (SELECT card_id FROM card_contents WHERE content = 'taken')
  AND card_id < (SELECT card_id FROM card_contents WHERE content = 'to have to');

UPDATE cards
SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'red_line_2_no_subunit_yet_assigned')
WHERE card_id >= (SELECT card_id FROM card_contents WHERE content = 'to have to');
-- at the end some simple past and past participle form from red line 2 which were not in the pdf