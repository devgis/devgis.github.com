---
layout: default
title: 开源
permalink: /opensource/
---

## 图表

六、用一条SQL语句查询出每门课都大于80分的学生
能跑吗

| name | kecheng | fenshu |
| :--- | :------ | :----- |
| 张三   | 语文      | 81     |
| 张三   | 数学      | 75     |
| 李四   | 语文      | 76     |
| 李四   | 数学      | 90     |
| 王五   | 语文      | 81     |
| 王五   | 数学      | 100    |
| 王五   | 英语      | 90     |

mysql> select a.name 姓名 -> from -> (select name,count(\*) anum from NO\_6 where fenshu>80 group by name) a, -> (select name,count(\*) bnum from NO\_6 group by name) b -> where a.name=b.name -> and a.anum=b.bnum;

 

 

七、怎么把这样一个表

| Year | month | amount |
| :--- | :---- | :----- |
| 1991 | 1     | 1.1    |
| 1991 | 2     | 1.2    |
| 1991 | 3     | 1.3    |
| 1991 | 4     | 1.4    |
| 1992 | 1     | 2.1    |
| 1992 | 2     | 2.2    |
| 1992 | 3     | 2.3    |
| 1992 | 4     | 2.4    |

查成这样一个结果

| year | M1  | M2  | M3  | M4  |
| :--- | :-- | :-- | :-- | :-- |
| 1991 | 1.1 | 1.2 | 1.3 | 1.4 |
| 1992 | 2.1 | 2.2 | 2.3 | 2.4 |

