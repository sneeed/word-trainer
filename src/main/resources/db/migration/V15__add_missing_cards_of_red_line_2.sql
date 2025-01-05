-- approve cards which appear in "List of irregular verbs" (page 204, up to "hit" (inclusive))
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'was/were' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to buy' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'bought' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to come' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to do' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'did' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'done' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to drink' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to eat' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'ate' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to feed, fed' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to feel' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to find' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to get' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to give' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'gave' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'went' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'have got' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'has got' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to hear' AND language = 'en' LIMIT 1);
UPDATE cards
SET is_approved = TRUE
WHERE card_id = (SELECT card_id FROM card_contents WHERE content = 'to hear, heard' AND language = 'en' LIMIT 1);

-- add all missing cards of Red Line 2 and split cards where appropriate (e.g. three tenses on one card, singular and plural on one card, etc.)
INSERT INTO cards (page_number, is_approved)
VALUES (20, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to have to', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('müssen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('мати необхідність що-небудь зробити', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (20, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('soon', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bald', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('скоро', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (20, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('cheap', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('billig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дешевий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (20, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('market', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Markt', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ринок', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (20, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('street performer', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Straßenkünstler/-in', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('вуличний (-а) артист (-ка)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (20, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('free', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kostenlos; frei', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('вільний (-а), безкоштовний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (20, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ever', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('jemals', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('коли-небудь', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (20, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('yet', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schon', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('вже', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (20, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('church', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Kirche', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('церква', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (20, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('stadium', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Stadion', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('стадіон', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (20, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('museum', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Museum', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('музей', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (20, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('park', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Park', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('парк', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (22, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('drama', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Theater; Drama', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('театральне мистецтво', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (22, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('actor', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Schauspieler; Schauspielerin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('актор', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (22, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to own', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('besitzen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('володіти', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (22, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to act', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('spielen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('діяти, виступати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (22, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('part', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hier: Rolle; Teil', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('роль, частина', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (22, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('landlord', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Eigentümer', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('орендодавець', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (22, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('land', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Land', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('край, земля', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (23, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to take down', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('abbauen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('зняти, знести', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (23, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('careful', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('vorsichtig; sorgfältig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('обережний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (23, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('builder', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Bauarbeiter; Bauarbeiterin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('будівельник (-ця)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (23, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('heavy', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schwer; stark', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('важкий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (23, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hard', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hart; schwer; schwierig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('важкий (-а), твердий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (23, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to build', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bauen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('будувати, будував (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (23, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('built', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bauen (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('будувати, будував (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (23, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('built', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bauen (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('будувати, будував (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (23, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('roof', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Dach', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дах', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (23, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('daughter', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Tochter', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дочка', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (23, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('king', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('König', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('король', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (23, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('France', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Frankreich', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Франція', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (24, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('lines (pl)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('lines', 'en', 2, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hier: Text', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('рядки, лінії', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (24, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('cannon ball', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Kanonenkugel', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('гарматне ядро', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (24, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to hit', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('treffen; schlagen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ударяти, ударив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (24, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hit', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('treffen; schlagen (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ударяти, ударив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (24, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hit', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('treffen; schlagen (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ударяти, ударив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (24, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('firefighter', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Feuerwehrmann; Feuerwehrfrau', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('пожежник (-ця)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (24, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to catch', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fangen; erwischen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ловити, піймав (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (24, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('caught', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fangen; erwischen (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ловити, піймав (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (24, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('caught', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fangen; erwischen (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ловити, піймав (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (24, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('nobody', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('niemand', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ніхто', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (24, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hurt', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('verletzt', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('пошкодження, шкода', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (30, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('far', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('weit', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('далеко', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (30, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to worry', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sich Sorgen machen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('хвилюватися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (30, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to get lost', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sich verirren', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('загубитися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (30, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('spicy', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('würzig; pikant', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('гострий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (30, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sauce', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Soße', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('соус', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (30, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Would you like (to)...?', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Möchtest du ...?', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Чи не бажаєте ви (зробити щось)...?', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (30, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to clap', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('klatschen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('плескати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (30, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to wait (for)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('warten (auf)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('чекати (на)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (30, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('shopping centre', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Einkaufszentrum', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('торговельний центр', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (31, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('rich', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('reich', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('багатий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (31, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('homeless', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('obdachlos', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('безпритульний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (31, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to sell', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('verkaufen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('продавати, продав (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (31, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sold', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('verkaufen (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('продавати, продав (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (31, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sold', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('verkaufen (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('продавати, продав (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (31, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('tourist', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Tourist; Touristin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('турист (-ка)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (31, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('friendly', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('freundlich; nett', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дружелюбний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (31, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('seller', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Verkäufer; Verkäuferin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('продавець, продавчиня', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (31, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('maybe', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('vielleicht', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('можливо', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (31, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('even', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sogar; noch', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('навіть', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (31, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('price', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Preis', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ціна', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (31, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('musician', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Musiker; Musikerin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('музикант (-ка)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (32, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('skating', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Inlineskaten; Schlittschuhlaufen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('катання на скейті', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (32, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('a bit', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ein bisschen; ein wenig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('трохи', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (32, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to fall (over)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fallen; hinfallen; umfallen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('падати (впасти)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (32, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Science', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Wissenschaft; Naturwissenschaft', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('природознавство', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (32, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('robot', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Roboter; Automat', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('робот', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (32, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fast', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schnell', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('швидкий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (32, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to be interested (in)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sich interessieren (für); interessiert sein (an)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('бути зацікавленим (-ою) (у)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (32, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('count me in', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ich bin dabei', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('я з вами, розраховуйте на мене', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (32, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('each other', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('einander; sich; sich gegenseitig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('один одного, один одному', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (32, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to smile', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('lächeln', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('посміхатися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (33, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to agree', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('einer Meinung sein; zustimmen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('погоджуватися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (33, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to disagree', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('anderer Meinung sein; nicht einverstanden sein', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('не погоджуватися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (35, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('player', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Spieler; Spielerin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('гравець, гравчиня', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (35, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('rude', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('unhöflich; unverschämt', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('грубий (-а), неввічливий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (35, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('luck', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Glück', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('удача', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (35, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to pay', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bezahlen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('платити, сплатив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (35, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('paid', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bezahlen (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('платити, сплатив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (35, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('paid', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bezahlen (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('платити, сплатив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (35, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('rent', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Miete', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('орендна плата', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (35, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('beginning', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Anfang; Beginn', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('початок', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (35, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('note', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Geldschein', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('примітка', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (35, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to keep', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('behalten; aufbewahren; belassen; halten', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('зберігати, зберіг (зберегла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (35, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kept', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('behalten; aufbewahren; belassen; halten (simple past)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('зберігати, зберіг (зберегла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (35, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kept', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('behalten; aufbewahren; belassen; halten (past participle)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('зберігати, зберіг (зберегла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (36, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('extra', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('zusätzlich; Zusatz-', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('додатково; додатковий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (36, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('alphabet', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Alphabet', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('абетка', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (38, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to look for', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('suchen nach', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('шукати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (38, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bargain', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Schnäppchen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('домовленість, угода', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (38, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('pretty', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hübsch', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('привабливий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (38, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('size', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Größe', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('розмір', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (38, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('flower', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Blume', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('квітка', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (38, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('short', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kurz', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('короткий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (38, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('also', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('auch', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('також', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (38, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('skirt', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Rock', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('спідниця', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (38, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sure', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sicher', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('звичайно', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (38, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('perfect', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('perfekt; vollkommen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('досконалий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (38, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to look good on sb', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to look good on somebody', 'en', 2, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('jmdm. gut stehen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('добре виглядати на комунебудь', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (38, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to try on', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('anprobieren', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('приміряти', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (38, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fashionable', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('modisch; elegant', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('модний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (38, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to cost', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kosten', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('коштувати, коштував (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (38, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('cost', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kosten (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('коштувати, коштував (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (38, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('cost', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kosten (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('коштувати, коштував (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (39, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('unfashionable', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('unmodisch', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('немодний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (39, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('uncomfortable', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('unbequem; unangenehm', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('незручний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (39, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('comfortable', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('angenehm; bequem', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('зручний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (39, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('loose', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('locker; lose', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('вільний (-а), просторий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (39, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('tight', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('eng; fest', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('тісний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (39, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('cheap', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('billig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дешевий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (39, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('long', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('lang', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('довгий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (39, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('small', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('klein', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('маленький (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (39, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('big', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('groß', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('великий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (39, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('boring', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('langweilig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('нудний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (39, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('old', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('alt', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('старий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (39, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('new', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('neu', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('новий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('surprise', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Überraschung', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сюрприз', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('tonight', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('heute Abend; heute Nacht', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('уночі', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to roll', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('rollen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('згорнути', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('singer', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Sänger; Sängerin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('співак (-чка)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to believe', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('glauben', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('вірити', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('chance', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Chance; Gelegenheit; Möglichkeit', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('шанс', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('real', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('echt; richtig; wirklich', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('справжній (-я)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to hurry (up)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sich beeilen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('поспішати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to forget', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('vergessen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('забувати, забув (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('forgot', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('vergessen (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('забувати, забув (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('forgotten', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('vergessen (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('забувати, забув (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ordinary', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('gewöhnlich; normal', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('звичайний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('down', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('herunter; hinunter', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('униз', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('foot', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Fuß', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('стопа, стопи', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('feet', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Füße', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('стопа, стопи', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('slipper', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Pantoffel; Schuh', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('капець, пантофля', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (42, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('album', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Album', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('альбом', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (43, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to stand', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('stehen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('стояти, стояв (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (43, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('stood', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('stehen (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('стояти, стояв (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (43, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('stood', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('stehen (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('стояти, стояв (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (43, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('dry', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('trocken', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сухий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (43, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to push', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schubsen; drängeln; drücken; schieben', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('штовхати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (43, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('embarrassed', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('verlegen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('збентежений (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (43, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('husband', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Ehemann', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('чоловік', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (43, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('envelope', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Umschlag; Briefumschlag', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('конверт', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (43, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('both', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('beide', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('обидва (-і)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (44, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('news', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Neuigkeit(en); Nachricht(en)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('новини', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (44, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('nervous', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('nervös; aufgeregt', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('знервований (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (44, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('stupid', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('dumm; blöd', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дурний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (44, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('happy', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('glücklich', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('щасливий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (44, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sad', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('traurig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сумний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (44, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('angry', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('wütend; zornig; verärgert; böse', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('розлючений (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (44, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('glad', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('froh', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('радісний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (44, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('excited', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('aufgeregt; begeistert', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('схвильований (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (48, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to be about', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('gehen um; handeln von', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('збиратися щось зробити', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (48, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('into', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('in; hinein', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('у', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (48, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to make friends', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Freundschaften schließen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('подружитися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (48, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('better', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('besser', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('краще', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (48, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('exciting', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('spannend; aufregend', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('захоплюючий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (48, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('in the end', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schließlich; zum Schluss', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('у кінці', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (48, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to change', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ändern; verändern', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('змінювати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (48, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to behave', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sich benehmen; sich verhalten', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('поводитися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (48, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('leg', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Bein', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('нога', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (50, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('cycling', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Radfahren', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('катання на велосипеді', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (50, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('mountain', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Berg', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('гора', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (50, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('mountain biking', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Mountainbike fahren', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('катання на горному велосипеді', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (50, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('lots of', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('viel; viele; jede Menge', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('багато чогось', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (50, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('trail', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Wanderweg', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('стежка', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (50, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('when', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('wenn; als', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('коли', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (50, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('zip line', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Seilrutsche', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('спуск канатною дорогою', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (50, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('mile', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Meile', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('миля', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (50, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to travel', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fahren; reisen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('подорожувати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (50, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('rugby', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Rugby', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('регбі', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (50, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Welsh', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Walisisch; walisisch; Waliser; Waliserin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('уельський (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('rock climbing', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Klettern', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('скелелазіння', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('beautiful', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schön; hübsch', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('прекрасний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('way', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Art und Weise', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('шлях; спосіб', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fit', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fit; in Form', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('стрункий (-а), у гарній формі', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('view', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Aussicht; Sicht; Ausblick; Blick', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('вид', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('before', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('vorher; zuvor', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('до', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('indoor', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Hallen-; Innen-', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('у приміщенні', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('wall', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Mauer; Wand', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('стіна', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('coast', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Küste', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('берег', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('river', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Fluss', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('річка', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('canoeing', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Kanufahren', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('веслування на каное', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('surfing', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Wellenreiten; Surfen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('серфінг', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('if', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('wenn; falls; ob', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('якщо', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to put', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('setzen; legen; stellen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('покласти, поклав (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('put', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('setzen; legen; stellen (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('покласти, поклав (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('put', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('setzen; legen; stellen (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('покласти, поклав (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (51, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to put up', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('aufstellen; errichten', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('миритися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (52, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('outdoor', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Freiluft-; Outdoor-', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('на свіжому повітрі', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (52, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('centre', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Zentrum; Mitte; Center', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('центр', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (52, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('each', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('jede', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('кожен, кожна', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (52, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('skiing', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Skifahren', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('катання на лижах', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (52, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to prefer', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('vorziehen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('віддавати перевагу', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (52, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to make a deal with sb', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to make a deal with somebody', 'en', 2, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('einen Handel mit jmdm. machen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('укласти угоду з ким-небудь, домовитися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (53, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sock', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Socke', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('шкарпетка', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (53, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('raincoat', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Regenmantel', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('плащ', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (53, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sunscreen', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Sonnencreme', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сонцезахисний крем', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (53, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hat', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Mütze; Hut', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('капелюх', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (53, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('trainer', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Turnschuh', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('тренер (-ка); тренажер', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (53, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('warm', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('warm', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('теплий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (53, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('thick', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('dick (nicht für Personen)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('товстий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (55, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('finally', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schließlich; endlich; zum Schluss; letztlich; zuletzt', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('нарешті', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (55, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('dangerous', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('gefährlich', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('небезпечний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (55, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('helmet', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Helm', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('шолом', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (55, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('between', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('zwischen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('між', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (55, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('as ... as', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('so ... wie', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('так само, як ...', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (55, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('difficult', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schwierig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('складний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (55, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('quiet', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ruhig; leise; still', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('тихо; тихий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (55, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('worried', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('beunruhigt; besorgt', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('стурбований (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (55, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('slow', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('langsam', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('повільний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (55, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('strong', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('stark', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сильний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (55, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ball', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Ball', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('м’яч', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (55, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sportsman', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Sportler (Singular)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Sportler', 'de', 2, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('спортсмен, спортсмени', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (55, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sportsmen', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Sportler (Plural)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Sportler', 'de', 2, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('спортсмен, спортсмени', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (56, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hiking', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Wandern', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('пішохідна екскурсія', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (56, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Italian', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('italienisch; Italiener; Italienerin; Italienisch; aus Italien', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('італійський (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (56, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('history', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Geschichte', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('історія', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (58, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('card', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Spielkarte', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('картка', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (58, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('visitor', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Besucher; Besucherin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('відвідувач (-ка)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (58, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('camping', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Camping; Zelten', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('похід, кемпінг', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (58, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fishing', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Angeln; Fischen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('рибалка', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (59, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to phone', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('anrufen; telefonieren', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('телефонувати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (59, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to paddle', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('paddeln; rudern', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('веслувати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (59, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('canoe', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Kanu', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('каное', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (59, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to get into', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hineingelangen; hineinkommen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('потрапити в, влізти в', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (59, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('wetsuit', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Neoprenanzug', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('гідрокостюм', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (59, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to yawn', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('gähnen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('позіхати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (59, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to snore', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schnarchen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('хропіти', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (59, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('worst', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schlimmste; schlechteste', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('найгірший (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (59, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sleep', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Schlaf', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сон', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (62, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('castle', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Schloss; Burg', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('палац', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (62, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('stone', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Stein', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('камінь', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (62, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to jump', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('zusammenzucken; erschrecken; springen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('стрибати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (62, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('knight', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Ritter', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('лицар', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (62, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('through', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('durch', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('через', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (62, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('past', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Vergangenheit', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('минулий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (62, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ghost', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Geist', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('привид', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (63, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to cook', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kochen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('готувати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (63, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('meat', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Fleisch', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('м’ясо', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (63, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to joust', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('einen Turnierzweikampf austragen; turnieren', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('змагатися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (63, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to put on', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('anlegen; anziehen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('накладати; надягати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (63, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('armour', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Rüstung', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('броня', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (63, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to hold', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('halten; festhalten', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('тримати, тримав (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (63, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('held', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('halten; festhalten (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('тримати, тримав (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (63, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('held', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('halten; festhalten (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('тримати, тримав (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (63, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sword', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Schwert', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('меч', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (63, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('still', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('noch; immer noch', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('все ще', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (63, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('stocks', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Pranger', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('запаси', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (63, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to hope', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hoffen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сподіватися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (68, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('way', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Weg', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('шлях; спосіб', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (68, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to turn right/left', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('(nach) rechts/links abbiegen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('повертати праворуч / ліворуч', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (68, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('road', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Straße', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дорога', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (68, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('end', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Ende; Schluss', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('кінець', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (68, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bakery', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Bäckerei', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('пекарня', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (68, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('clock', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Uhr', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('годинник', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (68, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('opposite', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('gegenüber', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('протилежний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (70, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('What’s up?', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Was ist los?; Wie geht’s?', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Що сталося?', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (70, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('festival', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Festival; Fest', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('фестиваль', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (70, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Scottish', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schottisch', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('шотландський (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (70, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('tradition', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Tradition', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('традиція', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (70, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bagpipes', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Dudelsack', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('волинки', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (70, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kilt', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Schottenrock; Kilt', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('кілт', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (70, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kind', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Art; Sorte', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('добрий (-а); вид', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (70, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('competition', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Wettbewerb; Turnier', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('змагання', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (70, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('traditional', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('traditionell', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('традиційний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (70, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to toss the caber', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('den Baumstamm werfen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('метати колоду', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (70, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('in the north (of)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('im Norden (von)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('на північ (від)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (70, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('shortbread', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Buttergebäck', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('пісочне печиво', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (71, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to be born', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('geboren werden', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('народитися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (71, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('leader', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Führer; Führerin; Anführer; Anführerin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('лідер (-ка)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (71, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to fight', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kämpfen; (sich) streiten', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('битися, бився (-лася)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (71, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fought', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kämpfen; (sich) streiten (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('битися, бився (-лася)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (71, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fought', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kämpfen; (sich) streiten (past participle)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('битися, бився (-лася)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (71, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('strange', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('seltsam; merkwürdig; fremd', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дивний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (71, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to invent', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('erfinden', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('винаходити', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (71, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fried', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('(in der Pfanne) gebraten', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('смажений (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (71, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('healthy', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('gesund', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('здоровий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (71, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('haggis', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Haggis (schottisches Gericht aus Schafsinnereien)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('хагіс (шотландська страва)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (71, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sausage', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Wurst; Bratwurst', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ковбаса', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (71, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('lake', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('See', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('озеро', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (71, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('monster', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Ungeheuer; Monster', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('чудовисько', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (72, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to hang (around)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to hang', 'en', 2, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hängen; hier: herumhängen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('блукати (довкола), блукав (-ла) (довкола)', 'ua', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (72, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hung (around)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hung', 'en', 2, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hängen; hier: herumhängen (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('блукати (довкола), блукав (-ла) (довкола)', 'ua', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (72, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hung (around)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hung', 'en', 2, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hängen; hier: herumhängen (past participle)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('блукати (довкола), блукав (-ла) (довкола)', 'ua', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (72, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sleeping bag', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Schlafsack', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('спальний мішок', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (72, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('barbecue', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Grill; Grillparty', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('барбекю', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (72, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('project', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Projekt', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('проект', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (72, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to join', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('beitreten; sich anschließen; verbinden', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('приєднувати(ся)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (72, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('caravan', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Wohnwagen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('будиночок-автопричіп', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (72, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('right now', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('gerade; jetzt gleich; sofort', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('прямо зараз', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (72, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('newspaper', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Zeitung', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('газета', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (72, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to leave', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('abfahren; verlassen; lassen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('залишати, залишив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (72, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('left', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('abfahren; verlassen; lassen (simple past)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('залишати, залишив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (72, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('left', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('abfahren; verlassen; lassen (past participle)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('залишати, залишив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (73, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('torch', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Taschenlampe', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('смолоскип', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (73, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('boot', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Stiefel', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('черевик', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (73, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('paper', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Papier', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('папір', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (74, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('love', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Liebe; Liebe Grüße (am Briefende); Herzliche Grüße (am Briefende)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('кохання', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (75, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('unusual', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ungewöhnlich', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('незвичний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (75, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('century', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Jahrhundert', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('століття', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (75, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to carry', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('tragen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('нести', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (75, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('up', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hinauf; oben', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('вгору', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (75, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to lift', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('heben; hochheben; anheben', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('піднімати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (75, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('while', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('während', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('протягом, поки', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (75, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to move', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hier: (sich) bewegen; umziehen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('рухати(ся)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (75, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('doctor', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Arzt; Ärztin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('лікар (-ка)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (75, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('possible', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('möglich', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('можливий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (75, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hammer throw', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Hammerwurf', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('метання молота', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (75, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('chain', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Kette', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ланцюг', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (75, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('head', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Kopf', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('голова', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (75, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('atmosphere', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Atmosphäre; Stimmung', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('атмосфера', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (75, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('dance', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Tanz', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('танок', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (75, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('modern', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('modern', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сучасний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (76, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to rain', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('regnen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дощити', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Scot', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Schotte; Schottin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('шотландець (-ка)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('detective', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Detektiv; Detektivin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('детектив', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('telephone', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Telefon', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('телефон', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('wizard', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Zauberer', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('чарівник (-ця)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to teach', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('unterrichten; lehren; beibringen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('навчати, навчив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('taught', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('unterrichten; lehren; beibringen (simple past)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('навчати, навчив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('taught', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('unterrichten; lehren; beibringen (past participle)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('навчати, навчив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('until', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bis', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('доки', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to return', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('zurückkehren; zurückgeben', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('повертати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to become', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('werden', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ставати, став (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('became', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('werden (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ставати, став (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('become', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('werden (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ставати, став (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('patient', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Patient; Patientin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('пацієнт (-ка); терплячий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to thank', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('danken', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дякувати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('as', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('als', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('як', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('invention', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Erfindung', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('винахід', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to die', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sterben', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('помирати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (79, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to marry', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('heiraten', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('одружитися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (80, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('inventor', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Erfinder; Erfinderin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('винахідник (-ця)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (80, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('director', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Regisseur; Regisseurin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('директор (-ка), режисер (-ка)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (81, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('machine', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Automat; Maschine', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('термінал', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (81, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hospital', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Krankenhaus', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('лікарня', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (82, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sporty', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sportlich', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('спортивний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (83, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('battle', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Kampf; Schlacht', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('битва', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (83, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to keep out', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('draußen halten', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('триматися подалі', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (83, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('army', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Armee; Heer', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('армія, військо', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (83, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to beat', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('besiegen; schlagen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('бити, бив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (83, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('beat', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('besiegen; schlagen (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('бити, бив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (83, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('beaten', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('besiegen; schlagen (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('бити, бив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (83, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to lose', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('verlieren', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('втрачати, втратив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (83, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('lost', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('verlieren (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('втрачати, втратив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (83, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('lost', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('verlieren (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('втрачати, втратив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (83, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('soldier', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Soldat; Soldatin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('солдат', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (83, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to hide', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('(sich) verstecken', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ховатися, ховався (-лася)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (83, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hid', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('(sich) verstecken (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ховатися, ховався (-лася)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (83, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hidden', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('(sich) verstecken (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ховатися, ховався (-лася)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (83, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('impossible', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('unmöglich', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('неможливо', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (84, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('cave', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Höhle', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('печера', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (84, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('spider', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Spinne', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('павук', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (84, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('web', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Spinnennetz; Netz', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('павутиння', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (84, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to give up', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('aufgeben', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('здаватися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (84, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('a few', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ein paar; wenige; einige', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('кілька', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (84, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('brave', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('tapfer; mutig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('хоробрий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (84, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ill', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('krank; schlecht', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('хворий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (84, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('son', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Sohn', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('син', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (85, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ground', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Boden; Erdboden', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ґрунт, земля', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (86, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('proud (of)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('stolz (auf)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('пишатися (кимось/чимось)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (86, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('peace', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Frieden', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('мир', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (86, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('successful', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('erfolgreich', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('успішний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (86, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('teacher', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Lehrer; Lehrerin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('вчитель (-ка)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (86, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bus driver', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Busfahrer; Busfahrerin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('водій (-ка) автобуса', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (86, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('football player', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Fußballspieler; Fußballspielerin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('футболіст (-ка)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (92, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('extreme', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('extrem; radikal', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('надзвичайний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (92, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('tornado', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Tornado; Wirbelsturm (Singular)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('торнадо (одн. і множ.)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (92, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('tornadoes', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Tornado; Wirbelsturm (Plural)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('торнадо (одн. і множ.)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (92, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('population', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Bevölkerung; Einwohner; Einwohnerzahl (Singular)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('населення', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (92, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('population', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Bevölkerung; Einwohner; Einwohnerzahl (Plural)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('населення', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (92, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('time zone', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Zeitzone', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('часовий пояс', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (92, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('president', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Präsident; Präsidentin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('президент', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (92, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('skyscraper', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Wolkenkratzer', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('хмарочос', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (92, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('gold hunter', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Goldsucher; Goldsucherin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('мисливець (мисливиця) за золотом', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (92, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ocean', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Ozean; Meer', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('океан', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (92, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('temperature', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Temperatur; Fieber', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('температура', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('west', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Westen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('захід', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('used to (live)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('(wohnte) früher', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('колись (жив (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('apartment (AE)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('apartment', 'en', 2, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Apartment; Wohnung', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('квартира', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('inhabitant', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Einwohner; Einwohnerin; Bewohner; Bewohnerin', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('мешканець (-ка)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

-- would have been a duplicate
-- INSERT INTO cards (page_number, is_approved)
-- VALUES (94, FALSE);
-- INSERT INTO card_contents (content, language, priority, card_id)
-- VALUES ('a/one thousand', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
-- INSERT INTO card_contents (content, language, priority, card_id)
-- VALUES ('a thousand', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
-- INSERT INTO card_contents (content, language, priority, card_id)
-- VALUES ('one thousand', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
-- INSERT INTO card_contents (content, language, priority, card_id)
-- VALUES ('eintausend; tausend', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
-- INSERT INTO card_contents (content, language, priority, card_id)
-- VALUES ('одна тисяча', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('foggy', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('neblig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('туманно; туманний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('awesome', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('super; spitze', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('приголомшливий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('amusement park', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Freizeitpark', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('парк розваг', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('unfortunately', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('leider; unglücklicherweise', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('на жаль', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to drive', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fahren; treiben', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('їхати за кермом, їхав (-ла) за кермом', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('drove', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fahren; treiben (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('їхати за кермом, їхав (-ла) за кермом', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, TRUE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('driven', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fahren; treiben (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('їхати за кермом, їхав (-ла) за кермом', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('million', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Million', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('мільйон', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('tiny', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('klein; winzig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('крихітний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('village', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Dorf', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('село', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('corn field', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Kornfeld; Maisfeld; Getreidefeld', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('кукурудзяне поле', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('block', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Block; Häuserblock', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('квартал', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('shopping mall (AE)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('shopping mall', 'en', 2, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Einkaufszentrum', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('торговельний центр', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (94, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('huge', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('riesig; riesengroß', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('величезний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (95, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('east', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Osten', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('схід', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (96, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to discover', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('entdecken', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('відкривати, дізнаватися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (96, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('state', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Staat; Bundesstaat; Land', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('штат', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (96, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to celebrate', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('feiern', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('святкувати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (96, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('since', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('seit; seitdem', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('з, відтоді', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (96, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('windy', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('windig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('вітряний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (97, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('large', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('groß', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('крупний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (97, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kilometre (km)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Kilometer (km)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('кілометр (км)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (98, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('weather forecast', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Wettervorhersage', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('прогноз погоди', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (98, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('will', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('werden', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('бажання, волевиявлення', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (98, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sun', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Sonne', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сонце', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (98, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('around', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('um ungefähr; gegen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('навколо', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (98, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to shine', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('scheinen; glänzen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сяяти, сяяв (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (98, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('shone', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('scheinen; glänzen (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сяяти, сяяв (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (98, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('shone', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('scheinen; glänzen (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сяяти, сяяв (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (98, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Fahrenheit (F)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Fahrenheit (F)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Фаренгейт (F)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (98, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('won’t (= will not)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('won’t', 'en', 2, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('will not', 'en', 3, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('nicht werden', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('не буде', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (98, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('rain', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Regen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дощ', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (98, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fog', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Nebel', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('туман', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (98, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to clear', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('aufklaren; sich aufhellen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('очистити; прояснити', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (98, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('probably', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('wahrscheinlich', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('можливо', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (98, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('thunderstorm', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Gewitter', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('гроза', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (98, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('rainy', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('regnerisch', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дощовий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (98, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('cloudy', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('wolkig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('хмарний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (99, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to snow', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schneien', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сніжити', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (99, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sunny', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sonnig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сонячний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (99, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hot', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('heiß', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('спекотний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (99, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('cold', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kalt', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('холодний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (99, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('welly', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Gummistiefel', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('гумовий чобіт', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (101, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('event', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Ereignis; Veranstaltung', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('подія, захід', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (101, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('soccer (AE)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('soccer', 'en', 2, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Fußball', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('футбол, сокер', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (101, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('oval', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('oval; eiförmig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('овальний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (101, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('tough', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hart', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('жорсткий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (101, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('kid', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Kind', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дитина', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (101, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('round', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('rund', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('круглий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (101, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bat', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hier: Schläger', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('кажан', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (101, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('thin', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('dünn', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('тонкий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (101, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('cheerleading', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Cheerleading(Aktivitäten der Cheerleader / Cheerleaderinnen)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('чирлідинг; очолювання групи підтримки', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (101, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('cheerleader', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Cheerleader; Cheerleaderin (feuert in einer Gruppe eine Sportmannschaft an)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('член групи підтримки', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (101, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('stunt', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Stunt', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('трюк', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (101, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to motivate', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('motivieren', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('мотивувати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (101, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('audience', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Publikum', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('аудиторія', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (102, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to explain', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('erklären', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('пояснювати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (102, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('rule', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Regel', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('правило', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (102, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('yours', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('deine; eure; Ihre', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('твій, твоя, твоє', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (102, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('mine', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('meins; meine', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('мій, моя, моє', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (102, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to miss', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hier: nicht treffen; verfehlen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сумувати; пропустити', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (102, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ours', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('unseres; unsere', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('наш (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (104, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('equipment', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Ausrüstung', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('обладнання', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (104, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('yours', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('deins; deine', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('твій, твоя, твоє', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (104, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('his', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('seins; seine', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('його', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (104, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hers', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ihre; ihrer', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('її', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (104, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('yours', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('eure; eurer; Ihre; Ihrer', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ваш, ваша, ваше', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (104, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('theirs', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ihre; ihrer', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('їхній, їхня, їхнє', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (105, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('cheer', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Jubel; Hurraruf', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('підтримка, радість', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (105, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to perform', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('aufführen; auftreten; leisten', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('виконувати, виступати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (105, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to take part (in)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('teilnehmen (an)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('брати участь (у)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (105, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('enough', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('genug; genügend', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('досить', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (105, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('coach', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Trainer; Trainerin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('тренер (-ка)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (105, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to change', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hier: sich umziehen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('змінювати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (105, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('changing room', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Umkleideraum; Umkleidekabine', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('роздягальня', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (105, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('shower', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Dusche', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('душ', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (105, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('normal', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('normal', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('нормальний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (105, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to wonder', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sich fragen;sich Gedanken machen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дивуватися, цікавитися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (105, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('might', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('könnten', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('могутність', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (105, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('wheelchair', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Rollstuhl', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('крісло колісне', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (105, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('accident', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Unfall', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('нещасний випадок', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (105, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('pyramid', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Pyramide', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('піраміда', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (105, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to slip', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('rutschen; ausrutschen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ковзати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (105, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('not ... anymore', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('nicht mehr', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('більше не ...', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (106, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to be pleased', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('erfreut sein', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('бути задоволеним (-ою)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (106, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('row', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Reihe', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ряд', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (110, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('suddenly', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('plötzlich; auf einmal', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('раптом', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (110, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('hole', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Loch', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('отвір', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (110, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('fence', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Zaun', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('паркан', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (110, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('lettuce', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Kopfsalat', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('салат-латук', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (112, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('teenage', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('jugendlich', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('підлітковий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (113, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('teenager', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Teenager; Jugendliche; Jugendlicher', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('підліток', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (113, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('basketball hoop', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Basketballkorb', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('баскетбольне кільце', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (113, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('others', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('anderen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('інші', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (113, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('online', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('online', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('онлайн', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (113, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('food court', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Gastronomiebereich in einem Einkaufszentrum', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('фудкорт', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (113, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('smartphone', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Smartphone', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('смартфон', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (113, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('social network', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('soziales Netzwerk; soziale Kontakte', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('соціальна мережа', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (113, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to chat', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('chatten; plaudern', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('спілкуватися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (113, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to share', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('teilen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ділитися, поширювати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (113, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('video', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Video', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('відео', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (113, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('camp', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Camp; Lager', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('табір', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('T-shirt', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('T-Shirt', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('футболка', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('store (AE)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('store', 'en', 2, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Laden; Geschäft', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('магазин, крамниця', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('downstairs', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('unten; im Untergeschoss; nach unten', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('внизу (про сходи або поверх)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('past', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('vorbei (an)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('минуле; минулий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to be in a hurry', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('es eilig haben; in Eile sein', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('поспішати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('frozen', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('gefroren; tiefgefroren', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('заморожений (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('yogurt', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Joghurt', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('йогурт', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('wallet', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Brieftasche; Geldbörse', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('гаманець', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('What’s wrong?', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Was ist los?; Was stimmt nicht?', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('У чому справа?', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('embarrassing', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('peinlich', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('бентежний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('terrible', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schrecklich; furchtbar', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('жахливий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('anybody', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('jeder (beliebige); irgendjemand', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('будь-хто', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('shock', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Schock', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('шок', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('guy', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Typ; Kerl', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('хлопчина', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('pocket', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Tasche; Hosentasche', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('кишеня', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('thief', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Dieb; Diebin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('крадій, крадії', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (114, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('thieves', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Diebe', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('крадій, крадії', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (115, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('police', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Polizei', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('поліція', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (118, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Performing Arts', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('darstellende Künste', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сценічне мистецтво', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (118, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('all over', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('überall', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('повсюди', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (118, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to try out', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ausprobieren', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('випробувати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (118, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bear', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Bär', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('ведмідь', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (118, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sailing', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Segeln', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('мореплавання', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (118, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('artist', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Künstler; Künstlerin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('художник (-ця)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (118, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('cabin', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Hütte', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('хатина, халупа', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (118, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('experiment', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Versuch', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('експеримент', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (118, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to explore', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('erkunden; erforschen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('відкривати, дізнаватися', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (118, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('volcano', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Vulkan', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('вулкан, вулкани', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (118, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('volcanoes', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Vulkane', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('вулкан, вулкани', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (118, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('scientist', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Wissenschaftler; Wissenschaftlerin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('вчений (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (118, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('professor', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Professor; Professorin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('професор (-ка)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (118, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('engineer', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Ingenieur; Ingenieurin; Techniker; Technikerin', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('інженер (-ка)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (119, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('pancake', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Pfannkuchen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('млинець', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (119, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('whose', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('wessen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('чий, чия, чиє', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (119, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('date', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Datum; Zeitpunkt; Verabredung; Date', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дата; побачення', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (121, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('unhappy', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('unglücklich', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('нещасний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (121, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to post', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('online stellen; posten', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('надсилати поштою; публікувати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (121, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('message', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Nachricht; SMS', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('повідомлення', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (121, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to recognize', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('erkennen; anerkennen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('упізнавати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (121, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('pickpocket', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Taschendieb; Taschendiebin', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('кишеньковий злодій', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (121, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('security guard', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Wachmann; Wachfrau', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('охоронець, охоронниця', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (121, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to send', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schicken; senden', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('надсилати, надіслав (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (121, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sent', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schicken; senden (simple past)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('надсилати, надіслав (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (121, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sent', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schicken; senden (past participle)', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('надсилати, надіслав (-ла)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (121, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('upset', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('aufgebracht; bestürzt', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('засмучений (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (121, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to be gone', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('verschwunden sein; weg sein', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('зникнути', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (121, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('out of', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('aus ... heraus', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('назовні з, серед', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (122, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('walkie-talkie', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Funkgerät', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('рація', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (122, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to check', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('überprüfen; kontrollieren', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('перевіряти', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (122, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to beep', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('piepen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сигналити, подавати звуковий сигнал', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (122, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('voice message', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Sprachnachricht', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('голосове повідомлення', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (122, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('upstairs', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('oben; im Obergeschoss; nach oben', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('нагорі (про сходи і поверх)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (122, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('disappointed', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('enttäuscht', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('розчарований (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (122, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to cry', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schreien; rufen; weinen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('плакати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (122, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bad luck', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Pech; Unglück', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('невдача', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (122, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('myself', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('selbst; selber', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сам (-а), собі, себе', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (123, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('social media', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('soziale Medien', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('соціальні мережі', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (124, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('mad (about)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('verrückt (nach); wütend', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('схиблений (-а) (на)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (124, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('app', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('App', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('додаток', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (124, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('face-to-face', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('von Angesicht zu Angesicht', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('віч-на-віч, особисто', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (124, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('video chat', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Video-Chat', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('відеочат', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (124, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('yourself', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('dich selbst', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сам, себе, собі', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (124, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to download', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('herunterladen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('завантажити, скачати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (124, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('comment', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Kommentar', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('коментар', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (124, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to compare', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('vergleichen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('порівнювати', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (124, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to care (about sth)', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to care (about something)', 'en', 2, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('(etw.) wichtig nehmen; sich interessieren (für); sich kümmern (um)', 'de', 1,
        (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дбати (про що-небудь)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (124, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('technology', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Technologie', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('технологія', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (124, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('clever', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schlau; klug; intelligent', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('розумний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (125, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('to stay in touch', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('in Verbindung bleiben', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('залишатися на зв’язку', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (125, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('German', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('deutsch; aus Deutschland', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('німецька мова', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (125, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('forum', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Forum', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('форум', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (125, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('advice', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Rat; Ratschlag', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('порада', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (125, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('information', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Information; Informationen', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('інформація', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (125, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('everything', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('alles', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('все', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (125, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('true', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('wahr', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('справжній (-я)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (125, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('nasty', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('gemein; garstig; scheußlich', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('бридкий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (125, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('cyberbully', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Cyberbully', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('кіберзлочинець (-ниця)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (125, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('properly', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('richtig; anständig; ordentlich', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('належним чином', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (126, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('profile', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Profil; Steckbrief', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('профіль, опис', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (126, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('photo', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Foto', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('фотографія', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (126, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('computer', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('Computer', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('комп’ютер', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (126, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('e-mail', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('E-Mail', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('електронна пошта', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (126, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('bad', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('schlecht', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('поганий (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (126, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('sad', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('traurig', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('сумний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (126, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('angry', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('wütend; zornig; verärgert; böse', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('розлючений (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));

INSERT INTO cards (page_number, is_approved)
VALUES (126, FALSE);
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('silly', 'en', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('albern; dumm', 'de', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
INSERT INTO card_contents (content, language, priority, card_id)
VALUES ('дурний (-а)', 'ua', 1, (SELECT card_id FROM cards ORDER BY card_id DESC LIMIT 1));
