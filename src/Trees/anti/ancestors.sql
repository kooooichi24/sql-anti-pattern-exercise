USE trees;

-- 4つ目の階層までコメントを取得したい場合
SELECT
  m1.*,
  m2.*,
  m3.*,
  m4.*
FROM
  Message m1
  LEFT OUTER JOIN Message m2 ON m2.parent_message_id = m1.id
  LEFT OUTER JOIN Message m3 ON m3.parent_message_id = m2.id
  LEFT OUTER JOIN Message m4 ON m4.parent_message_id = m3.id;
