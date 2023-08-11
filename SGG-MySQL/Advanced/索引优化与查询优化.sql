# 06-索引优化与查询优化


#1. 数据准备
CREATE DATABASE atguigudb2;

USE atguigudb2;

#建表
CREATE TABLE 'class' (
  'id' INT(11) NOT NULL AUTO_INCREMENT,
  'className' VARCHAR(30) DEFAULT NULL,
  'address' VARCHAR(40) DEFAULT NULL,

)