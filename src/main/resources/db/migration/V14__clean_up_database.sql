-- Delete orphaned SolveAttempt records
DELETE
FROM solve_attempts
WHERE card_id NOT IN (SELECT card_id FROM cards WHERE card_id > 0);

-- Delete CardContent records without a corresponding Card
DELETE
FROM card_contents
WHERE card_id NOT IN (SELECT card_id FROM cards WHERE card_id > 0);

-- Delete cards without a corresponding CardContent
DELETE
FROM cards
WHERE card_id NOT IN (SELECT card_id FROM card_contents WHERE card_id > 0);
