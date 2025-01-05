UPDATE cards
SET is_approved = TRUE
WHERE ((card_id >= (SELECT card_id FROM card_contents WHERE content = 'weit'))
    AND (card_id <= (SELECT card_id FROM card_contents WHERE content = 'Geldschein')));