# 流程控制语句

> IF(expr1,expr2,expr3)	如果expr1为True ,则返回 expr2 否则返回 expr3;  <br>
```sql
SELECT IF(TRUE, "北京", "上海") FROM DUAL;
```

> IFNULL(expr1,expr2)	如果expr1不为空NULL,则返回expr1,否则返回expr2;  <br>
```sql
SELECT IFNULL( NULL, "韩顺平教育") FROM DUAL;
```

> SELECT CASE WHEN expr1 THEN expr2 WHEN expr3 THEN expr4 ELSE expr5 END; [类似多重分支.];  <br>
> - 如果expr1 为TRUE,则返回expr2,如果expr2 为t, 返回 expr4, 否则返回 expr5 <br>
```sql
SELECT CASE 
	WHEN TRUE THEN "jack"
	WHEN FALSE THEN "tom" 
	ELSE "mary" END
```


> 1.查询emp 表, 如果 comm 是null , 则显示0.0;  <br>
> - 判断是否为null 要使用 is null, 判断不为空 使用 is not; <br>
```sql
SELECT ename, IF(comm IS NULL , 0.0, comm)
	FROM emp;
SELECT ename, IFNULL(comm, 0.0)
	FROM emp;
```

> 2.如果emp 表的 job 是 CLERK 则显示 职员， 如果是 MANAGER 则显示经理;  <br>
> - 如果是 SALESMAN 则显示 销售人员，其它正常显示; <br>
```sql
SELECT ename, (SELECT CASE 
		WHEN job = "CLERK" THEN "职员" 
		WHEN job = "MANAGER" THEN "经理"
		WHEN job = "SALESMAN" THEN "销售人员" 
		ELSE job END) AS "job"
	FROM emp; 

SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM salgrade;
```


	