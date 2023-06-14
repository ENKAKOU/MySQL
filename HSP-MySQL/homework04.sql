#  homework04

-- (1)．列出至少有一个员工的所有部门
SELECT COUNT(*) AS c, deptno
	FROM emp 
	GROUP BY deptno 
	HAVING c > 1


-- (2)．列出薪金比“SMITH”多的所有员工。
SELECT * 
	FROM emp
	WHERE sal > (
		SELECT sal 
			FROM emp 
			WHERE ename = 'SMITH'
	)


-- (3)．列出受雇日期晚于其直接上级的所有员工。
SELECT worker.ename AS '员工名', worker.hiredate AS '员工入职时间',
	leader.ename  AS '上级名', leader.hiredate AS '上级入职时间' 
	FROM emp worker , emp leader
	WHERE worker.hiredate > leader.hiredate 
	AND worker.mgr = leader.empno;


-- (4)．列出部门名称和这些部门的员工信息，同时列出那些没有员工的部门。
SELECT dname, emp.*
	FROM dept 
	LEFT JOIN emp ON dept.deptno = emp.deptno 

-- (5)．列出所有“CLERK”（办事员）的姓名及其部门名称。
SELECT ename, dname , job
	FROM emp, dept
	WHERE job = 'CLERK' AND emp.deptno = dept.deptno

-- (6)．列出最低薪金大于1500的各种工作。
SELECT MIN(sal) AS min_sal , job
	FROM emp
	GROUP BY job
	HAVING min_sal > 1500


-- (7)．列出在部门“SALES”（销售部）工作的员工的姓名。
SELECT ename, dname
	FROM emp , dept
	WHERE emp.deptno = dept.deptno AND dname = 'SALES'


-- (8)．列出薪金高于公司平均薪金的所有员工。
SELECT *
	FROM emp
	WHERE sal > (
		SELECT AVG(sal) 
			FROM emp
	)


-- (9)．列出与“SCOTT”从事相同工作的所有员工。
SELECT * 
	FROM emp
	WHERE job = (
		SELECT job 
			FROM emp
			WHERE ename = 'SCOTT'
	) AND ename != 'SCOTT'


-- (10)．列出薪金高于所在部门30的工作的所有员工的薪金的员工姓名和薪金。先查询出30部门的最高工资
SELECT ename, sal 
	FROM emp 
	WHERE sal > (
		SELECT MAX(sal) 
			FROM emp
			WHERE deptno = 30
	)


-- (11)．列出在每个部门工作的员工数量、平均工资和平均服务期限(时间单位)。
SELECT COUNT(*) AS "部门员工数量", deptno , AVG(sal) AS "部门平均工资" , 
	FORMAT(AVG(DATEDIFF(NOW(), hiredate) / 365 ),2) AS " 平均服务期限(年)"
	FROM emp 
	GROUP BY deptno


-- (12)．列出所有员工的姓名、部门名称和工资。
-- 就是 emp 和 dept 联合查询 ，连接条件就是 emp.deptno = dept.deptno


-- (13)．列出所有部门的详细信息和部门人数。
-- 1. 先得到各个部门人数 , 把下面的结果看成临时表 和 dept表联合查询
SELECT COUNT(*) AS c , deptno 
	FROM emp
	GROUP BY deptno

-- 2. 
SELECT dept.*, tmp.c AS "部门人数"
	FROM dept, (
		SELECT COUNT(*) AS c , deptno 
		FROM emp
		GROUP BY deptno
	) tmp 
	WHERE dept.deptno = tmp.deptno


-- (14)．列出各种工作的最低工资。
SELECT MIN(sal), job
	FROM emp
	GROUP BY job


-- (15)．列出MANAGER（经理）的最低薪金。
SELECT MIN(sal), job
	FROM emp
	WHERE job = 'MANAGER'


-- (16)．列出所有员工的年工资,按年薪从低到高排序。
-- 先得到员工的年工资
SELECT ename, (sal + IFNULL(comm, 0)) * 12 year_sal
	FROM emp
	ORDER BY year_sal
