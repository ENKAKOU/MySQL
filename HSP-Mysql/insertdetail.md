#insert 语句的细节

> 插入的数据应与字段的数据类型相同。 比如：把'abc'添加到int类型会错误
>
``` sql 
INSERT INTO `goods` (id, goods_name, price) 
	VALUES('HSP', '小米手机', 2000);
``` 
	
> 数据的长度应在列的规定范围内。 例如：不能将一个长度为80的字符串加入到长度为40的列中。
> 
``` sql 
INSERT INTO `goods` (id, goods_name, price) 
	VALUES(40, 'vivo手机vivo手机vivo手机vivo手机vivo手机', 3000);
``` 
	
> 在values中列出的数据位置必须与被加入的列的排列位置相对应。
>
``` sql 
INSERT INTO `goods` (id, goods_name, price)  -- 不对
	VALUES('vivo手机',40, 2000);
``` 
	
> 字符和日期型数据应包含在单引号中。
>
``` sql 
INSERT INTO `goods` (id, goods_name, price) 
	VALUES(40, vivo手机, 3000); -- 错误的 vivo手机 应该 'vivo手机'
``` 
	
> 列可以插入空值[该字段允许为空]，insert into table value(null)
>
``` sql 
INSERT INTO `goods` (id, goods_name, price) 
	VALUES(40, 'vivo手机', NULL);
``` 
	
> insert into tab_name (列名..)  values (),(),()  形式添加多条记录
>
``` sql 
INSERT INTO `goods` (id, goods_name, price) 
	VALUES(50, '三星手机', 2300),(60, '海尔手机', 1800);
``` 
	
> 如果是给表中的所有字段添加数据，可以不写前面的字段名称
>
``` sql 
INSERT INTO `goods`   
	VALUES(70, 'IBM手机', 5000);
``` 
	
> 默认值的使用，当不给某个字段值时，如果有默认值就会添加默认值，否则报错
>
> -如果某个列 没有指定 not null ,那么当添加数据时，没有给定值，则会默认给null
>
> -如果我们希望指定某个列的默认值，可以在创建表时指定
>
``` sql 
INSERT INTO `goods` (id, goods_name)   
	VALUES(80, '格力手机');

SELECT * FROM goods;

INSERT INTO `goods2` (id, goods_name)   
	VALUES(10, '顺平手机');
SELECT * FROM goods2;
``` 

