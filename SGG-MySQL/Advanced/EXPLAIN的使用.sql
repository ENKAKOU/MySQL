# 05-EXPLAIN的使用

EXPLAIN SELECT * FROM student_info;

SELECT * FROM student_info LIMIT 10;

DESCRIBE DELETE FROM student_info WHERE id = 2;

#
USE atguigudb1;

#创建表
CREATE TABLE s1 (
    id INT AUTO_INCREMENT,
    key1 VARCHAR(100),
    key2 INT,
    key3 VARCHAR(100),
    key_part1 VARCHAR(100),
    key_part2 VARCHAR(100),
    key_part3 VARCHAR(100),

)