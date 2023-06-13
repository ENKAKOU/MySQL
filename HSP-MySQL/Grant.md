# 用户权限的管理

> 创建用户 shunping  密码 123 , 从本地登录;  <br>
```sql
CREATE USER 'shunping'@'localhost' IDENTIFIED BY '123'
```

> 使用root 用户创建 testdb  ,表 news;  <br>
```sql
CREATE DATABASE testdb
CREATE TABLE news (
	id INT ,
	content VARCHAR(32));
```

> 添加一条测试数据;  <br>
```sql
INSERT INTO news VALUES(100, '北京新闻');
SELECT * FROM news;
```

> 给 shunping 分配查看 news 表和 添加news的权限;  <br>
```sql
GRANT SELECT , INSERT 
	ON testdb.news
	TO 'shunping'@'localhost'
```

> 可以增加update权限;  <br>
```sql
GRANT UPDATE  
	ON testdb.news
	TO 'shunping'@'localhost'
```
	
> 修改 shunping的密码为 abc;  <br>
```sql
SET PASSWORD FOR 'shunping'@'localhost' = PASSWORD('abc');
```

> 回收 shunping 用户在 testdb.news 表的所有权限;  <br>
```sql
REVOKE SELECT , UPDATE, INSERT ON testdb.news FROM 'shunping'@'localhost'
REVOKE ALL ON testdb.news FROM 'shunping'@'localhost'
```

> 删除 shunping;  <br>
```sql
DROP USER 'shunping'@'localhost'
```