CREATE DATABASE IF NOT EXISTS trees;

USE trees;

CREATE TABLE message_nested_sets (
  id SERIAL PRIMARY KEY,
  nsleft INT NOT NULL,
  nsright INT NOT NULL,
  text TEXT NOT NULL
);

INSERT INTO message_nested_sets (nsleft, nsright, text) VALUES (1, 14, 'このバグの原因は何かな？');
INSERT INTO message_nested_sets (nsleft, nsright, text) VALUES (2, 5, 'ヌルポじゃないかな？');
INSERT INTO message_nested_sets (nsleft, nsright, text) VALUES (3, 4,  'そうじゃないよ、それは確認済みだ。');
INSERT INTO message_nested_sets (nsleft, nsright, text) VALUES (6, 13, '無効な入力を調べてみたら？');
INSERT INTO message_nested_sets (nsleft, nsright, text) VALUES (7, 8, 'そうか、バグの原因はそれだな。');
INSERT INTO message_nested_sets (nsleft, nsright, text) VALUES (9, 12, 'よし、じゃあチェック機能を追加してもられるかな？');
INSERT INTO message_nested_sets (nsleft, nsright, text) VALUES (10, 11, '了解、修正したよ。');
