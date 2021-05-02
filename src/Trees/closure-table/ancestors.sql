USE trees;

-- id=6 を含む先祖を取得する
SELECT
  m.*
FROM
  message_closure_table m
  INNER JOIN tree_paths t ON m.id = t.ancestor
WHERE
  t.descendant = 6;
