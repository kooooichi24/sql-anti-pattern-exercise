USE trees;

-- id=4 を含む子孫を取得する
SELECT
  m2.*
FROM
  message_nested_sets m1
  INNER JOIN message_nested_sets m2 ON m2.nsleft BETWEEN m1.nsleft
  AND m1.nsright
WHERE
  m1.id = 4;
