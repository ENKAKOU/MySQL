#  整型的是一个

-- 使用tinyint 来演示范围 有符号 -128 ~ 127  如果没有符号 0-255
-- 表的字符集，校验规则, 存储引擎
-- 1.如果没有指定 unsinged , 则TINYINT就是有符号
-- 2.如果指定 unsinged , 则TINYINT就是无符号 0-255
CREATE TABLE t3 (
	id TINYINT);
CREATE TABLE t4 (
	id TINYINT UNSIGNED);
	
INSERT INTO t3 VALUES(127);
SELECT * FROM t3

INSERT INTO t4 VALUES(255);
SELECT * FROM t4;