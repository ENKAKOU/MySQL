# 表的复制

> 为了对某个sql语句进行效率测试，我们需要海量数据时，可以使用此法为表创建海量数据;  <br>
```sql
CREATE TABLE my_tab01 
	( id INT,
	  `name` VARCHAR(32),
	  sal DOUBLE,
	  job VARCHAR(32),
	  deptno INT);
DESC my_tab01
SELECT * FROM my_tab01;
```



# 如何自我复制
> 1.先把emp 表的记录复制到 my_tab01;  <br>
```sql
INSERT INTO my_tab01 
	(id, `name`, sal, job,deptno)
	SELECT empno, ename, sal, job, deptno FROM emp;
```

> 2.自我复制;  <br>
```sql
INSERT INTO my_tab01
	SELECT * FROM my_tab01;
SELECT COUNT(*) FROM my_tab01;
```

> 如何删除掉一张表重复记录;  <br>
> - 1.先创建一张表 my_tab02;  <br>
> - 2.让my_tab02 有重复的记录;  <br>
```sql
CREATE TABLE my_tab02 LIKE emp;   -- 这个语句 把emp表的结构(列)，复制到my_tab02;

desc my_tab02;

insert into my_tab02
	select * from emp;
select * from my_tab02;
```
> - 3.考虑去重 my_tab02的记录
>> - (1)先创建一张临时表 my_tmp , 该表的结构和 my_tab02一样;  <br>
>> - (2)把my_tmp 的记录 通过 distinct 关键字 处理后 把记录复制到 my_tmp;  <br>
>> - (3)清除掉 my_tab02 记录;  <br>
>> - (4)把 my_tmp 表的记录复制到 my_tab02;  <br>
>> - (5)drop 掉 临时表my_tmp;  <br>

>>> - (1)先创建一张临时表 my_tmp , 该表的结构和 my_tab02一样;  <br>
```sql
create table my_tmp like my_tab02
```

>>> - (2)把my_tmp 的记录 通过 distinct 关键字 处理后 把记录复制到 my_tmp;  <br>
```sql
insert into my_tmp 
	select distinct * from my_tab02;
```

>>> - (3)清除掉 my_tab02 记录;  <br>
```sql
delete from my_tab02;
```
>>> - (4)把 my_tmp 表的记录复制到 my_tab02;  <br>
```sql
insert into my_tab02
	select * from my_tmp;
```

>>> - (5)drop 掉 临时表my_tmp;  <br>
```sql
drop table my_tmp;

select * from my_tab02;
```


	
	