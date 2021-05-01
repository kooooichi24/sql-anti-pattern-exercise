USE trees;

-- path='1/4' からのノード数の集計も簡単
SELECT COUNT(*) FROM message_path_enum WHERE path LIKE CONCAT('1/4','%');
