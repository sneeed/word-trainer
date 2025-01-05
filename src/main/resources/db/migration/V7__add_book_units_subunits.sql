INSERT INTO books (name, isbn) VALUES ('Red Line 2', '978-3-12-546077-5');

INSERT INTO units (name, book_id) VALUES ('Welcome back - Hello again!', (SELECT book_id FROM books WHERE isbn = '978-3-12-546077-5'));
INSERT INTO units (name, book_id) VALUES ('Unit 1 Welcome to London!', (SELECT book_id FROM books WHERE isbn = '978-3-12-546077-5'));
INSERT INTO units (name, book_id) VALUES ('Unit 2 Life in London', (SELECT book_id FROM books WHERE isbn = '978-3-12-546077-5'));
INSERT INTO units (name, book_id) VALUES ('Unit 3 Adventures in Wales', (SELECT book_id FROM books WHERE isbn = '978-3-12-546077-5'));
INSERT INTO units (name, book_id) VALUES ('Unit 4 What''s up in Scotland?', (SELECT book_id FROM books WHERE isbn = '978-3-12-546077-5'));
INSERT INTO units (name, book_id) VALUES ('Unit 5 Let''s go to the USA', (SELECT book_id FROM books WHERE isbn = '978-3-12-546077-5'));
INSERT INTO units (name, book_id) VALUES ('Unit 6 Teenage life in the USA', (SELECT book_id FROM books WHERE isbn = '978-3-12-546077-5'));

INSERT INTO sub_units (name, unit_id) VALUES (NULL, (SELECT unit_id FROM units WHERE name = 'Welcome back - Hello again!'));

INSERT INTO sub_units (name, unit_id) VALUES ('Intro', (SELECT unit_id FROM units WHERE name = 'Unit 1 Welcome to London!'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 1', (SELECT unit_id FROM units WHERE name = 'Unit 1 Welcome to London!'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 2', (SELECT unit_id FROM units WHERE name = 'Unit 1 Welcome to London!'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 3', (SELECT unit_id FROM units WHERE name = 'Unit 1 Welcome to London!'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 4', (SELECT unit_id FROM units WHERE name = 'Unit 1 Welcome to London!'));
INSERT INTO sub_units (name, unit_id) VALUES ('Text', (SELECT unit_id FROM units WHERE name = 'Unit 1 Welcome to London!'));

INSERT INTO sub_units (name, unit_id) VALUES ('Intro', (SELECT unit_id FROM units WHERE name = 'Unit 2 Life in London'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 1', (SELECT unit_id FROM units WHERE name = 'Unit 2 Life in London'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 2', (SELECT unit_id FROM units WHERE name = 'Unit 2 Life in London'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 3', (SELECT unit_id FROM units WHERE name = 'Unit 2 Life in London'));
INSERT INTO sub_units (name, unit_id) VALUES ('Text', (SELECT unit_id FROM units WHERE name = 'Unit 2 Life in London'));
INSERT INTO sub_units (name, unit_id) VALUES ('Reading skills', (SELECT unit_id FROM units WHERE name = 'Unit 2 Life in London'));

INSERT INTO sub_units (name, unit_id) VALUES ('Intro', (SELECT unit_id FROM units WHERE name = 'Unit 3 Adventures in Wales'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 1', (SELECT unit_id FROM units WHERE name = 'Unit 3 Adventures in Wales'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 2', (SELECT unit_id FROM units WHERE name = 'Unit 3 Adventures in Wales'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 3', (SELECT unit_id FROM units WHERE name = 'Unit 3 Adventures in Wales'));
INSERT INTO sub_units (name, unit_id) VALUES ('Text', (SELECT unit_id FROM units WHERE name = 'Unit 3 Adventures in Wales'));
INSERT INTO sub_units (name, unit_id) VALUES ('Speaking Skills', (SELECT unit_id FROM units WHERE name = 'Unit 3 Adventures in Wales'));

INSERT INTO sub_units (name, unit_id) VALUES ('Intro', (SELECT unit_id FROM units WHERE name = 'Unit 4 What''s up in Scotland?'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 1', (SELECT unit_id FROM units WHERE name = 'Unit 4 What''s up in Scotland?'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 2', (SELECT unit_id FROM units WHERE name = 'Unit 4 What''s up in Scotland?'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 3', (SELECT unit_id FROM units WHERE name = 'Unit 4 What''s up in Scotland?'));
INSERT INTO sub_units (name, unit_id) VALUES ('Text 2', (SELECT unit_id FROM units WHERE name = 'Unit 4 What''s up in Scotland?'));

INSERT INTO sub_units (name, unit_id) VALUES ('Intro', (SELECT unit_id FROM units WHERE name = 'Unit 5 Let''s go to the USA'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 1', (SELECT unit_id FROM units WHERE name = 'Unit 5 Let''s go to the USA'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 2', (SELECT unit_id FROM units WHERE name = 'Unit 5 Let''s go to the USA'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 3', (SELECT unit_id FROM units WHERE name = 'Unit 5 Let''s go to the USA'));
INSERT INTO sub_units (name, unit_id) VALUES ('Text', (SELECT unit_id FROM units WHERE name = 'Unit 5 Let''s go to the USA'));
INSERT INTO sub_units (name, unit_id) VALUES ('Writing Skills', (SELECT unit_id FROM units WHERE name = 'Unit 5 Let''s go to the USA'));

INSERT INTO sub_units (name, unit_id) VALUES ('Intro', (SELECT unit_id FROM units WHERE name = 'Unit 6 Teenage life in the USA'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 1', (SELECT unit_id FROM units WHERE name = 'Unit 6 Teenage life in the USA'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 2', (SELECT unit_id FROM units WHERE name = 'Unit 6 Teenage life in the USA'));
INSERT INTO sub_units (name, unit_id) VALUES ('Topic 3', (SELECT unit_id FROM units WHERE name = 'Unit 6 Teenage life in the USA'));
INSERT INTO sub_units (name, unit_id) VALUES ('Text', (SELECT unit_id FROM units WHERE name = 'Unit 6 Teenage life in the USA'));

UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name IS NULL AND unit_id = (SELECT unit_id FROM units WHERE name = 'Welcome back - Hello again!')) WHERE page_number = 8;
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Intro' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 1 Welcome to London!')) WHERE page_number IN (10, 11);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 1' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 1 Welcome to London!')) WHERE page_number IN (12, 15);
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 2' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 1 Welcome to London!')) WHERE page_number = 16;
UPDATE cards SET sub_unit_id = (SELECT sub_unit_id FROM sub_units WHERE name = 'Topic 3' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 1 Welcome to London!')) WHERE page_number = 17;

DELETE FROM sub_units WHERE name = 'Come on, Em!' AND unit_id = (SELECT unit_id FROM units WHERE name = 'Unit 1' AND book_id = (SELECT book_id FROM books WHERE isbn = '978-3-12-803020-3'));
DELETE FROM units WHERE name = 'Unit 1' AND book_id = (SELECT book_id FROM books WHERE isbn = '978-3-12-803020-3');
DELETE FROM books WHERE isbn = '978-3-12-803020-3';