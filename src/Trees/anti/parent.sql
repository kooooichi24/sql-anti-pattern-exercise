USE trees;

-- コメントとその直近の子要素は、比較的単純なクエリで取得できる
SELECT
  m1.*,
  m2.*
FROM
  Message m1
  LEFT OUTER JOIN Message m2 ON m1.id = m2.parent_message_id;
