USE trees;

-- 
INSERT INTO message_path_enum (text) VALUE ('ありがとう');

UPDATE
  message_path_enum
SET
  path = CONCAT((SELECT x.path FROM (
    SELECT path FROM message_path_enum WHERE id = 7
  ) AS x), LAST_INSERT_ID(), '/')
WHERE id = LAST_INSERT_ID();
