# 创建表的课堂练习

> 字段:  属性;  <br> 
> - Id:  整形 <br>
> - name:  字符型; <br>
> - sex:  字符型;  <br>
> - brithday:  日期型（date）;  <br>
> - entry_date:  日期型(date);  <br>
> - job:  字符型;  <br>
> - Salary:  小数型;   <br>
> - resume:  文本型;  <br>
```sql
CREATE TABLE "emp" (
	id INT,
	"name" VARCHAR(32),
	sex CHAR(1), 
	brithday DATE,
	entry_date DATETIME,
	job VARCHAR(32),
	salary DOUBLE,
	"resume" TEXT) CHARSET utf8 COLLATE utf8_bin ENGINE INNODB;
```

> 添加一条
>
```sql
INSERT INTO "emp"
	VALUES(100, "小妖怪", "男", '2000-11-11', 
		"2010-11-10 11:11:11", "巡山的", 3000, "大王叫我来巡山");
		
SELECT * FROM "emp";
```