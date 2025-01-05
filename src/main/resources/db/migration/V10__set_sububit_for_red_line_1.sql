INSERT INTO units (name, book_id) VALUES ('Welcome - Hello!', (SELECT book_id FROM books WHERE isbn = '978-3-12-546076-8'));
INSERT INTO units (name, book_id) VALUES ('Zoom in - In a park', (SELECT book_id FROM books WHERE isbn = '978-3-12-546076-8'));
INSERT INTO units (name, book_id) VALUES ('Unit 1 That''s me', (SELECT book_id FROM books WHERE isbn = '978-3-12-546076-8'));
INSERT INTO units (name, book_id) VALUES ('Unit 2 This is my school', (SELECT book_id FROM books WHERE isbn = '978-3-12-546076-8'));
INSERT INTO units (name, book_id) VALUES ('Unit 3 My free time', (SELECT book_id FROM books WHERE isbn = '978-3-12-546076-8'));
INSERT INTO units (name, book_id) VALUES ('Unit 4 Let''s have a party!', (SELECT book_id FROM books WHERE isbn = '978-3-12-546076-8'));
INSERT INTO units (name, book_id) VALUES ('Unit 5 Out and about', (SELECT book_id FROM books WHERE isbn = '978-3-12-546076-8'));
INSERT INTO units (name, book_id) VALUES ('Unit 6 Britain and the world', (SELECT book_id FROM books WHERE isbn = '978-3-12-546076-8'));

INSERT INTO sub_units (name, unit_id) VALUES (NULL, (SELECT unit_id FROM units WHERE name = 'Welcome - Hello!'));
INSERT INTO sub_units (name, unit_id) VALUES (NULL, (SELECT unit_id FROM units WHERE name = 'Zoom in - In a park'));

