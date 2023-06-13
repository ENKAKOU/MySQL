# delete 语句

> 删除表中名称为 "老妖怪" 的记录。  <br>
```sql
DELETE FROM employee 
	WHERE user_name = "老妖怪";
```
	
> 删除表中所有记录(一定要小心)  <br>
```sql
DELETE FROM employee;
```

> Delete语句不能删除某一列的值（可使用update 设为 null 或者 " "）;  <br>
```sql
UPDATE employee SET job = " " WHERE user_name = "老妖怪";

SELECT * FROM employee
```

> 要删除这个表;  <br>
```sql
DROP TABLE employee;
```
