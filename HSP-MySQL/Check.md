# check的使用
> mysql5.7目前还不支持check ,只做语法校验，但不会生效;  <br>


> 测试:  <br>
```sql
CREATE TABLE t23 (
	id INT PRIMARY KEY,
	`name` VARCHAR(32) ,
	sex VARCHAR(6) CHECK (sex IN('man','woman')),
	sal DOUBLE CHECK ( sal > 1000 AND sal < 2000)
	);
```

> 添加数据;  <br>
```sql
INSERT INTO t23 
	VALUES(1, 'jack', 'mid', 1);
SELECT * FROM t23;
```