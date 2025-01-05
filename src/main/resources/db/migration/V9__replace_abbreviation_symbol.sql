UPDATE cards
SET text_side_a = REPLACE(text_side_a, '’', '''')
WHERE text_side_a LIKE '%’%';

UPDATE cards
SET text_side_b = REPLACE(text_side_b, '’', '''')
WHERE text_side_b LIKE '%’%';