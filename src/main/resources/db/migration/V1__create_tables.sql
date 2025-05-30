CREATE TABLE roles
(
    role_id INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    name    VARCHAR(255),
    CONSTRAINT pk_roles PRIMARY KEY (role_id)
);

CREATE TABLE users
(
    user_id  BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    username VARCHAR(255),
    password VARCHAR(255),
    enabled  BOOLEAN,
    CONSTRAINT pk_users PRIMARY KEY (user_id)
);

CREATE TABLE users_roles
(
    role_id INTEGER NOT NULL,
    user_id BIGINT NOT NULL,
    CONSTRAINT pk_users_roles PRIMARY KEY (role_id, user_id),
    CONSTRAINT fk_user_roles_role FOREIGN KEY (role_id) REFERENCES roles (role_id),
    CONSTRAINT fk_user_roles_user FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE books
(
    book_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    name    VARCHAR(255),
    isbn    VARCHAR(255),
    CONSTRAINT pk_books PRIMARY KEY (book_id)
);

CREATE TABLE units
(
    unit_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    name    VARCHAR(255),
    book_id BIGINT,
    CONSTRAINT pk_units PRIMARY KEY (unit_id),
    CONSTRAINT fk_units_book FOREIGN KEY (book_id) REFERENCES books (book_id)
);

CREATE TABLE sub_units
(
    sub_unit_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    name        VARCHAR(255),
    unit_id     BIGINT,
    CONSTRAINT pk_sub_units PRIMARY KEY (sub_unit_id),
    CONSTRAINT fk_sub_units_unit FOREIGN KEY (unit_id) REFERENCES units (unit_id)
);

CREATE TABLE cards
(
    card_id         BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    text_side_a     VARCHAR(255),
    text_side_b     VARCHAR(255),
    is_approved     BOOLEAN,
    sub_unit_id     BIGINT,
    created_at      TIMESTAMP WITHOUT TIME ZONE,
    last_updated_on TIMESTAMP WITHOUT TIME ZONE,
    CONSTRAINT pk_cards PRIMARY KEY (card_id),
    CONSTRAINT fk_cards_sub_unit FOREIGN KEY (sub_unit_id) REFERENCES sub_units (sub_unit_id)
);

CREATE TABLE due_cards_cnt
(
    due_cards_cnt_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    user_id          BIGINT,
    date             DATE,
    due_cards_cnt    INTEGER,
    CONSTRAINT pk_due_cards_cnt PRIMARY KEY (due_cards_cnt_id),
    CONSTRAINT fk_due_cards_user FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE progress
(
    progress_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    user_id     BIGINT,
    card_id     BIGINT,
    level       INTEGER,
    CONSTRAINT pk_progress PRIMARY KEY (progress_id)
);

CREATE TABLE solve_attempts
(
    solve_attempt_id BIGINT GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    card_id          BIGINT,
    user_input       VARCHAR(255),
    is_correct       BOOLEAN,
    user_id          BIGINT,
    created_at       TIMESTAMP WITHOUT TIME ZONE,
    CONSTRAINT pk_solve_attempts PRIMARY KEY (solve_attempt_id),
    CONSTRAINT fk_solve_attempts_user FOREIGN KEY (user_id) REFERENCES users (user_id)
);

INSERT INTO roles (name) VALUES ('ADMIN');
INSERT INTO roles (name) VALUES ('TEACHER');
INSERT INTO roles (name) VALUES ('USER');

INSERT INTO users (username, password, enabled) VALUES ('admin', '$2a$12$.PfbL5WGqwcMzZlHtjpjbeauHJNcHUCp6FIKQemIwGXeOeHy1bZ5i', TRUE);
INSERT INTO users (username, password, enabled) VALUES ('teacher', '$2a$12$MO1c.a5ZmTf47vzqDS5dvet.pLdkMhjqE7gTmsT9L0PMFmptx7TpC', TRUE);
INSERT INTO users (username, password, enabled) VALUES ('user', '$2a$12$5pqTYFYDQTUcHFetsvWeReCLYT3AVOOK/f8A6dchOQP/nHCN62ngm', TRUE);
INSERT INTO users (username, password, enabled) VALUES ('jonas', '$2a$12$t4lZAhHRaL2swPWNmu7RO.zyjIbqJOMP3hVp6zOfAeOsFKI8ZoJEu', TRUE);
INSERT INTO users (username, password, enabled) VALUES ('amy', '$2a$12$iNlRM88Jt1xRgYrQBR3DW..8V9skUzWlMWcopuG/HdVr9FXuRj4Q2', TRUE);

INSERT INTO users_roles (user_id, role_id) VALUES (1, 1);
INSERT INTO users_roles (user_id, role_id) VALUES (2, 2);
INSERT INTO users_roles (user_id, role_id) VALUES (3, 3);
INSERT INTO users_roles (user_id, role_id) VALUES (4, 2);
INSERT INTO users_roles (user_id, role_id) VALUES (5, 3);

INSERT INTO books (name, isbn) VALUES ('Green Line 2', '978-3-12-803020-3');

INSERT INTO units (name, book_id)
VALUES ('Unit 1', (SELECT book_id FROM books WHERE name = 'Green Line 2'));

INSERT INTO sub_units (name, unit_id)
VALUES ('Come on, Em!', (SELECT unit_id FROM units WHERE name = 'Unit 1'));

insert into cards (text_side_a, text_side_b, sub_unit_id, is_approved)
values ('Jugend', 'youth', (select sub_unit_id from sub_units where name = 'Come on, Em!'), true);

insert into cards (text_side_a, text_side_b, sub_unit_id, is_approved)
values ('nahe', 'close', (select sub_unit_id from sub_units where name = 'Come on, Em!'), true);

insert into cards (text_side_a, text_side_b, sub_unit_id, is_approved)
values ('reparieren', 'to fix', (select sub_unit_id from sub_units where name = 'Come on, Em!'), true);

insert into cards (text_side_a, text_side_b, sub_unit_id, is_approved)
values ('kaufen', 'buy', (select sub_unit_id from sub_units where name = 'Come on, Em!'), true);

insert into cards (text_side_a, text_side_b, sub_unit_id, is_approved)
values ('verkaufen', 'sell', (select sub_unit_id from sub_units where name = 'Come on, Em!'), true);

