# 字符串相关函数的使用（使用emp 演示）

> CHARSET(str)返回字串字符集
>
```sql
SELECT CHARSET(ename) FROM emp;
```

> CONCAT (string2'NBSP' [,... ])连接字串, 将多个列拼接成一列
```sql
SELECT CONCAT(ename, " 工作是 ", job) FROM emp;
```

> INSTR (string ,substring )返回substring在string中出现的位置,没有返回0
>
> dual亚元表, 系统表 可以作为测试表使用
>
```sql
SELECT INSTR("hanshunping", "ping") FROM DUAL; 
```

> UCASE (string2 )转换成大写
>
```sql
SELECT UCASE(ename) FROM emp;
```

> LCASE (string2 )	转换成小写
>
```sql
 SELECT LCASE(ename) FROM emp;
```

> LEFT (string2 ,length )	从string2中的左边起取length个字符
>
> RIGHT (string2 ,length )	从string2中的右边起取length个字符
>
```sql
SELECT LEFT(ename, 2) FROM emp;
```

> LENGTH (string )string长度[按照字节]
>
```sql
SELECT LENGTH(ename) FROM emp;
```

> REPLACE (str ,search_str ,replace_str ) 	
>
> 在str中用replace_str替换search_str
>
> 如果是manager就换成经理
>
```sql
SELECT ename, REPLACE(job, "MANAGER", "经理")  FROM emp;
```

> STRCMP (string1 ,string2 )逐字符比较两字串大小
>
```sql
SELECT STRCMP("hsp", "hsp") FROM DUAL;
```

> SUBSTRING (str , position'NBSP' [,length])	
>
> 从str的position开始【从1开始计算】,取length个字符
>
> 从ename 列的第一个位置开始取出2个字符
>
```sql
SELECT SUBSTRING(ename, 1, 2) FROM emp;
```

> LTRIM (string2 ) RTRIM (string2 )  TRIM(string)
> 去除前端空格或后端空格
```sql
 SELECT LTRIM("   韩顺平教育   ") FROM DUAL;
 SELECT RTRIM("韩顺平教育   ") FROM DUAL;
 SELECT TRIM("  韩顺平教育  ") FROM DUAL;
```


> 练习: 以首字母小写的方式显示所有员工emp表的姓名
>
```sql
SELECT CONCAT(LCASE(SUBSTRING(ename,1,1)),  SUBSTRING(ename,2)) AS new_name
 	FROM emp;  
 
 SELECT CONCAT(LCASE(LEFT(ename,1)),  SUBSTRING(ename,2)) AS new_name
 	FROM emp; 
```
 
  
 
