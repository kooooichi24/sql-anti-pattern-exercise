CREATE DATABASE IF NOT EXISTS trees;

USE trees;

CREATE TABLE Message_Anti (
  id SERIAL PRIMARY KEY,
  parent_message_id BIGINT UNSIGNED,
  text TEXT NOT NULL,
  FOREIGN KEY (parent_message_id) 
    REFERENCES Message_Anti (id) 
);

INSERT INTO Message_Anti (parent_message_id, text) VALUES (NULL, 'このバグの原因は何かな？');
INSERT INTO Message_Anti (parent_message_id, text) VALUES (1, 'ヌルポじゃないかな？');
INSERT INTO Message_Anti (parent_message_id, text) VALUES (2, 'そうじゃないよ、それは確認済みだ。');
INSERT INTO Message_Anti (parent_message_id, text) VALUES (1, '無効な入力を調べてみたら？');
INSERT INTO Message_Anti (parent_message_id, text) VALUES (4, 'そうか、バグの原因はそれだな。');
INSERT INTO Message_Anti (parent_message_id, text) VALUES (4, 'よし、じゃあチェック機能を追加してもられるかな？');
INSERT INTO Message_Anti (parent_message_id, text) VALUES (6, '了解、修正したよ。');
