# 指令创建表

# hsp_db02创建表时, 要根据需保存的数据创建相应的列, 并根据数据的类型定义相应的列类型.
-- 例：user表

# id        整形
# name 		字符串
# password 	字符串
# birthday 	日期

CREATE TABLE `user` (
	id INT, 
	`name` VARCHAR(255),
	`password` VARCHAR(255), 
	`birthday` DATE)
	CHARACTER SET utf8 COLLATE utf8_bin ENGINE INNODB;
	
	
