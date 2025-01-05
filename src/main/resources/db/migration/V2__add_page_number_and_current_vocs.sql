ALTER TABLE cards
    ADD page_number INT;

DELETE FROM cards;

INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (16, 'child (sg), children (pl)', 'Kind', TRUE);
INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (16, 'adult', 'Erwachsene; Erwachsener', TRUE);
INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (16, 'station', 'Bahnhof; Haltestelle; Station', TRUE);
INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (16, 'You''re welcome.', 'Gern geschehen.', TRUE);
INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (16, 'Here you are.', 'Bitte schön.', TRUE);
INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (16, 'change', 'Wechselgeld', TRUE);
INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (17, 'already', 'schon; bereits', TRUE);
INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (17, 'time', 'hier: Mal', TRUE);
INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (17, 'just', 'gerade (eben); soeben', TRUE);
INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (17, 'to write, wrote, written', 'schreiben', TRUE);
INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (17, 'internet', 'Internet', TRUE);
INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (17, 'to come over', 'herüberkommen; vorbeischauen', TRUE);
INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (17, 'to do, did, done', 'machen; tun', TRUE);
INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (17, 'not … yet', 'noch nicht', TRUE);
INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (17, 'to finish', 'beenden; enden; fertigstellen; aufhören', TRUE);
INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (17, 'vocabulary', 'Vokabular; Wortschatz', TRUE);
INSERT INTO cards (page_number, text_side_b, text_side_a, is_approved) VALUES (17, 'test', 'Test; Klassenarbeit', TRUE);