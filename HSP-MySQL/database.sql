#  数据库的操作

-- 创建一个 hsp_db01的数据库
-- 使用指令创建数据库
CREATE DATABASE hsp_db01;

-- 删除数据库指令
DROP DATABASE hsp_db01

-- 创建一个使用 utf8 字符集的 hsp_db02 数据库
CREATE DATABASE hsp_db02 CHARACTER SET utf8

-- 创建一个使用 utf8 字符集, 并带校对规则的 hsp_db03 数据库
CREATE DATABASE hsp_db03 CHARACTER SET utf8 COLLATE utf8_bin

-- 校对规则 utf8_bin 区分大小 默认utf8_general_ci 不区分大小写

-- 一条查询的sql , select 查询 * 表示所有字段 FROM 从哪个表
-- WHERE 从哪个字段 NAME = 'tom' 查询名字是tom
SELECT *  
	FROM t1 
	WHERE NAME = 'tom'



