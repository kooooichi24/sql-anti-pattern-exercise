CREATE DATABASE IF NOT EXISTS trees;

USE trees;

CREATE TABLE message_path_enum (
  id SERIAL PRIMARY KEY,
  path VARCHAR(1000),
  text TEXT NOT NULL
);

INSERT INTO message_path_enum (path, text) VALUES ('1/', 'このバグの原因は何かな？');
INSERT INTO message_path_enum (path, text) VALUES ('1/2/', 'ヌルポじゃないかな？');
INSERT INTO message_path_enum (path, text) VALUES ('1/2/3/', 'そうじゃないよ、それは確認済みだ。');
INSERT INTO message_path_enum (path, text) VALUES ('1/4/', '無効な入力を調べてみたら？');
INSERT INTO message_path_enum (path, text) VALUES ('1/4/5/', 'そうか、バグの原因はそれだな。');
INSERT INTO message_path_enum (path, text) VALUES ('1/4/6/', 'よし、じゃあチェック機能を追加してもられるかな？');
INSERT INTO message_path_enum (path, text) VALUES ('1/4/6/7/', '了解、修正したよ。');
