#  练习: database03.sql 备份hsp_db02 和 hsp_db03 库中的数据并恢复

-- 备份, 要在Dos下执行mysqldump指令其实在mysql安装目录\bin
-- 对应的sql语句
mysqldump -u root -p -B hsp_db02 hsp_db03 > d:\\bak.sql

DROP DATABASE ecshop;

-- 恢复数据库(注意：进入Mysql命令行再执行)
source d:\\bak.sql