INSERT INTO sub_units (name, unit_id) VALUES ('Intro', (SELECT unit_id FROM units WHERE name = 'Unit 1 That''s me'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 1', (SELECT unit_id FROM units WHERE name = 'Unit 1 That''s me'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 2', (SELECT unit_id FROM units WHERE name = 'Unit 1 That''s me'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 3', (SELECT unit_id FROM units WHERE name = 'Unit 1 That''s me'));
INSERT INTO sub_units (name, unit_id) VALUES ('Text', (SELECT unit_id FROM units WHERE name = 'Unit 1 That''s me'));
INSERT INTO sub_units (name, unit_id) VALUES ('Listening skills', (SELECT unit_id FROM units WHERE name = 'Unit 1 That''s me'));

INSERT INTO sub_units (name, unit_id) VALUES (NULL, (SELECT unit_id FROM units WHERE name = 'Unit 2 This is my school'));
INSERT INTO sub_units (name, unit_id) VALUES ('Intro', (SELECT unit_id FROM units WHERE name = 'Unit 2 This is my school'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 1', (SELECT unit_id FROM units WHERE name = 'Unit 2 This is my school'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 2', (SELECT unit_id FROM units WHERE name = 'Unit 2 This is my school'));
INSERT INTO sub_units (name, unit_id) VALUES ('Text 1', (SELECT unit_id FROM units WHERE name = 'Unit 2 This is my school'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 3', (SELECT unit_id FROM units WHERE name = 'Unit 2 This is my school'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 4', (SELECT unit_id FROM units WHERE name = 'Unit 2 This is my school'));
INSERT INTO sub_units (name, unit_id) VALUES ('Text 2', (SELECT unit_id FROM units WHERE name = 'Unit 2 This is my school'));

INSERT INTO sub_units (name, unit_id) VALUES (NULL, (SELECT unit_id FROM units WHERE name = 'Unit 3 My free time'));
INSERT INTO sub_units (name, unit_id) VALUES ('Intro', (SELECT unit_id FROM units WHERE name = 'Unit 3 My free time'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 1', (SELECT unit_id FROM units WHERE name = 'Unit 3 My free time'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 2', (SELECT unit_id FROM units WHERE name = 'Unit 3 My free time'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 3', (SELECT unit_id FROM units WHERE name = 'Unit 3 My free time'));
INSERT INTO sub_units (name, unit_id) VALUES ('Text', (SELECT unit_id FROM units WHERE name = 'Unit 3 My free time'));

INSERT INTO sub_units (name, unit_id) VALUES ('Intro', (SELECT unit_id FROM units WHERE name = 'Unit 4 Let''s have a party!'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 1', (SELECT unit_id FROM units WHERE name = 'Unit 4 Let''s have a party!'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 2', (SELECT unit_id FROM units WHERE name = 'Unit 4 Let''s have a party!'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 3', (SELECT unit_id FROM units WHERE name = 'Unit 4 Let''s have a party!'));
INSERT INTO sub_units (name, unit_id) VALUES ('Text', (SELECT unit_id FROM units WHERE name = 'Unit 4 Let''s have a party!'));
INSERT INTO sub_units (name, unit_id) VALUES ('Writing skills', (SELECT unit_id FROM units WHERE name = 'Unit 4 Let''s have a party!'));

INSERT INTO sub_units (name, unit_id) VALUES ('Intro', (SELECT unit_id FROM units WHERE name = 'Unit 5 Out and about'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 1', (SELECT unit_id FROM units WHERE name = 'Unit 5 Out and about'));
INSERT INTO sub_units (name, unit_id) VALUES ('Text 1', (SELECT unit_id FROM units WHERE name = 'Unit 5 Out and about'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 2', (SELECT unit_id FROM units WHERE name = 'Unit 5 Out and about'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 3', (SELECT unit_id FROM units WHERE name = 'Unit 5 Out and about'));
INSERT INTO sub_units (name, unit_id) VALUES ('Text 2', (SELECT unit_id FROM units WHERE name = 'Unit 5 Out and about'));
INSERT INTO sub_units (name, unit_id) VALUES ('Speaking skills', (SELECT unit_id FROM units WHERE name = 'Unit 5 Out and about'));

INSERT INTO sub_units (name, unit_id) VALUES (NULL, (SELECT unit_id FROM units WHERE name = 'Unit 6 Britain and the world'));
INSERT INTO sub_units (name, unit_id) VALUES ('Intro', (SELECT unit_id FROM units WHERE name = 'Unit 6 Britain and the world'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 1', (SELECT unit_id FROM units WHERE name = 'Unit 6 Britain and the world'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 2', (SELECT unit_id FROM units WHERE name = 'Unit 6 Britain and the world'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 3', (SELECT unit_id FROM units WHERE name = 'Unit 6 Britain and the world'));
INSERT INTO sub_units (name, unit_id) VALUES ('Text', (SELECT unit_id FROM units WHERE name = 'Unit 6 Britain and the world'));


UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name IS NULL AND unit_id = (SELECT unit_id FROM units WHERE name = 'Welcome - Hello!')) WHERE page_number IN (8, 9);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name IS NULL AND unit_id = (SELECT unit_id FROM units WHERE name = 'Zoom in - In a park')) WHERE page_number IN (10, 11);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Intro' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 1 That''s me')) WHERE page_number IN (12, 13);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 1' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 1 That''s me')) WHERE page_number IN (14, 15, 16);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 2' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 1 That''s me')) WHERE page_number IN (17, 18, 19);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 3' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 1 That''s me')) WHERE page_number IN (20, 21);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Text' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 1 That''s me')) WHERE page_number IN (24, 25, 26);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Listening skills' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 1 That''s me')) WHERE page_number = 31;
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name IS NULL AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 2 This is my school')) WHERE page_number = 32 AND text_side_b = 'school';
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Intro' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 2 This is my school')) WHERE page_number IN (32, 33) AND text_side_b != 'school';
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 1' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 2 This is my school')) WHERE page_number IN (34, 35);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 2' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 2 This is my school')) WHERE page_number IN (36, 37, 38);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Text 1' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 2 This is my school')) WHERE page_number = 39;
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 3' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 2 This is my school')) WHERE page_number IN (40, 41, 42);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 4' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 2 This is my school')) WHERE page_number IN (43, 44);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Text 2' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 2 This is my school')) WHERE page_number = 46;
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name IS NULL AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 3 My free time')) WHERE page_number = 52 AND text_side_b = 'free time';
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Intro' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 3 My free time')) WHERE page_number IN (52, 53);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 1' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 3 My free time')) WHERE page_number IN (54, 55);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 2' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 3 My free time')) WHERE page_number IN (56, 57, 58);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 3' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 3 My free time')) WHERE page_number IN (61, 62, 63);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Text' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 3 My free time')) WHERE page_number IN (64, 65);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Intro' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 4 Let''s have a party!')) WHERE page_number IN (70, 71);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 1' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 4 Let''s have a party!')) WHERE page_number IN (72, 74);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 2' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 4 Let''s have a party!')) WHERE page_number = 76;
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 3' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 4 Let''s have a party!')) WHERE page_number IN (79, 80, 81);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Text' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 4 Let''s have a party!')) WHERE page_number IN (82, 83, 84);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Writing skills' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 4 Let''s have a party!')) WHERE page_number = 88;
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Intro' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 5 Out and about')) WHERE page_number IN (90, 91);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 1' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 5 Out and about')) WHERE page_number IN (92, 93, 94);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Text 1' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 5 Out and about')) WHERE page_number = 95;
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 2' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 5 Out and about')) WHERE page_number IN (96, 98);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 3' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 5 Out and about')) WHERE page_number IN (100, 101, 102);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Text 2' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 5 Out and about')) WHERE page_number IN (103, 104);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Speaking skills' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 5 Out and about')) WHERE page_number IN (108, 109);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name IS NULL AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 6 Britain and the world')) WHERE page_number = 110 AND text_side_b = 'world';
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Intro' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 6 Britain and the world')) WHERE page_number IN (110, 111) AND text_side_b != 'world';
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 1' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 6 Britain and the world')) WHERE page_number = 112;
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 2' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 6 Britain and the world')) WHERE page_number IN (115, 118);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 3' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 6 Britain and the world')) WHERE page_number IN (119, 120, 121);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Text' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 6 Britain and the world')) WHERE page_number IN (122, 123);

-- This wasn't working since the pages in 978-3-12-547376-8 and in the vocab list are different
-- DELETE FROM sub_units WHERE name IS NULL AND unit_id = (SELECT unit_id FROM units WHERE name IS NULL AND book_id = (SELECT book_id FROM books WHERE isbn = '978-3-12-546076-8'));
-- DELETE FROM units WHERE name IS NULL AND book_id = (SELECT book_id FROM books WHERE isbn = '978-3-12-546076-8');