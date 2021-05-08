USE trees;

-- id=5 に新しい子供を作成したい
INSERT INTO
  message_closure_table (text)
VALUES
  ('確認おねがいします');

-- id=5の先祖の子孫に8 と 自己参照 を追加
INSERT INTO
  tree_paths (ancestor, descendant)
SELECT
  t.ancestor,
  8
FROM
  tree_paths t
WHERE
  t.descendant = 5
UNION
ALL
SELECT
  8,
  8;
