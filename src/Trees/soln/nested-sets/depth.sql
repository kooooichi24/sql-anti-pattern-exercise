USE trees;

-- この時点では depth は 4
SELECT
  m1.id,
  COUNT(m2.id) depth
FROM
  message_nested_sets m1
  INNER JOIN message_nested_sets m2 ON m1.nsleft BETWEEN m2.nsleft
  AND m2.nsright
WHERE
  m1.id = 7
GROUP BY
  m1.id;

DELETE FROM message_nested_sets WHERE id = 6;

-- depth は 3 になる
SELECT
  m1.id,
  COUNT(m2.id) depth
FROM
  message_nested_sets m1
  INNER JOIN message_nested_sets m2 ON m1.nsleft BETWEEN m2.nsleft
  AND m2.nsright
WHERE
  m1.id = 7
GROUP BY
  m1.id;
