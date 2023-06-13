# 表类型和存储引擎

> 查看所有的存储引擎;  <br>
SHOW ENGINES
> innodb 存储引擎，是前面使用过;  <br>
> - 1.支持事务;  <br>
> - 2.支持外键;  <br>
> - 3.支持行级锁;  <br>

> myisam 存储引擎;  <br>
```sql
CREATE TABLE t28 (
	id INT,
	"name" VARCHAR(32)) ENGINE MYISAM
```

> - 1.添加速度快;  <br>
> - 2.不支持外键和事务;  <br>
> - 3.支持表级锁;  <br>
```sql
START TRANSACTION;
SAVEPOINT t1
INSERT INTO t28 VALUES(1, "jack");
SELECT * FROM t28;
ROLLBACK TO t1
```

> memory 存储引擎;  <br>
> - 1.数据存储在内存中 [关闭了Mysql服务，数据丢失, 但是表结构还在];  <br>
> - 2.执行速度很快(没有IO读写) ;  <br>
> - 3.默认支持索引(hash表);  <br>
```sql
CREATE TABLE t29 (
	id INT,
	`name` VARCHAR(32)) ENGINE MEMORY
DESC t29
INSERT INTO t29
	VALUES(1,"tom"), (2,"jack"), (3, "hsp");
SELECT * FROM t29
```

> 指令修改存储引擎;  <br>
```sql
ALTER TABLE "t29" ENGINE = INNODB
```