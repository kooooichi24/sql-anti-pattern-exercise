USE trees;

-- id=6 の直近の親を取得する
-- ちなみによくわからなかった
SELECT
  parent.*
FROM
  message_nested_sets m
  INNER JOIN message_nested_sets parent ON parent.nsleft < m.nsleft
  AND m.nsleft < parent.nsright
  LEFT OUTER JOIN message_nested_sets in_between ON in_between.nsleft < m.nsleft
  AND m.nsleft < in_between.nsright
  AND parent.nsleft < in_between.nsleft
  AND in_between.nsleft < parent.nsright
WHERE
  m.id = 6
  AND in_between.id IS NULL;
