CREATE DATABASE IF NOT EXISTS trees;

USE trees;

CREATE TABLE message_closure_table (
  id SERIAL PRIMARY KEY,
  text TEXT NOT NULL
);

CREATE TABLE tree_paths (
  ancestor BIGINT UNSIGNED NOT NULL,
  descendant BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (ancestor, descendant),
  FOREIGN KEY (ancestor) REFERENCES message_closure_table(id),
  FOREIGN KEY (descendant) REFERENCES message_closure_table(id)
);

INSERT INTO message_closure_table (text) VALUES ('このバグの原因は何かな？');
INSERT INTO message_closure_table (text) VALUES ('ヌルポじゃないかな？');
INSERT INTO message_closure_table (text) VALUES ('そうじゃないよ、それは確認済みだ。');
INSERT INTO message_closure_table (text) VALUES ('無効な入力を調べてみたら？');
INSERT INTO message_closure_table (text) VALUES ('そうか、バグの原因はそれだな。');
INSERT INTO message_closure_table (text) VALUES ('よし、じゃあチェック機能を追加してもられるかな？');
INSERT INTO message_closure_table (text) VALUES ('了解、修正したよ。');

INSERT INTO tree_paths VALUES (1, 1);
INSERT INTO tree_paths VALUES (1, 2);
INSERT INTO tree_paths VALUES (1, 3);
INSERT INTO tree_paths VALUES (1, 4);
INSERT INTO tree_paths VALUES (1, 5);
INSERT INTO tree_paths VALUES (1, 6);
INSERT INTO tree_paths VALUES (1, 7);
INSERT INTO tree_paths VALUES (2, 2);
INSERT INTO tree_paths VALUES (2, 3);
INSERT INTO tree_paths VALUES (3, 3);
INSERT INTO tree_paths VALUES (4, 4);
INSERT INTO tree_paths VALUES (4, 5);
INSERT INTO tree_paths VALUES (4, 6);
INSERT INTO tree_paths VALUES (4, 7);
INSERT INTO tree_paths VALUES (5, 5);
INSERT INTO tree_paths VALUES (6, 6);
INSERT INTO tree_paths VALUES (6, 7);
INSERT INTO tree_paths VALUES (7, 7);
