USE trees;

---------------------------------------------------
-- mysql> select id, parent_message_id as parent from Message_Anti;
-- +----+--------+
-- | id | parent |
-- +----+--------+
-- |  1 |   NULL |
-- |  2 |      1 |
-- |  4 |      1 |
-- |  3 |      2 |
-- |  5 |      4 |
-- |  6 |      4 |
-- |  7 |      6 |
-- +----+--------+
-- 
-- id = 6 を削除する場合、parent_message_id = 6 のノードの parent_message_id を 4 に変更する必要がある
---------------------------------------------------

SELECT parent_message_id FROM Message_Anti WHERE id = 6; -- 4 を返す
UPDATE Message_Anti SET parent_message_id = 4 WHERE parent_message_id = 6;
DELETE FROM Message_Anti WHERE id = 6;
