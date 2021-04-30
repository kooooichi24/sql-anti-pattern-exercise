USE trees;

---------------------------------------------------
-- Message_Anti.id = 4 を削除したい場合（サブツリー全体を削除）
-- 隣接リストは、ノードの削除は簡単ではない。
---------------------------------------------------
SELECT id FROM Message_Anti WHERE parent_message_id = 4; -- 5,6 を返す
SELECT id FROM Message_Anti WHERE parent_message_id = 5; -- 何も返さない
SELECT id FROM Message_Anti WHERE parent_message_id = 6; -- 7 を返す
SELECT id FROM Message_Anti WHERE parent_message_id = 7; -- 8 を返す
SELECT id FROM Message_Anti WHERE parent_message_id = 8; -- 何も返さない

-- 最下層から順に削除
DELETE FROM Message_Anti WHERE id IN (8);
DELETE FROM Message_Anti WHERE id IN (7);
DELETE FROM Message_Anti WHERE id IN (5,6);
DELETE FROM Message_Anti WHERE id IN (4);


---------------------------------------------------
-- ON DELETE CASCADE 修飾子を設定すれば、簡単に削除可能
---------------------------------------------------
CREATE TABLE Message_Anti (
  id SERIAL PRIMARY KEY,
  parent_message_id BIGINT UNSIGNED,
  text TEXT NOT NULL,
  FOREIGN KEY (parent_message_id) 
    REFERENCES Message_Anti (id) 
    ON DELETE CASCADE -- これ
);

INSERT INTO Message_Anti (parent_message_id, text) VALUES (NULL, 'このバグの原因は何かな？');
INSERT INTO Message_Anti (parent_message_id, text) VALUES (1, 'ヌルポじゃないかな？');
INSERT INTO Message_Anti (parent_message_id, text) VALUES (2, 'そうじゃないよ、それは確認済みだ。');
INSERT INTO Message_Anti (parent_message_id, text) VALUES (1, '無効な入力を調べてみたら？');
INSERT INTO Message_Anti (parent_message_id, text) VALUES (4, 'そうか、バグの原因はそれだな。');
INSERT INTO Message_Anti (parent_message_id, text) VALUES (4, 'よし、じゃあチェック機能を追加してもられるかな？');
INSERT INTO Message_Anti (parent_message_id, text) VALUES (6, '了解、修正したよ。');

DELETE FROM Message_Anti WHERE id IN (4);
