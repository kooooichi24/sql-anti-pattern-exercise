USE trees;

-- path='1/4/6/7' であるテキスト7の先祖を取得する
SELECT * FROM message_path_enum WHERE '1/4/6/7' LIKE CONCAT(path, '%');
