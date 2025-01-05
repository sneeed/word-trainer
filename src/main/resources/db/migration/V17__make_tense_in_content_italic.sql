UPDATE card_contents
SET content = REPLACE(content, '(past participle)', '<i>(past participle)</i>')
WHERE content LIKE '%(past participle)%';

UPDATE card_contents
SET content = REPLACE(content, '(simple past)', '<i>(simple past)</i>')
WHERE content LIKE '%(simple past)%';