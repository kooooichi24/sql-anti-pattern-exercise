USE trees;

-- やりたいこと: message6 を message4 の子から message3 の子の位置に動かす
-- 手順1: サブツリーのトップのノードとそのノードの子孫の先祖を削除
-- 例) (1,6), (1,7), (4,6), (4,7) を削除
DELETE FROM
  tree_paths
WHERE
  descendant IN (
    SELECT
      x.id
    FROM
      (
        SElECT
          descendant AS id
        FROM
          tree_paths
        WHERE
          ancestor = 6
      ) AS x
  )
  AND ancestor IN (
    SELECT
      y.id
    FROM
      (
        SELECT
          ancestor AS id
        FROM
          tree_paths
        WHERE
          descendant = 6
          AND ancestor != descendant
      ) AS y
  );

-- 手順2: 新しい移動先の先祖とサブツリーのすべてのノードの組み合わせ行を生成する
-- 例) (1,6), (1,7), (4,6), (4,7) を削除
INSERT INTO
  tree_paths (ancestor, descendant)
SELECT
  supertree.ancestor,
  subtree.descendant
FROM
  tree_paths AS supertree
  CROSS JOIN tree_paths AS subtree
WHERE
  supertree.descendant = 3
  AND subtree.ancestor = 6;
