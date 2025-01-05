UPDATE card_contents
SET content = 'sein <i>(Verb)</i>'
WHERE content = 'sein'
  AND card_id = (SELECT card_id FROM card_contents WHERE content = 'to be' AND language = 'en');

UPDATE card_contents
SET content = 'sein; ihr <i>(Possessivpronomen)</i>'
WHERE content = 'sein; ihr'
  AND card_id = (SELECT card_id FROM card_contents WHERE content = 'its' AND language = 'en');

UPDATE card_contents
SET content = 'sein; seins; seine <i>(Possessivpronomen)</i>'
WHERE (content = 'seins; seine' OR content = 'sein')
  AND language = 'de'
  AND card_id IN (SELECT card_id FROM card_contents WHERE content = 'his' AND language = 'en');