USE trees;

-- id=5 に新しい子供を作成したい。
-- id=5 の nsright を確認する
SELECT
  nsright
FROM
  message_nested_sets
WHERE
  id = 5;

-- nsright は 8
-- NS 値 8 と 9 を入れるためにスペースを空ける
UPDATE
  message_nested_sets
SET
  nsleft = CASE
    WHEN nsleft > 7 THEN nsleft + 2
    ELSE nsleft
  END,
  nsright = nsright + 2
WHERE
  nsright >= 7;

-- id=5 の新しい子供を作成し、NS値に 8 と 9 を割り当てる
INSERT INTO message_nested_sets (nsleft, nsright, text) VALUES (8, 9, '私もそう思います');
