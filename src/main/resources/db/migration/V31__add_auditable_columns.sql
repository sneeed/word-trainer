ALTER TABLE books
    ADD created_by VARCHAR(255);

ALTER TABLE books
    ADD created_on TIMESTAMP WITHOUT TIME ZONE;

UPDATE books
SET created_on = '2024-01-01 00:00:00'
WHERE created_on IS NULL;

ALTER TABLE books
    ALTER COLUMN created_on SET NOT NULL;

ALTER TABLE books
    ADD modified_by VARCHAR(255);

ALTER TABLE books
    ADD modified_on TIMESTAMP WITHOUT TIME ZONE;

UPDATE books
    SET modified_on = '2024-01-01 00:00:00'
    WHERE modified_on IS NULL;

ALTER TABLE books
    ALTER COLUMN modified_on SET NOT NULL;

ALTER TABLE card_contents
    ADD created_by VARCHAR(255);

ALTER TABLE card_contents
    ADD created_on TIMESTAMP WITHOUT TIME ZONE;

UPDATE card_contents
SET created_on = '2024-01-01 00:00:00'
WHERE created_on IS NULL;

ALTER TABLE card_contents
    ALTER COLUMN created_on SET NOT NULL;

ALTER TABLE card_contents
    ADD modified_by VARCHAR(255);

ALTER TABLE card_contents
    ADD modified_on TIMESTAMP WITHOUT TIME ZONE;

UPDATE card_contents
    SET modified_on = '2024-01-01 00:00:00'
    WHERE modified_on IS NULL;

ALTER TABLE card_contents
    ALTER COLUMN modified_on SET NOT NULL;

ALTER TABLE cards
    ADD created_by VARCHAR(255);

ALTER TABLE cards
    ADD created_on TIMESTAMP WITHOUT TIME ZONE;

UPDATE cards
SET created_on = created_at;

UPDATE cards
SET created_on = '2024-01-01 00:00:00'
WHERE created_on IS NULL;

ALTER TABLE cards
    ALTER COLUMN created_on SET NOT NULL;

ALTER TABLE cards
    ADD modified_by VARCHAR(255);

ALTER TABLE cards
    ADD modified_on TIMESTAMP WITHOUT TIME ZONE;

UPDATE cards
SET modified_on = last_updated_on;

UPDATE cards
SET modified_on = '2024-01-01 00:00:00'
WHERE modified_on IS NULL;

ALTER TABLE cards
    ALTER COLUMN modified_on SET NOT NULL;

ALTER TABLE progress
    ADD created_by VARCHAR(255);

ALTER TABLE progress
    ADD created_on TIMESTAMP WITHOUT TIME ZONE;

UPDATE progress
    SET created_on = created_at;

UPDATE progress
SET created_on = '2024-01-01 00:00:00'
WHERE created_on IS NULL;

ALTER TABLE progress
    ALTER COLUMN created_on SET NOT NULL;

ALTER TABLE progress
    ADD modified_by VARCHAR(255);

ALTER TABLE progress
    ADD modified_on TIMESTAMP WITHOUT TIME ZONE;

UPDATE progress
SET modified_on = last_updated_on;

UPDATE progress
    SET modified_on = '2024-01-01 00:00:00'
    WHERE modified_on IS NULL;

ALTER TABLE progress
    ALTER COLUMN modified_on SET NOT NULL;

ALTER TABLE solve_attempts
    ADD created_by VARCHAR(255);

ALTER TABLE solve_attempts
    ADD created_on TIMESTAMP WITHOUT TIME ZONE;

UPDATE solve_attempts
    SET created_on = created_at;

UPDATE solve_attempts
SET created_on = '2024-01-01 00:00:00'
WHERE created_on IS NULL;

ALTER TABLE solve_attempts
    ALTER COLUMN created_on SET NOT NULL;

ALTER TABLE solve_attempts
    ADD modified_by VARCHAR(255);

ALTER TABLE solve_attempts
    ADD modified_on TIMESTAMP WITHOUT TIME ZONE;

UPDATE solve_attempts
SET modified_on = last_updated_on;

UPDATE solve_attempts
    SET modified_on = '2024-01-01 00:00:00'
    WHERE modified_on IS NULL;

ALTER TABLE solve_attempts
    ALTER COLUMN modified_on SET NOT NULL;

ALTER TABLE sub_units
    ADD created_by VARCHAR(255);

ALTER TABLE sub_units
    ADD created_on TIMESTAMP WITHOUT TIME ZONE;

UPDATE sub_units
SET created_on = '2024-01-01 00:00:00'
WHERE created_on IS NULL;

ALTER TABLE sub_units
    ALTER COLUMN created_on SET NOT NULL;

ALTER TABLE sub_units
    ADD modified_by VARCHAR(255);

ALTER TABLE sub_units
    ADD modified_on TIMESTAMP WITHOUT TIME ZONE;

UPDATE sub_units
    SET modified_on = '2024-01-01 00:00:00'
    WHERE modified_on IS NULL;

ALTER TABLE sub_units
    ALTER COLUMN modified_on SET NOT NULL;

ALTER TABLE units
    ADD created_by VARCHAR(255);

ALTER TABLE units
    ADD created_on TIMESTAMP WITHOUT TIME ZONE;

UPDATE units
SET created_on = '2024-01-01 00:00:00'
WHERE created_on IS NULL;

ALTER TABLE units
    ALTER COLUMN created_on SET NOT NULL;

ALTER TABLE units
    ADD modified_by VARCHAR(255);

ALTER TABLE units
    ADD modified_on TIMESTAMP WITHOUT TIME ZONE;

UPDATE units
    SET modified_on = '2024-01-01 00:00:00'
    WHERE modified_on IS NULL;

ALTER TABLE units
    ALTER COLUMN modified_on SET NOT NULL;

ALTER TABLE cards
    DROP COLUMN created_at;

ALTER TABLE cards
    DROP COLUMN last_updated_on;

ALTER TABLE progress
    DROP COLUMN created_at;

ALTER TABLE progress
    DROP COLUMN last_updated_on;

ALTER TABLE solve_attempts
    DROP COLUMN created_at;

ALTER TABLE solve_attempts
    DROP COLUMN last_updated_on;