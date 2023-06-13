# select 语句的使用

> 统计每个学生的总分;  <br>
```sql
SELECT "name", (chinese+english+math) FROM student;
```

> 在所有学生总分加10分的情况;  <br>
```sql
SELECT "name", (chinese + english + math + 10) FROM student;
```

> 使用别名表示学生分数。;  <br>
```sql
SELECT "name" AS "名字", (chinese + english + math + 10) AS total_score 
	FROM student;

```
