# 增强group by的使用

> 1.显示每种岗位的雇员总数、平均工资。
> 
```sql
SELECT COUNT(*), AVG(sal), job 
	FROM emp 
	GROUP BY job; 
```

> 2.显示雇员总数，以及获得补助的雇员数。
>
> 获得补助的雇员数 就是 comm 列为非null, 就是count(列)，如果该列的值为null
>
```sql
SELECT COUNT(*), COUNT(comm)
	FROM emp 
```

> 统计没有获得补助的雇员数
>
```sql
SELECT COUNT(*), COUNT(IF(comm IS NULL, 1, NULL))    -- 第1种写法
	FROM emp 

SELECT COUNT(*), COUNT(*) - COUNT(comm)    -- 第2种写法
	FROM emp 
```

> 3.显示管理者的总人数。小技巧:尝试写->修改->尝试  [正确的]
>
```sql
SELECT COUNT(DISTINCT mgr) 
	FROM emp; 
```

> 4.显示雇员工资的最大差额。  max(sal) - min(sal)
>
```sql
SELECT MAX(sal) - MIN(sal) 
	FROM emp;

SELECT * FROM e
mp;
select * from dept;
```

> 案例：请统计各个部门group by 的平均工资 avg，并且是大于1000的 having，并且按照平均工资从高到低排序， order by;  取出前两行记录 limit 0, 2
>
```sql
SELECT deptno, AVG(sal) AS avg_sal
	FROM emp
	GROUP BY deptno
	HAVING  avg_sal > 1000
	ORDER BY avg_sal DESC
	LIMIT 0,2 
```



