USE trees;

-- id=4 を含む子孫を取得する
SELECT
  m.*
FROM
  message_closure_table m
  INNER JOIN tree_paths t ON m.id = t.descendant
WHERE
  t.ancestor = 4;
