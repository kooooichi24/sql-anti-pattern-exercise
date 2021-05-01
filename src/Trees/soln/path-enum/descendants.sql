USE trees;

-- path='1/4' であるテキスト4の子孫を取得する
-- 自己結合しなくても取得できる
SELECT * FROM message_path_enum WHERE path LIKE CONCAT('1/4','%');
