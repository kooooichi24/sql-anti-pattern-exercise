USE trees;

-- id=6 を含む先祖を取得する
SELECT
  m2.*
FROM
  message_nested_sets m1
  INNER JOIN message_nested_sets m2 ON m1.nsleft BETWEEN m2.nsleft
  AND m2.nsright
WHERE
  m1.id = 6;
