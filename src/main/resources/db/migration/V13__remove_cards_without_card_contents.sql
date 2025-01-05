DELETE
FROM cards
WHERE card_id NOT IN (SELECT card_id FROM card_contents);