# bit类型使用

> 说明:  <br>
> - 1.bit(m) m 在 1-64;  <br>
> - 2.添加数据范围,按照你给的位数来确定，比如:  m = 8 ; 表示一个字节 0~255;  <br>
> - 3.显示按照bit;  <br>
> - 4.查询时，仍然可以按照数来查询;  <br>
```sql
CREATE TABLE t05 (num BIT(8));
INSERT INTO t05 VALUES(255); 
SELECT * FROM t05;
SELECT * FROM t05 WHERE num = 1;
```