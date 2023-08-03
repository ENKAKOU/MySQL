/*
变量：
	系统变量 （全局系统变量、会话系统变量）

	用户自定义变量（会话用户变量、局部变量）
*/

#练习1: 测试变量的使用
#      存储函数的练习

#0. 准备工作
CREATE DATABASE test16_var_cursor;

USE test16_var_cursor;

CREATE TABLE employees
AS
SELECT * FROM atguigudb.`employees`;

CREATE TABLE departments
AS
SELECT * FROM atguigudb.`departments`;

SET GLOBAL log_bin_trust_function_creators = 1;



#无参有返回
#1. 创建函数get_count(), 返回公司的员工个数

DELIMITER $

CREATE FUNCTION get_count()
RETURNS INT

BEGIN
	#声明局部变量
	DECLARE emp_count INT;

	#赋值
	SELECT COUNT(*) INTO emp_count FROM employees;

	RETURN emp_count;
END $

DELIMITER ;

#调用
SELECT get_count();



#有参有返回
#2. 创建函数ename_salary(), 根据员工姓名, 返回它的工资

DELIMITER $

CREATE FUNCTION ename_salary(emp_name VARCHAR(15))
RETURNS DOUBLE

BEGIN
	#声明变量
	SET @sal = 0; #定义了一个会话用户变量

	#赋值
	SELECT salary INTO @sal FROM employees WHERE last_name = emp_name;

	RETURN @sal;
END $

DELIMITER ;

#调用
SELECT ename_salary('Abel');

SELECT @sal;



#3. 创建函数dept_sal(), 根据部门名, 返回该部门的平均工资

DELIMITER //

CREATE FUNCTION dept_sal(dept_name VARCHAR(15))
RETURNS DOUBLE

BEGIN
	DECLARE avg_sal DOUBLE;

	SELECT AVG(salary) INTO avg_sal
	FROM employees e JOIN departments d
	ON e.department_id = d.department_id
	WHERE d.department_name = dept_name;

	RETURN avg_sal;

END //

DELIMITER ;

#调用

SELECT * FROM departments;

SELECT dept_sal('Marketing');