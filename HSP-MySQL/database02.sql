#  删除和查询数据库

-- 查看当前数据库服务器中的所有数据库
SHOW DATABASES

-- 查看前面创建的hsp_db01数据库的定义信息
SHOW CREATE DATABASE `hsp_db01`

-- 创建数据库表时候, 为了规避关键字, 可以使用反引号解决

-- 删除前面创建的hsp_db01数据库
DROP DATABASE hsp_db01

