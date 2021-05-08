USE trees;

DELETE FROM
  tree_paths
WHERE
  descendant IN (
    SELECT
      x.id
    FROM
      (
        SELECT
          descendant AS id
        FROM
          tree_paths
        WHERE
          ancestor = 4
      ) AS x
  );
