---
layout: post
title: 数据库
description: 各种数据库Oracle、Sql Server相关知识学习梳理
date: 2022-10-01 09:01:01
updatedate: 2023-10-31 14:34:01
---

- [数据库基础](#数据库基础)
  - [锁](#锁)
    - [数据库角度](#数据库角度)
      - [独占锁（Exclusive Lock）](#独占锁exclusive-lock)
      - [共享锁（Shared Lock）](#共享锁shared-lock)
      - [更新锁（Update Lock）](#更新锁update-lock)
    - [程序员角度](#程序员角度)
      - [乐观锁（Optimistic Lock）](#乐观锁optimistic-lock)
      - [悲观锁（Pessimistic Lock）](#悲观锁pessimistic-lock)
  - [数据库中事务的 ](#数据库中事务的)
    - [ACID 原则](#acid-原则)
      - [原子性 (Atomicity)：](#原子性-atomicity)
      - [一致性 (Consistency)：](#一致性-consistency)
      - [隔离性(Isolation)：](#隔离性isolation)
      - [持久性(Durability)：](#持久性durability)
  - [事务隔离级别:](#事务隔离级别)
    - [read uncommited（读取未提交数据），](#read-uncommited读取未提交数据)
    - [read commited（读取已提交数据）读取的默认方式，](#read-commited读取已提交数据读取的默认方式)
    - [repeatable read（可重复读），](#repeatable-read可重复读)
    - [serializable（可序列化），](#serializable可序列化)
    - [SNAPSHOT ISOLATION（快照，MSSQL独有），](#snapshot-isolation快照mssql独有)
- [Oracle](#oracle)
  - [数据库结构](#数据库结构)
    - [体系结构](#体系结构)
      - [实例](#实例)
      - [数据库](#数据库)
        - [数据文件](#数据文件)
        - [控制文件](#控制文件)
        - [日志文件](#日志文件)
    - [服务器结构](#服务器结构)
      - [系统全局区](#系统全局区)
        - [数据高速缓冲区](#数据高速缓冲区)
        - [重做日志缓冲区](#重做日志缓冲区)
        - [共享池](#共享池)
        - [Large Pool](#large-pool)
      - [后台进程](#后台进程)
        - [DBWn](#dbwn)
        - [LGWR](#lgwr)
        - [SMON](#smon)
        - [PMON](#pmon)
        - [ARCH](#arch)
        - [......](#)
      - [程序全局区](#程序全局区)
    - [数据字典](#数据字典)
      - [数据字典构成](#数据字典构成)
        - [USER\_](#user_)
        - [ALL\_](#all_)
        - [DBA\_](#dba_)
        - [V$\_](#v_)
        - [GV\_](#gv_)
      - [常用数据字典](#常用数据字典)
    - [TCL](#tcl)
  - [PL/SQL](#plsql)
    - [概述](#概述)
    - [PL/SQL编程](#plsql编程)
      - [基本语言块](#基本语言块)
      - [字符集](#字符集)
      - [注释](#注释)
      - [数据类型](#数据类型)
      - [变量和常量](#变量和常量)
      - [表达式和运算符](#表达式和运算符)
      - [流程控制](#流程控制)
        - [if-then-elsif-then-else](#if-then-elsif-then-else)
        - [case-when-else](#case-when-else)
        - [loop-exit](#loop-exit)
        - [for-loop](#for-loop)
        - [while-loop](#while-loop)
    - [过程和函数](#过程和函数)
      - [过程](#过程)
      - [函数](#函数)
    - [错误处理](#错误处理)
      - [预定义异常](#预定义异常)
        - [DUP\_VAL\_ON\_INDEX](#dup_val_on_index)
        - [LOGIN\_DENIED](#login_denied)
        - [NO\_DATA\_FOUND](#no_data_found)
        - [TOO\_MANY\_ROWS](#too_many_rows)
        - [ZERO\_DIVIDE](#zero_divide)
        - [VALUE\_ERROR](#value_error)
        - [CASE\_NOT\_FOUND](#case_not_found)
      - [自定义异常](#自定义异常)
        - [RAISE](#raise)
      - [异常函数](#异常函数)
        - [SQLCODE](#sqlcode)
        - [QLERRM](#qlerrm)
    - [包](#包)
      - [包头](#包头)
      - [包体](#包体)
      - [重载](#重载)
    - [集合](#集合)
      - [三种类型](#三种类型)
        - [index-by表](#index-by表)
        - [嵌套表](#嵌套表)
        - [可变数组](#可变数组)
      - [属性和方法](#属性和方法)
        - [COUNT](#count)
        - [DELETE](#delete)
        - [EXISTS](#exists)
        - [EXTEND](#extend)
        - [FIRST/LAST](#firstlast)
        - [NEXT/PRIOR](#nextprior)
    - [游标](#游标)
      - [显示游标](#显示游标)
      - [隐式游标](#隐式游标)
      - [游标for循环](#游标for循环)
      - [游标变量](#游标变量)
  - [数据库管理](#数据库管理)
    - [管理控制文件](#管理控制文件)
    - [管理日志文件](#管理日志文件)
    - [管理表空间和数据文件](#管理表空间和数据文件)
    - [模式对象管理](#模式对象管理)
    - [表分区和索引分区](#表分区和索引分区)
    - [用户管理与安全](#用户管理与安全)
    - [数据完整性和数据约束](#数据完整性和数据约束)
  - [数据库优化](#数据库优化)
    - [系统调整](#系统调整)
    - [SQL语句优化](#sql语句优化)
      - [常用优化技巧](#常用优化技巧)
        - [不要用\*代替列名](#不要用代替列名)
        - [用truncate代替delete](#用truncate代替delete)
        - [在确保完整性的情况下多用commit语句](#在确保完整性的情况下多用commit语句)
        - [尽量减少表查询的次数](#尽量减少表查询的次数)
        - [用not exists代替in/not in](#用not-exists代替innot-in)
        - [用not exists代替distinct](#用not-exists代替distinct)
        - [有效利用共享游标](#有效利用共享游标)
        - [以合理的方式使用函数](#以合理的方式使用函数)
      - [表的连接方法](#表的连接方法)
        - [选择from表的顺序](#选择from表的顺序)
        - [选择驱动表](#选择驱动表)
        - [where子句的连接顺序](#where子句的连接顺序)
      - [有效使用索引](#有效使用索引)
        - [索引列的选择](#索引列的选择)
        - [复合索引有时比单列索引有更好的性能](#复合索引有时比单列索引有更好的性能)
        - [避免对大表的全表扫描](#避免对大表的全表扫描)
        - [监视索引是否被使用](#监视索引是否被使用)
      - [优化器](#优化器)
      - [执行计划管理](#执行计划管理)
      - [SQL重演](#sql重演)
  - [备份与恢复](#备份与恢复)
    - [RMAN(Recovery Manager)工具](#rmanrecovery-manager工具)
    - [闪回技术](#闪回技术)
      - [flashback](#flashback)
      - [show recyclebin](#show-recyclebin)
    - [数据导入/导出](#数据导入导出)
      - [导出exp](#导出exp)
      - [导入imp](#导入imp)
  - [数据库集群技术](#数据库集群技术)
    - [RAC应用](#rac应用)
    - [ASM](#asm)
    - [容灾和数据卫士](#容灾和数据卫士)
    - [故障诊断](#故障诊断)
  - [商业智能与数据仓库](#商业智能与数据仓库)
    - [多维数据库](#多维数据库)
    - [数据挖掘](#数据挖掘)
  - [Oracle事务隔离级别](#oracle事务隔离级别)
- [MSSQL](#mssql)
  - [存储过程](#存储过程)
  - [索引](#索引)
    - [聚集索引](#聚集索引)
    - [非聚集索引](#非聚集索引)
  - [数据优化](#数据优化)
  - [并发](#并发)
  - [灾难恢复](#灾难恢复)
  - [RAC](#rac)
  - [行列转换](#行列转换)
    - [行转列PIVOT](#行转列pivot)
    - [列转行UNPIVOT](#列转行unpivot)
  - [Sql Server事务隔离级别](#sql-server事务隔离级别)
- [MySQL](#mysql)
  - [Ubuntu Docker部署mysql](#ubuntu-docker部署mysql)
  - [MySQL事务隔离级别](#mysql事务隔离级别)
- [SQL语言](#sql语言)
  - [ANSI SQL](#ansi-sql)
  - [DDL](#ddl)
    - [create](#create)
      - [常用数据类型](#常用数据类型)
      - [表](#表)
      - [主键](#主键)
      - [外键](#外键)
      - [约束](#约束)
      - [索引](#索引-1)
      - [视图](#视图)
      - [序列](#序列)
      - [同义词](#同义词)
    - [drop](#drop)
    - [alter](#alter)
  - [DML（DML：Data Manipulation Language）](#dmldmldata-manipulation-language)
    - [insert](#insert)
      - [插入数据](#插入数据)
      - [复制表数据](#复制表数据)
    - [update](#update)
    - [merge](#merge)
    - [delete](#delete-1)
    - [truncate](#truncate)
  - [DQL（DQL: Data Query Language）](#dqldql-data-query-language)
    - [select](#select)
      - [from子句](#from子句)
      - [投影](#投影)
      - [where子句](#where子句)
      - [比较运算符](#比较运算符)
    - [基本函数](#基本函数)
    - [集合操作](#集合操作)
    - [子查询](#子查询)
  - [DCL(数据控制语言 Data Control Language )](#dcl数据控制语言-data-control-language-)
  - [TCL（事务控制语言）](#tcl事务控制语言)
  - [CCL（指针控制语言）](#ccl指针控制语言)
- [NoSQL](#nosql)
  - [键值数据库](#键值数据库)
  - [文档数据库](#文档数据库)
  - [列族数据库](#列族数据库)
  - [图数据库](#图数据库)
- [LiteDB：本地化NOSQL](#litedb本地化nosql)
  - [特点](#特点)
  - [LiteDB使用基本案例](#litedb使用基本案例)
    - [创建实体类](#创建实体类)
    - [使用Demo](#使用demo)
  - [使用场景](#使用场景)
  - [LiteDB的技术细节](#litedb的技术细节)
    - [LiteDB的工作原理](#litedb的工作原理)
    - [LiteDB的查询](#litedb的查询)
    - [LiteDB的查询示例](#litedb的查询示例)

## 数据库基础

### 锁

#### 数据库角度

##### 独占锁（Exclusive Lock）

> 独占锁锁定的资源只允许进行锁定操作的程序使用，其它任何对它的操作均不会被接受。

> 执行数据更新命令，即INSERT、 UPDATE 或DELETE 命令时，SQL Server 会自动使用独占锁。

> 但当对象上有其它锁存在时，无法对其加独占锁。独占锁一直到事务结束才能被释放。

##### 共享锁（Shared Lock）

> 共享锁锁定的资源可以被其它用户读取，但其它用户不能修改它。

> 在SELECT 命令执行时，SQL Server 通常会对对象进行共享锁锁定。

> 通常加共享锁的数据页被读取完毕后，共享锁就会立即被释放。

##### 更新锁（Update Lock）

> 更新锁是为了防止死锁而设立的。当SQL Server 准备更新数据时，它首先对数据对象作更新锁锁定，这样数据将不能被修改，但可以读取。等到SQL Server 确定要进行更新数据操作时，

> 它会自动将更新锁换为独占锁。但当对象上有其它锁存在时，无法对其作更新锁锁定。

#### 程序员角度

##### 乐观锁（Optimistic Lock）

> 乐观锁假定在处理数据时，不需要在应用程序的代码中做任何事情就可以直接在记录上加锁、即完全依靠数据库来管理锁的工作。

> 一般情况下，当执行事务处理时SQL Server会自动对事务处理范围内更新到的表做锁定。

##### 悲观锁（Pessimistic Lock）

> 悲观锁对数据库系统的自动管理不感冒，需要程序员直接管理数据或对象上的加锁处理，并负责获取、共享和放弃正在使用的数据上的任何锁。

### 数据库中事务的 

#### ACID 原则

##### 原子性 (Atomicity)：

> 事务的原子性是指一个事务中包含的一条语句或者多条语句构成了一个完整的逻辑单元，这个逻辑单元具有不可再分的原子性。这个逻辑单元要么一起提交执行全部成功，要么一起提交执行全部失败。

##### 一致性 (Consistency)：

> 可以理解为数据的完整性，事务的提交要确保在数据库上的操作没有破坏数据的完整性，比如说不要违背一些约束的数据插入或者修改行为。一旦破坏了数据的完整性，SQL Server 会回滚这个事务来确保数据库中的数据是一致的。

##### 隔离性(Isolation)：

> 与数据库中的事务隔离级别以及锁相关，多个用户可以对同一数据并发访问而又不破坏数据的正确性和完整性。但是，并行事务的修改必须与其它并行事务的修改相互独立，隔离。但是在不同的隔离级别下，事务的读取操作可能得到的结果是不同的。

##### 持久性(Durability)：

> 数据持久化，事务一旦对数据的操作完成并提交后，数据修改就已经完成，即使服务重启这些数据也不会改变。相反，如果在事务的执行过程中，系统服务崩溃或者重启，那么事务所有的操作就会被回滚，即回到事务操作之前的状态。

### 事务隔离级别:

> > 1、用于控制并发用户如何读写数据的操做。

> > 2、读操作默认使用共享锁；写操作需要使用排它锁。

> > 3、读操作能够控制他的处理的方式，写操作不能控制它的处理方式

> read uncommited（读取未提交数据），

> read commited（读取已提交数据）读取的默认方式，（ORACLE 默认）

> repeatable read（可重复读），（MySQL,MSSQL 默认）

> serializable（可序列化），

> snapshot（快照），

> read commited 

> snapshot（已经提交读隔离）（后两个是sql server 2005 里面 引入的）。

> > 隔离的强度依次递增。

> > 隔离级别越高,读操作的请求锁定就越严格,

> > 锁的持有时间久越长;所以隔离级别越高,

> > 一致性就越高,并发性就越低,同时性能也相对影响越大.

#### read uncommited（读取未提交数据），

> > read uncommitted：最低的隔离级别：查询的时候不会请求共享锁，

> 所以不会和排它锁产生冲突（不会等待排它锁执行完），

> 查询效率非常高，速度飞快。但是缺点：会查到“脏数据”

> （排它锁的事务已经将数据修改，还没提交，这个时候查询到的数据 是已经更改过的。如果事务回滚，就是“脏数据”）

> 优点：查询效率非常高，速度非常快。

> 缺点：会产生“脏数据”

> 适用性：

> 适用于 像聊天软件的 聊天记录，会是软件的运行速度非常快。 但是不适用于 商务软件。尤其是银行

set transaction isolation level read uncommitted;

#### read commited（读取已提交数据）读取的默认方式，

> > 读取的默认隔离级别就是read committed 和上面正好相反。

> 如果上面情况，采用read committed 隔离级别查询的话查到的就是还没有更改之前的数据。

> set transaction isolation level read committed;

#### repeatable read（可重复读），

> > 查询的时候会加上共享锁，但是查询完成之后，共享锁就会被撤销。

> 比如一些购票系统，如果查到票了，当买的时候就没有，这是不行的。

> 所以要在查询到数据之后做一些延迟共享锁，进而阻塞排它锁来修改。

> （如果查询的事务没有提交，不会释放共享锁，这个时候独占锁就不能访问这条数据）

> 注意：

> 1、repeatable 只会锁定查询的数据 ，而 其他行数据还可以进行 修改（更新、删除）（下面那条语句共享锁只会锁定 shipperid为4 的行）

> 2、其他进行插入数据，并且插入的数据满足第一次开始事务时的 查询的筛选条件的时候；

> 第二次查询的时候就会将新插入的数据 查询出来。这就叫做“幻读”（解决幻读，需要更高级别的隔离，就是下面的serializable）

> set transaction isolation level repeatable read;

#### serializable（可序列化），

> > 更高级的 隔离。用户解决“幻读”（上面提到的）。

> 就是使用上面的（repeatable read） 加上共享锁 并不撤销，如果锁定的 一行数据，

> 那么 其他的进程 还可以对 其他的数据进行操作，也可以 进行新增和删除的操作。

> 所以如果想要在查询的时候，不能对整张表进行任何操作，

> 那么就要 将表的结构也 锁定  （就需要使用 更强的 锁定）

> set transaction isolation level serializable;

> > ISO只规定以上四级

#### SNAPSHOT ISOLATION（快照，MSSQL独有），

> > 为数据产生一个临时数据库，当sql server 数据更新之前将当前数据库复制到 tempdb数据库里面，

> 查询就是从tempdb数据库中查询，但是不能再 使用 snapshot 线程的事务内执行 修改操作，

> 因为不能修改 旧版本数据库（tempdb），会报错。

> snapshot隔离级别，读操作 不适用 共享锁，使用的是“行版本控制”，

> 所以读数据的性能效率很高，但是修改操作性能就降低的很多。

> 因为是将 数据库 中的数据 复制到 tempdb 数据库中，所以不会产生 幻读。

> set transaction isolation level snapshot;

> >带来两个问题：

> > 1、当 另外一个事务 已经提交，但是这边的查询到数据还是没有修改。因为 每次查询到的快照是针对于 本次回话对应的那个 transaction 的，因为在这个事务里面是没有修改的，所以查询到的数据是没有修改的。

> > 2、（更新问题）因为 那边的数据已经是 飞凤公司了，但是这里还是  联邦,所以,在这个事务里面是不能对表进行修改,因为访问的是临时数据库,想要对 数据库修改是不可能的（sql server 就会报错，阻止修改） 

## Oracle

### 数据库结构

#### 体系结构

##### 实例

> 一般情况下Oracle数据库都是一个数据库包含一个实例

##### 数据库

###### 数据文件

####### 表空间

> SYSTEM表空间

> SYSAUX表空间

> 撤销表空间

> USERS表空间

####### 数据文件

> 系统数据

> 用户数据

####### 说明

> 表空间是一个数据库的逻辑区域

> 每个表空间由一个或多个数据文件组成

> 一个数据文件只能属于一个表空间

###### 控制文件

###### 日志文件

####### 重做日志文件

####### 归档日志文件

#### 服务器结构

##### 系统全局区

###### 数据高速缓冲区

###### 重做日志缓冲区

###### 共享池

###### Large Pool

##### 后台进程

###### DBWn

###### LGWR

###### SMON

###### PMON

###### ARCH

###### ......

##### 程序全局区

#### 数据字典

> 存放整个数据库实例重要信息的一组表，多数表归sys用户所有

##### 数据字典构成

###### USER_

> 记录用户对象信息

###### ALL_

> 记录用户的对象信息及被授权访问的对象信息

###### DBA_

> 包含数据库实例的所有对象信息

###### V$_

> 当前实例的动态视图

###### GV_

> 分布式环境下所有实例的动态视图

##### 常用数据字典

> DBA_TABLES(=TABS)

> DBA_TAB_COLUMNS(=COLS)

> DBA_VIEWS

> DBA_SYNONYMS(=SYN)

> DBA_SEQUENCES(=SEQ)

> DBA_CONSTRAINTS

> DBA_INDEXES(=IND)

> DBA_IND_COLUMNS

> DBA_TRIGGERS

> DBA_SOUCE

> DBA_SEGMENTS

> DBA_EXTENTS

> DBA_OBJECTS

#### TCL

> commit

> rollback

> savepoint

### PL/SQL

#### 概述

#### PL/SQL编程

##### 基本语言块

##### 字符集

##### 注释

##### 数据类型

##### 变量和常量

##### 表达式和运算符

##### 流程控制

###### if-then-elsif-then-else

###### case-when-else

###### loop-exit

###### for-loop

###### while-loop

#### 过程和函数

##### 过程

##### 函数

#### 错误处理

##### 预定义异常

###### DUP_VAL_ON_INDEX

###### LOGIN_DENIED

###### NO_DATA_FOUND

###### TOO_MANY_ROWS

###### ZERO_DIVIDE

###### VALUE_ERROR

###### CASE_NOT_FOUND

##### 自定义异常

###### RAISE

##### 异常函数

###### SQLCODE

###### QLERRM

#### 包

##### 包头

##### 包体

##### 重载

#### 集合

##### 三种类型

###### index-by表

###### 嵌套表

###### 可变数组

##### 属性和方法

###### COUNT

###### DELETE

###### EXISTS

###### EXTEND

###### FIRST/LAST

###### NEXT/PRIOR

#### 游标

##### 显示游标

##### 隐式游标

##### 游标for循环

##### 游标变量

### 数据库管理

#### 管理控制文件

#### 管理日志文件

#### 管理表空间和数据文件

#### 模式对象管理

#### 表分区和索引分区

#### 用户管理与安全

#### 数据完整性和数据约束

### 数据库优化

#### 系统调整

#### SQL语句优化

##### 常用优化技巧

###### 不要用*代替列名

###### 用truncate代替delete

###### 在确保完整性的情况下多用commit语句

###### 尽量减少表查询的次数

###### 用not exists代替in/not in

###### 用not exists代替distinct

###### 有效利用共享游标

###### 以合理的方式使用函数

##### 表的连接方法

###### 选择from表的顺序

####### 小表放在最右

###### 选择驱动表

###### where子句的连接顺序

####### 能够过滤掉最多记录的的条件放在最右

##### 有效使用索引

###### 索引列的选择

####### where从句频繁使用的列

####### 频繁用于表连接的列

####### 不要将频繁修改的列用作索引

####### 用于函数中的列应当考虑建立函数索引

###### 复合索引有时比单列索引有更好的性能

###### 避免对大表的全表扫描

####### 导致全表扫描的情况

> 查询的表没有索引

> 需要返回所有的行

> 条件中有LIKE且使用了%

> 对索引列使用了函数

> 条件中有IS NULL或IS NOT NULL

###### 监视索引是否被使用

####### alter index idx_name monitoring usage;

##### 优化器

##### 执行计划管理

##### SQL重演

### 备份与恢复

#### RMAN(Recovery Manager)工具

#### 闪回技术

##### flashback

##### show recyclebin

#### 数据导入/导出

##### 导出exp

##### 导入imp

### 数据库集群技术

#### RAC应用

#### ASM

#### 容灾和数据卫士

#### 故障诊断

### 商业智能与数据仓库

#### 多维数据库

#### 数据挖掘

### Oracle事务隔离级别

> 设置事务隔离级别

> > 设置一个事务的隔离级别：

> SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

> SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

> SET TRANSACTION READ ONLY;

> SET TRANSACTION READ WRITE;

> > 注意：这些语句是互斥的，不能同时设置两个或两个以上的选项。

> > 设置单个会话的隔离级别：

> ALTER SESSION SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

> ALTER SESSION SET TRANSACTION ISOLATION SERIALIZABLE;

> 隔离级别	脏读	不可重复读	幻读

> Read Uncommited	Y	Y	Y

> Read Commited	N	Y	Y

> Repeatable read	N	N	Y

> Serialized	N	N	N

## MSSQL

### 存储过程

### 索引

#### 聚集索引

#### 非聚集索引

### 数据优化

### 并发

### 灾难恢复

### RAC

### 行列转换

#### 行转列PIVOT

#### 列转行UNPIVOT

### Sql Server事务隔离级别

> > 设置Sql Server事务隔离级别

> 查看 当前 Sql Server 事务隔离级别 的设置： DBCC Useroptions -> isolation level 这一项的 Value 既是当前的设置值

> Transact-SQL 语句中的设置

> 就是在当前 SQL 语句中，设置的事务隔离级别只影响当前 sql 语句, 有两种方式：

> > -- the first method

> > select * from Table1 with(nolock) 

> > -- the second method

> > SET TRANSACTION ISOLATION LEVEL Read UnCommitted;

> > select * from Table1 

> > 这种方式比较灵活，可以重点语句重点对待，缺点就是 要设置的实在是太多了，因为这种方式的作用域实在是太小了啊啊啊啊

> ADO.NET 中的设置

> > System.Data.SqlClient.SqlConnection con = new SqlConnection();

> > con.BeginTransaction(IsolationLevel.ReadUncommitted);

> 隔离级别	支持	遵守

> READ UNCOMMITTED	否	不保证

> READ COMMITTED	是	是

> REPEATABLE READ	否	否

> SNAPSHOT ISOLATION	否	否

> SERIALIZABLE	否	否

## MySQL

### Ubuntu Docker部署mysql

> 1.创建安装目录 mnt为硬盘挂载目录，根据实际情况修改

> > sudo mkdir -p /mnt/mysql

> > cd /mnt/mysql

> > sudo gedit docker-compose.yml

> 2.编写docker-compose.yml

```
version: '3.1'
services:
  db:
    image: mysql:8.0 #mysql版本
    volumes:
      - /data/db:/var/lib/mysql
      - ./etc/my.cnf:/etc/mysql/mysql.conf.d/mysqld.cnf
    restart: always
    ports:
      - 33306:3306
    environment:
      MYSQL_ROOT_PASSWORD: 123456 #访问密码
      secure_file_priv:
```

> 3.创建配置文件

> > cd /mnt/mysql

> >  sudo mkdir etc

> > gedit my.cnf

```
[mysqld]
character-set-server=utf8
log-bin=mysql-bin
server-id=1
pid-file        = /var/run/mysqld/mysqld.pid
socket          = /var/run/mysqld/mysqld.sock
datadir         = /var/lib/mysql
sql_mode=STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION
symbolic-links=0
secure_file_priv =
wait_timeout=120
interactive_timeout=120
default-time_zone = '+8:00'
skip-external-locking
skip-name-resolve
open_files_limit = 10240
max_connections = 1000
max_connect_errors = 6000
table_open_cache = 800
max_allowed_packet = 40m
sort_buffer_size = 2M
join_buffer_size = 1M
thread_cache_size = 32
query_cache_size = 64M
transaction_isolation = READ-COMMITTED
tmp_table_size = 128M
max_heap_table_size = 128M
log-bin = mysql-bin
sync-binlog = 1
binlog_format = ROW
binlog_cache_size = 1M
key_buffer_size = 128M
read_buffer_size = 2M
read_rnd_buffer_size = 4M
bulk_insert_buffer_size = 64M
lower_case_table_names = 1
explicit_defaults_for_timestamp=true
skip_name_resolve = ON
event_scheduler = ON
log_bin_trust_function_creators = 1
innodb_buffer_pool_size = 512M
innodb_flush_log_at_trx_commit = 1
innodb_file_per_table = 1
innodb_log_buffer_size = 4M
innodb_log_file_size = 256M
innodb_max_dirty_pages_pct = 90
innodb_read_io_threads = 4
innodb_write_io_threads = 4
4.docker-compose构建
```

> > cd /mnt/mysql

> > docker-compose up -d

> 5.验证启动状态

> 6.优化指南

max_connections：允许客户端并发连接的最大数量，默认值是151，一般将该参数设置为500-2000
max_connect_errors：如果客户端尝试连接的错误数量超过这个参数设置的值，则服务器不再接受新的客户端连接。可以通过清空主机的缓存来解除服务器的这种阻止新连接的状态，通过FLUSH HOSTS或mysqladmin flush-hosts命令来清空缓存。这个参数的默认值是100，一般将该参数设置为100000。

interactive_timeout：Mysql关闭交互连接前的等待时间，单位是秒，默认是8小时，建议不要将该参数设置超过24小时，即86400

wait_timeout：Mysql关闭非交互连接前的等待时间，单位是秒，默认是8小时，建议不要将该参数设置超过24小时，即86400

skip_name_resolve：如果这个参数设为OFF，则MySQL服务在检查客户端连接的时候会解析主机名；如果这个参数设为ON，则MySQL服务只会使用IP，在这种情况下，授权表中的Host字段必须是IP地址或localhost。
这个参数默认是关闭的

back_log：MySQL服务器连接请求队列所能处理的最大连接请求数，如果队列放满了，后续的连接才会拒绝。当主要的MySQL线程在很短时间内获取大量连接请求时，这个参数会生效。接下来，MySQL主线程会花费很短的时间去检查连接，然后开启新的线程。这个参数指定了MySQL的TCP/IP监听队列的大小。如果MySQL服务器在短时间内有大量的连接，可以增加这个参数。
文件相关参数sync_binlog：控制二进制日志被同步到磁盘前二进制日志提交组的数量。当这个参数为0的时候，二进制日志不会被同步到磁盘；当这个参数设为0以上的数值时，就会有设置该数值的二进制提交组定期同步日志到磁盘。当这个参数设为1的时候，所有事务在提交前会被同步到二进制日志中，因而即使MySQL服务器发生意外重启，任何二进制日志中没有的事务只会处于准备状态，这会导致MySQL服务器自动恢复以回滚这些事务。这样就会保证二进制日志不会丢失事务，是最安全的选项；同时由于增加了磁盘写，这对性能有一定降低。将这个参数设为1以上的数值会提高数据库的性能，但同时会伴随数据丢失的风险。建议将该参数设为2、4、6、8、16。

expire_logs_days：二进制日志自动删掉的时间间隔。默认值为0，代表不会自动删除二进制日志。想手动删除二进制日志，可以执行 PURGE BINARY LOGS。

max_binlog_size：二进制日志文件的最大容量，当写入的二进制日志超过这个值的时候，会完成当前二进制的写入，向新的二进制日志写入日志。这个参数最小值时4096字节；最大值和默认值时1GB。相同事务中的语句都会写入同一个二进制日志，当一个事务很大时，二进制日志实际的大小会超过max_binlog_size参数设置的值。如果max_relay_log_size参数设为0，则max_relay_log_size参数会使用和max_binlog_size参数同样的大小。建议将此参数设为512M。

local_infile：是否允许客户端使用LOAD DATA INFILE语句。如果这个参数没有开启，客户端不能在LOAD DATA语句中使用LOCAL参数。

open_files_limit：操作系统允许MySQL服务打开的文件数量。这个参数实际的值以系统启动时设定的值、max_connections和table_open_cache为基础，使用下列的规则：

10 + max_connections + (table_open_cache * 2)
max_connections * 5
MySQL启动时指定open_files_limit的值

缓存控制参数binlog_cache_size：在事务中二进制日志使用的缓存大小。如果MySQL服务器支持所有的存储引擎且启用二进制日志，每个客户端都会被分配一个二进制日志缓存。如果数据库中有很多大的事务，增大这个缓存可以获得更好的性能。
Binlog_cache_use和Binlog_cache_disk_use这两个参数对于binlog_cache_size参数的优化很有用。binlog_cache_size参数只设置事务所使用的缓存，非事务SQL语句所使用的缓存由binlog_stmt_cache_size系统参数控制。建议不要将这个参数设为超过64MB，以防止客户端连接多而影响MySQL服务的性能。

max_binlog_cache_size：如果一个事务需要的内存超过这个参数，服务器会报错"Multi-statement transaction required more than 'max_binlog_cache_size' bytes"。这个参数最大的推荐值是4GB，这是因为MySQL不能在二进制日志设为超过4GB的情况下正常的工作。建议将该参数设为binlog_cache_size*2。

binlog_stmt_cache_size：这个参数决定二进制日志处理非事务性语句的缓存。如果MySQL服务支持任何事务性的存储引擎且开启了二进制日志，每个客户端连接都会被分配二进制日志事务和语句缓存。如果数据库中经常运行大的事务，增加这个缓存可以获得更好的性能。

table_open_cache：所有线程能打开的表的数量。

thread_cache_size：MySQL服务缓存以重用的线程数。当客户端断开连接的时候，如果线程缓存没有使用满，则客户端的线程被放入缓存中。如果有客户端断开连接后再次连接到MySQL服务且线程在缓存中，则MySQL服务会优先使用缓存中的线程；如果线程缓存没有这些线程，则MySQL服务器会创建新的线程。如果数据库有很多的新连接，可以增加这个参数来提升性能。如果MySQL服务器每秒有上百个连接，可以增大thread_cache_size参数来使MySQL服务器使用缓存的线程。通过检查Connections和Threads_created状态参数，可以判断线程缓存是否足够。这个参数默认的值是由下面的公式来决定的：8 + (max_connections / 100)

建议将此参数设置为300~500。线程缓存的命中率计算公式为(1-thread_created/connections)*100%，可以通过这个公式来优化和调整thread_cache_size参数。
query_cache_size：为查询结果所分配的缓存。默认这个参数是没有开启的。这个参数的值应设为整数的1024倍，如果设为其他值则会被自动调整为接近此数值的1024倍。这个参数最小需要40KB。建议不要将此参数设为大于256MB，以免占用太多的系统内存。

query_cache_min_res_unit：查询缓存所分配的最小块的大小。默认值是4096(4KB)。

query_cache_type：设置查询缓存的类型。当这个参数为0或OFF时，则MySQL服务器不会启用查询缓存；当这个参数为1或ON时，则MySQL服务器会缓存所有查询结果（除了带有SELECT SQL_NO_CACHE的语句）；当这个参数为2或DEMAND时，则MySQL服务器只会缓存带有SELECT SQL_CACHE的语句。

sort_buffer_size：每个会话执行排序操作所分配的内存大小。想要增大max_sort_length参数，需要增大sort_buffer_size参数。如果在SHOW GLOBAL STATUS输出结果中看到每秒输出的Sort_merge_passes状态参数很大，可以考虑增大sort_buffer_size这个值来提高ORDER BY 和 GROUP BY的处理速度。建议设置为1~4MB。当个别会话需要执行大的排序操作时，在会话级别增大这个参数。

read_buffer_size：为每个线程对MyISAm表执行顺序读所分配的内存。如果数据库有很多顺序读，可以增加这个参数，默认值是131072字节。这个参数的值需要是4KB的整数倍。这个参数也用在下面场景中：

当执行ORDER BY操作时，缓存索引到临时文件（不是临时表）中；
执行批量插入到分区表中；
缓存嵌套查询的执行结果。

read_rnd_buffer_size：这个参数用在MyISAM表和任何存储引擎表随机读所使用的内存。当从MyISAM表中以键排序读取数据的时候，扫描的行将使用这个缓存以避免磁盘的扫描。将这个值设到一个较大的值可以显著提升ORDER BY的性能。然后，这个参数会应用到所有的客户端连接，所有不应该将这个参数在全局级别设为一个较大的值；在运行大查询的会话中，在会话级别增大这个参数即可。

join_buffer_size：MySQL服务器用来作普通索引扫描、范围索引扫描和不使用索引而执行全表扫描这些操作所用的缓存大小。通常，获取最快连接的方法是增加索引。当不能增加索引的时候，使全连接变快的方法是增大join_buffer_size参数。对于执行全连接的两张表，每张表都被分配一块连接内存。对于没有使用索引的多表复杂连接，需要多块连接内存。通常来说，可以将此参数在全局上设置一个较小的值，而在需要执行大连接的会话中在会话级别进行设置。默认值是256KB。

net_buffer_length：每个客户端线程和连接缓存和结果缓存交互，每个缓存最初都被分配大小为net_buffer_length的容量，并动态增长，直至达到max_allowed_packet参数的大小。当每条SQL语句执行完毕后，结果缓存会缩小到net_buffer_length大小。不建议更改这个参数，除非你的系统有很少的内存，可以调整这个参数。如果语句需要的内存超过了这个参数的大小，则连接缓存会自动增大。net_buffer_length参数最大可以设置到1MB。不能在会话级别设置这个参数。

max_allowed_packet：网络传输时单个数据包的大小。默认值是4MB。包信息缓存的初始值是由net_buffer_length指定的，但是包可能会增长到max_allowed_packet参数设置的值。如果要使用BLOB字段或长字符串，需要增加这个参数的值。这个参数的值需要设置成和最大的BLOB字段一样的大小。max_allowed_packet参数的协议限制是1GB。这个参数应该是1024整数倍。

bulk_insert_buffer_size：MyISAM表使用一种特殊的树状缓存来提高批量插入的速度，如INSERT ... SELECT,INSERT ... VALUES (...),(...), ...,对空表执行执行LOAD DATA INFILE。这个参数每个线程的树状缓存大小。将这个参数设为0会关闭这个参数。这个参数的默认值是8MB。
max_heap_table_size：这个参数设置用户创建的MEMORY表允许增长的最大容量，这个参数用来MEMORY表的MAX_ROWS值。设置这个参数对已有的MEMORY表没有影响，除非表重建或执行ALTER TABLE、TRUNCATE TABLE语句。

这个参数也和tmp_table_size参数一起来现在内部in-memory表的大小。如果内存表使用频繁，可以增大这个参数的值。

tmp_table_size：内部内存临时表的最大内存。这个参数不会应用到用户创建的MEMORY表。如果内存临时表的大小超过了这个参数的值，则MySQL会自动将超出的部分转化为磁盘上的临时表。在MySQL 5.7.5版本，internal_tmp_disk_storage_engine存储引擎将作为磁盘临时表的默认引擎。在MySQL 5.7.5之前的版本，会使用MyISAM存储引擎。如果有很多的GROUP BY查询且系统内存充裕，可以考虑增大这个参数。

innodb_buffer_pool_dump_at_shutdown：指定在MySQL服务关闭时，是否记录InnoDB缓存池中的缓存页，以缩短下次重启时的预热过程。通常和innodb_buffer_pool_load_at_startup参数搭配使用。innodb_buffer_pool_dump_pct参数定义了保留的最近使用缓存页的百分比。

innodb_buffer_pool_dump_now：立刻记录InnoDB缓冲池中的缓存页。通常和innodb_buffer_pool_load_now搭配使用。

innodb_buffer_pool_load_at_startup：指定MySQL服务在启动时，InnoDB缓冲池通过加载之前的缓存页数据来自动预热。通常和innodb_buffer_pool_dump_at_shutdown参数搭配使用。

innodb_buffer_pool_load_now：立刻通过加载数据页来预热InnoDB缓冲池，无需重启数据库服务。可以用来在性能测试时，将缓存改成到一个已知的状态；或在数据库运行报表查询或维护后，将数据库改成到一个正常的状态。
MyISAM参数key_buffer_size：所有线程所共有的MyISAM表索引缓存，这块缓存被索引块使用。增大这个参数可以增加索引的读写性能，在主要使用MyISAM存储引擎的系统中，可设置这个参数为机器总内存的25%。如果将这个参数设置很大，比如设为机器总内存的50%以上，机器会开始page且变得异常缓慢。可以通过SHOW STATUS 语句查看 Key_read_requests,Key_reads,Key_write_requests, and Key_writes这些状态值。正常情况下Key_reads/Key_read_requests 比率应该小于0.01。数据库更新和删除操作频繁的时候，Key_writes/Key_write_requests 比率应该接近1。

key_cache_block_size：key缓存的块大小，默认值是1024字节。

myisam_sort_buffer_size：在REPAIR TABLE、CREATE INDEX 或 ALTER TABLE操作中，MyISAM索引排序使用的缓存大小。

myisam_max_sort_file_size：当重建MyISAM索引的时候，例如执行REPAIR TABLE、 ALTER TABLE、 或 LOAD DATA INFILE命令，MySQL允许使用的临时文件的最大容量。如果MyISAM索引文件超过了这个值且磁盘还有充裕的空间，增大这个参数有助于提高性能。

myisam_repair_threads：如果这个参数的值大于1，则MyISAM表在执行Repair操作的排序过程中，在创建索引的时候会启用并行，默认值为1。
InnoDB参数innodb_buffer_pool_size：InnDB存储引擎缓存表和索引数据所使用的内存大小。默认值是128MB。在以InnDB存储引擎为主的系统中，可以将这个参数设为机器物理内存的80%。同时需要注意：

设置较大物理内存时是否会引擎页的交换而导致性能下降；
InnoDB存储引擎会为缓存和控制表结构信息使用部分内存，因而实际花费的内存会比设置的值大于10%；
这个参数设置的越大，初始化内存池的时间越长。在MySQL 5.7.5版本，可以以chunk为单位增加或减少内存池的大小。chunk的大小可以通过innodb_buffer_pool_chunk_size参数设定，默认值是128MB。内存池的大小可以等于或是innodb_buffer_pool_chunk_size * innodb_buffer_pool_instances的整数倍。

innodb_buffer_pool_instances：InnoDB缓存池被分成的区域数。对于1GB以上大的InnoDB缓存，将缓存分成多个部分可以提高MySQL服务的并发性，减少不同线程读缓存页的读写竞争。每个缓存池有它单独的空闲列表、刷新列表、LRU列表和其他连接到内存池的数据结构，它们被mutex锁保护。这个参数只有将innodb_buffer_pool_size参数设为1GB或以上时才生效。建议将每个分成的内存区域设为1GB大小。

innodb_max_dirty_pages_pct：当Innodb缓存池中脏页所占的百分比达到这个参数的值时，InnoDB会从缓存中向磁盘写入数据。默认值是75。
innodb_thread_concurrency：InnoDB存储引擎可以并发使用的最大线程数。当InnoDB使用的线程超过这参数的值时，后面的线程会进入等待状态，以先进先出的算法来处理。等待锁的线程不计入这个参数的值。这个参数的范围是0~1000。默认值是0。当这个参数为0时，代表InnoDB线程的并发数没有限制，这样会导致MySQL创建它所需要的尽可能多的线程。设置这个参数可以参考下面规则：

如果用户线程的并发数小于64，可以将这个参数设为0；
如果系统并发很严重，可以先将这个参数设为128，然后再逐渐将这个参数减小到96, 80, 64或其他数值，直到找到性能较好的一个数值。

innodb_flush_method：指定刷新数据到InnoDB数据文件和日志文件的方法，刷新方法会对I/O有影响。如果这个参数的值为空，在类Unix系统上，这个参数的默认值为fsync；在Windows系统上，这个参数的默认值为async_unbuffered。在类Unix系统上，这个参数可设置的值如下：

fsync:InnoDB使用fsync()系统函数来刷新数据和日志文件，fsync是默认参数。
O_DSYNC:InnoDB使用O_SYNC函数来打开和刷新日志文件，使用fsync()函数刷新数据文件
littlesync:这个选项用在内部性能的测试，目前MySQL尚不支持，使用这个参数又一定的风险
nosync:这个选项用在内部性能的测试，目前MySQL尚不支持，使用这个参数又一定的风险
O_DIRECT:InnoDB使用O_DIRECT（或者directio()在Solaris）函数打开数据文件，使用fsync()刷新数据文件和日志文件
O_DIRECT_NO_FSYNC:在刷新I/O时，InnoDB使用O_DIRECT方式。

在有RAID卡和写缓存的系统中，O_DIRECT有助于避免InnoDB缓存池和操作系统缓存之间的双重缓存。在InnoDB数据和日志文件放在SAN存储上面的系统，默认值或O_DSYNC方法会对以读为主的数据库起到加速作用。
innodb_data_home_dir：InnoDB系统表空间所使用的数据文件的物理路径，默认路径是MySQL数据文件路径。如果这个参数的值为空，可以在innodb_data_file_path参数里使用绝对路径

innodb_data_file_path：InnoDB数据文件的路径和大小。

innodb_file_per_table：当这个参数启用的时候，InnoDB会将新建表的数据和索引单独存放在.ibd格式的文件中，而不是存放在系统表空间中。当这张表被删除或TRUNCATE时，InnoDB表所占用的存储会被释放。这个设定会开启InnoDB的一些其他特性，比如表的压缩。当这个参数关闭的时候，InnoDB会将表和索引的数据存放到系统表空间的ibdata文件中，这会有一个问题，因为系统表空间不会缩小，这样设置会导致空间无法回放。

innodb_undo_directory：InnoDB undo日志所在表空间的物理路径。和innodb_undo_logs、innodb_undo_tablespaces参数配合，来设置undo日志的路径，默认路径是数据文件路径。

innodb_undo_logs：指定InnoDB使用的undo日志的个数。在MySQL 5.7.2版本，32个undo日志被临时表预留使用，并且这些日志存放在临时表表空间(ibtmp1)中。如果undo日志只存放在系统表空间中，想要额外分配供数据修改事务用的undo日志，innodb_undo_logs参数必须设置为32以上的整数。如果你配置了单独的undo表空间，要将innodb_undo_logs参数设为33以上来分配额外供数据修改事务使用的undo日志。每个undo日志最多可以支持1024个事务。如果这个参数没有设置，则它会设为默认值128。

innodb_undo_tablespaces：undo日志的表空间文件数量。默认，所有的undo日志都是系统表空间的一部分。因为在运行大的事务时，undo日志会增大，将undo日志设置在多个表空间中可以减少一个表空间的大小。undo表空间文件创建在innodb_undo_directory参数指定的路径下，以undoN格式命名，N是以0开头的一系列整数。undo表空间的默认大小为10M。需要在初始化InnoDB前设置innodb_undo_tablespaces这个参数。在MySQL 5.7.2版本，在128个undo日志中，有32个undo日志是为临时表所预留的，有95个undo日志供undo表空间使用。

innodb_log_files_in_group：InnoDB日志组包含的日志个数。InnoDB以循环的方式写入日志。这个参数的默认值和推荐值均是2。日志的路径由innodb_log_group_home_dir参数设定。

innodb_log_group_home_dir：InnoDB重做日志文件的物理路径，重做日志的数量由innodb_log_files_in_group参数指定。如果不指定任何InnoDB日志参数，MySQL默认会在MySQL数据文件路径下面创建两个名为ib_logfile0、ib_logfile1的两个重做日志文件，它们的大小由innodb_log_file_size参数设定。

innodb_log_file_size：日志组中每个日志文件的字节大小。所有日志文件的大小(innodb_log_file_size * innodb_log_files_in_group)不能超过512GB。

innodb_log_buffer_size：InnoDB写入磁盘日志文件所使用的缓存字节大小。如果innodb_page_size参数为32K，则默认值是8MB；如果innodb_page_size参数为64K，则默认值是16MB。如果日志的缓存设置较大，则MySQL在处理大事务时，在提交事务前无需向磁盘写入日志文件。建议设置此参数为4~8MB。

innodb_flush_log_at_trx_commit：当提交相关的I/O操作被批量重新排列时，这个参数控制提交操作的ACID一致性和高性能之间的平衡。可以改变这个参数的默认值来提升数据库的性能，但是在数据库宕机的时候会丢失少量的事务。这个参数的默认值为1，代表数据库遵照完整的ACID模型，每当事务提交时，InnoDB日志缓存中的内容均会被刷新到日志文件，并写入到磁盘。当这个参数为0时，InnDB日志缓存大概每秒刷新一次日志文件到磁盘。当事务提交时，日志缓存不会立刻写入日志文件，这样的机制不会100%保证每秒都向日志文件刷新日志，当mysqld进程宕掉的时候可能会丢失持续时间为1秒左右的事务数据。当这个参数为2时，当事务提交后，InnoDB日志缓存中的内容会写入到日志文件且日志文件，日志文件以大概每秒一次的频率刷新到磁盘。在MySQL 5.6.6版本，InnoDB日志刷新频率由innodb_flush_log_at_timeout参数决定。通常将个参数设为1。

innodb_flush_log_at_timeout：写入或刷新日志的时间间隔。这个参数是在MySQL 5.6.6版本引入的。在MySQL 5.6.6版本之前，刷新的频率是每秒刷新一次。innodb_flush_log_at_timeout参数的默认值也是1秒刷新一次。

innodb_lock_wait_timeout：InnDB事务等待行锁的时间长度。默认值是50秒。当一个事务锁定了一行，这时另外一个事务想访问并修改这一行，当等待时间达到innodb_lock_wait_timeout参数设置的值时，MySQL会报错"ERROR 1205 (HY000): Lock wait timeout exceeded; try restarting transaction"，同时会回滚语句（不是回滚整个事务）。如果想回滚整个事务，需要使用--innodb_rollback_on_timeout参数启动MySQL。在高交互性的应用系统或OLTP系统上，可以减小这个参数来快速显示用户的反馈或把更新放入队列稍后处理。在数据仓库中，为了更好的处理运行时间长的操作，可以增大这个参数。这个参数只应用在InnoDB行锁上，这个参数对表级锁无效。这个参数不适用于死锁，因为发生死锁时，InnoDB会立刻检测到死锁并将发生死锁的一个事务回退。

innodb_fast_shutdown：InnoDB关库模式。如果这个参数为0，InnoDB会做一个缓慢关机，在关机前会做完整的刷新操作，这个级别的关库操作会持续数分钟，当缓存中的数据量很大时，甚至会持续几个小时；如果数据库要执行版本升级或降级，需要执行这个级别的关库操作，以保证所有的数据变更都写入到数据文件。如果这个参数的值是1（默认值），为了节省关库时间，InnoDB会跳过新操作，而是在下一次开机的时候通过crash recovery方式执行刷新操作。如果这个参数的值是2，InnoDB会刷新日志并以冷方式关库，就像MySQL宕机一样，没有提交的事务会丢失，在下一次开启数据库时，crash recovery所需要的时间更长；在紧急或排错情形下，需要立刻关闭数据库时，会使用这种方式停库。

### MySQL事务隔离级别

> > 查看事物隔离级别

> SELECT @@tx_isolation;

> > 设置mysql的隔离级别：

> set session transaction isolation level 设置事务隔离级别

> > 设置read uncommitted级别：

> set session transaction isolation level read uncommitted;

> > 设置read committed级别：

> set session transaction isolation level read committed;

> > 设置repeatable read级别：

> set session transaction isolation level repeatable read;

> > 设置serializable级别：

> set session transaction isolation level serializable;

> 事务隔离级别	脏读	不可重复读	幻读

> 读未提交（READ UNCOMMITTED）	√	√	√

> 读已提交（READ COMMITTED）	×	√	√

> 可重复读（REPEATABLE READ）	×	×	√

> 串行化（SERIALIZABLE）	×	×	×

## SQL语言

### ANSI SQL 

> “美国国家标准化组织(ANSI)”是一个核准多种行业标准的组织。SQL作为关系型数据库所使用的标准语言，最初是基于IBM的实现1986年被批准的。1987年，“国际标准化组织(ISO)”把ANSI SQL作为国际标准。这个标准在1992年进行了修订(SQL-92)，1999年再次修订(SQL-99)。最新的是SQL-2011。

> 最新为SQL ANSI-2011(ISO/IEC TR 19075)

> > 标准	版本	标题	委员会

> > ISO/IEC TR 19075-1:2011	1	Part 1: XQuery Regular Expression Support in SQL	ISO/IEC JTC 1/SC 32

> > ISO/IEC TR 19075-2:2015	2	Part 2: SQL Support for Time-Related Information	ISO/IEC JTC 1/SC 32

> > ISO/IEC TR 19075-3:2015	1	Part 3: SQL Embedded in Programs using the JavaTM programming language	ISO/IEC JTC 1/SC 32

> > ISO/IEC TR 19075-4:2015	1	Part 4: SQL with Routines and types using the JavaTM programming language	ISO/IEC JTC 1/SC 32

> > ISO/IEC TR 19075-5:2016	1	Part 5: Row Pattern Recognition in SQL	ISO/IEC JTC 1/SC 32

> > ISO/IEC TR 19075-6:2017	1	Part 6: SQL support for JavaScript Object Notation (JSON)	ISO/IEC JTC 1/SC 32

> > ISO/IEC TR 19075-7:2017	1	Part 7: Polymorphic table functions in SQL	ISO/IEC JTC 1/SC 32

### DDL

> > 其语句包括动词CREATE,ALTER和DROP。在数据库中创建新表或修改、删除表（CREATE TABLE 或 DROP TABLE）；为表加入索引等。

#### create

##### 常用数据类型

> varchar2(n)：变长字符串n<=4000

> char(n)：定长字符串n<=2000

> number(p,s)：p表示精度，s表示小数位数，最大位数是38位

> date：时问日期（7字节）

> binary_float：浮点型，32位

> binary_double：双精度型，64位

> blob：大二进制对象，<=4G

> clob：大字符串对象，<=4G

> bfile：外部的二进制文件

##### 表

##### 主键

> 在创建表时定义主键

> 使用alter table语句定义主键

> 使用alter table修改主键状态

##### 外键

> 在创建表时定义外键

> 使用alter table语句定义外键

> 使用alter table修改外键状态

##### 约束

> check约束

> not null约束

> unique约束

##### 索引

##### 视图

##### 序列

##### 同义词

#### drop

#### alter

### DML（DML：Data Manipulation Language）

#### insert

##### 插入数据

##### 复制表数据

> create table…as select…

> insert into…select

#### update

#### merge

#### delete

#### truncate

### DQL（DQL: Data Query Language）

#### select

##### from子句

##### 投影

##### where子句

##### 比较运算符

> =

> <>

> <

> <=

> >=

> LIKE

> %

> _

> 布尔操作

> OR

> AND

> NOT

> BETWEEN…AND…IN

> order by子句

> asc

> desc

> distinct

> 算数运算：

> +

> -

> *

> /

#### 基本函数

> 字符函数

> concat(c1,c2)

> length(c)

> lower(c)/upper(c)

> ltrim(c)/rtrim(c)/trim(c)

> replace(c1,c2,c3)

> substr(c1,i,j)

> 数字函数

> abs(n)

> acos(n)/asin(n)/atan(n)/cos(n)/sin(n)/tan(n)

> ceil(n)/floor(n)

> exp(n)/ln(n)

> power(n1,n2)

> round(n1,n2)

> sign(n)

> sqrt(n)

> 日期函数

> add_months(d,i)

> last_day(d)

> month_between(d1,d2)

> new_time(d,tz1,tz2)

> sysdate

> 转换函数

> convert(c,dset,sset)

> to_char(x,fmt)

> to_date(c,fmt)

> 分组函数/聚合函数

> AVG

> MAX

> MIN

> SUM

> COUNT

> STDDEV

> VARIANCE

> group by

> having子句

#### 集合操作

> UNION

> INTERSECT

> MINUS

#### 子查询

> 表连接

> 内连接 inner join

> 外连接

> 左外连接

> 右外连接

> 全外连接

> case语句

> decode函数

### DCL(数据控制语言 Data Control Language )

> > 它的语句通过GRANT或REVOKE实现权限控制，确定单个用户和用户组对数据库对象的访问。某些RDBMS可用GRANT或REVOKE控制对表单个列的访问。

> grant

> revoke

### TCL（事务控制语言）

> > 它的语句能确保被DML语句影响的表的所有行及时得以更新。包括COMMIT（提交）命令、SAVEPOINT（保存点）命令、ROLLBACK（回滚）命令。

### CCL（指针控制语言）

> > 它的语句，像DECLARE CURSOR，FETCH INTO和UPDATE WHERE CURRENT用于对一个或多个表单独行的操作。

## NoSQL

### 键值数据库

> Redis

> BerkeleyDB

> Memcached

> Project Voldemort

> Riak

> LevelDB

### 文档数据库

> MongoDB

> CouchDB

> RavenDB

> Terrastore

> OrientDB

### 列族数据库

> HBase

> Amazon SimpleDB

> Cassdndra

> Hypertable

> BigTable(google)

### 图数据库

> FlockDB

> HyperGraphDB

> Infinite Graph

> Neo4J

> OrientDB


## LiteDB：本地化NOSQL

> LiteDB是一个小型的.NET平台开源的NoSQL类型的轻量级文件数据库。特点是小和快，dll文件只有200K大小，而且支持LINQ和命令行操作，数据库是一个单一文件，类似Sqlite。

> > 官方网站：http://www.litedb.org/

### 特点

> 1.NoSQL文件存储。这是和传统关系型数据库的主要区别；支持实体类的字段更新；

> 2.类似MongoDB的简单API；

> 3.完全使用C#代码,在.NET 4.0环境下编写，核心dll小巧,只有168K;

> 4.支持ACID事务处理；

> 5.可以进行写入失败的恢复；

> 6.存储到文件或者数据流中（类似MongoDB的GridFS）;

> 7.类似Sqlite的单一文件存储；

> 8.支持文件索引，可以进行快速搜索；可以直接存储文件；

> 9.支持Linq查询；【这也许是C#编写最直接的好处】;

> 10.支持命令行操作数据库，官方提供了一个Shell command line;

> 11.完全开源和免费，包括商业使用；

> Serverless NoSQL 文档存储

> 类似于 MongoDB 的简单 API

> 100% C## 代码，支持.NET 3.5 / .NET 4.0 / NETStandard 1.3 / NETStandard 2.0，单 DLL (小于 300kb)

> 支持线程和进程安全

> 支持文档/操作级别的 ACID

> 支持写失败后的数据还原 (日志模式)

> 可使用 DES (AES) 加密算法进行数据文件加密

> 可使用特性或 fluent 映射 API 将你的 POCO类映射为 BsonDocument

> 可存储文件与流数据 (类似 MongoDB 的 GridFS)

> 单数据文件存储 (类似 SQLite)

> 支持基于文档字段索引的快速搜索 (每个集合支持多达16个索引)

> 支持 LINQ 查询

> Shell 命令行 - 试试这个在线版本

> 相当快 - 这里是与 SQLite 的对比结果

> 开源，对所有人免费 - 包括商业应用

### LiteDB使用基本案例

#### 创建实体类

```
public class Customer
{

  public int Id { get; set; }

  public string Name { get; set; }

  public string[] Phones { get; set; }

  public bool IsActive { get; set; }

}
```

#### 使用Demo

> 使用过程首先要添加dll应用，以及引入命名空间：

> using LiteDB;

> 下面是测试代码，会在当前目录下创建一个sample.db的数据库文件：

//打开或者创建新的数据库

```
using (var db = new LiteDatabase("sample.db"))

{

  //获取 customers 集合，如果没有会创建，相当于表

  var col = db.GetCollection<Customer>("customers");

  //创建 customers 实例

  var customer = new Customer

  {

    Name = "John Doe",

    Phones = new string[] { "8000-0000", "9000-0000" },

    IsActive = true

  };

  // 将新的对象插入到数据表中，Id是自增，自动生成的

  col.Insert(customer);

  // 更新实例

  customer.Name = "Joana Doe";

  //保存到数据库

  col.Update(customer);

  // 使用对象的属性，这个方法生成索引，来进行检索

  col.EnsureIndex(x => x.Name);

  //使用LINQ语法来检索

  var results = col.Find(x => x.Name.StartsWith("Jo"));

}

```

> 上述过程很清楚，根据注释理解几乎不用费神。

### 使用场景

> 1.桌面或者本地小型的应用程序

> 2.小型web应用程序

> 3.单个数据库账户或者单个用户数据的存储

> 4.少量用户的并发写操作的应用程序

### LiteDB的技术细节

#### LiteDB的工作原理

> LiteDB是虽然单个文件类型的数据库，但是数据库有很多信息，例如索引，集合，文件等。为了管理这些信息，LiteDB实现了数据库页的概念。

> > 页 是一个拥有4096 字节的 存储相同信息的地址块。也是操作磁盘文件(读写)的最小单元。LiteDB有6种页类型。其作用也不一样，分布是：Header Page，Collection Page，Index Page， Data Page，Extend Page，Empty Page。

> > Data Page的作用是存储核心的数据，是以序列化后的BSON格式来存储。

> > 值得注意的是，如果存储的数据太大，超过page大小，数据块就会使用一个指针指向Extend Page。

> 在上面的代码中，我们初始化数据库是这样的：

> > var db = new LiteDatabase("MyData.db");

> 这种情况比较好用，可以打开或者创建新的数据库，同样也可以使用连接名称来获取，例如：

> > var db = new LiteDatabase("userdb");

> > 这样会直接从connectionStrings找到这个名称的连接。包括了文件名称，使用模式，以及版本信息。一般情况下直接使用第一种即可。LiteDB的数据库连接完整形式是：filename=C:\Path\mydb.db; journal=false; version=5　　

#### LiteDB的查询

> LiteDB的查询必须在相关的查询字段上使用索引，如果没有索引，会默认去创建索引。上面例子中就是创建字段的索引，并查询。LiteDB中查询有2种方法：

> > 1.使用静态的帮助类Query;

> > 2.使用Linq方式，就是类似Demo的方法;

> LiteDB使用Query的查询方式有以下一些方法，详细讲解几个重要的，其他几个大家理解一下，也应该不难，如果有不准确的地方，还请指正： 

> > Query.All 返回所有的数据，可以使用指定的索引字段进行排序

> > Query.EQ 查找返回和指定字段值相等的数据

> > Query.LT/LTE 查找< 或 <= 某个值的数据

> > Query.GT/GTE 查找> 或 >= 某个值的数据

> > Query.Between 查找在指定区间范围内的数据

> > Query.In - 和SQL的in类似吧，查找和列表中值相等的数据

> > Query.Not - 和EQ相反，是不等于某个值的数据

> > Query.StartsWith 查找以某个字符串开头的数据

> > Query.Contains 查找保护某个字符串的数据，这个查询只扫描索引

> > Query.And 2个查询的交集

> > Query.Or 2个查询结果的并集

```
var results = collection.Find(Query.EQ("Name", "John Doe"));

var results = collection.Find(Query.GTE("Age", 25));

var results = collection.Find(Query.And(

  Query.EQ("FirstName", "John"), Query.EQ("LastName", "Doe")

));

var results = collection.Find(Query.StartsWith("Name", "Jo"));
```

> > 注意LiteDB不支持这种表达式：CreationDate == DueDate。

> 下面介绍使用Linq的查询的几个主要方法：

> > FindAll: 查找表或者集合中所有的结果记录

> > FindOne:返回第一个或者默认的结果

> > FindById: 通过索引返回单个结果

> > Find: 使用查询表达式或者linq表达式查询返回结果

```
collection.EnsureIndex(x => x.Name);

var result = collection

  .Find(Query.EQ("Name", "John Doe")) 

  .Where(x => x.CreationDate >= x.DueDate.AddDays(-5)) 

  .OrderBy(x => x.Age)

  .Select(x => new

  { 

    FullName = x.FirstName + " " + x.LastName, 

    DueDays = x.DueDate - x.CreationDate 

  });
```

> 当然还有一些方法如：Count() , Exists(),Min() , Max()等方法。。比较好理解。看看linq表达式的查询案例：

```
var collection = db.GetCollection<Customer>("customer");

var results = collection.Find(x => x.Name == "John Doe");

var results = collection.Find(x => x.Age > 30);

var results = collection.Find(x => x.Name.StartsWith("John") && x.Age > 30);
```


#### LiteDB的查询示例

```
namespace DEVGIS.FA.FAOutTest.Views

{

  

  /// <summary>

  /// SelectDevices.xaml 的交互逻辑

  /// </summary>

  public partial class TestLiteDB

  {

    public TestLiteDB() : base("")

    {

    InitializeComponent();

    this.Loaded += TestLiteDB_Loaded;

    }

    private void TestLiteDB_Loaded(object sender, RoutedEventArgs e)

    {

     InitDB();

    }

    public void InitDB()

    {

      using (var db = new LiteDatabase("sample.db"))

      {

        //获取 customers 集合，如果没有会创建，相当于表

        var col = db.GetCollection<Customer>("customers");

        //创建 customers 实例

        var customer = new Customer

        {

          Name = "John Doe",

          Phones = new string[] { "8000-0000", "9000-0000" },

          IsActive = true

        };

        // 将新的对象插入到数据表中，Id是自增，自动生成的

        col.Insert(customer);

        // 更新实例

        customer.Name = "Joana Doe";

        //保存到数据库

        col.Update(customer);

        // 使用对象的属性，这个方法生成索引，来进行检索

        col.EnsureIndex(x => x.Name);

        //使用LINQ语法来检索

        var results = col.Find(x => x.Name.StartsWith("Jo"));

        tbContent.Text = JsonConvert.SerializeObject(results);

      }

    }

  }

}
```