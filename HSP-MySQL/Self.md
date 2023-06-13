# 多表查询的 自连接

> 思考: 显示公司员工名字和他的上级的名字;  <br>

> - 员工名字 在emp, 上级的名字的名字 emp;  <br>
> - 员工和上级是通过 emp表的 mgr 列关联;  <br>
> - 自连接的特点:  <br>
>> - 1.把同一张表当做两张表使用;  <br>
>> - 2.需要给表取别名 表名  表别名 ;  <br>
>> - 3.列名不明确，可以指定列的别名 列名 as 列的别名;  <br>
```sql
SELECT worker.ename AS "职员名" ,  boss.ename AS "上级名"
	FROM emp worker, emp boss
	WHERE worker.mgr = boss.empno;
SELECT * FROM emp;
```