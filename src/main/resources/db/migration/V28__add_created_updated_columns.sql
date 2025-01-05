ALTER TABLE progress
    ADD last_updated_on TIMESTAMP WITHOUT TIME ZONE,
    ADD created_at TIMESTAMP WITHOUT TIME ZONE;

UPDATE progress
    SET created_at = timestamp '2024-04-26 22:00:00';

ALTER TABLE solve_attempts
    ADD last_updated_on TIMESTAMP WITHOUT TIME ZONE;

