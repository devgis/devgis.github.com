---
layout: post
title: 数据库
description: 各种数据库系统的数据库基础知识，查询性能优化以及数据库管理知识总结，主要包括Oracle、Sql Server等数据库的相关内容。
date: 2022-10-01 09:01:01
updatedate: 2024-03-26 10:14:20
---

- [数据库基础](#数据库基础)
  - [数据库备份](#数据库备份)
  - [锁](#锁)
    - [数据库角度](#数据库角度)
    - [程序员角度](#程序员角度)
  - [锁模式](#锁模式)
  - [共享 (S)](#共享-s)
    - [锁的范围](#锁的范围)
    - [死锁](#死锁)
  - [事务](#事务)
    - [ACID 原则](#acid-原则)
  - [事务隔离级别:](#事务隔离级别)
    - [read uncommited（读取未提交数据），](#read-uncommited读取未提交数据)
    - [read commited（读取已提交数据）读取的默认方式，](#read-commited读取已提交数据读取的默认方式)
    - [repeatable read（可重复读），](#repeatable-read可重复读)
    - [serializable（可序列化），](#serializable可序列化)
    - [SNAPSHOT ISOLATION（快照，MSSQL独有），](#snapshot-isolation快照mssql独有)
  - [存储过程](#存储过程)
  - [函数](#函数)
  - [触发器](#触发器)
- [数据库优化](#数据库优化)
  - [硬件方面](#硬件方面)
  - [软件方面](#软件方面)
  - [数据库设计](#数据库设计)
  - [查询优化](#查询优化)
  - [程序的优化](#程序的优化)
- [SQL语言](#sql语言)
  - [ANSI SQL](#ansi-sql)
  - [DDL](#ddl)
    - [create](#create)
      - [常用数据类型](#常用数据类型)
      - [表](#表)
      - [主键](#主键)
      - [外键](#外键)
      - [约束](#约束)
      - [索引](#索引)
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
    - [delete](#delete)
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
  - [常见函数](#常见函数)
- [Oracle](#oracle)
  - [数据库结构](#数据库结构)
    - [体系结构](#体系结构)
      - [数据库](#数据库)
        - [数据文件](#数据文件)
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
      - [函数](#函数-1)
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
        - [DELETE](#delete-1)
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
  - [执行计划](#执行计划)
  - [数据库优化](#数据库优化-1)
    - [系统调整](#系统调整)
    - [SQL语句优化](#sql语句优化)
        - [不要用\*代替列名](#不要用代替列名)
        - [尽量减少表查询的次数](#尽量减少表查询的次数)
        - [用not exists代替in/not in](#用not-exists代替innot-in)
        - [用not exists代替distinct](#用not-exists代替distinct)
        - [有效利用共享游标](#有效利用共享游标)
      - [表的连接方法](#表的连接方法)
        - [选择from表的顺序](#选择from表的顺序)
        - [选择驱动表](#选择驱动表)
        - [where子句的连接顺序](#where子句的连接顺序)
      - [有效使用索引](#有效使用索引)
        - [索引列的选择](#索引列的选择)
        - [复合索引有时比单列索引有更好的性能](#复合索引有时比单列索引有更好的性能)
        - [避免对大表的全表扫描](#避免对大表的全表扫描)
        - [监视索引是否被使用](#监视索引是否被使用)
  - [常见问题](#常见问题)
  - [备份与恢复](#备份与恢复)
    - [RMAN(Recovery Manager)工具](#rmanrecovery-manager工具)
    - [闪回技术](#闪回技术)
      - [flashback](#flashback)
      - [show recyclebin](#show-recyclebin)
    - [exp/imp](#expimp)
      - [EXP:有三种主要的方式（完全、用户、表）](#exp有三种主要的方式完全用户表)
      - [IMP:具有三种模式（完全、用户、表）](#imp具有三种模式完全用户表)
    - [expdp/impdp](#expdpimpdp)
    - [expdp/impdp和exp/imp的区别](#expdpimpdp和expimp的区别)
  - [数据库集群技术](#数据库集群技术)
    - [RAC应用](#rac应用)
    - [ASM](#asm)
    - [容灾和数据卫士](#容灾和数据卫士)
    - [故障诊断](#故障诊断)
  - [商业智能与数据仓库](#商业智能与数据仓库)
    - [多维数据库](#多维数据库)
    - [数据挖掘](#数据挖掘)
  - [Oracle事务隔离级别](#oracle事务隔离级别)
  - [索引](#索引-1)
  - [锁](#锁-1)
  - [主从同步](#主从同步)
- [MSSQL](#mssql)
  - [存储过程](#存储过程-1)
  - [索引](#索引-2)
    - [聚集索引](#聚集索引)
    - [非聚集索引](#非聚集索引)
  - [数据优化](#数据优化)
  - [并发](#并发)
  - [锁](#锁-2)
  - [灾难恢复](#灾难恢复)
  - [行列转换](#行列转换)
  - [Sql Server事务隔离级别](#sql-server事务隔离级别)
  - [数据库分页](#数据库分页)
  - [执行计划](#执行计划-1)
  - [镜像](#镜像)
  - [log shipping（日志传送）](#log-shipping日志传送)
  - [发布订阅](#发布订阅)
  - [always on](#always-on)
  - [主从同步 方案比较](#主从同步-方案比较)
  - [CLR扩展](#clr扩展)
  - [其他知识点](#其他知识点)
- [MySQL](#mysql)
  - [Ubuntu Docker部署mysql](#ubuntu-docker部署mysql)
  - [MySQL事务隔离级别](#mysql事务隔离级别)
  - [锁](#锁-3)
  - [执行计划](#执行计划-2)
  - [获取执行计划](#获取执行计划)
  - [解读执行计划](#解读执行计划)
  - [type 字段](#type-字段)
  - [Extra 字段](#extra-字段)
  - [访问谓词与过滤谓词](#访问谓词与过滤谓词)
  - [完整字段信息](#完整字段信息)
  - [格式化参数](#格式化参数)
  - [执行计划中的分区表信息](#执行计划中的分区表信息)
  - [获取额外的执行计划信息](#获取额外的执行计划信息)
  - [获取指定连接的执行计划](#获取指定连接的执行计划)
  - [获取实际运行的执行计划](#获取实际运行的执行计划)
  - [优化](#优化)
- [Postgresql](#postgresql)
  - [PGPool](#pgpool)
  - [执行计划](#执行计划-3)
      - [](#)
- [NoSQL](#nosql)
  - [键值数据库](#键值数据库)
  - [文档数据库](#文档数据库)
  - [列族数据库](#列族数据库)
  - [图数据库](#图数据库)
- [LiteD](#lited)
  - [特点](#特点)
  - [LiteDB使用基本案例](#litedb使用基本案例)
    - [创建实体类](#创建实体类)
    - [使用Demo](#使用demo)
  - [使用场景](#使用场景)
  - [LiteDB的技术细节](#litedb的技术细节)
    - [LiteDB的工作原理](#litedb的工作原理)
    - [LiteDB的查询](#litedb的查询)
    - [LiteDB的查询示例](#litedb的查询示例)

# 数据库基础

## 数据库备份

冷备份发生在数据库已经正常关闭的情况下，将关键性文件拷贝到另外位置的一种说法 
热备份是在数据库运行的情况下，采用归档方式备份数据的方法 
冷备的优缺点： 
1．是非常快速的备份方法（只需拷贝文件）  
2．容易归档（简单拷贝即可）  
3．容易恢复到某个时间点上（只需将文件再拷贝回去）  
4．能与归档方法相结合，作数据库“最新状态”的恢复。  
5．低度维护，高度安全。  
冷备份不足：  
1．单独使用时，只能提供到“某一时间点上”的恢复。  
2．在实施备份的全过程中，数据库必须要作备份而不能作其它工作。也就是说，在冷备份过程中，数据库必须是关闭状态。  
3．若磁盘空间有限，只能拷贝到磁带等其它外部存储设备上，速度会很慢。  
4．不能按表或按用户恢复。  
热备的优缺点 
1．可在表空间或数据文件级备份，备份时间短。  
2．备份时数据库仍可使用。  
3．可达到秒级恢复（恢复到某一时间点上）。  
4．可对几乎所有数据库实体作恢复。  
5．恢复是快速的，在大多数情况下在数据库仍工作时恢复。  
热备份的不足是：  
1．不能出错，否则后果严重。  
2．若热备份不成功，所得结果不可用于时间点的恢复。  
3．因难于维护，所以要特别仔细小心，不允许“以失败而告终”。

## 锁

当并发事务同时访问一个资源时，有可能导致数据不一致，因此需要一种机制来将数据访问顺序化，以保证数据库数据的一致性。

### 数据库角度

独占锁，Oracle称为排他锁（Exclusive Lock，也叫X锁）独占锁锁定的资源只允许进行锁定操作的程序使用，其它任何对它的操作均不会被接受。执行数据更新命令，即INSERT、UPDATE 或DELETE 命令时，SQL Server 会自动使用独占锁。但当对象上有其它锁存在时，无法对其加独占锁。独占锁一直到事务结束才能被释放。
共享锁（Shared Lock，也叫S锁）共享锁锁定的资源可以被其它用户读取，但其它用户不能修改它。在SELECT 命令执行时，SQL Server 通常会对对象进行共享锁锁定。通常加共享锁的数据页被读取完毕后，共享锁就会立即被释放。
更新锁（Update Lock）更新锁是为了防止死锁而设立的。当SQL Server 准备更新数据时，它首先对数据对象作更新锁锁定，这样数据将不能被修改，但可以读取。等到SQL Server 确定要进行更新数据操作时，它会自动将更新锁换为独占锁。但当对象上有其它锁存在时，无法对其作更新锁锁定。

### 程序员角度

乐观锁（Optimistic Lock）乐观锁假定在处理数据时，不需要在应用程序的代码中做任何事情就可以直接在记录上加锁、即完全依靠数据库来管理锁的工作。一般情况下，当执行事务处理时SQL Server会自动对事务处理范围内更新到的表做锁定。
悲观锁（Pessimistic Lock）悲观锁对数据库系统的自动管理不感冒，需要程序员直接管理数据或对象上的加锁处理，并负责获取、共享和放弃正在使用的数据上的任何锁。
Oracle中可以使用：
select * from t for update: 会等待行锁释放之后，返回查询结果。
select * from t for update nowait: 不等待行锁释放，提示锁冲突，不返回结果
select * from t for update wait 5: 等待5秒，若行锁仍未释放，则提示锁冲突，不返回结果
select * from t for update skip locked: 查询返回查询结果，但忽略有行锁的记录
【使用格式】
SELECT…FOR UPDATE 语句的语法如下：
SELECT … FOR UPDATE [OF column_list][WAIT n|NOWAIT][SKIP LOCKED];
其中：
OF 子句用于指定即将更新的列，即锁定行上的特定列。
WAIT 子句指定等待其他用户释放锁的秒数，防止无限期的等待。
SqlServer中可以使用显式事务：

begin transaction\
select * from ls1 with (tablockx) where f_account_id=37
....
....
update ls1 set .....
commit;

悲观锁与乐观锁的优缺点:乐观锁适用于写入比较少的情况下，即冲突真的很少发生的时候，这样可以省去了锁的开销，加大了系统的整个吞吐量。但如果经常产生冲突，上层应用会不断的进行重试操作，这样反倒是降低了性能，所以这种情况下用悲观锁就比较合适.

## 锁模式

## 共享 (S) 

用于不更改或不更新数据的操作（只读操作），如 SELECT 语句。 更新 (U) 用于可更新的资源中。防止当多个会话在读取、锁定以及随后可能进行的资源更新时发生常见形式的死锁。 排它 (X) 用于数据修改操作，例如 INSERT、UPDATE 或 DELETE。确保不会同时同一资源进行多重更新。 意向锁 用于建立锁的层次结构。意向锁的类型为：意向共享 (IS)、意向排它 (IX) 以及与意向排它共享 (SIX)。 架构锁 在执行依赖于表架构的操作时使用。架构锁的类型为：架构修改 (Sch-M) 和架构稳定性 (Sch-S)。 大容量更新 (BU) 向表中大容量复制数据并指定了 TABLOCK 提示时使用。
共享锁
共享 (S) 锁允许并发事务读取 (SELECT) 一个资源。资源上存在共享 (S) 锁时，任何其它事务都不能修改数据。一旦已经读取数据，便立即释放资源上的共享 (S) 锁，除非将事务隔离级别设置为可重复读或更高级别，或者在事务生存周期内用锁定提示保留共享 (S) 锁。
更新锁
更新 (U) 锁可以防止通常形式的死锁。一般更新模式由一个事务组成，此事务读取记录，获取资源（页或行）的共享 (S) 锁，然后修改行，此操作要求锁转换为排它 (X) 锁。如果两个事务获得了资源上的共享模式锁，然后试图同时更新数据，则一个事务尝试将锁转换为排它 (X) 锁。共享模式到排它锁的转换必须等待一段时间，因为一个事务的排它锁与其它事务的共享模式锁不兼容；发生锁等待。第二个事务试图获取排它 (X) 锁以进行更新。由于两个事务都要转换为排它 (X) 锁，并且每个事务都等待另一个事务释放共享模式锁，因此发生死锁。
若要避免这种潜在的死锁问题，请使用更新 (U) 锁。一次只有一个事务可以获得资源的更新 (U) 锁。如果事务修改资源，则更新 (U) 锁转换为排它 (X) 锁。否则，锁转换为共享锁。
排它锁
排它 (X) 锁可以防止并发事务对资源进行访问。其它事务不能读取或修改排它 (X) 锁锁定的数据。
意向锁
意向锁表示 SQL Server 需要在层次结构中的某些底层资源上获取共享 (S) 锁或排它 (X) 锁。例如，放置在表级的共享意向锁表示事务打算在表中的页或行上放置共享 (S) 锁。在表级设置意向锁可防止另一个事务随后在包含那一页的表上获取排它 (X) 锁。意向锁可以提高性能，因为 SQL Server 仅在表级检查意向锁来确定事务是否可以安全地获取该表上的锁。而无须检查表中的每行或每页上的锁以确定事务是否可以锁定整个表。
意向锁包括意向共享 (IS)、意向排它 (IX) 以及与意向排它共享 (SIX)。

### 锁的范围

锁粒度是被封锁目标的大小,封锁粒度小则并发性高,但开销大,封锁粒度大则并发性低但开销小
SQL Server支持的锁粒度可以分为为行、页、键、键范围、索引、表或数据库获取锁

### 死锁

当两个用户希望持有对方的资源时就会发生死锁.即两个用户互相等待对方释放资源时,oracle认定为产生了死锁,在这种情况下,将以牺牲一个用户作为代价,另一个用户继续执行,牺牲的用户的事务将回滚。
场景
1：用户 1 对 A 表进行 Update，没有提交。
2：用户 2 对 B 表进行 Update，没有提交。
此时双反不存在资源共享的问题。
3：如果用户 2 此时对 A 表作 update,则会发生阻塞，需要等到用户一的事物结束。
4：如果此时用户 1 又对 B 表作 update，则产生死锁。此时 Oracle 会选择其中一个用户进行会滚，使另一个用户继续执行操作。
类似如下操作

增设table2(D,E)
D E
d1 e1
d2 e2
在第一个连接中执行以下语句
begin tran
update table1 set A='aa' where B='b2'
waitfor delay '00:00:30'
update table2 set D='d5' where E='e1' commit tran
在第二个连接中执行以下语句
begin tran
update table2 set D='d5' where E='e1'
waitfor delay '00:00:10'
update table1 set A='aa' where B='b2'commit tran

在 Oracle 系统中能自动发现死锁，并选择代价最小的，即完成工作量最少的事务予以撤消，释放该事务所拥有的全部锁，记其它的事务继续工作下去。
解决办法： 
1. 查找出被锁的表 
select b.owner,b.object\_name,a.session\_id,a.locked\_mode 
from v\$locked\_object a,dba\_objects b 
where b.object\_id = a.object\_id; 
    
select b.username,b.sid,b.serial#,logon\_time 
from v\$locked\_object a,v\$session b 
where a.session\_id = b.sid order by b.logon\_time; 
与Oracle类似，SQL Server提供了自动检测和处理死锁的功能。当系统检测到死锁时，SQL Server会选择一个运行撤消时花费最少的事务作为死锁牺牲品，并通知应用程序取消当前请求，以便事务可以继续进行。设置死锁优先级--设置死锁的优先级,调整一个查询会话由于死锁而被终止运行的可能性SET DeadLock\_Priority  Low | Normal | High | numeric-priority。

--是当前连接很有可能被终止运行
set deadlock_priority Low 
 
--SQL Server终止回滚代价较小的连接
set deadlock_priority Normal 
 
--减少连接被终止的可能性，除非另一个连接也是High或数值优先级大于5
set deadlock_priority High 
 
--数值优先级：-10到10的值，-10最有可能被终止运行，10最不可能被终止运行，
--两个数字谁大，谁就越不可能在死锁中被终止
set deadlock_priority 10

从系统性能上考虑，应该尽可能减少资源竞争，增大吞吐量，因此用户在给并发操作加锁时，应注意以下几点：
* 1、对于 UPDATE 和 DELETE 操作，应只锁要做改动的行，在完成修改后立即提交。
* 2、当多个事务正利用共享更新的方式进行更新，则不要使用共享封锁，而应采用共享更新锁，这样其它用户就能使用行级锁，以增加并行性。
* 3、尽可能将对一个表的操作的并发事务施加共享更新锁，从而可提高并行性。
* 4、在应用负荷较高的期间，不宜对基础数据结构（表、索引、簇和视图）进行修改
如何避免死锁\
1 使用事务时，尽量缩短事务的逻辑处理过程，及早提交或回滚事务；\
2 设置死锁超时参数为合理范围，如：3分钟-10分种；超过时间，自动放弃本次操作，避免进程悬挂；\
3 优化程序，检查并避免死锁现象出现；\
4 .对所有的脚本和SP都要仔细测试，在正是版本之前。\
5 所有的SP都要有错误处理（通过@error）\
6 一般不要修改SQL SERVER事务的默认级别。不推荐强行加锁

## 事务

### ACID 原则

原子性 (Atomicity)：事务的原子性是指一个事务中包含的一条语句或者多条语句构成了一个完整的逻辑单元，这个逻辑单元具有不可再分的原子性。这个逻辑单元要么一起提交执行全部成功，要么一起提交执行全部失败。

一致性 (Consistency)：可以理解为数据的完整性，事务的提交要确保在数据库上的操作没有破坏数据的完整性，比如说不要违背一些约束的数据插入或者修改行为。一旦破坏了数据的完整性，SQL Server 会回滚这个事务来确保数据库中的数据是一致的。

隔离性(Isolation)：与数据库中的事务隔离级别以及锁相关，多个用户可以对同一数据并发访问而又不破坏数据的正确性和完整性。但是，并行事务的修改必须与其它并行事务的修改相互独立，隔离。但是在不同的隔离级别下，事务的读取操作可能得到的结果是不同的。

持久性(Durability)：数据持久化，事务一旦对数据的操作完成并提交后，数据修改就已经完成，即使服务重启这些数据也不会改变。相反，如果在事务的执行过程中，系统服务崩溃或者重启，那么事务所有的操作就会被回滚，即回到事务操作之前的状态。

## 事务隔离级别:

1、用于控制并发用户如何读写数据的操做。
2、读操作默认使用共享锁；写操作需要使用排它锁。
3、读操作能够控制他的处理的方式，写操作不能控制它的处理方式
read uncommited（读取未提交数据），
read commited（读取已提交数据）读取的默认方式，（ORACLE 默认）
repeatable read（可重复读），（MySQL,MSSQL 默认）
serializable（可序列化），
snapshot（快照），
read commited
snapshot（已经提交读隔离）（后两个是sql server 2005 里面 引入的）。
隔离的强度依次递增。
隔离级别越高,读操作的请求锁定就越严格,
锁的持有时间久越长;所以隔离级别越高,
一致性就越高,并发性就越低,同时性能也相对影响越大.

### read uncommited（读取未提交数据），

read uncommitted：最低的隔离级别：查询的时候不会请求共享锁，
所以不会和排它锁产生冲突（不会等待排它锁执行完），
查询效率非常高，速度飞快。但是缺点：会查到“脏数据”
（排它锁的事务已经将数据修改，还没提交，这个时候查询到的数据 是已经更改过的。如果事务回滚，就是“脏数据”）
优点：查询效率非常高，速度非常快。
缺点：会产生“脏数据”
适用性：
适用于 像聊天软件的 聊天记录，会是软件的运行速度非常快。 但是不适用于 商务软件。尤其是银行
set transaction isolation level read uncommitted;

### read commited（读取已提交数据）读取的默认方式，

读取的默认隔离级别就是read committed 和上面正好相反。
如果上面情况，采用read committed 隔离级别查询的话查到的就是还没有更改之前的数据。
set transaction isolation level read committed;

### repeatable read（可重复读），

查询的时候会加上共享锁，但是查询完成之后，共享锁就会被撤销。
比如一些购票系统，如果查到票了，当买的时候就没有，这是不行的。
所以要在查询到数据之后做一些延迟共享锁，进而阻塞排它锁来修改。
（如果查询的事务没有提交，不会释放共享锁，这个时候独占锁就不能访问这条数据）
注意：
1、repeatable 只会锁定查询的数据 ，而 其他行数据还可以进行 修改（更新、删除）（下面那条语句共享锁只会锁定 shipperid为4 的行）
2、其他进行插入数据，并且插入的数据满足第一次开始事务时的 查询的筛选条件的时候；
第二次查询的时候就会将新插入的数据 查询出来。这就叫做“幻读”（解决幻读，需要更高级别的隔离，就是下面的serializable）
set transaction isolation level repeatable read;

### serializable（可序列化），

更高级的 隔离。用户解决“幻读”（上面提到的）。
就是使用上面的（repeatable read） 加上共享锁 并不撤销，如果锁定的 一行数据，
那么 其他的进程 还可以对 其他的数据进行操作，也可以 进行新增和删除的操作。
所以如果想要在查询的时候，不能对整张表进行任何操作，
那么就要 将表的结构也 锁定  （就需要使用 更强的 锁定）
set transaction isolation level serializable;
ISO只规定以上四级

### SNAPSHOT ISOLATION（快照，MSSQL独有），

为数据产生一个临时数据库，当sql server 数据更新之前将当前数据库复制到 tempdb数据库里面，
查询就是从tempdb数据库中查询，但是不能再 使用 snapshot 线程的事务内执行 修改操作，
因为不能修改 旧版本数据库（tempdb），会报错。
snapshot隔离级别，读操作 不适用 共享锁，使用的是“行版本控制”，
所以读数据的性能效率很高，但是修改操作性能就降低的很多。
因为是将 数据库 中的数据 复制到 tempdb 数据库中，所以不会产生 幻读。
set transaction isolation level snapshot;
带来两个问题：
1、当 另外一个事务 已经提交，但是这边的查询到数据还是没有修改。因为 每次查询到的快照是针对于 本次回话对应的那个 transaction 的，因为在这个事务里面是没有修改的，所以查询到的数据是没有修改的。
2、（更新问题）因为 那边的数据已经是 飞凤公司了，但是这里还是  联邦,所以,在这个事务里面是不能对表进行修改,因为访问的是临时数据库,想要对 数据库修改是不可能的（sql server 就会报错，阻止修改）

## 存储过程

存储过程是预编译，安全性高，也是大大提高了效率，存储过程可以重复使用以减少数据库开发人员的工作量，复杂的逻辑我们可以使用存储过程完成，在存储过程中我们可以使用临时表，还可以定义变量，拼接sql语句，调用时，只需执行这个存储过程名，传入我们所需要的参数即可。
存储过程优缺点： 
优点： 
1. 存储过程增强了SQL语言的功能和灵活性。存储过程可以用流控制语句编写，有很强的灵活性，可以完成复杂的判断和较复杂的运算。 
2. 可保证数据的安全性和完整性。 
3． 通过存储过程可以使没有权限的用户在控制之下间接地存取数据库，从而保证数据的安全。 
通过存储过程可以使相关的动作在一起发生，从而可以维护数据库的完整性。 
3. 再运行存储过程前，数据库已对其进行了语法和句法分析，并给出了优化执行方案。这种已经编译好的过程可极大地改善SQL语句的性能。 由于执行SQL语句的大部分工作已经完成，所以存储过程能以极快的速度执行。 
4. 可以降低网络的通信量, 不需要通过网络来传送很多sql语句到数据库服务器了 
5. 使体现企业规则的运算程序放入数据库服务器中，以便集中控制 
 当企业规则发生变化时在服务器中改变存储过程即可，无须修改任何应用程序。企业规则的特点是要经常变化，如果把体现企业规则的运算程序放入应用程序中，则当企业规则发生变化时，就需要修改应用程序工作量非常之大（修改、发行和安装应用程序）。如果把体现企业规则的 运算放入存储过程中，则当企业规则发生变化时，只要修改存储过程就可以了，应用程序无须任何变化。 
缺点： 
1. 可移植性差 
2. 占用服务器端多的资源，对服务器造成很大的压力 
3. 可读性和可维护性不好 

## 函数
Oracle中function和procedure的区别？ 
1. 可以理解函数是存储过程的一种 
2. 函数可以没有参数,但是一定需要一个返回值，存储过程可以没有参数,不需要返回值 
3. 函数return返回值没有返回参数模式，存储过程通过out参数返回值, 如果需要返回多个参数则建议使用存储过程 
4. 在sql数据操纵语句中只能调用函数而不能调用存储过程

## 触发器
触发器是一种特殊的存储过程，主要是通过事件触发而被执行。它可以强化约束来维护数据的完整性和一致性，可以跟踪数据库内的操作从而不允许未经许可的更新和变化。可以级联运算。
常见的触发器有三种：分别应用于Insert , Update , Delete 事件。

# 数据库优化
这个问题说大不大，说难不难，很多人盲目说优化，其实这本身就是是有问题的。首先，为什么要优化，我们的需求，性能满足的时候还用的着优化吗?当然不了，优化自然是针对其中的问题，性能瓶颈来进行。如果接受的是严谨的教育，他所做的一切数据库操作自然都是规范合规，当然也是最佳，当然也根本无论谈论优化了。当然了，对于这些规范的操作可以进行总结，也可以视为数据库优化了。总结按照以下分类和方法进行优化。

## 硬件方面
工欲善其事，必欲利其器，大内存，多核心cpu，高速硬盘，高带宽对于提升数据库性能有不少的帮助，当然这自然是以来用户预算，在足够的预算下对硬件的提升对整体数据库的提升有不少帮助。

## 软件方面
合适的操作系统，Linux等操作系统的性能相当windows来说要好不少，当然也会让数据库发挥最佳性能。
合适的数据库，有些数据库本身就不适合大数据量，如果数据量特别巨大，那么停止优化，切换数据库不失为最佳的选择。

## 数据库设计
合适的字段
合适的表设计
合适的分表
合适的索引
读写分离
大的数据表尽量使用独立的表空间

## 查询优化
尽可能获取需要的最少信息
减少函数，尤其是聚合函数的使用
尽次可能单查询
问题诊断定位 执行计划检查
常见SQL语句的问题
比如常用的字段建索引，联合查询考虑联合索引。（PS：如果你有基础，可以敞开谈谈聚集索引和非聚集索引的使用场景和区别）
避免select \* 的写法、尽量不用in和not in 这种耗性能的用法等等。
尽量避免大事务操作、减少循环算法，对于大数据量的操作，避免使用游标的用法等等。

## 程序的优化
尽可能分页查询
缓存的使用，尽可能使用内存数据库进行换缓存避免数据重复查询增加服务器负担。

# SQL语言

## ANSI SQL
“美国国家标准化组织(ANSI)”是一个核准多种行业标准的组织。SQL作为关系型数据库所使用的标准语言，最初是基于IBM的实现1986年被批准的。1987年，“国际标准化组织(ISO)”把ANSI SQL作为国际标准。这个标准在1992年进行了修订(SQL-92)，1999年再次修订(SQL-99)。最新的是SQL-2011。
最新为SQL ANSI-2011(ISO/IEC TR 19075)
标准 版本 标题 委员会
ISO/IEC TR 19075-1:2011 1 Part 1: XQuery Regular Expression Support in SQL ISO/IEC JTC 1/SC 32
ISO/IEC TR 19075-2:2015 2 Part 2: SQL Support for Time-Related Information ISO/IEC JTC 1/SC 32
ISO/IEC TR 19075-3:2015 1 Part 3: SQL Embedded in Programs using the JavaTM programming language ISO/IEC JTC 1/SC 32
ISO/IEC TR 19075-4:2015 1 Part 4: SQL with Routines and types using the JavaTM programming language ISO/IEC JTC 1/SC 32
ISO/IEC TR 19075-5:2016 1 Part 5: Row Pattern Recognition in SQL ISO/IEC JTC 1/SC 32
ISO/IEC TR 19075-6:2017 1 Part 6: SQL support for JavaScript Object Notation (JSON) ISO/IEC JTC 1/SC 32
ISO/IEC TR 19075-7:2017 1 Part 7: Polymorphic table functions in SQL ISO/IEC JTC 1/SC 32

## DDL
其语句包括动词CREATE,ALTER和DROP。在数据库中创建新表或修改、删除表（CREATE TABLE 或 DROP TABLE）；为表加入索引等。

### create

#### 常用数据类型
varchar2(n)：变长字符串n<=4000
char(n)：定长字符串n<=2000
number(p,s)：p表示精度，s表示小数位数，最大位数是38位
date：时问日期（7字节）
binary\_float：浮点型，32位
binary\_double：双精度型，64位
blob：大二进制对象，<=4G
clob：大字符串对象，<=4G
bfile：外部的二进制文件

#### 表

#### 主键
在创建表时定义主键
使用alter table语句定义主键
使用alter table修改主键状态

#### 外键
在创建表时定义外键
使用alter table语句定义外键
使用alter table修改外键状态

#### 约束
check约束
Check约束用以限制单列的可能取值范围，需要在Check约束中指定逻辑表达式，该逻辑表达式必须返回逻辑值（TRUE或FALSE），在Check中，把UNKNOWN值认为是TRUE。
    check(expression)
1，在check约束中
如果expression返回的结果是Unknown，那么check返回的结果是true。
create table dbo.dt_check
(
    id int null constraint ck_ID_is_Positive check(id>0)
)
插入数据，测试check约束的工作机制
insert into dbo.dt_check
values(null)
insert into dbo.dt_check
values(1)
insert into dbo.dt_check
values(0)
INSERT 语句与 CHECK 约束"ck\_ID\_is\_Positive"冲突。该冲突发生于数据库"db\_study"，表"dbo.dt\_check", column 'id'。
语句已终止。
NULL和1 插入成功，而0插入失败。
2，在表级别上定义Check约束
在表级别上定义Check约束，可以对多列的可能取值进行限制
create table dbo.dt_check
(
    id int null ,
    code int null,
    constraint ck_IDCode_is_Positive check(id>0 and code >0)
)
在一个已经创建的table上，通过alter table命令来增加、修改和删除check约束，添加的约束是表级别的约束
3，增加check约束
    alter table dbo.dt_check
    add constraint ck_ID_is_Positive check(id>0)
4，删除check约束
    alter table dbo.dt_check
    drop constraint ck_ID_is_Positive
5，修改Check约束
没法直接修改Check约束，变通方法是：必须先删除约束，然后添加新的check约束
    alter table dbo.dt_check
    drop constraint ck_ID_is_Positive
    alter table dbo.dt_check
    add constraint ck_ID_is_Positive check(id>0)
6，通过alter table命令增加新的列，并在列级别上创建check 约束
    alter table dbo.dt_check
    add  sex char(1) not null
    constraint ck_sex check(sex in('M','F'))
not null约束
unique约束

#### 索引

#### 视图

#### 序列

#### 同义词

### drop

### alter

## DML（DML：Data Manipulation Language）

### insert

#### 插入数据

#### 复制表数据

create table…as select…
insert into…select

### update

### merge

### delete

### truncate

## DQL（DQL: Data Query Language）

### select

#### from子句

#### 投影

#### where子句

#### 比较运算符

\=
<>
<
<=
\=
LIKE
%
\_
布尔操作
OR
AND
NOT
BETWEEN…AND…IN
order by子句
asc
desc
distinct
算数运算：

*

/

### 基本函数

字符函数
concat(c1,c2)
length(c)
lower(c)/upper(c)
ltrim(c)/rtrim(c)/trim(c)
replace(c1,c2,c3)
substr(c1,i,j)
数字函数
abs(n)
acos(n)/asin(n)/atan(n)/cos(n)/sin(n)/tan(n)
ceil(n)/floor(n)
exp(n)/ln(n)
power(n1,n2)
round(n1,n2)
sign(n)
sqrt(n)
日期函数
add\_months(d,i)
last\_day(d)
month\_between(d1,d2)
new\_time(d,tz1,tz2)
sysdate
转换函数
convert(c,dset,sset)
to\_char(x,fmt)
to\_date(c,fmt)
分组函数/聚合函数
AVG
MAX
MIN
SUM
COUNT
STDDEV
VARIANCE
group by
having子句

### 集合操作

UNION
INTERSECT
MINUS

### 子查询

表连接
内连接 inner join
外连接
左外连接
右外连接
全外连接
case语句
decode函数

## DCL(数据控制语言 Data Control Language )

它的语句通过GRANT或REVOKE实现权限控制，确定单个用户和用户组对数据库对象的访问。某些RDBMS可用GRANT或REVOKE控制对表单个列的访问。
grant
revoke

## TCL（事务控制语言）

它的语句能确保被DML语句影响的表的所有行及时得以更新。包括COMMIT（提交）命令、SAVEPOINT（保存点）命令、ROLLBACK（回滚）命令。

## CCL（指针控制语言）

它的语句，像DECLARE CURSOR，FETCH INTO和UPDATE WHERE CURRENT用于对一个或多个表单独行的操作。

## 常见函数

* sign() decode()函数用法（sql server ,oracle,mysql支持）
sign()函数根据某个值是0、正数还是负数，分别返回0、1、-1 ,例如： 
    decode ()函数说明：
        decode (
        expression,
        condition_01, result_01,
        condition_02, result_02,
        ......,
        condition_n, result_n,
        result_default)
若表达式expression值与condition\_01值匹配，则返回result\_01，若不匹配，则继续判断； 若表达式expression值与condition\_02值匹配，则返回result\_02，若不匹配，则继续判断；
。。。。。
select courseid, coursename ,score ,decode（sign(score-60),-1,'fail','pass') as mark from course

* pivot unpivot 行业转换函数（sql server ,mysql支持）
* 
select \* from tb
\--------------------------------结果------------------------------------------------------------------------------------
姓名     课程     分数\
\---------- ---------- -----------\
张三     语文     74\
张三     数学     83\
张三     物理     93\
李四     语文     74\
李四     数学     84\
李四     物理     94\
\
现在的问题是：我想根据姓名统计这个人的三门成绩，即：姓名  语文  数学  物理
\--------------------------------结果------------------------------------------------------------------------------------
姓名     语文      数学      物理\
\---------- ----------- ----------- -----------\
李四     74      84      94\
张三     74      83      93
\
首先看看使用case when end结构的时候：
 select 姓名,\
 max(case 课程 when '语文' then 分数 else 0 end)语文,\
 max(case 课程 when '数学'then 分数 else 0 end)数学,\
 max(case 课程 when '物理'then 分数 else 0 end)物理\
from tb\
group by 姓名
这个结果就是我们想要的，数据列少的时候，如果多的时候就需要使用pivot：
select \* from tb pivot(max(分数) for 课程 in (语文,数学,物理))a
unpivot 用法类似：
select 姓名,课程,分数 from tb unpivot (分数 for 课程 in (\[语文],\[数学],\[物理]) ) t

# Oracle

## 数据库结构

### 体系结构
实例一般情况下Oracle数据库都是一个数据库包含一个实例

#### 数据库

##### 数据文件

表空间：SYSTEM表空间，SYSAUX表空间，撤销表空间，USERS表空间
数据文件：系统数据，用户数据，控制文件，日志文件(重做日志文件，归档日志文件)
说明：表空间是一个数据库的逻辑区域，每个表空间由一个或多个数据文件组成，一个数据文件只能属于一个表空间

### 服务器结构

#### 系统全局区

##### 数据高速缓冲区

##### 重做日志缓冲区

##### 共享池

##### Large Pool

#### 后台进程

##### DBWn

##### LGWR

##### SMON

##### PMON

##### ARCH

#### 程序全局区

### 数据字典

存放整个数据库实例重要信息的一组表，多数表归sys用户所有

#### 数据字典构成

##### USER\_
记录用户对象信息

##### ALL\_
记录用户的对象信息及被授权访问的对象信息

##### DBA\_
包含数据库实例的所有对象信息

##### V\$\_
当前实例的动态视图

##### GV\_
分布式环境下所有实例的动态视图

#### 常用数据字典
DBA\_TABLES(=TABS)
DBA\_TAB\_COLUMNS(=COLS)
DBA\_VIEWS
DBA\_SYNONYMS(=SYN)
DBA\_SEQUENCES(=SEQ)
DBA\_CONSTRAINTS
DBA\_INDEXES(=IND)
DBA\_IND\_COLUMNS
DBA\_TRIGGERS
DBA\_SOUCE
DBA\_SEGMENTS
DBA\_EXTENTS
DBA\_OBJECTS

### TCL

commit
rollback
savepoint

## PL/SQL

### 概述

### PL/SQL编程

#### 基本语言块

#### 字符集

#### 注释

#### 数据类型

#### 变量和常量

#### 表达式和运算符

#### 流程控制

##### if-then-elsif-then-else

##### case-when-else

##### loop-exit

##### for-loop

##### while-loop

### 过程和函数

#### 过程

#### 函数

### 错误处理

#### 预定义异常

##### DUP\_VAL\_ON\_INDEX

##### LOGIN\_DENIED

##### NO\_DATA\_FOUND

##### TOO\_MANY\_ROWS

##### ZERO\_DIVIDE

##### VALUE\_ERROR

##### CASE\_NOT\_FOUND

#### 自定义异常

##### RAISE

#### 异常函数

##### SQLCODE

##### QLERRM

### 包

#### 包头

#### 包体

#### 重载

### 集合

#### 三种类型

##### index-by表

##### 嵌套表

##### 可变数组

#### 属性和方法

##### COUNT

##### DELETE

##### EXISTS

##### EXTEND

##### FIRST/LAST

##### NEXT/PRIOR

### 游标

#### 显示游标

#### 隐式游标

#### 游标for循环

#### 游标变量

## 数据库管理

### 管理控制文件

### 管理日志文件

### 管理表空间和数据文件

### 模式对象管理

### 表分区和索引分区

### 用户管理与安全

### 数据完整性和数据约束

## 执行计划

一：什么是Oracle执行计划？
执行计划是一条查询语句在Oracle中的执行过程或访问路径的描述，注意，是查询语句。
二：怎样查看Oracle执行计划？
以PLSQL为例：
执行计划的常用列字段解释：
基数（Rows）：Oracle估计的当前操作的返回结果集行数
字节（Bytes）：执行该步骤后返回的字节数
耗费（COST）、CPU耗费：Oracle估计的该步骤的执行成本，用于说明SQL执行的代价，理论上越小越好（该值可能与实际有出入）
时间（Time）：Oracle估计的当前操作所需的时间
1）：打开执行计划：
在SQL窗口选中一条 SELECT 语句后，或者选中Tools > Explain Plan，或者按 F5 即可查看刚刚执行的这条查询语句的执行计划
![](https://images2017.cnblogs.com/blog/1160610/201710/1160610-20171029163558336-1424648712.png)
打开执行计划后，可以点击配置按钮进行显示配置。如图
![](https://images2017.cnblogs.com/blog/1160610/201710/1160610-20171029164100726-768187954.png)
进入如下界面
![](https://images2017.cnblogs.com/blog/1160610/201710/1160610-20171029164328383-1932955345.png)
中文版图解。
[![执行计划配置](https://images2015.cnblogs.com/blog/946400/201611/946400-20161118093801998-1582451944.png "执行计划配置")](http://images2015.cnblogs.com/blog/946400/201611/946400-20161118093801185-130140150.png)
 
三：看懂Oracle执行计划
①：执行顺序：
![](https://images2017.cnblogs.com/blog/1160610/201710/1160610-20171029164746742-324961912.png)
 
根据上图中description列的缩进来判断，缩进最多的最先执行，缩进相同时，最上面的最先执行，可以通过点击图中箭头，查看执行顺序。
对图中动作的一些说明：
1. 上图中 TABLE ACCESS BY … 即描述的是该动作执行时表访问（或者说Oracle访问数据）的方式；
表访问的几种方式：（非全部）
* TABLE ACCESS FULL（全表扫描）
* TABLE ACCESS BY INDEX ROWID（通过ROWID的表存取）
* INDEX FULL SCAN（索引扫描）
（1） TABLE ACCESS FULL（全表扫描）：
Oracle会读取表中所有的行，并检查每一行是否满足SQL语句中的 Where 限制条件；
全表扫描时可以使用多块读（即一次I/O读取多块数据块）操作，提升吞吐量；
使用建议：数据量太大的表不建议使用全表扫描，除非本身需要取出的数据较多，占到表数据总量的 5% \~ 10% 或以上
（2） TABLE ACCESS BY ROWID（通过ROWID的表存取） :
先说一下什么是ROWID？
[![rowid](https://images2015.cnblogs.com/blog/946400/201611/946400-20161118093808763-1183320609.png "rowid")](http://images2015.cnblogs.com/blog/946400/201611/946400-20161118093808092-1488103530.png)
ROWID是由Oracle自动加在表中每行最后的一列伪列，既然是伪列，就说明表中并不会物理存储ROWID的值；
你可以像使用其它列一样使用它，只是不能对该列的值进行增、删、改操作；
一旦一行数据插入后，则其对应的ROWID在该行的生命周期内是唯一的，即使发生行迁移，该行的ROWID值也不变。
让我们再回到 TABLE ACCESS BY INDEX ROWID 来，INDEX指索引列，也就是说，这里走的是索引的表的ROWID。
行的ROWID指出了该行所在的数据文件、数据块以及行在该块中的位置，所以通过ROWID可以快速定位到目标数据上，这也是Oracle中存取单行数据最快的方法；
（3） INDEX FULL SCAN（索引扫描）：
在索引块中，既存储每个索引的键值，也存储具有该键值的行的ROWID。
一个数字列上建索引后该索引可能的概念结构如下图：
所以索引扫描其实分为两步：
Ⅰ：扫描索引得到对应的ROWID
Ⅱ：通过ROWID定位到具体的行读取数据
\---------------------------------------------------------------------------索引扫描延伸---------------------华丽丽的分割线--------------------------------------------------------------------------------------------
索引扫描分五种：
* INDEX UNIQUE SCAN（索引唯一扫描）
* INDEX RANGE SCAN（索引范围扫描）
* INDEX FULL SCAN（索引全扫描）
* INDEX FAST FULL SCAN（索引快速扫描）
* INDEX SKIP SCAN（索引跳跃扫描）
a) INDEX UNIQUE SCAN（索引唯一扫描）：
针对唯一性索引（UNIQUE INDEX）的扫描，每次至多只返回一条记录；
表中某字段存在 UNIQUE、PRIMARY KEY 约束时，Oracle常实现唯一性扫描；
b) INDEX RANGE SCAN（索引范围扫描）：
使用一个索引存取多行数据；
发生索引范围扫描的三种情况：
* 在唯一索引列上使用了范围操作符（如：>  <  <>  >=  <=  between）
* 在组合索引上，只使用部分列进行查询（查询时必须包含前导列，否则会走全表扫描）
* 对非唯一索引列上进行的任何查询
c) INDEX FULL SCAN（索引全扫描）：
进行全索引扫描时，查询出的数据都必须从索引中可以直接得到（注意全索引扫描只有在CBO模式下才有效）
Oracle中的优化器是SQL分析和执行的优化工具，它负责生成、制定SQL的执行计划。
Oracle的优化器有两种：
* RBO（Rule-Based Optimization） 基于规则的优化器
* CBO（Cost-Based Optimization） 基于代价的优化器
RBO：
RBO有严格的使用规则，只要按照这套规则去写SQL语句，无论数据表中的内容怎样，也不会影响到你的执行计划；
换句话说，RBO对数据“不敏感”，它要求SQL编写人员必须要了解各项细则；
RBO一直沿用至ORACLE 9i，从ORACLE 10g开始，RBO已经彻底被抛弃。
CBO：
CBO是一种比RBO更加合理、可靠的优化器，在ORACLE 10g中完全取代RBO；
CBO通过计算各种可能的执行计划的“代价”，即COST，从中选用COST最低的执行方案作为实际运行方案；
它依赖数据库对象的统计信息，统计信息的准确与否会影响CBO做出最优的选择，也就是对数据“敏感”。
d) INDEX FAST FULL SCAN（索引快速扫描）:
扫描索引中的所有的数据块，与 INDEX FULL SCAN 类似，但是一个显著的区别是它不对查询出的数据进行排序（即数据不是以排序顺序被返回）
e) INDEX SKIP SCAN（索引跳跃扫描）：
Oracle 9i后提供，有时候复合索引的前导列（索引包含的第一列）没有在查询语句中出现，oralce也会使用该复合索引，这时候就使用的INDEX SKIP SCAN;
什么时候会触发 INDEX SKIP SCAN 呢？
前提条件：表有一个复合索引，且在查询时有除了前导列（索引中第一列）外的其他列作为条件，并且优化器模式为CBO时
当Oracle发现前导列的唯一值个数很少时，会将每个唯一值都作为常规扫描的入口，在此基础上做一次查找，最后合并这些查询；
例如：
假设表emp有ename（雇员名称）、job（职位名）、sex（性别）三个字段，并且建立了如 create index idx\_emp on emp (sex, ename, job) 的复合索引；
因为性别只有 '男' 和 '女' 两个值，所以为了提高索引的利用率，Oracle可将这个复合索引拆成 ('男', ename, job)，('女', ename, job) 这两个复合索引；
当查询 select \* from emp where job = 'Programmer' 时，该查询发出后：
Oracle先进入sex为'男'的入口，这时候使用到了 ('男', ename, job) 这条复合索引，查找 job = 'Programmer' 的条目；
再进入sex为'女'的入口，这时候使用到了 ('女', ename, job) 这条复合索引，查找 job = 'Programmer' 的条目；
最后合并查询到的来自两个入口的结果集。
\----------------------------------------------
 
1. 上图中的 NESTED LOOPS … 描述的是表连接方式；
JOIN 关键字用于将两张表作连接，一次只能连接两张表，JOIN 操作的各步骤一般是串行的（在读取做连接的两张表的数据时可以并行读取）；
表（row source）之间的连接顺序对于查询效率有很大的影响，对首先存取的表（驱动表）先应用某些限制条件（Where过滤条件）以得到一个较小的row source，可以使得连接效率提高。
\-------------------------延伸阅读：驱动表（Driving Table）与匹配表（Probed Table）-------------------------
驱动表（Driving Table）：
表连接时首先存取的表，又称外层表（Outer Table），这个概念用于 NESTED LOOPS（嵌套循环） 与 HASH JOIN（哈希连接）中；
如果驱动表返回较多的行数据，则对所有的后续操作有负面影响，故一般选择小表（应用Where限制条件后返回较少行数的表）作为驱动表。
匹配表（Probed Table）：
又称为内层表（Inner Table），从驱动表获取一行具体数据后，会到该表中寻找符合连接条件的行。故该表一般为大表（应用Where限制条件后返回较多行数的表）。
\---------------------------------------------------------------------------------------------------------
表连接的几种方式：
* SORT MERGE JOIN（排序-合并连接）
* NESTED LOOPS（嵌套循环）
* HASH JOIN（哈希连接）
* CARTESIAN PRODUCT（笛卡尔积）
注：这里将首先存取的表称作 row source 1，将之后参与连接的表称作 row source 2；
（1） SORT MERGE JOIN（排序-合并连接）：
假设有查询：select a.name, b.name from table\_A a join table\_B b on (a.id = b.id)
内部连接过程：
a) 生成 row source 1 需要的数据，按照连接操作关联列（如示例中的a.id）对这些数据进行排序
b) 生成 row source 2 需要的数据，按照与 a) 中对应的连接操作关联列（b.id）对数据进行排序
c) 两边已排序的行放在一起执行合并操作（对两边的数据集进行扫描并判断是否连接）
延伸：
如果示例中的连接操作关联列 a.id，b.id 之前就已经被排过序了的话，连接速度便可大大提高，因为排序是很费时间和资源的操作，尤其对于有大量数据的表。
故可以考虑在 a.id，b.id 上建立索引让其能预先排好序。不过遗憾的是，由于返回的结果集中包括所有字段，所以通常的执行计划中，即使连接列存在索引，也不会进入到执行计划中，除非进行一些特定列处理（如仅仅只查询有索引的列等）。
排序-合并连接的表无驱动顺序，谁在前面都可以；
排序-合并连接适用的连接条件有： <  <=  =  >  >= ，不适用的连接条件有： <>   like
（2） NESTED LOOPS（嵌套循环）：
内部连接过程：
a) 取出 row source 1 的 row 1（第一行数据），遍历 row source 2 的所有行并检查是否有匹配的，取出匹配的行放入结果集中
b) 取出 row source 1 的 row 2（第二行数据），遍历 row source 2 的所有行并检查是否有匹配的，取出匹配的行放入结果集中
c) ……
若 row source 1 （即驱动表）中返回了 N 行数据，则 row source 2 也相应的会被全表遍历 N 次。
因为 row source 1 的每一行都会去匹配 row source 2 的所有行，所以当 row source 1 返回的行数尽可能少并且能高效访问 row source 2（如建立适当的索引）时，效率较高。
延伸：
嵌套循环的表有驱动顺序，注意选择合适的驱动表。
嵌套循环连接有一个其他连接方式没有的好处是：可以先返回已经连接的行，而不必等所有的连接操作处理完才返回数据，这样可以实现快速响应。
应尽可能使用限制条件（Where过滤条件）使驱动表（row source 1）返回的行数尽可能少，同时在匹配表（row source 2）的连接操作关联列上建立唯一索引（UNIQUE INDEX）或是选择性较好的非唯一索引，此时嵌套循环连接的执行效率会变得很高。若驱动表返回的行数较多，即使匹配表连接操作关联列上存在索引，连接效率也不会很高。
（3）HASH JOIN（哈希连接） :
哈希连接只适用于等值连接（即连接条件为 = ）
HASH JOIN对两个表做连接时并不一定是都进行全表扫描，其并不限制表访问方式；
内部连接过程简述：
a) 取出 row source 1（驱动表，在HASH JOIN中又称为Build Table） 的数据集，然后将其构建成内存中的一个 Hash Table（Hash函数的Hash KEY就是连接操作关联列），创建Hash位图（bitmap）
b) 取出 row source 2（匹配表）的数据集，对其中的每一条数据的连接操作关联列使用相同的Hash函数并找到对应的 a) 里的数据在 Hash Table 中的位置，在该位置上检查能否找到匹配的数据
\----------------延伸阅读：Hash Table相关----------------
来自Wiki的解释：
In computing, a hash table (hash map) is a data structure used to implement an associative array, a structure that can map keys to values. A hash table uses a hash function to compute an *index* into an array of *buckets* or *slots*, from which the desired value can be found.
散列（hash）技术：在记录的存储位置和记录具有的关键字key之间建立一个对应关系 f ，使得输入key后，可以得到对应的存储位置 f(key)，这个对应关系 f 就是散列（哈希）函数；
采用散列技术将记录存储在一块连续的存储空间中，这块连续的存储空间就是散列表（哈希表）；
 不同的key经同一散列函数散列后得到的散列值理论上应该不同，但是实际中有可能相同，相同时即是发生了散列（哈希）冲突，解决散列冲突的办法有很多，比如HashMap中就是用链地址法来解决哈希冲突；
哈希表是一种面向查找的数据结构，在输入给定值后查找给定值对应的记录在表中的位置以获取特定记录这个过程的速度很快。
\--------------------------------------------------------
HASH JOIN的三种模式：
* OPTIMAL HASH JOIN
* ONEPASS HASH JOIN
* MULTIPASS HASH JOIN
1\) OPTIMAL HASH JOIN：
OPTIMAL 模式是从驱动表（也称Build Table）上获取的结果集比较小，可以把根据结果集构建的整个Hash Table都建立在用户可以使用的内存区域里。
[![optimal\_hash\_join](https://images2015.cnblogs.com/blog/946400/201611/946400-20161118093811873-896121013.jpg "optimal_hash_join")](http://images2015.cnblogs.com/blog/946400/201611/946400-20161118093811263-1663864103.jpg)
连接过程简述：
Ⅰ：首先对Build Table内各行数据的连接操作关联列使用Hash函数，把Build Table的结果集构建成内存中的Hash Table。如图所示，可以把Hash Table看作内存中的一块大的方形区域，里面有很多的小格子，Build Table里的数据就分散分布在这些小格子中，而这些小格子就是Hash Bucket（见上面Wiki的定义）。
Ⅱ：开始读取匹配表（Probed Table）的数据，对其中每行数据的连接操作关联列都使用同上的Hash函数，定位Build Table里使用Hash函数后具有相同值数据所在的Hash Bucket。
Ⅲ：定位到具体的Hash Bucket后，先检查Bucket里是否有数据，没有的话就马上丢掉匹配表（Probed Table）的这一行。如果里面有数据，则继续检查里面的数据（驱动表的数据）是否和匹配表的数据相匹配。
2\): ONEPASS HASH JOIN :
从驱动表（也称Build Table）上获取的结果集较大，无法将根据结果集构建的Hash Table全部放入内存中时，会使用 ONEPASS 模式。
[![one\_pass\_hash\_join](https://images2015.cnblogs.com/blog/946400/201611/946400-20161118093813451-340478236.jpg "one_pass_hash_join")](http://images2015.cnblogs.com/blog/946400/201611/946400-20161118093812467-1244869778.jpg)
连接过程简述：
Ⅰ：对Build Table内各行数据的连接操作关联列使用Hash函数，根据Build Table的结果集构建Hash Table后，由于内存无法放下所有的Hash Table内容，将导致有的Hash Bucket放在内存里，有的Hash Bucket放在磁盘上，无论放在内存里还是磁盘里，Oracle都使用一个Bitmap结构来反映这些Hash Bucket的状态（包括其位置和是否有数据）。
Ⅱ：读取匹配表数据并对每行的连接操作关联列使用同上的Hash函数，定位Bitmap上Build Table里使用Hash函数后具有相同值数据所在的Bucket。如果该Bucket为空，则丢弃匹配表的这条数据。如果不为空，则需要看该Bucket是在内存里还是在磁盘上。
如果在内存中，就直接访问这个Bucket并检查其中的数据是否匹配，有匹配的话就返回这条查询结果。
如果在磁盘上，就先把这条待匹配数据放到一边，将其先暂存在内存里，等以后积累了一定量的这样的待匹配数据后，再批量的把这些数据写入到磁盘上（上图中的 Dump probe partitions to disk）。
Ⅲ：当把匹配表完整的扫描了一遍后，可能已经返回了一部分匹配的数据了。接下来还有Hash Table中一部分在磁盘上的Hash Bucket数据以及匹配表中部分被写入到磁盘上的待匹配数据未处理，现在Oracle会把磁盘上的这两部分数据重新匹配一次，然后返回最终的查询结果。
3\): MULTIPASS HASH JOIN：
当内存特别小或者相对而言Hash Table的数据特别大时，会使用 MULTIPASS 模式。MULTIPASS会多次读取磁盘数据，应尽量避免使用该模式。

## 数据库优化

### 系统调整

### SQL语句优化

##### 不要用\*代替列名

##### 尽量减少表查询的次数

##### 用not exists代替in/not in

##### 用not exists代替distinct

##### 有效利用共享游标
以合理的方式使用函数

#### 表的连接方法

##### 选择from表的顺序
\###### 小表放在最右

##### 选择驱动表

##### where子句的连接顺序
\###### 能够过滤掉最多记录的的条件放在最右

#### 有效使用索引

##### 索引列的选择
\###### where从句频繁使用的列
\###### 频繁用于表连接的列
\###### 不要将频繁修改的列用作索引
\###### 用于函数中的列应当考虑建立函数索引

##### 复合索引有时比单列索引有更好的性能

##### 避免对大表的全表扫描
\###### 导致全表扫描的情况
查询的表没有索引
需要返回所有的行
条件中有LIKE且使用了%
对索引列使用了函数
条件中有IS NULL或IS NOT NULL

##### 监视索引是否被使用
\###### alter index idx\_name monitoring usage;
（1）      选择最有效率的表名顺序(只在基于规则的优化器中有效)：
ORACLE的解析器按照从右到左的顺序处理FROM子句中的表名，FROM子句中写在最后的表(基础表 driving table)将被最先处理，在FROM子句中包含多个表的情况下,你必须选择记录条数最少的表作为基础表。如果有3个以上的表连接查询, 那就需要选择交叉表(intersection table)作为基础表, 交叉表是指那个被其他表所引用的表.
（2）      WHERE子句中的连接顺序．：
ORACLE采用自下而上的顺序解析WHERE子句,根据这个原理,表之间的连接必须写在其他WHERE条件之前, 那些可以过滤掉最大数量记录的条件必须写在WHERE子句的末尾.
（3）      SELECT子句中避免使用 ‘ \* ‘：
ORACLE在解析的过程中, 会将'\*' 依次转换成所有的列名, 这个工作是通过查询数据字典完成的, 这意味着将耗费更多的时间
（4）      减少访问数据库的次数：
ORACLE在内部执行了许多工作: 解析SQL语句, 估算索引的利用率, 绑定变量 , 读数据块等；
（5）      在SQL\*Plus , SQL\*Forms和Pro\*C中重新设置ARRAYSIZE参数, 可以增加每次数据库访问的检索数据量 ,建议值为200
（6）      使用DECODE函数来减少处理时间：
使用DECODE函数可以避免重复扫描相同记录或重复连接相同的表.
（7）      整合简单,无关联的数据库访问：
如果你有几个简单的数据库查询语句,你可以把它们整合到一个查询中(即使它们之间没有关系)
（9）      用TRUNCATE替代DELETE：
当删除表中的记录时,在通常情况下, 回滚段(rollback segments ) 用来存放可以被恢复的信息. 如果你没有COMMIT事务,ORACLE会将数据恢复到删除之前的状态(准确地说是恢复到执行删除命令之前的状况) 而当运用TRUNCATE时, 回滚段不再存放任何可被恢复的信息.当命令运行后,数据不能被恢复.因此很少的资源被调用,执行时间也会很短. (译者按: TRUNCATE只在删除全表适用,TRUNCATE是DDL不是DML)
（10） 尽量多使用COMMIT：
只要有可能,在程序中尽量多使用COMMIT, 这样程序的性能得到提高,需求也会因为COMMIT所释放的资源而减少: 
COMMIT所释放的资源: 
a. 回滚段上用于恢复数据的信息. 
b. 被程序语句获得的锁 
c. redo log buffer 中的空间 
d. ORACLE为管理上述3种资源中的内部花费
（11） 用Where子句替换HAVING子句：
避免使用HAVING子句, HAVING 只会在检索出所有记录之后才对结果集进行过滤. 这个处理需要排序,总计等操作. 如果能通过WHERE子句限制记录的数目,那就能减少这方面的开销. (非oracle中)on、where、having这三个都可以加条件的子句中，on是最先执行，where次之，having最后，因为on是先把不符合条件的记录过滤后才进行统计，它就可以减少中间运算要处理的数据，按理说应该速度是最快的，where也应该比having快点的，因为它过滤数据后才进行sum，在两个表联接时才用on的，所以在一个表的时候，就剩下where跟having比较了。在这单表查询统计的情况下，如果要过滤的条件没有涉及到要计算字段，那它们的结果是一样的，只是where可以使用rushmore技术，而having就不能，在速度上后者要慢如果要涉及到计算的字段，就表示在没计算之前，这个字段的值是不确定的，根据上篇写的工作流程，where的作用时间是在计算之前就完成的，而having就是在计算后才起作用的，所以在这种情况下，两者的结果会不同。在多表联接查询时，on比where更早起作用。系统首先根据各个表之间的联接条件，把多个表合成一个临时表后，再由where进行过滤，然后再计算，计算完后再由having进行过滤。由此可见，要想过滤条件起到正确的作用，首先要明白这个条件应该在什么时候起作用，然后再决定放在那里
（12） 减少对表的查询：
在含有子查询的SQL语句中,要特别注意减少对表的查询.例子：
SELECT  TAB\_NAME FROM TABLES WHERE (TAB\_NAME,DB\_VER) = ( SELECT
TAB\_NAME,DB\_VER FROM  TAB\_COLUMNS  WHERE  VERSION = 604)
（13） 通过内部函数提高SQL效率.：
复杂的SQL往往牺牲了执行效率. 能够掌握上面的运用函数解决问题的方法在实际工作中是非常有意义的
（14） 使用表的别名(Alias)：
当在SQL语句中连接多个表时, 请使用表的别名并把别名前缀于每个Column上.这样一来,就可以减少解析的时间并减少那些由Column歧义引起的语法错误.
（15） 用EXISTS替代IN、用NOT EXISTS替代NOT IN：
在许多基于基础表的查询中,为了满足一个条件,往往需要对另一个表进行联接.在这种情况下, 使用EXISTS(或NOT EXISTS)通常将提高查询的效率. 在子查询中,NOT IN子句将执行一个内部的排序和合并. 无论在哪种情况下,NOT IN都是最低效的 (因为它对子查询中的表执行了一个全表遍历). 为了避免使用NOT IN ,我们可以把它改写成外连接(Outer Joins)或NOT EXISTS.
例子：
（高效）SELECT \* FROM  EMP (基础表)  WHERE  EMPNO > 0  AND  EXISTS (SELECT ‘X'  FROM DEPT  WHERE  DEPT.DEPTNO = EMP.DEPTNO  AND  LOC = ‘MELB')
(低效)SELECT  \* FROM  EMP (基础表)  WHERE  EMPNO > 0  AND  DEPTNO IN(SELECT DEPTNO  FROM  DEPT  WHERE  LOC = ‘MELB')
（16） 识别'低效执行'的SQL语句：
虽然目前各种关于SQL优化的图形化工具层出不穷,但是写出自己的SQL工具来解决问题始终是一个最好的方法：
SELECT  EXECUTIONS , DISK\_READS, BUFFER\_GETS, 
ROUND((BUFFER\_GETS-DISK\_READS)/BUFFER\_GETS,2) Hit\_radio, 
ROUND(DISK\_READS/EXECUTIONS,2) Reads\_per\_run, 
SQL\_TEXT 
FROM  V\$SQLAREA 
WHERE  EXECUTIONS>0 
AND  BUFFER\_GETS > 0 
AND  (BUFFER\_GETS-DISK\_READS)/BUFFER\_GETS < 0.8 
ORDER BY  4 DESC;
 
（17） 用索引提高效率：
索引是表的一个概念部分,用来提高检索数据的效率，ORACLE使用了一个复杂的自平衡B-tree结构. 通常,通过索引查询数据比全表扫描要快. 当ORACLE找出执行查询和Update语句的最佳路径时, ORACLE优化器将使用索引. 同样在联结多个表时使用索引也可以提高效率. 另一个使用索引的好处是,它提供了主键(primary key)的唯一性验证.。那些LONG或LONG RAW数据类型, 你可以索引几乎所有的列. 通常, 在大型表中使用索引特别有效. 当然,你也会发现, 在扫描小表时,使用索引同样能提高效率. 虽然使用索引能得到查询效率的提高,但是我们也必须注意到它的代价. 索引需要空间来存储,也需要定期维护, 每当有记录在表中增减或索引列被修改时, 索引本身也会被修改. 这意味着每条记录的INSERT , DELETE , UPDATE将为此多付出4 , 5 次的磁盘I/O . 因为索引需要额外的存储空间和处理,那些不必要的索引反而会使查询反应时间变慢.。定期的重构索引是有必要的.：
ALTER  INDEX  REBUILD 
（18） 用EXISTS替换DISTINCT：
当提交一个包含一对多表信息(比如部门表和雇员表)的查询时,避免在SELECT子句中使用DISTINCT. 一般可以考虑用EXIST替换, EXISTS 使查询更为迅速,因为RDBMS核心模块将在子查询的条件一旦满足后,立刻返回结果. 例子：
  (低效): 
SELECT  DISTINCT  DEPT\_NO,DEPT\_NAME  FROM  DEPT D , EMP E 
WHERE  D.DEPT\_NO = E.DEPT\_NO 
(高效): 
SELECT  DEPT\_NO,DEPT\_NAME  FROM  DEPT D  WHERE  EXISTS ( SELECT ‘X' 
FROM  EMP E  WHERE E.DEPT\_NO = D.DEPT\_NO);
（19） sql语句用大写的；因为oracle总是先解析sql语句，把小写的字母转换成大写的再执行
（20） 在java代码中尽量少用连接符“＋”连接字符串！
（21） 避免在索引列上使用NOT 通常，　
我们要避免在索引列上使用NOT, NOT会产生在和在索引列上使用函数相同的影响. 当ORACLE”遇到”NOT,他就会停止使用索引转而执行全表扫描.
（22） 避免在索引列上使用计算．
WHERE子句中，如果索引列是函数的一部分．优化器将不使用索引而使用全表扫描． 
举例: 
低效： 
SELECT … FROM  DEPT  WHERE SAL \* 12 > 25000; 
高效: 
SELECT … FROM DEPT WHERE SAL > 25000/12;
（23） 用>=替代>
高效: 
SELECT \* FROM  EMP  WHERE  DEPTNO >=4 
低效: 
SELECT \* FROM EMP WHERE DEPTNO >3 
两者的区别在于, 前者DBMS将直接跳到第一个DEPT等于4的记录而后者将首先定位到DEPTNO=3的记录并且向前扫描到第一个DEPT大于3的记录.
（24） 用UNION替换OR (适用于索引列)
通常情况下, 用UNION替换WHERE子句中的OR将会起到较好的效果. 对索引列使用OR将造成全表扫描. 注意, 以上规则只针对多个索引列有效. 如果有column没有被索引, 查询效率可能会因为你没有选择OR而降低. 在下面的例子中, LOC\_ID 和REGION上都建有索引. 
高效: 
SELECT LOC\_ID , LOC\_DESC , REGION 
FROM LOCATION 
WHERE LOC\_ID = 10 
UNION 
SELECT LOC\_ID , LOC\_DESC , REGION 
FROM LOCATION 
WHERE REGION = “MELBOURNE” 
低效: 
SELECT LOC\_ID , LOC\_DESC , REGION 
FROM LOCATION 
WHERE LOC\_ID = 10 OR REGION = “MELBOURNE” 
如果你坚持要用OR, 那就需要返回记录最少的索引列写在最前面.
（25） 用IN来替换OR  
这是一条简单易记的规则，但是实际的执行效果还须检验，在ORACLE8i下，两者的执行路径似乎是相同的．　
低效: 
SELECT…. FROM LOCATION WHERE LOC\_ID = 10 OR LOC\_ID = 20 OR LOC\_ID = 30 
高效 
SELECT… FROM LOCATION WHERE LOC\_IN  IN (10,20,30);
（26） 避免在索引列上使用IS NULL和IS NOT NULL
避免在索引中使用任何可以为空的列，ORACLE将无法使用该索引．对于单列索引，如果列包含空值，索引中将不存在此记录. 对于复合索引，如果每个列都为空，索引中同样不存在此记录.　如果至少有一个列不为空，则记录存在于索引中．举例: 如果唯一性索引建立在表的A列和B列上, 并且表中存在一条记录的A,B值为(123,null) , ORACLE将不接受下一条具有相同A,B值（123,null）的记录(插入). 然而如果所有的索引列都为空，ORACLE将认为整个键值为空而空不等于空. 因此你可以插入1000 条具有相同键值的记录,当然它们都是空! 因为空值不存在于索引列中,所以WHERE子句中对索引列进行空值比较将使ORACLE停用该索引.
低效: (索引失效) 
SELECT … FROM  DEPARTMENT  WHERE  DEPT\_CODE IS NOT NULL; 
高效: (索引有效) 
SELECT … FROM  DEPARTMENT  WHERE  DEPT\_CODE >=0;
（27） 总是使用索引的第一个列：
如果索引是建立在多个列上, 只有在它的第一个列(leading column)被where子句引用时,优化器才会选择使用该索引. 这也是一条简单而重要的规则，当仅引用索引的第二个列时,优化器使用了全表扫描而忽略了索引
（28） 用UNION-ALL 替换UNION ( 如果有可能的话)：
当SQL语句需要UNION两个查询结果集合时,这两个结果集合会以UNION-ALL的方式被合并, 然后在输出最终结果前进行排序. 如果用UNION ALL替代UNION, 这样排序就不是必要了. 效率就会因此得到提高. 需要注意的是，UNION ALL 将重复输出两个结果集合中相同记录. 因此各位还是要从业务需求分析使用UNION ALL的可行性. UNION 将对结果集合排序,这个操作会使用到SORT\_AREA\_SIZE这块内存. 对于这块内存的优化也是相当重要的. 下面的SQL可以用来查询排序的消耗量
（29） 用WHERE替代ORDER BY：
ORDER BY 子句只在两种严格的条件下使用索引. 
ORDER BY中所有的列必须包含在相同的索引中并保持在索引中的排列顺序. 
ORDER BY中所有的列必须定义为非空. 
WHERE子句使用的索引和ORDER BY子句中所使用的索引不能并列.
（30） 避免改变索引列的类型.:
当比较不同数据类型的数据时, ORACLE自动对列进行简单的类型转换. 
假设 EMPNO是一个数值类型的索引列. 
SELECT …  FROM EMP  WHERE  EMPNO = ‘123' 
实际上,经过ORACLE类型转换, 语句转化为: 
SELECT …  FROM EMP  WHERE  EMPNO = TO\_NUMBER(‘123') 
幸运的是,类型转换没有发生在索引列上,索引的用途没有被改变. 
现在,假设EMP\_TYPE是一个字符类型的索引列. 
SELECT …  FROM EMP  WHERE EMP\_TYPE = 123 
这个语句被ORACLE转换为: 
SELECT …  FROM EMP  WHERETO\_NUMBER(EMP\_TYPE)=123 
因为内部发生的类型转换, 这个索引将不会被用到! 为了避免ORACLE对你的SQL进行隐式的类型转换, 最好把类型转换用显式表现出来. 注意当字符和数值比较时, ORACLE会优先转换数值类型到字符类型
（31） 需要当心的WHERE子句:
某些SELECT 语句中的WHERE子句不使用索引. 这里有一些例子. 
在下面的例子里, (1)‘!=' 将不使用索引. 记住, 索引只能告诉你什么存在于表中, 而不能告诉你什么不存在于表中. (2) ‘||'是字符连接函数. 就象其他函数那样, 停用了索引. (3) ‘+'是数学函数. 就象其他数学函数那样, 停用了索引. (4)相同的索引列不能互相比较,这将会启用全表扫描.
（32） a. 如果检索数据量超过30%的表中记录数.使用索引将没有显著的效率提高. 
b. 在特定情况下, 使用索引也许会比全表扫描慢, 但这是同一个数量级上的区别. 而通常情况下,使用索引比全表扫描要块几倍乃至几千倍!
（33） 避免使用耗费资源的操作:
带有DISTINCT,UNION,MINUS,INTERSECT,ORDER BY的SQL语句会启动SQL引擎 
执行耗费资源的排序(SORT)功能. DISTINCT需要一次排序操作, 而其他的至少需要执行两次排序. 通常, 带有UNION, MINUS , INTERSECT的SQL语句都可以用其他方式重写. 如果你的数据库的SORT\_AREA\_SIZE调配得好, 使用UNION , MINUS, INTERSECT也是可以考虑的, 毕竟它们的可读性很强
（34） 优化GROUP BY:
提高GROUP BY 语句的效率, 可以通过将不需要的记录在GROUP BY 之前过滤掉.下面两个查询返回相同结果但第二个明显就快了许多.
1.对查询进行优化，应尽量避免全表扫描，首先应考虑在 where 及 order by 涉及的列上建立索引。
2.应尽量避免在 where 子句中对字段进行 null 值判断，否则将导致引擎放弃使用索引而进行全表扫描，如：
3.应尽量避免在 where 子句中使用!=或<>操作符，否则将引擎放弃使用索引而进行全表扫描。
4.应尽量避免在 where 子句中使用 or 来连接条件，否则将导致引擎放弃使用索引而进行全表扫描，如：
5.in 和 not in 也要慎用，否则会导致全表扫描，如：
6.like 也将导致全表扫描，可以考虑全文检索。
7.如果在 where 子句中使用参数，也会导致全表扫描。因为SQL只有在运行时才会解析局部变量，但优化程序不能将访问计划的选择推迟到运行时；它必须在编译时进行选择。然而，如果在编译时建立访问计划，变量的值还是未知的，因而无法作为索引选择的输入项。如下面语句将进行全表扫描：
select id from t where num=@num
可以改为强制查询使用索引：
select id from t with(index(索引名)) where num=@num
8.应尽量避免在 where 子句中对字段进行表达式操作，这将导致引擎放弃使用索引而进行全表扫描。
9.应尽量避免在where子句中对字段进行函数操作，这将导致引擎放弃使用索引而进行全表扫描。如：
select id from t where substring(name,1,3)='abc' // oracle总有的是substr函数。
select id from t where datediff(day,createdate,'2005-11-30')=0 //查过了确实没有datediff函数。
应改为:
select id from t where name like 'abc%'
select id from t where createdate>='2005-11-30' and createdate<'2005-12-1' //
oracle 中时间应该把char 转换成 date 如： createdate >= to\_date('2005-11-30','yyyy-mm-dd')
10.不要在 where 子句中的“=”左边进行函数、算术运算或其他表达式运算，否则系统将可能无法正确使用索引。（采用函数处理的字段不能利用索引）
11.在使用索引字段作为条件时，如果该索引是复合索引，那么必须使用到该索引中的第一个字段作为条件时才能保证系统使用该索引，否则该索引将不会被使用，并且应尽可能的让字段顺序与索引顺序相一致。
12.不要写一些没有意义的查询，如需要生成一个空表结构：
select col1,col2 into #t from t where 1=0
这类代码不会返回任何结果集，但是会消耗系统资源的，应改成这样：
create table #t(...)
13.很多时候用 exists 代替 in 是一个好的选择：
select num from a where num in(select num from b)
用下面的语句替换：
select num from a where exists(select 1 from b where num=a.num)
14.并不是所有索引对查询都有效，SQL是根据表中数据来进行查询优化的，当索引列有大量数据重复时，SQL查询可能不会去利用索引，如一表中有字段sex，male、female几乎各一半，那么即使在sex上建了索引也对查询效率起不了作用。
15.索引并不是越多越好，索引固然可以提高相应的 select 的效率，但同时也降低了 insert 及 update 的效率，因为 insert 或 update 时有可能会重建索引，所以怎样建索引需要慎重考虑，视具体情况而定。一个表的索引数最好不要超过6个，若太多则应考虑一些不常使用到的列上建的索引是否有必要。
16.应尽可能的避免更新 clustered 索引数据列，因为 clustered 索引数据列的顺序就是表记录的物理存储顺序，一旦该列值改变将导致整个表记录的顺序的调整，会耗费相当大的资源。若应用系统需要频繁更新 clustered 索引数据列，那么需要考虑是否应将该索引建为 clustered 索引。
17.尽量使用数字型字段，若只含数值信息的字段尽量不要设计为字符型，这会降低查询和连接的性能，并会增加存储开销。这是因为引擎在处理查询和连接时会逐个比较字符串中每一个字符，而对于数字型而言只需要比较一次就够了。
18.尽可能的使用 varchar/nvarchar 代替 char/nchar ，因为首先变长字段存储空间小，可以节省存储空间，其次对于查询来说，在一个相对较小的字段内搜索效率显然要高些。
19.任何地方都不要使用 select \* from t ，用具体的字段列表代替“\*”，不要返回用不到的任何字段。
20.尽量使用表变量来代替临时表。如果表变量包含大量数据，请注意索引非常有限（只有主键索引）。
21.避免频繁创建和删除临时表，以减少系统表资源的消耗。
22.临时表并不是不可使用，适当地使用它们可以使某些例程更有效，例如，当需要重复引用大型表或常用表中的某个数据集时。但是，对于一次性事件，最好使用导出表。
23.在新建临时表时，如果一次性插入数据量很大，那么可以使用 select into 代替 create table，避免造成大量 log ，以提高速度；如果数据量不大，为了缓和系统表的资源，应先create table，然后insert。
24.如果使用到了临时表，在存储过程的最后务必将所有的临时表显式删除，先 truncate table ，然后 drop table ，这样可以避免系统表的较长时间锁定。
25.尽量避免使用游标，因为游标的效率较差，如果游标操作的数据超过1万行，那么就应该考虑改写。
26.使用基于游标的方法或临时表方法之前，应先寻找基于集的解决方案来解决问题，基于集的方法通常更有效。
27.与临时表一样，游标并不是不可使用。对小型数据集使用 FAST\_FORWARD 游标通常要优于其他逐行处理方法，尤其是在必须引用几个表才能获得所需的数据时。在结果集中包括“合计”的例程通常要比使用游标执行的速度快。如果开发时间允许，基于游标的方法和基于集的方法都可以尝试一下，看哪一种方法的效果更好。
28.在所有的存储过程和触发器的开始处设置 SET NOCOUNT ON ，在结束时设置 SET NOCOUNT OFF 。无需在执行存储过程和触发器的每个语句后向客户端发送 DONE\_IN\_PROC 消息。
29.尽量避免大事务操作，提高系统并发能力。
30.尽量避免向客户端返回大数据量，若数据量过大，应该考虑相应需求是否合理。
31.   union操作符
union在进行表链接后会筛选掉重复的记录，所以在表链接后会对所产生的结果集进行排序运算，
删除重复的记录再返回结果。实际大部分应用中是不会产生重复的记录，最常见的是过程表与历史
表union。
这个SQL在运行时先取出两个表的结果，再用排序空间进行排序删除重复的记录，最后返回结果集，
如果表数据量大的话可能会导致用磁盘进行排序。
推荐方案：采用union ALL操作符替代union，因为union ALL操作只是简单的将两个结果合并后就返回。
 32. 尽量避免隐士类型转换
容易引起oracle索引失效的原因很多： 
1）、在索引列上使用函数。如SUBSTR,DECODE,INSTR等，对索引列进行运算.需要建立函数索引就可以解决了。 
2）新建的表还没来得及生成统计信息，分析一下就好了 
3）、基于cost的成本分析，访问的表过小，使用全表扫描的消耗小于使用索引。 
4）、使用<>、not in 、not exist，对于这三种情况大多数情况下认为结果集很大，一般大于5%-15%就不走索引而走FTS（全表扫描）。 
5）、单独的>、<。 
6）、like "%\_" 百分号在前。 
7）、单独引用复合索引里非第一位置的索引列。也就是说查询谓词并未使用组合索引的第一列，此处有一个INDEX SKIP SCAN概念
 8）、字符型字段为数字时在where条件里不添加引号。 
 9）、当变量采用的是times变量，而表的字段采用的是date变量时.或相反情况。 
10）、索引失效，可以考虑重建索引，rebuild online。 
11）、B-tree索引 is null不会走,is not null会走,位图索引 is null,is not null  都会走、联合索引 is not null 只要在建立的索引列（不分先后）都会走
12） 、在包含有null值的table列上建立索引，当时使用select count(\*) from table时不会使用索引。
13）、加上hint 还不走索引，那可能是因为你要走索引的这列是nullable，虽然这列没有空值。（将字段改为not null，就会走）
1. Oracle跟SQL Server 2005的区别？ 
宏观上： 
1. 最大的区别在于平台，oracle可以运行在不同的平台上，sql server只能运行在windows平台上，由于windows平台的稳定性和安全性影响了sql server的稳定性和安全性 
2. oracle使用的脚本语言为PL-SQL，而sql server使用的脚本为T-SQL 
微观上： 从数据类型,数据库的结构等等回答
2. 如何使用Oracle的游标？ 
1. oracle中的游标分为显示游标和隐式游标 
2. 显示游标是用cursor...is命令定义的游标，它可以对查询语句(select)返回的多条记录进行处理；隐式游标是在执行插入 (insert)、删除(delete)、修改(update)和返回单条记录的查询(select)语句时由PL/SQL自动定义的。 
3. 显式游标的操作：打开游标、操作游标、关闭游标；PL/SQL隐式地打开SQL游标，并在它内部处理SQL语句，然后关闭它
5. Oracle中有哪几种文件？ 
数据文件（一般后缀为.dbf或者.ora），日志文件(后缀名.log)，控制文件（后缀名为.ctl）
6. 怎样优化Oracle数据库，有几种方式？ 
个人理解，数据库性能最关键的因素在于IO，因为操作内存是快速的，但是读写磁盘是速度很慢的，优化数据库最关键的问题在于减少磁盘的IO，就个人理解应该分为物理的和逻辑的优化， 物理的是指oracle产品本身的一些优化，逻辑优化是指应用程序级别的优化 
物理优化的一些原则： 
1. Oracle的运行环境（网络，硬件等） 
2. 使用合适的优化器 
3. 合理配置oracle实例参数 
4. 建立合适的索引（减少IO） 
5. 将索引数据和表数据分开在不同的表空间上（降低IO冲突） 
6. 建立表分区，将数据分别存储在不同的分区上（以空间换取时间，减少IO） 
  逻辑上优化： 
1. 可以对表进行逻辑分割，如中国移动用户表，可以根据手机尾数分成10个表，这样对性能会有一定的作用 
2. Sql语句使用占位符语句，并且开发时候必须按照规定编写sql语句（如全部大写，全部小写等）oracle解析语句后会放置到共享池中 
如： select \* from Emp where name=? 这个语句只会在共享池中有一条，而如果是字符串的话，那就根据不同名字存在不同的语句，所以占位符效率较好 
3. 数据库不仅仅是一个存储数据的地方，同样是一个编程的地方，一些耗时的操作，可以通过存储过程等在用户较少的情况下执行，从而错开系统使用的高峰时间，提高数据库性能 
4. 尽量不使用\*号，如select \* from Emp，因为要转化为具体的列名是要查数据字典，比较耗时 
5. 选择有效的表名 
对于多表连接查询，可能oracle的优化器并不会优化到这个程度， oracle 中多表查询是根据FROM字句从右到左的数据进行的，那么最好右边的表（也就是基础表）选择数据较少的表，这样排序更快速，如果有link表（多对多中间表），那么将link表放最右边作为基础表，在默认情况下oracle会自动优化，但是如果配置了优化器的情况下，可能不会自动优化，所以平时最好能按照这个方式编写sql 
6. Where字句 规则 
Oracle 中Where字句时从右往左处理的，表之间的连接写在其他条件之前，能过滤掉非常多的数据的条件，放在where的末尾， 另外!=符号比较的列将不使用索引，列经过了计算（如变大写等）不会使用索引（需要建立起函数）， is null、is not null等优化器不会使用索引 
7. 使用Exits Not Exits 替代 In Not in 
8. 合理使用事务，合理设置事务隔离性 
数据库的数据操作比较消耗数据库资源的，尽量使用批量处理，以降低事务操作次数
8. Oracle分区是怎样优化数据库的? 
Oracle的分区可以分为：列表分区、范围分区、散列分区、复合分区。 
1. 增强可用性：如果表的一个分区由于系统故障而不能使用，表的其余好的分区仍可以使用； 
2. 减少关闭时间：如果系统故障只影响表的一部份分区，那么只有这部份分区需要修复，可能比整个大表修复花的时间更少； 
3. 维护轻松：如果需要得建表，独产管理每个公区比管理单个大表要轻松得多； 
4. 均衡I/O：可以把表的不同分区分配到不同的磁盘来平衡I/O改善性能； 
5. 改善性能：对大表的查询、增加、修改等操作可以分解到表的不同分区来并行执行，可使运行速度更快 
6. 分区对用户透明，最终用户感觉不到分区的存在。
9. Oracle是怎样分页的？ 
Oracle中使用rownum来进行分页, 这个是效率最好的分页方法，hibernate也是使用rownum来进行oralce分页的 
select \* from 
 ( select rownum r,a from tabName where rownum <= 20 ) 
where r > 10 
11. Oracle中使用了索引的列，对该列进行where条件查询、分组、排序、使用聚集函数，哪些用到了索引？ 
均会使用索引， 值得注意的是复合索引（如在列A和列B上建立的索引）可能会有不同情况 
13. Oracle中where条件查询和排序的性能比较？ 
Order by使用索引的条件极为严格，只有满足如下情况才可以使用索引， 
1. order by中的列必须包含相同的索引并且索引顺序和排序顺序一致 
2. 不能有null值的列 
所以排序的性能往往并不高，所以建议尽量避免order by

## 常见问题
* oracle 导入导出定时备份
expdp\impdp及exp\imp
系统定时任务
* Oralce怎样存储文件，能够存储哪些文件？ 
Oracle 能存储 clob、nclob、blob、bfile 
Clob 可变长度的字符型数据，也就是其他数据库中提到的文本型数据类型 
Nclob 可变字符类型的数据，不过其存储的是Unicode字符集的字符数据 
Blob 可变长度的二进制数据 
Bfile 数据库外面存储的可变二进制数据 
* 比较truncate和delete 
1. Truncate 和delete都可以将数据实体删掉，truncate 的操作并不记录到 rollback日志，所以操作速度较快，但同时这个数据不能恢复 
2. Delete操作不腾出表空间的空间 
3. Truncate 不能对视图等进行删除 
4. Truncate是数据定义语言（DDL），而delete是数据操纵语言(DML) 
1.delete支持按条件删除，TRUNCATE不支持。
2.delete 删除后自增列不会重置，而TRUNCATE会被重置。
3.delete是逐条删除（速度较慢），truncate是整体删除（速度较快）。
4.delete删除是一条一条删除，并不会改变表结构，属于DML，而truncate删除表数据是将表删掉，重新新建一张表，属于DDL。
5.delete不会释放空间，而TRUNCATE会释放空间。
6.delete 支持回滚，TRUNCATE不支持。
* 主键有几种; 
字符型，整数型、复合型 
*  删除重复记录：
最高效的删除重复记录方法 ( 因为使用了ROWID)例子：
DELETE  FROM  EMP E  WHERE  E.ROWID > (SELECT MIN(X.ROWID) 
FROM  EMP X  WHERE  X.EMP\_NO = E.EMP\_NO);
* rowid, rownum的定义 
1. rowid和rownum都是虚列 
2. rowid是物理地址，用于定位oracle中具体数据的物理存储位置 
3. rownum则是sql的输出结果排序，从下面的例子可以看出其中的区别。 
* oracle中存储过程，游标和函数的区别 
游标类似指针，游标可以执行多个不相关的操作.如果希望当产生了结果集后,对结果集中的数据进行多 种不相关的数据操作 
函数可以理解函数是存储过程的一种； 函数可以没有参数,但是一定需要一个返回值，存储过程可以没有参数,不需要返回值；两者都可以通过out参数返回值, 如果需要返回多个参数则建议使用存储过程；在sql数据操纵语句中只能调用函数而不能调用存储过程 
* 使用oracle 伪列删除表中重复记录： 
Delete table t where t.rowid!=(select max(t1.rowid) from table1 t1 where t1.name=t.name)

## 备份与恢复

### RMAN(Recovery Manager)工具

1.什么是RMAN？
RMAN可以用来备份和还原数据库文件、归档日志和控制文件。它也可以用来执行完全或不完全的数据库恢复。

注意：RMAN不能用于备份初始化参数文件和口令文件。

RMAN启动数据库上的Oracle服务器进程来进行备份或还原。备份、还原、恢复是由这些进程驱动的。

RMAN可以由OEM的Backup Manager GUI来控制，但在本文章里不作重点讨论。

1. Terminology 专业词汇解释
2.1. Backup sets 备份集合

备份集合有下面的特性：

包括一个或多个数据文件或归档日志

以oracle专有的格式保存

有一个完全的所有的备份片集合构成

构成一个完全备份或增量备份

2.2. Backup pieces 备份片

一个备份集由若干个备份片组成。每个备份片是一个单独的输出文件。一个备份片的大小是有限制的；如果没有大小的限制， 备份集就只由一个备份片构成。备份片的大小不能大于使用的文件系统所支持的文件长度的最大值。

2.3. Image copies 镜像备份

镜像备份是独立文件（数据文件、归档日志、控制文件）的备份。它很类似操作系统级的文件备份。它不是备份集或 备份片，也没有被压缩。

2.4. Full backup sets 全备份集合

全备份是一个或多个数据文件中使用过的数据块的的备份。没有使用过的数据块是不被备份的，也就是说，oracle 进行备份集合的压缩。

2.5. Incremental backup sets 增量备份集合

增量备份是指备份一个或多个数据文件的自从上一次同一级别的或更低级别的备份以来被修改过的数据块。 与完全备份相同，增量备份也进行压缩。

2.6. File multiplexing

不同的多个数据文件的数据块可以混合备份在一个备份集中。

2.7. Recovery catalog resyncing 恢复目录同步

使用恢复管理器执行backup、copy、restore或者switch命令时，恢复目录自动进行更新，但是有关日志与归档日志信息没有自动记入恢复目录。需要进行目录同步。使用resync catalog命令进行同步。

RMAN>resync catalog;
RMAN-03022：正在编译命令：resync
RMAN-03023：正在执行命令：resync
RMAN-08002：正在启动全部恢复目录的 resync
RMAN-08004：完成全部 resync

3. 恢复目录
3.1.恢复目录的概念

恢复目录是由RMAN使用、维护的用来放置备份信息的仓库。RMAN利用恢复目录记载的信息去判断如何执行需要的备份恢复操作。

恢复目录可以存在于ORACLE数据库的计划中。

虽然恢复目录可以用来备份多个数据库，建议为恢复目录数据库创建一个单独的数据库。

恢复目录数据库不能使用恢复目录备份自身。

3.2.建立恢复目录

第一步，在目录数据库中创建恢复目录所用表空间：

SQL> create tablespace rman\_ts datafile 'd:\oracle\oradata\rman\rman\_ts.dbf' size 20M;

表空间已创建。

第二步，在目录数据库中创建RMAN 用户并授权：

SQL> create user rman identified by rman default tablespace rman\_ts temporary tablespace temp quota unlimited on rman\_ts;

用户已创建。

SQL> grant recovery\_catalog\_owner to rman ;

授权成功。
SQL> grant connect, resource to rman ;

授权成功。

第三步，在目录数据库中创建恢复目录

C:>rman catalog rman/rman

恢复管理器：版本8.1.6.0.0 - Production

RMAN-06008：连接到恢复目录数据库
RMAN-06428：未安装恢复目录
RMAN>create catalog tablespace rman\_ts;
RMAN-06431：恢复目录已创建

注意：虽然使用RMAN不一定必需恢复目录，但是推荐使用。因为恢复目录记载的信息大部分可以通过控制文件来记载，RMAN在恢复数据库时使用这些信息。不使用恢复目录将会对备份恢复操作有限制。

3.3.使用恢复目录的优势

可以存储脚本；

记载较长时间的备份恢复操作；

4. 启动RMAN
RMAN为交互式命令行处理界面，也可以从企业管理器中运行。

为了使用下面的实例，先检查环境符合：

the target database is called "his" and has the same TNS alias

user rman has been granted "recovery\_catalog\_owner "privileges

目标数据库的连接用户为internal帐号，或者以其他SYSDBA类型帐号连接

the recovery catalog database is called "rman" and has the same TNS alias

the schema containing the recovery catalog is "rman" (same password)

在使用RMAN前，设置NLS\_DATE\_FORMAT 和NLS\_LANG环境变量，很多RMAN LIST命令的输出结果是与日期时间相关的，这点在用户希望执行以时间为基准的恢复工作也很重要。

下例是环境变量的示范：

NLS\_LANG= SIMPLIFIED CHINESE\_CHINA.ZHS16GBK
NLS\_DATE\_FORMAT=DD-MON-YYYY HH24\:MI\:SS

为了保证RMAN使用时能连接恢复目录，恢复目录数据库必须打开，目标数据库至少要STARTED（unmount），否则RMAN会返回一个错误，目标数据库必须置于归档模式下。

4.1.使用不带恢复目录的RMAN

设置目标数据库的 ORACLE\_SID ，执行：

% rman nocatalog
RMAN> connect target
RMAN> connect target internal/@his

4.2.使用带恢复目录的RMAN

% rman rman\_ts rman/rman\@rman
RMAN> connect target
% rman rman\_ts rman/rman\@rman target internal/@his

4.3.使用RMAN

一旦连接到目标数据库，可以通过交互界面或者事先存储的脚本执行指定RMAN命令， 下面是一个使用RMAN交互界面的实例：

RMAN> resync catalog;
RMAN-03022：正在编译命令：resync
RMAN-03023：正在执行命令：resync
RMAN-08002：正在启动全部恢复目录的 resync
RMAN-08004：完成全部 resync

使用脚本的实例：

RMAN> execute script alloc\_1\_disk;

创建或者替代存储的脚本：

RMAN> replace script alloc\_1\_disk {
2> allocate channel d1 type disk;
3> }

5.注册或者注销目标数据库
5.1.注册目标数据库

数据库状态：

恢复目录状态：打开

目标数据库：加载或者打开

目标数据库在第一次使用RMAN之前必须在恢复目录中注册：

第一步，启动恢复管理器，并且连接目标数据库：

C:>rman target internal/oracle\@his catalog rman/rman\@rman

恢复管理器：版本8.1.6.0.0 - Production

RMAN-06005：连接到目标数据库：HIS (DBID=3021445076)
RMAN-06008：连接到恢复目录数据库

第二步，注册数据库：

RMAN> register database;
RMAN-03022：正在编译命令：register
RMAN-03023：正在执行命令：register
RMAN-08006：注册在恢复目录中的数据库
RMAN-03023：正在执行命令：full resync
RMAN-08002：正在启动全部恢复目录的resync
RMAN-08004：完成全部resync

5.2.注销目标数据库

RMAN提供了一个注销工具，叫DBMS\_RCVCAT工具包，请注意一旦注销了该目标数据库，就不可以使用恢复目录中含有的备份集来恢复数据库了。

为了能注销数据库，需要获得数据库的标识码（DB\_ID）和数据库键值（DB\_KEY）。其中连接目标数据库时将会获得DB\_ID。

C:>rman target internal/oracle\@his catalog rman/rman\@rman

恢复管理器：版本8.1.6.0.0 - Production

RMAN-06005：连接到目标数据库：HIS (DBID=3021445076)
RMAN-06008：连接到恢复目录数据库

其中DBID=3021445076，利用DBID=3021445076查询数据库键值码：

连接到目标数据库，查询db表：

SQL> select \* from db;

DB\_KEY DB\_ID CURR\_DBINC\_KEY
---------- ---------- --------------
1 3021445076 2

获得DB\_KEY＝1，这样，该目标数据库DB\_KEY＝1，DBID=3021445076，利用两个值使用DBMS\_RCVCAT工具包就可以注销数据库：
一、冷备份介绍：
冷备份数据库是将数据库关闭之后备份所有的关键性文件包括数据文件、控制文件、联机REDO LOG文件，将其拷贝到另外的位置。此外冷备份也可以包含对参数文件和口令文件的备份，但是这两种备份是可以根据需要进行选择的。，冷备份实际也是一种物理备份，是一个备份数据库物理文件的过程。因为冷备份要备份除了重做日志以外的所有数据库文件，因此也被成为完全的数据库备份。它的优缺点如下所示：
1、优点：
<1>只需拷贝文件即可，是非常快速的备份方法。
<2>只需将文件再拷贝回去，就可以恢复到某一时间点上。
<3>与数据库归档的模式相结合可以使数据库很好地恢复。
<4>维护量较少，但安全性确相对较高。
2、缺点：
<1>在进行数据库冷备份的过程中数据库必须处于关闭状态。
<2>单独使用冷备份时，数据库只能完成基于某一时间点上的恢复。
<3>若磁盘空间有限，冷备份只能将备份数据拷贝到磁带等其他外部存储上，速度会更慢。
<4>冷备份不能按表或按用户恢复。
3、具体备份步骤如下：
<1>以DBA用户或特权用户登录，查询动态性能视图v`$datafile、v$`controlfile可以分别列出数据库的数据文件以及控制文件。
SQL> select name from v`$datafile;
NAME -------------------------------------------------------------------------------- /u02/oradata/db01/system01.dbf /u02/oradata/db01/undotbs01.dbf /u02/oradata/db01/sysaux01.dbf /u02/oradata/db01/users01.dbf
SQL&gt; select name from v$`controlfile;
NAME -------------------------------------------------------------------------------- /u02/oradata/db01/control01.ctl /u02/oradata/db01/control02.ctl /u02/oradata/db01/control03.ctl /u01/app/oracle/bak/control04.ctl
<2>以DBA用户或特权用户关闭数据库。
SQL> conn /  as sysdba; Connected. SQL> shutdown normal Database closed. Database dismounted. ORACLE instance shut down.
<3>复制数据文件，复制时应该将文件复制到单独的一个硬盘或者磁盘上。控制文件是相互镜像的，因此只需复制一个控制文件即可。
cp /u02/oradata/db01/*.dbf  /u01/app/oracle/bak
cp /u02/oradata/db01/*.ctl  /u01/app/oracle/bak
<4>启动例程打开数据库。
SQL> conn / as sysdba; Connected to an idle instance. SQL> startup ORACLE instance started.
Total System Global Area  285212672 bytes Fixed Size                  1218992 bytes Variable Size              83887696 bytes Database Buffers          197132288 bytes Redo Buffers                2973696 bytes Database mounted. Database opened. SQL>
二、热备份：
热备份是在数据库运行的情况下，采用archive log mode方式备份数据库的方法。热备份要求数据库处于archive log模式下操作，并需要大量的档案空间。一旦数据库处于archive loh
模式，就可以进行备份了，当执行备份时，只能在数据文件级或表空间进行。
1、优点：
<1>可在表空间或数据文件级备份，备份时间短。
<2>可达到秒级恢复(恢复到某一时间点上)。
<3>可对几乎所有数据库实体作恢复。
<4>恢复是快速的，在大多数情况下在数据库仍工作时恢复。
<5>备份时数据库仍可用。
2、缺点：
<1>因难以维护，所以要特别仔细小心，不允许“以失败而告终”。
<2>若热备份不成功，所得结果不可用于时间点的恢复。
<3>不能出错，否则后果严重。
3、设置初始归档模式：
设置归档模式数据库必须处在mount而非open状态下：
<1>首先查看数据库是否处在archive log模式下：
SQL> archive log list;          Database log mode               No Archive Mode          Automatic archival                Disabled          Archive destination               USE\_DB\_RECOVERY\_FILE\_DEST          Oldest online log sequence    1          Current log sequence            2
<2>在mount状态下启动数据库：
SQL> startup mount;          ORACLE instance started.
Total System Global Area  285212672 bytes          Fixed Size                  1218992 bytes          Variable Size              83887696 bytes          Database Buffers          197132288 bytes          Redo Buffers                2973696 bytes          Database mounted.
<3>设置数据库为归档模式:
SQL> alter database archivelog;
Database altered.
<4>打开数据库：
SQL> alter database open;
Database altered.
<5>将数据库设置成自动归档，使用以下命令：
SQL> alter system set log\_archive\_start=true scope=spfile;
System altered.
<6>确定数据库处于归档模式下，并且设置自动存档：
SQL> archive log list; Database log mode              Archive Mode Automatic archival             Enabled Archive destination            USE\_DB\_RECOVERY\_FILE\_DEST Oldest online log sequence     1 Next log sequence to archive   2 Current log sequence           2
上面的Archive destination所定义的具体位置，可以查看\$ORACLE\_HOME/dbs/spfile\<dbname>.ora文件中的db\_recovery\_file\_dest参数的值。
4、联机备份：
联机备份是热备份的一种备份方法，是指当表空间处于ONLINE状态时，备份表空间的所有数据文件和单个数据文件的过程。使用联机备份的优点是不影响用户在表空间上的所有访问操作，但联机备份的缺点可能生产更多的重做日志文件和归档日志文件。以下是联机备份的具体步骤：
<1>以DBA用户或特权用户登录，确定表空间所包含的数据文件。通过查询数据字典DBA\_DATA\_FILES，可以得到数据文件和表空间的对应关系：
SQL> select file\_name from dba\_data\_files where tablespace\_name='USERS';
FILE\_NAME -------------------------------------------------------------------------------- /u02/oradata/db01/users01.dbf
<2>设置表空间为备份模式，在复制表空间的数据文件之前必须将表空间设置成为备份模式：
SQL> alter tablespace users begin backup;
Tablespace altered.
<3>复制users数据文件到备份目录：
\[oracle\@server1 bak]`$ cp /u02/oradata/db01/users01.dbf /bak
<4>复制后表空间就不需要设置成为备份模式了，因此可以将其返回正常模式：
SQL&gt;  alter tablespace users end backup;
Tablespace altered.
5、脱机备份：
      脱机备份也是热备份的一种方法，是指当表空间处于offline时，备份表空间的所有数据文件以及单个数据文件的过程。它的优点是会生产较少的重做日志文件，缺点是当用户正在进行脱机备份时所备份的表空间将不能访问，由于SYSTEM系统表空间和正在使用的UNDO表空间不能被脱机，因此脱机备份不适用于SYSTEM表空间和正在使用的UNDO表空间。
        <1>使用DBA用户或特权用户登录，确定表空间所包含的数据文件。这个和联机备份的第一步相同：
SQL&gt; select file_name from dba_data_files where tablespace_name='USERS';
FILE_NAME -------------------------------------------------------------------------------- /u02/oradata/db01/users01.dbf
<2>设置表空间为脱机状态，将表空间设置为脱机状态后用户将不能访问该表空间上的任何对象，因此也可以确保OFFLINE的表空间的数据文件不会发生改变。
SQL&gt; alter tablespace users offline;
Tablespace altered.
SQL&gt; select tablespace_name,online_status from dba_data_files;
TABLESPACE_NAME                ONLINE_ ------------------------------ ------- USERS                          OFFLINE SYSAUX                         ONLINE UNDOTBS1                       ONLINE SYSTEM                         SYSTEM
<3>复制users数据文件到备份目录： [oracle@server1 bak]$` cp /u02/oradata/db01/users01.dbf /bak
<4>复制完后将表空间置于online状态：
SQL> alter  tablespace users online;
Tablespace altered.
SQL> select tablespace\_name,online\_status from dba\_data\_files;
TABLESPACE\_NAME                ONLINE\_ ------------------------------ ------- USERS                          ONLINE SYSAUX                         ONLINE UNDOTBS1                       ONLINE SYSTEM                         SYSTEM

### 闪回技术

#### flashback

#### show recyclebin

### exp/imp
基本语法和实例：\
#### EXP:有三种主要的方式（完全、用户、表）
1、完全：EXP SYSTEM/MANAGER BUFFER=64000 FILE=C:\FULL.DMP FULL=Y如果要执行完全导出，必须具有特殊的权限
2、用户模式：EXP SONIC/SONIC   BUFFER=64000 FILE=C:\SONIC.DMP OWNER=SONIC这样用户SONIC的所有对象被输出到文件中。
3、表模式：EXP SONIC/SONIC   BUFFER=64000 FILE=C:\SONIC.DMP OWNER=SONIC TABLES=(SONIC)这样用户SONIC的表SONIC就被导出
#### IMP:具有三种模式（完全、用户、表）
1、完全：IMP SYSTEM/MANAGER BUFFER=64000 FILE=C:\FULL.DMP FULL=Y\
2、用户模式：IMP SONIC/SONIC   BUFFER=64000 FILE=C:\SONIC.DMP FROMUSER=SONIC TOUSER=SONIC这样用户SONIC的所有对象被导入到文件中。必须指定FROMUSER、TOUSER参数，这样才能导入数据。\
3、表模式：EXP SONIC/SONIC   BUFFER=64000 FILE=C:\SONIC.DMP OWNER=SONIC TABLES=(SONIC)这样用户SONIC的表SONIC就被导入。

ORACLE数据库有两类备份方法。第一类为物理备份，该方法实现数据库的完整恢复，但数据库必须运行在归挡模式下（业务数据库在非归挡模式下运行），且需要极大的外部存储设备，例如磁带库；第二类备份方式为逻辑备份，业务数据库采用此种方式，此方法不需要数据库运行在归挡模式下，不但备份简单，而且可以不需要外部存储设备。\
\
数据库逻辑备份方法\
\
ORACLE数据库的逻辑备份分为三种模式：表备份、用户备份和完全备份。\
\
表模式\
\
备份某个用户模式下指定的对象（表）。业务数据库通常采用这种备份方式。\
\
若备份到本地文件，使用如下命令：\
\
exp icdmain/icd rows=y indexes=n compress=n buffer=65536\
feedback=100000 volsize=0\
file=exp\_icdmain\_csd\_yyyymmdd.dmp\
log=exp\_icdmain\_csd\_yyyymmdd.log\
tables=icdmain.commoninformation,icdmain.serviceinfo,icdmain.dealinfo\
\
若直接备份到磁带设备，使用如下命令：\
exp icdmain/icd rows=y indexes=n compress=n buffer=65536\
feedback=100000 volsize=0\
file=/dev/rmt0\
log=exp\_icdmain\_csd\_yyyymmdd.log\
tables=icdmain.commoninformation,icdmain.serviceinfo,icdmain.dealinfo\
\
注：在磁盘空间允许的情况下，应先备份到本地服务器，然后再拷贝到磁带。出于速度方面的考虑，尽量不要直接备份到磁带设备。\
\
用户模式\
\
备份某个用户模式下的所有对象。业务数据库通常采用这种备份方式。\
若备份到本地文件，使用如下命令：\
exp icdmain/icd owner=icdmain rows=y indexes=n compress=n buffer=65536\
feedback=100000 volsize=0\
file=exp\_icdmain\_yyyymmdd.dmp\
log=exp\_icdmain\_yyyymmdd.log\
若直接备份到磁带设备，使用如下命令：\
exp icdmain/icd owner=icdmain rows=y indexes=n compress=n buffer=65536\
feedback=100000 volsize=0\
file=/dev/rmt0\
log=exp\_icdmain\_yyyymmdd.log\
注：如果磁盘有空间，建议备份到磁盘，然后再拷贝到磁带。如果数据库数据量较小，可采用这种办法备份。
 
以下为详细的导入导出实例：
一、数据导出：
 
1、将数据库TEST完全导出，用户名system 密码manager 导出到D：\daochu.dmp中
 
exp system/manager\@TEST file=d：\daochu.dmp full=y
 
2、将数据库中system用户与sys用户的表导出
 
exp system/manager\@TEST file=d：\daochu.dmp owner=（system，sys）
 
3、将数据库中的表table1 、table2导出
 
exp system/manager\@TEST file=d：\daochu.dmp tables=（table1，table2）
 
4、将数据库中的表table1中的字段filed1以"00"打头的数据导出
 
exp system/manager\@TEST file=d：\daochu.dmp tables=（table1） query=\\" where filed1 like '00%'\\"
 
上面是常用的导出，对于压缩我不太在意，用winzip把dmp文件可以很好的压缩。
 
不过在上面命令后面 加上 compress=y 就可以了
 
二、数据的导入
 
1、将D：\daochu.dmp 中的数据导入 TEST数据库中。
 
imp system/manager\@TEST file=d：\daochu.dmp
 
上面可能有点问题，因为有的表已经存在，然后它就报错，对该表就不进行导入。
 
在后面加上 ignore=y 就可以了。
 
2 将d：\daochu.dmp中的表table1 导入
 
imp system/manager\@TEST file=d：\daochu.dmp tables=（table1）
 
基本上上面的导入导出够用了。不少情况我是将表彻底删除，然后导入。
 
注意：
 
你要有足够的权限，权限不够它会提示你。
 
数据库时可以连上的。可以用tnsping TEST 来获得数据库TEST能否连上。

### expdp/impdp

### expdp/impdp和exp/imp的区别
1、exp和imp是客户端工具程序，它们既可以在客户端使用，也可以在服务端使用。
2、expdp和impdp是服务端的工具程序，他们只能在oracle服务端使用，不能在客户端使用。
3、imp只适用于exp导出的文件，不适用于expdp导出文件；impdp只适用于expdp导出的文件，而不适用于exp导出文件。
4、对于10g以上的服务器，使用exp通常不能导出0行数据的空表，而此时必须使用expdp导出。
 
二、expdp导出步骤
（1）创建逻辑目录：
　第一步：在服务器上创建真实的目录；（注意：第三步创建逻辑目录的命令不会在OS上创建真正的目录，所以要先在服务器上创建真实的目录。如下图：）
　![](https://images2017.cnblogs.com/blog/1223704/201709/1223704-20170905095737960-458597655.png)
　第二步：用sys管理员登录sqlplus；
[![复制代码](https://assets.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码")
    oracle@ypdbtest:/home/oracle/dmp/vechcore>sqlplus
    SQL*Plus: Release 11.2.0.4.0 Production on Tue Sep 5 09:20:49 2017
    Copyright (c) 1982, 2013, Oracle.  All rights reserved.
    Enter user-name: sys as sysdba
    Enter password:
    Connected to:
    Oracle Database 11g Enterprise Edition Release 11.2.0.4.0 - 64bit Production
    With the Partitioning, OLAP, Data Mining and Real Application Testing options
    SQL>
[![复制代码](https://assets.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码")
　第三步：创建逻辑目录；
    SQL> create directory data_dir as '/home/oracle/dmp/user';
    Directory created.
　第四步：查看管理员目录，检查是否存在；
[![复制代码](https://assets.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码")
    SQL> select * from dba_directories;
    OWNER                          DIRECTORY_NAME
    ------------------------------ ------------------------------
    DIRECTORY_PATH
    --------------------------------------------------------------------------------
    SYS                            DATA_DIR
    /home/oracle/dmp/user
[![复制代码](https://assets.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码")
　　第五步：用sys管理员给你的指定用户赋予在该目录的操作权限。
    SQL> grant read,write on directory data_dir to user;
    Grant succeeded.
（2）用expdp导出dmp，有五种导出方式：
　　第一种：“full=y”，全量导出数据库；
    expdp user/passwd@orcl dumpfile=expdp.dmp directory=data_dir full=y logfile=expdp.log;
　　第二种：schemas按用户导出；
    expdp user/passwd@orcl schemas=user dumpfile=expdp.dmp directory=data_dir logfile=expdp.log;
　　第三种：按表空间导出；
    expdp sys/passwd@orcl tablespace=tbs1,tbs2 dumpfile=expdp.dmp directory=data_dir logfile=expdp.log;
　　第四种：导出表；
    expdp user/passwd@orcl tables=table1,table2 dumpfile=expdp.dmp directory=data_dir logfile=expdp.log;
　　第五种：按查询条件导；
    expdp user/passwd@orcl tables=table1='where number=1234' dumpfile=expdp.dmp directory=data_dir logfile=expdp.log;
\
三、impdp导入步骤
（1）如果不是同一台服务器，需要先将上面的dmp文件下载到目标服务器上，具体命令参照：<http://www.cnblogs.com/promise-x/p/7452972.html>
（2）参照“expdp导出步骤”里的前三步，建立逻辑目录；
（3）用impdp命令导入，对应五种方式：
　　第一种：“full=y”，全量导入数据库；
    impdp user/passwd directory=data_dir dumpfile=expdp.dmp full=y;
　　第二种：同名用户导入，从用户A导入到用户A；
    impdp A/passwd schemas=A directory=data_dir dumpfile=expdp.dmp logfile=impdp.log;
　　第三种：①从A用户中把表table1和table2导入到B用户中；
    impdp B/passwdtables=A.table1,A.table2 remap_schema=A:B directory=data_dir dumpfile=expdp.dmp logfile=impdp.log;
　　　　　　②将表空间TBS01、TBS02、TBS03导入到表空间A\_TBS，将用户B的数据导入到A，并生成新的oid防止冲突；
    impdp A/passwd remap_tablespace=TBS01:A_TBS,TBS02:A_TBS,TBS03:A_TBS remap_schema=B:A FULL=Y transform=oid:n 
    directory=data_dir dumpfile=expdp.dmp logfile=impdp.log
　　第四种：导入表空间；
    impdp sys/passwd tablespaces=tbs1 directory=data_dir dumpfile=expdp.dmp logfile=impdp.log;
　　第五种：追加数据；
    impdp sys/passwd directory=data_dir dumpfile=expdp.dmp schemas=system table_exists_action=replace logfile=impdp.log; 
    --table_exists_action:导入对象已存在时执行的操作。有效关键字:SKIP,APPEND,REPLACE和TRUNCATE
 
四、expdp关键字与命令

 （1）关键字　　　　　　　　　 　　说明 (默认)

 ATTACH　　　　　　　　　　　　　　　连接到现有作业, 例如 ATTACH \[=作业名]。
 COMPRESSION　　　　 　　　　　　　减小转储文件内容的大小, 其中有效关键字 值为: ALL, (METADATA\_ONLY), DATA\_ONLY 和 NONE。
 CONTENT　　　　　　　　　 　　　　  指定要卸载的数据, 其中有效关键字 值为: (ALL), DATA\_ONLY 和 METADATA\_ONLY。
 DATA\_OPTIONS　　　　　　  　　　　  数据层标记, 其中唯一有效的值为: 使用CLOB格式的 XML\_CLOBS-write XML 数据类型。
 DIRECTORY　　　　　　　　 　　　　　供转储文件和日志文件使用的目录对象，即逻辑目录。
 DUMPFILE　　　　　　　　　　　　　　目标转储文件 (expdp.dmp) 的列表,例如 DUMPFILE=expdp1.dmp, expdp2.dmp。
 ENCRYPTION　　　　　　　　 　　　　加密部分或全部转储文件, 其中有效关键字值为: ALL, DATA\_ONLY, METADATA\_ONLY,ENCRYPTED\_COLUMNS\_ONLY 或 NONE。
 ENCRYPTION\_ALGORITHM　　　　　　指定应如何完成加密, 其中有效关键字值为: (AES128), AES192 和 AES256。
 ENCRYPTION\_MODE　　　　　　　　　`生成加密密钥的方法, 其中有效关键字值为: DUAL, PASSWORD` `和 (TRANSPARENT)。`
 ENCRYPTION\_PASSWORD　　　　　　用于创建加密列数据的口令关键字。
 ESTIMATE　　　　　　　　　　　　　　计算作业估计值, 其中有效关键字值为: (BLOCKS) 和 STATISTICS。
 ESTIMATE\_ONLY　　　　　　　  　　　 在不执行导出的情况下计算作业估计值。
 EXCLUDE　　　　　　　　　　　　 　　排除特定的对象类型, 例如 EXCLUDE=TABLE\:EMP。例：EXCLUDE=\[object\_type]:\[name\_clause],\[object\_type]:\[name\_clause] 。
 FILESIZE　　　　　　　　　　　　  　　以字节为单位指定每个转储文件的大小。
 FLASHBACK\_SCN　　　　　　　　 　　用于将会话快照设置回以前状态的 SCN。 -- 指定导出特定SCN时刻的表数据。
 FLASHBACK\_TIME　　　　　　　　　　用于获取最接近指定时间的 SCN 的时间。-- 定导出特定时间点的表数据，注意FLASHBACK\_SCN和FLASHBACK\_TIME不能同时使用。
 FULL　　　　　　　　　　　　　　 　　导出整个数据库 (N)。　　
 HELP　　　　　　　　　　　　　　 　　显示帮助消息 (N)。
 INCLUDE　　　　　　　　　　　　 　　包括特定的对象类型, 例如 INCLUDE=TABLE\_DATA。
 JOB\_NAME　　　　　　　　　　　  　　要创建的导出作业的名称。
 LOGFILE　　　　　　　　　　　　  　　日志文件名 (export.log)。
 NETWORK\_LINK　　　　　　　　  　　链接到源系统的远程数据库的名称。
 NOLOGFILE　　　　　　　　　　　　　不写入日志文件 (N)。
 PARALLEL　　　　　　　　　　　  　　更改当前作业的活动 worker 的数目。
 PARFILE　　　　　　　　　　　　  　　指定参数文件。
 QUERY　　　　　　　　　　　　　 　　用于导出表的子集的谓词子句。--QUERY = \[schema.]\[table\_name:] query\_clause。
 REMAP\_DATA　　　　　　　　　   　　指定数据转换函数,例如 REMAP\_DATA=EMP.EMPNO\:REMAPPKG.EMPNO。
 REUSE\_DUMPFILES　　　　　　　　　覆盖目标转储文件 (如果文件存在) (N)。
 SAMPLE　　　　　　　　　　　　 　　要导出的数据的百分比。
 SCHEMAS　　　　　　　　　　　  　　要导出的方案的列表 (登录方案)。　　
 STATUS　　　　　　　　　　　　 　　在默认值 (0) 将显示可用时的新状态的情况下,要监视的频率 (以秒计) 作业状态。　　
 TABLES　　　　　　　　　　　　 　　标识要导出的表的列表 - 只有一个方案。--\[schema\_name.]table\_name\[:partition\_name]\[,…]
 TABLESPACES　　　　　　　　　 　　标识要导出的表空间的列表。
 TRANSPORTABLE　　　　　　　　　  指定是否可以使用可传输方法, 其中有效关键字值为: ALWAYS, (NEVER)。
 TRANSPORT\_FULL\_CHECK　　 　　　验证所有表的存储段 (N)。 
 TRANSPORT\_TABLESPACES　　　　  要从中卸载元数据的表空间的列表。
 VERSION　　　　　　　　　　　　　　要导出的对象的版本, 其中有效关键字为:(COMPATIBLE), LATEST 或任何有效的数据库版本。

（2）命令　　　　　　　　　　　　说明

 ADD\_FILE　　　　　　　　　　　　　向转储文件集中添加转储文件。
 CONTINUE\_CLIENT　　　　　　　 　返回到记录模式。如果处于空闲状态, 将重新启动作业。
 EXIT\_CLIENT　　　　　　　　　　 　退出客户机会话并使作业处于运行状态。
 FILESIZE　　　　　　　　　　　　 　后续 ADD\_FILE 命令的默认文件大小 (字节)。
 HELP　　　　　　　　　　　　　　　总结交互命令。
 KILL\_JOB　　　　　　　　　　　　　分离和删除作业。
 PARALLEL　　　　　　　　　　　 　 更改当前作业的活动 worker 的数目。PARALLEL=\<worker 的数目>。
 \_DUMPFILES　　　　　　　　　　 　 覆盖目标转储文件 (如果文件存在) (N)。
 START\_JOB　　　　　　　　　　  　启动/恢复当前作业。
 STATUS　　　　　　　　　　　　 　 在默认值 (0) 将显示可用时的新状态的情况下,要监视的频率 (以秒计) 作业状态。STATUS\[=interval]。
 STOP\_JOB　　　　　　　　　　　 　 顺序关闭执行的作业并退出客户机。STOP\_JOB=IMMEDIATE 将立即关闭数据泵作业。

 
五、impdp关键字与命令

（1）关键字　　　　　　　　　　　　说明 (默认)

ATTACH　　　　　　　　　　　　　　　连接到现有作业, 例如 ATTACH \[=作业名]。
CONTENT　　　　　　　　　 　　　　  指定要卸载的数据, 其中有效关键字 值为: (ALL), DATA\_ONLY 和 METADATA\_ONLY。
DATA\_OPTIONS　　　　　　 　　　　  数据层标记,其中唯一有效的值为\:SKIP\_CONSTRAINT\_ERRORS-约束条件错误不严重。
DIRECTORY　　　　　　　　　　　　　供转储文件,日志文件和sql文件使用的目录对象，即逻辑目录。
DUMPFILE　　　　　　　　　　　　　　要从(expdp.dmp)中导入的转储文件的列表,例如 DUMPFILE=expdp1.dmp, expdp2.dmp。
 ENCRYPTION\_PASSWORD　　　　　　用于访问加密列数据的口令关键字。此参数对网络导入作业无效。
 ESTIMATE　　　　　　　　　　　　　　计算作业估计值, 其中有效关键字为:(BLOCKS)和STATISTICS。
 EXCLUDE　　　　　　　　　　　　　　排除特定的对象类型, 例如 EXCLUDE=TABLE\:EMP。
 FLASHBACK\_SCN　　　　　　　　　　用于将会话快照设置回以前状态的 SCN。
 FLASHBACK\_TIME　　　　　　　　　　用于获取最接近指定时间的 SCN 的时间。
 FULL　　　　　　　　　　　　　　　　 从源导入全部对象(Y)。
 HELP　　　　　　　　　　　　　　　　 显示帮助消息(N)。
 INCLUDE　　　　　　　　　　　　　　 包括特定的对象类型, 例如 INCLUDE=TABLE\_DATA。
 JOB\_NAME　　　　　　　　　　　　　 要创建的导入作业的名称。
 LOGFILE　　　　　　　　　　　　　　 日志文件名(import.log)。
 NETWORK\_LINK　　　　　　　　　　　链接到源系统的远程数据库的名称。
 NOLOGFILE　　　　　　　　　　　　　不写入日志文件。　　
 PARALLEL　　　　　　　　　　　　　  更改当前作业的活动worker的数目。
 PARFILE　　　　　　　　　　　　　　 指定参数文件。
 PARTITION\_OPTIONS　　　　　　　　 指定应如何转换分区,其中有效关键字为\:DEPARTITION,MERGE和(NONE)。
 QUERY　　　　　　　　　　　　　　　用于导入表的子集的谓词子句。
 REMAP\_DATA　　　　　　　　　　　　指定数据转换函数,例如REMAP\_DATA=EMP.EMPNO\:REMAPPKG.EMPNO。
 REMAP\_DATAFILE　　　　　　　　　　在所有DDL语句中重新定义数据文件引用。
 REMAP\_SCHEMA　　　　　　　　　　 将一个方案中的对象加载到另一个方案。
 REMAP\_TABLE　　　　　　　　　　　 表名重新映射到另一个表,例如 REMAP\_TABLE=EMP.EMPNO\:REMAPPKG.EMPNO。
 REMAP\_TABLESPACE　　　　　　　　将表空间对象重新映射到另一个表空间。
 REUSE\_DATAFILES　　　　　　　　　 如果表空间已存在, 则将其初始化 (N)。
 SCHEMAS　　　　　　　　　　　　　  要导入的方案的列表。
 SKIP\_UNUSABLE\_INDEXES　　　　　 跳过设置为无用索引状态的索引。
 SQLFILE　　　　　　　　　　　　　　 将所有的 SQL DDL 写入指定的文件。
 STATUS　　　　　　　　　　　　　　 在默认值(0)将显示可用时的新状态的情况下,要监视的频率(以秒计)作业状态。　　
 STREAMS\_CONFIGURATION　　　　  启用流元数据的加载。
 TABLE\_EXISTS\_ACTION　　　　　　　导入对象已存在时执行的操作。有效关键字:(SKIP),APPEND,REPLACE和TRUNCATE。
 TABLES　　　　　　　　　　　　　　 标识要导入的表的列表。
 TABLESPACES　　　　　　　　　　　 标识要导入的表空间的列表。　
 TRANSFORM　　　　　　　　　　　　要应用于适用对象的元数据转换。有效转换关键字为\:SEGMENT\_ATTRIBUTES,STORAGE,OID和PCTSPACE。
 TRANSPORTABLE　　　　　　　　　  用于选择可传输数据移动的选项。有效关键字为: ALWAYS 和 (NEVER)。仅在 NETWORK\_LINK 模式导入操作中有效。
 TRANSPORT\_DATAFILES　　　　　　 按可传输模式导入的数据文件的列表。
 TRANSPORT\_FULL\_CHECK　　　　　验证所有表的存储段 (N)。
 TRANSPORT\_TABLESPACES　　　　 要从中加载元数据的表空间的列表。仅在 NETWORK\_LINK 模式导入操作中有效。
 VERSION　　　　　　　　　　　　　 要导出的对象的版本, 其中有效关键字为:(COMPATIBLE), LATEST 或任何有效的数据库版本。仅对 NETWORK\_LINK 和 SQLFILE 有效。

（2）命令　　　　　　　　　　　　说明

 CONTINUE\_CLIENT　　　　　　　　　返回到记录模式。如果处于空闲状态, 将重新启动作业。
 EXIT\_CLIENT　　　　　　　　　　　　退出客户机会话并使作业处于运行状态。
 HELP　　　　　　　　　　　　　　　  总结交互命令。
 KILL\_JOB　　　　　　　　　　　　　  分离和删除作业。
 PARALLEL　　　　　　　　　　　　　 更改当前作业的活动 worker 的数目。PARALLEL=\<worker 的数目>。
 START\_JOB　　　　　　　　　　　　 启动/恢复当前作业。START\_JOB=SKIP\_CURRENT 在开始作业之前将跳过作业停止时执行的任意操作。
 STATUS　　　　　　　　　　　　　　 在默认值 (0) 将显示可用时的新状态的情况下,要监视的频率 (以秒计) 作业状态。STATUS\[=interval]。
 STOP\_JOB　　　　　　　　　　　　　顺序关闭执行的作业并退出客户机。STOP\_JOB=IMMEDIATE 将立即关闭数据泵作业。

## 数据库集群技术

### RAC应用

### ASM

### 容灾和数据卫士

### 故障诊断

## 商业智能与数据仓库

### 多维数据库

### 数据挖掘

## Oracle事务隔离级别
设置一个事务的隔离级别：
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SET TRANSACTION READ ONLY;
SET TRANSACTION READ WRITE;
注意：这些语句是互斥的，不能同时设置两个或两个以上的选项。
设置单个会话的隔离级别：
ALTER SESSION SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
ALTER SESSION SET TRANSACTION ISOLATION SERIALIZABLE;
隔离级别	脏读	不可重复读	幻读
Read Uncommited	Y	Y	Y
Read Commited	N	Y	Y
Repeatable read	N	N	Y
Serialized	N	N	N

## 索引
创建标准索引： 
CREATE INDEX 索引名 ON 表名 (列名) TABLESPACE 表空间名; 
创建唯一索引: 
CREATE unique INDEX 索引名 ON 表名 (列名) TABLESPACE 表空间名; 
创建组合索引: 
CREATE INDEX 索引名 ON 表名 (列名1,列名2) TABLESPACE 表空间名; 
创建反向键索引: 
CREATE INDEX 索引名 ON 表名 (列名) reverse TABLESPACE 表空间名; 
索引使用原则： 
索引字段建议建立NOT NULL约束 
经常与其他表进行连接的表，在连接字段上应该建立索引； 
经常出现在Where子句中的字段且过滤性很强的，特别是大表的字段，应该建立索引； 
可选择性高的关键字 ，应该建立索引； 
可选择性低的关键字，但数据的值分布差异很大时，选择性数据比较少时仍然可以利用索引提高效率 
复合索引的建立需要进行仔细分析；尽量考虑用单字段索引代替： 
A、正确选择复合索引中的第一个字段，一般是选择性较好的且在where子句中常用的字段上； 
B、复合索引的几个字段经常同时以AND方式出现在Where子句中可以建立复合索引；否则单字段索引； 
C、如果复合索引中包含的字段经常单独出现在Where子句中，则分解为多个单字段索引； 
D、如果复合索引所包含的字段超过3个，那么仔细考虑其必要性，考虑减少复合的字段； 
E、如果既有单字段索引，又有这几个字段上的复合索引，一般可以删除复合索引； 
频繁DML的表，不要建立太多的索引； 
不要将那些频繁修改的列作为索引列； 
索引的优缺点： 
有点： 
1. 创建唯一性索引，保证数据库表中每一行数据的唯一性 
2. 大大加快数据的检索速度，这也是创建索引的最主要的原因 
3. 加速表和表之间的连接，特别是在实现数据的参考完整性方面特别有意义。 
4. 在使用分组和排序子句进行数据检索时，同样可以显著减少查询中分组和排序的时间。 
缺点： 
1. 索引创建在表上，不能创建在视图上 
2. 创建索引和维护索引要耗费时间，这种时间随着数据量的增加而增加 
3. 索引需要占物理空间，除了数据表占数据空间之外，每一个索引还要占一定的物理空间，如果要建立聚簇索引，那么需要的空间就会更大 
4. 当对表中的数据进行增加、删除和修改的时候，索引也要动态的维护，降低了数据的维护速度 
22. 怎样创建一个视图,视图的好处, 视图可以控制权限吗? 
create view 视图名 as select 列名 \[别名] … from 表 \[unio \[all] select … ] ] 
好处： 
1. 可以简单的将视图理解为sql查询语句，视图最大的好处是不占系统空间 
2. 一些安全性很高的系统，不会公布系统的表结构，可能会使用视图将一些敏感信息过虑或者重命名后公布结构 

## 锁
oracle的锁又几种,定义分别是什么; 
1. 行共享锁 (ROW SHARE) 
2. 行排他锁(ROW EXCLUSIVE) 
3 . 共享锁(SHARE) 
4. 共享行排他锁(SHARE ROW EXCLUSIVE) 
5. 排他锁(EXCLUSIVE) 
使用方法： 
SELECT \* FROM order\_master WHERE vencode="V002" 
FOR UPDATE WAIT 5; 
LOCK TABLE order\_master IN SHARE MODE; 
LOCK TABLE itemfile IN EXCLUSIVE MODE NOWAIT; 
ORACLE锁具体分为以下几类： 
1、按用户和系统分可以分为自动锁和显示锁
1.1自动锁（ Automatic Locks）当进行一项数据库操作时，缺省情况下，系统自动为此数据库操作获得所有有必要的锁。
自动锁分为三种：
* DML 锁
* DDL 锁
* systemlocks。
1.2显式锁（ Manual Data Locks）某些情况下，需要用户显示的锁定数据库操作要用到的数据，才能使数据库操作执行得更好，显示锁是用户为数据库对象设定的。
3、按操作分可以分为DML锁、DLL锁和System Locks
3.1DML锁
DML 锁用于控制并发事务中的数据操纵，保证数据的一致性和完整性。
DML锁主要用于保护并发情况下的[数据完整性](https://so.csdn.net/so/search?q=%E6%95%B0%E6%8D%AE%E5%AE%8C%E6%95%B4%E6%80%A7\&spm=1001.2101.3001.7020)。
DML 语句能够自动地获得所需的表级锁（TM）与行级（事务）锁（TX）。
它又分为：
（ 1） TM 锁（表级锁）
（ 2） TX 锁（ 事务锁或行级锁）
当 Oracle 执行 DML 语句时，系统自动在所要操作的表上申请 TM 类型的锁。当 TM 锁获得后，系统再自动申请 TX 类型的锁，并将实际锁定的数据行的锁[标志位](https://so.csdn.net/so/search?q=%E6%A0%87%E5%BF%97%E4%BD%8D\&spm=1001.2101.3001.7020)进行置位。
这样在事务加锁前检查 TX锁相容性时就不用再逐行检查锁标志，而只需检查 TM 锁模式的相容性即可，大大提高了系统的效率。
在数据行上只有 X 锁（排他锁）。
在 Oracle 数据库中，当一个事务首次发起一个 DML 语句时就获得一个 TX 锁，该锁保持到事务被提交或回滚。当两个或多个会话在表的同一条记录上执行 DML 语句时，第一个会话在该条记录上加锁，其他的会话处于等待状态。当第一个会话提交后， TX 锁被释放，其他会话才可以加锁。
当 Oracle 数据库发生 TX 锁等待时，如果不及时处理常常会引起 Oracle 数据库挂起，或导致死锁的发生，产生ORA-600 的错误。这些现象都会对实际应用产生极大的危害，如长时间未响应，大量事务失败等。
3.1.1TM 锁（表级锁）
TM 锁用于确保在修改表的内容时，表的结构不会改变，例如防止在 DML 语句执行期间相关的表被移除。当用户对表执行 DDL 或 DML 操作时，将获取一个此表的表级锁。
当事务获得行锁后，此事务也将自动获得该行的表锁(共享锁),以防止其它事务进行 DDL 语句影响记录行的更新。
事务也可以在进行过程中获得共享锁或排它锁，只有当事务显示使用 LOCK TABLE 语 句显示的定义一个排它锁时，事务才会获得表上的排它锁,也可使用 LOCK TABLE 显示的定义一个表级的共享锁。
TM 锁包括了 SS、SX、S、X 等多种模式，在数据库中用 0－6 来表示。不同的 SQL 操作产生不同类型的 TM 锁.
TM 锁类型表

| 锁模式 | 锁描述  | 解释  | SQL操作  |
| 0 | none | :-- | :-- | 
| 1 | NULL | 空 | Select | 
| 2 | SS(Row-S) | 行级共享锁，其他对象只能查询数据行 | Select for update、Lock for update、Lock row share | 
| 3 | SX(Row-X) | 行级排他锁，在提交前不允许做DML操作 | Insert、Update、Delete、Lock row share | 
| 4 | S(Share) | 共享锁 | Create index、Lock share | 
| 5 | SSX(S/Row-X) | 共享行级排它锁 | Lock share row exclusive | 
| 6 | X(Exclusive) | 排它锁 | Alter table、Drop table、Drop index 、Truncate table、Lock exclusive | 

3.1.2TX 锁（ 事务锁或行级锁）
当事务执行数据库插入、更新、删除操作时，该事务自动获得操作表中操作行的排它锁。
事务发起第一个修改时会得到TX 锁（事务锁），而且会一直持有这个锁，直至事务执行提交（COMMIT）或回滚（ROLLBACK）。
对用户的数据操纵， Oracle 可以自动为操纵的数据进行加锁，但如果有操纵授权，则为满足并发操纵的需要另外实施加锁。
DML 锁可由一个用户进程以显式的方式加锁，也可通过某些 SQL 语句隐含方式实现。 这部分属于 Manual Data Locks。
原理：一个事务要修改块中的数据，必须获得该块中的一个itl，通过itl和undo segment header中的transaction table，可以知道事务是否处于活动阶段。事务在修改块时（其实就是在修改行）会检查行中row header中的标志位，如果该标志位为0（该行没有被活动的事务锁住），就把该标志位修改为事务在该块获得的itl的序号，这样当前事务就获得了对记录的锁定，然后就可以修改行数据了，这也就是oracle行锁实现的原理。
DML 锁有如下三种加锁方式：
* 共享锁方式（ SHARE）
* 独占锁方式（ EXCLUSIVE）
* 共享更新锁（ SHARE UPDATE）

3.1.1.1共享方式的表级锁（ Share）
共享方式的表级锁是对表中的所有数据进行加锁，该锁用于保护查询数据的一致性，防止其它用户对已加锁的表进行更新。
其它用户只能对该表再施加共享方式的锁，而不能再对该表施加独占方式的锁，共享更新锁可以再施加，但不允许持有共享更新封锁的进程做更新。
共享该表的所有用户只能查询表中的数据，但不能更新。
共享方式的表级锁只能由用户用 SQL 语句来设置.
语句格式如下：
LOCK TABLE <表名>\[,<表名>]... IN SHARE MODE \[NOWAIT] 12
* 执行该语句，对一个或多个表施加共享方式的表封锁。
当指定了选择项NOWAIT，若该锁暂时不能施加成功，则返回并由用户决定是进行等待，还是先去执行别的语句。
持有共享锁的事务，在出现如下之一的条件时，便释放其共享锁：
* A、执行 COMMIT 或 ROLLBACK 语句。
* B、退出数据库（ LOG OFF）。
* C、程序停止运行。
共享方式表级锁常用于一致性查询过程，即在查询数据期间表中的数据不发生改变。

3.1.1.2独占方式表级锁（ Exclusive）
独占方式表级锁是用于加锁表中的所有数据，拥有该独占方式表封锁的用户，即可以查询该表，又可以更新该表，其它的用户不能再对该表施加任何加锁（包括共享、独占或共享更新封锁）。
其它用户虽然不能更新该表，但可以查询该表。
独占方式的表封锁可通过如下的 SQL 语句来显示地获得：
LOCK TABLE <表名>\[,<表名>].... IN EXCLUSIVE MODE \[NOWAIT] 12
* 独占方式的表级锁也可以在用户执行 DML 语句 INSERT、UPDATE、DELETE时隐含获得。
拥有独占方式表封锁的事务，在出现如下条件之一时，便释放该封锁：
* （ 1）、执行 COMMIT 或 ROLLBACK 语句。
* （ 2）、退出数据库（ LOG OFF）
* （ 3）、程序停止运行。
独占方式封锁通常用于更新数据，当某个更新事务涉及多个表时，可减少发生死锁.

3.1.1.3共享更新加锁方式（ Share Update）
共享更新加锁是对一个表的一行或多行进行加锁，因而也称作行级加锁。表级加锁虽然保证了数据的一致性，但却减弱了操作数据的并行性。
行级加锁确保在用户取得被更新的行到该行进行更新这段时间内不被其它用户所修改。
因而行级锁即可保证数据的一致性又能提高数据操作的迸发性。
可通过如下的两种方式来获得行级封锁：
（ 1）、执行如下的 SQL 封锁语句，以显示的方式获得：
LOCK TABLE < 表 名 >\[,< 表 名 >].... IN SHARE UPDATE MODE \[NOWAIT] 123456

（ 2）、用如下的 SELECT …FOR UPDATE 语句获得：
SELECT <列名 >\[,<列名 >]...FROM <表名 > WHERE <条件 > FOR UPDATE OF <列名>\[,<列名>].....\[NOWAIT] 123456

一旦用户对某个行施加了行级加锁，则该用户可以查询也可以更新被加锁的数据行，其它用户只能查询但不能更新被加锁的数据行．
如果其它用户想更新该表中的数据行，则也必须对该表施加行级锁．即使多个用户对一个表均使用了共享更新，但也不允许两个事务同时对一个表进行更新，真正对表进行更新时，是以独占方式锁表，一直到提交或复原该事务为止。
行锁永远是独占方式锁。
当出现如下之一的条件，便释放共享更新锁：
* （ 1）、执行提交（ COMMIT）语句；
* （ 2）、退出数据库（ LOG OFF）
* （ 3）、程序停止运行。
执行 ROLLBACK 操作不能释放行锁。
3.2DLL锁( dictionary locks)
DDL 锁用于保护数据库对象的结构，如表、索引等的结构定义。
DDL 锁又可以分为：
* 排它 DDL 锁、
* 共享 DDL 锁、
* 分析锁
3.2.1排它 DDL 锁
创建、修改、删除一个数据库对象的 DDL 语句获得操作对象的 排它锁。
如使用 alter table 语句时，为了维护数据的完成性、一致性、合法性，该事务获得一排它 DDL 锁
3.2.2共享 DDL 锁
需在数据库对象之间建立相互依赖关系的 DDL 语句通常需共享获得 DDL锁。
如创建一个包，该包中的过程与函数引用了不同的数据库表，当编译此包时该事务就获得了引用表的共享 DDL 锁。
3.2.3分析锁
ORACLE 使用共享池存储分析与优化过的 SQL 语句及 PL/SQL 程序，使运行相同语句的应用速度更快。
一个在共享池中缓存的对象获得它所引用数据库对象的分析锁。
分析锁是一种独特的 DDL 锁类型， ORACLE 使用它追踪共享池对象及它所引用数据库对象之间的依赖关系。
当一个事务修改或删除了共享池持有分析锁的数据库对象时， ORACLE 使共享池中的对象作废，下次在引用这条SQL/PLSQL 语 句时， ORACLE 重新分析编译此语句。
DDL 级加锁也是由 ORACLE RDBMS 来控制，它用于保护数据字典和数据定义改变时的一致性和完整性。 它是系统在对 SQL 定义语句作语法分析时自动地加锁，无需用户干予。
字典/语法分析加锁共分三类：
* （ 1）字典操作锁：
* （ 2） 字典定义锁：
* （ 3）表定义锁：
3.3 System Locks
oracle使用不同类型的系统锁来保护内部数据库和内存结构.
这些机制是用户无法访问的。
4.内部闩锁 
内部闩锁：这是ORACLE中的一种特殊锁，用于顺序访问内部系统结构。当事务需向缓冲区写入信息时，为了使用此块内存区域，ORACLE首先必须取得这块内存区域的闩锁，才能向此块内存写入信息。 

## 主从同步
1 利用Oracle自身组件  
DG方案
    DG方案也叫ADG方案，英语全称Physical Standby(Active DataGuard)。支持恢复与只读并行，但由于并不是日志的逻辑应用机制，在读写分离的场景中最为局限 ，将生产机的logfiles传递给容灾机，通过Redo Apply技术来保障数据镜像能力，物理上提供了与生产数据库在数据块级的一致性镜像，也叫physical方式。Physical方式支持异步传输方式，但容灾机处在恢复状态，不可用；
Logical Standby
    通过SQL Apply（即Log Miner）技术，将接收到的日志文件还原成SQL语句，并在逻辑备份数据库上执行，从而达到数据一致性的目的，也叫logical 方式。logical方式只支持同步传输方式，但容灾机可以处在read-only状态
Streams
    实时将数据复制到另外一个库供读取。最灵活，但最不稳定。
2 选择商业化第三方的产品
GoldenGate 虽然属于第三方，但是已经被Oracle收购！
   老牌的Shareplex，还是本土DSG公司的RealSync和九桥公司的DDS，或是Oracle新贵GoldenGate，都是可供选择的目标。
   随着GoldenGate被Oracle收购和推广，个人认为GoldenGate在容灾、数据分发和同步方面将大行其道。
DSG RealSync同步du软件的实现方案：
扩展知识：
 读写分离的重点其实就是数据同步，能实现数据实时同步的技术很多，基于OS层(例如VERITAS VVR)，基于存储复制(中高端存储大多都支持)，基于应用分发或者基于数据库层的技术。因为数据同步可能并不是单一的DB整库同步，会涉及到业务数据选择以及多源整合等问题，因此OS复制和存储复制多数情况并不适合做读写分离的技术首选。
    基于日志的Oracle复制技术，Oracle自身组件可以实现，同时也有成熟的商业软件。选商业的独立产品还是Oracle自身的组件功能，这取决于多方面的因素。比如团队的相应技术运维能力、项目投入成本、业务系统的负载程度等。
|        | Oracle DataGuard                                | Oracle GoldenGate                                                                                            |
| :------ | :---------------------------------------------- | :----------------------------------------------------------------------------------------------------------- |
| 原理      | 复制归档日志或在线日志                                     | 抽取在线日志中的数据变化，转换为GGS自定义的数据格式存放在本地队列或远端队列中                                                                     |
| 稳定性     | 作为灾备的稳定性极高                                      | 稳定性不如DataGuard                                                                                               |
| 维护      | 维护简单，极少出现问题                                     | 命令行方式，维护较复杂                                                                                                  |
| 对象支持    | 完全支持                                            | 部分对象需手工创建于维护                                                                                                 |
| 备份端可用性  | 备份端处于恢复或只读状态，在只读状态下不能同时进行恢复。                    | 两端数据库是活动的，备份端可以提供实时的数据查询及报表业务等，从而提高系统整体的业务处理能力，充分利用备份端的计算能力，提升系统整体业务处理性能。可以实现两端数据的同时写入                       |
| 接管时间    | 数据库工作在mount状态下，接管业务时，数据库要open                   | 可实现立即接管                                                                                                      |
| 复制方式    | 通过恢复机制实现的，无法实现同步复制                              | GoldenGate可以提供秒一级的大量数据实时捕捉和投递，异步复制方式，无法实现同步复制                                                                |
| 资源占用    | 复制通过数据库的LGWR进程或ARCN进程完成，占用数据库少量资源               | 业务高峰时在数据抽取转换时消耗系统资源较多，低峰时占用较小                                                                                |
| 异构数据库支持 | 单一数据库解决方案，仅运行在Oracle数据库上，源端和目标端操作系统必须相同，版本号可以不同 | 可以在不同类型和版本的数据库之间进行数据复制。如ORACLE，DB2，SYBASE，SQL SERVER，INFORMIX、Teradata等。   适用于不同操作系统如windows、Linux、unix、aix等 |
| 带宽占用    | 使用Oracle Net传输日志，可通过高级压缩选项进行压缩，压缩比在2-3倍         | 利用TCP/IP传输数据变化，集成数据压缩，提供理论可达到9：1压缩比的数据压缩特性                                                                   |
| 拓扑结构    | 可以实现一对多模式                                       | 可以实现一对一、一对多、多对一、双向复制等多种拓扑结构                                                                                  |

# MSSQL

## 存储过程

## 索引

### 聚集索引

### 非聚集索引

## 数据优化

## 并发

## 锁
这里锁分为两个部分，一个是锁的范围（行锁、页面锁、表锁），另一个是锁的粒度（共享锁、持有锁等）
在锁定数据的时候要配合锁的范围和粒度。
例如 select \* from Table with（RowLock，XLock） where ID=1 就可以将Table的一行设置独占锁。一般情况下在事务的开始可以先使用Update操作一个表的行进行加独占锁。
还可以使用应用程序锁来防止多客户端同时执行某个操作。
创建应用程序锁 exec SP\_GetAppLock @Resource=‘锁名',@LockMode='Exclusive',@LockOwner='Session',@LockTimeout=10000--十秒钟
释放应用程序锁 exec SP\_ReleaseAppLock @Resource='锁名' @LockOwner='Session'
如果LockOwner指定为Session时要执行释放代码,指定为Transaction时在事务结束时自动释放
 
四、锁定时间的长短
锁保持的时间长度为保护所请求级别上的资源所需的时间长度。
用于保护读取操作的共享锁的保持时间取决于事务隔离级别。采用 READ COMMITTED 的默认事务隔离级别时，只在读取页的期间内控制共享锁。在扫描中，直到在扫描内的下一页上获取锁时才释放锁。如果指定HOLDLOCK 提示或者将事务隔离级别设置为 REPEATABLE READ 或 SERIALIZABLE，则直到事务结束才释放锁。
根据为游标设置的并发选项，游标可以获取共享模式的滚动锁以保护提取。当需要滚动锁时，直到下一次提取或关闭游标（以先发生者为准）时才释放滚动锁。但是，如果指定 HOLDLOCK，则直到事务结束才释放滚动锁。
用于保护更新的排它锁将直到事务结束才释放。\
如果一个连接试图获取一个锁，而该锁与另一个连接所控制的锁冲突，则试图获取锁的连接将一直阻塞到：
将冲突锁释放而且连接获取了所请求的锁。
连接的超时间隔已到期。默认情况下没有超时间隔，但是一些应用程序设置超时间隔以防止无限期等待

五、SQL Server 中锁的自定义
2 处理超时和设置锁超时持续时间。
@@LOCK\_TIMEOUT 返回当前会话的当前锁超时设置，单位为毫秒
SET LOCK\_TIMEOUT 设置允许应用程序设置语句等待阻塞资源的最长时间。当语句等待的时间大于 LOCK\_TIMEOUT 设置时，系统将自动取消阻塞的语句，并给应用程序返回"已超过了锁请求超时时段"的 1222 号错误信息
示例\
下例将锁超时期限设置为 1,800 毫秒。\
SET LOCK\_TIMEOUT 1800
3\) 设置事务隔离级别。
4 ) 对 SELECT、INSERT、UPDATE 和 DELETE 语句使用表级锁定提示。
5\) 配置索引的锁定粒度\
可以使用 sp\_indexoption 系统存储过程来设置用于索引的锁定粒度
六、查看锁的信息
1 执行 EXEC SP\_LOCK 报告有关锁的信息\
2 查询分析器中按Ctrl+2可以看到锁的信息
八、几个有关锁的问题
1 如何锁一个表的某一行
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SELECT \* FROM table ROWLOCK WHERE id = 1
2 锁定数据库的一个表
SELECT \* FROM table WITH (HOLDLOCK)
加锁语句：\
sybase:\
update 表 set col1=col1 where 1=0 ;\
MSSQL:\
select col1 from 表 (tablockx) where 1=0 ;\
oracle:\
LOCK TABLE 表 IN EXCLUSIVE MODE ；\
加锁后其它人不可操作，直到加锁用户解锁，用commit或rollback解锁
\
几个例子帮助大家加深印象\
设table1(A,B,C)\
A B C\
a1 b1 c1\
a2 b2 c2\
a3 b3 c3
1）排它锁\
新建两个连接\
在第一个连接中执行以下语句\
begin tran\
update table1\
set A='aa'\
where B='b2'\
waitfor delay '00:00:30' --等待30秒\
commit tran\
在第二个连接中执行以下语句\
begin tran\
select \* from table1\
where B='b2'\
commit tran
若同时执行上述两个语句，则select查询必须等待update执行完毕才能执行即要等待30秒
2）共享锁\
在第一个连接中执行以下语句\
begin tran\
select \* from table1 holdlock -holdlock人为加锁\
where B='b2'\
waitfor delay '00:00:30' --等待30秒\
commit tran
在第二个连接中执行以下语句\
begin tran\
select A,C from table1\
where B='b2'\
update table1\
set A='aa'\
where B='b2'\
commit tran
若同时执行上述两个语句，则第二个连接中的select查询可以执行\
而update必须等待第一个事务释放共享锁转为排它锁后才能执行 即要等待30秒
补充一点:\
Sql Server2000支持的表级锁定提示
HOLDLOCK 持有共享锁，直到整个事务完成，应该在被锁对象不需要时立即释放，等于SERIALIZABLE事务隔离级别
NOLOCK 语句执行时不发出共享锁，允许脏读 ，等于 READ UNCOMMITTED事务隔离级别
PAGLOCK 在使用一个表锁的地方用多个页锁
READPAST 让sql server跳过任何锁定行，执行事务，适用于READ UNCOMMITTED事务隔离级别只跳过RID锁，不跳过页，区域和表锁
ROWLOCK 强制使用行锁
TABLOCKX 强制使用独占表级锁，这个锁在事务期间阻止任何其他事务使用这个表
UPLOCK 强制在读表时使用更新而不用共享锁
应用程序锁:\
应用程序锁就是客户端代码生成的锁，而不是sql server本身生成的锁
处理应用程序锁的两个过程
sp\_getapplock 锁定应用程序资源
sp\_releaseapplock 为应用程序资源解锁
注意: 锁定数据库的一个表的区别
SELECT \* FROM table WITH (HOLDLOCK) 其他事务可以读取表，但不能更新删除
SELECT \* FROM table WITH (TABLOCKX) 其他事务不能读取表,更新和删除
 
\
\--查看锁信息
exec  sp\_who
\----------------------------------------------\
create table #t(req\_spid int,obj\_name sysname)
declare @s nvarchar(4000)\
   ,@rid int,@dbname sysname,@id int,@objname sysname
declare tb cursor for select distinct req\_spid,dbname=db\_name(rsc\_dbid),rsc\_objidfrom master..syslockinfo where rsc\_type in(4,5)\
open tb\
fetch next from tb into @rid,@dbname,@id\
while @@fetch\_status=0\
beginset @s='select @objname=name from \['+\@dbname+']..sysobjects where id=@id'exec sp\_executesql @s,N'@objname sysname out,@id int',@objname out,@idinsert into #t values(@rid,@objname)fetch next from tb into @rid,@dbname,@id\
end\
close tb\
deallocate tb
select 进程id=a.req\_spid\
   ,数据库=db\_name(rsc\_dbid)\
   ,类型=case rsc\_type when 1 then 'NULL 资源（未使用）'\
   when 2 then '数据库'\
   when 3 then '文件'\
   when 4 then '索引'\
   when 5 then '表'\
   when 6 then '页'\
   when 7 then '键'\
   when 8 then '扩展盘区'\
   when 9 then 'RID（行 ID)'\
   when 10 then '应用程序'end\
   ,对象id=rsc\_objid\
   ,对象名=b.obj\_name\
   ,rsc\_indid\
from master..syslockinfo a left join #t b on a.req\_spid=b.req\_spid
go\
drop table #t
 
 
1 如何锁一个表的某一行\
/\*\
  测试环境：windows 2K server + Mssql 2000\
  所有功能都进行测试过，并有相应的结果集，如果有什么疑义在论坛跟帖\
  关于版权的说明：部分资料来自互联网，如有不当请联系版主，版主会在第一时间处理。\
  功能：sql遍历文件夹下的文本文件名,当然你修改部分代码后可以完成各种文件的列表。\
\*/
\
A 连接中执行
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ
begin tran
select \* from tablename with (rowlock) where id=3
waitfor delay '00:00:05'
commit tran
B连接中如果执行
update tablename set colname='10' where id=3 --则要等待5秒
update tablename set colname='10' where id<>3 --可立即执行
2 锁定数据库的一个表
SELECT \* FROM table WITH (HOLDLOCK) 
\
注意: 锁定数据库的一个表的区别
SELECT \* FROM table WITH (HOLDLOCK) \
其他事务可以读取表，但不能更新删除
SELECT \* FROM table WITH (TABLOCKX) \
其他事务不能读取表,更新和删除

## 灾难恢复

## 行列转换

## Sql Server事务隔离级别
设置Sql Server事务隔离级别
查看 当前 Sql Server 事务隔离级别 的设置： DBCC Useroptions -> isolation level 这一项的 Value 既是当前的设置值
Transact-SQL 语句中的设置
就是在当前 SQL 语句中，设置的事务隔离级别只影响当前 sql 语句, 有两种方式：
\-- the first method
select \* from Table1 with(nolock)
\-- the second method
SET TRANSACTION ISOLATION LEVEL Read UnCommitted;
select \* from Table1
这种方式比较灵活，可以重点语句重点对待，缺点就是 要设置的实在是太多了，因为这种方式的作用域实在是太小了啊啊啊啊
ADO.NET 中的设置
System.Data.SqlClient.SqlConnection con = new SqlConnection();
con.BeginTransaction(IsolationLevel.ReadUncommitted);
隔离级别	支持	遵守
READ UNCOMMITTED	否	不保证
READ COMMITTED	是	是
REPEATABLE READ	否	否
SNAPSHOT ISOLATION	否	否
SERIALIZABLE	否	否

## 数据库分页
数据分页往往有三种常用方案。
第一种，把数据库中存放的相关数据，全部读入PHP/Java/C#代码/内存，再由代码对其进行分页操作（速度慢，简易性高）。
第二种，直接在数据库中对相关数据进行分页操作，再把分页后的数据输出给代码程序（速度中，简易性中）。
第三种，先把数据库中的相关数据全部读入“缓存”或第三方工具，再由代码程序对“缓存”或第三方工具中的数据进行读取+分页操作（速度快，简易性差）。
本文下面重点阐述上述【第二种】方案在SQL Server上的使用（其它种类数据库由于Sql语句略有差异，所以需要调整，但方案也类似）
1、ROW\_NUMBER() OVER()方式（SQL2012以下推荐使用）
示例：
SELECT \* FROM (SELECT ROW\_NUMBER() OVER(ORDER BY menuId) AS RowId,\* FROM sys\_menu ) AS r WHERE RowId BETWEEN 1 AND 10
用[子查询](https://so.csdn.net/so/search?q=%E5%AD%90%E6%9F%A5%E8%AF%A2\&spm=1001.2101.3001.7020)新增一列行号（ROW\_NUMBER）RowId查询，比较高效的查询方式，只有在SQL Server2005或更高版本才支持。
BETWEEN 1 AND 10 是指查询第1到第10条数据（闭区间），在这里面需要注意的是OVER的括号里面可以写多个排序字段。
通用用法​​​​​​​
\--pageIndex 表示指定页--pageSize 表示每页显示的条数SELECT \* FROM (SELECT ROW\_NUMBER() OVER(ORDER BY 排序字段) AS RowId,\* FROM 表名 ) AS r WHERE RowId BETWEEN ((pageIndex-1)\*pageSize + 1) AND (pageIndex \* PageSize)
2、offset fetch next方式（SQL2012及以上的版本才支持：推荐使用 ）
示例：​​​​​​​
\--offset fetch next方式查询，最高效的查询方式，只有在SQL Server2012或更高版本才支持SELECT \* FROM sys\_menu ORDER BY menuId offset 0 ROWS FETCH NEXT 10 ROWS ONLY
offset 是跳过多少行，
next是取接下来的多少行，
句式 offset...rows fetch nect ..rows only ，注意rows和末尾的only 不要写漏掉了，并且这种方式必须要接着Order by XX 使用，不然会报错。
通用用法​​​​​​​
\--pageIndex 表示指定页--pageSize 表示每页显示的条数SELECT \* FROM 表名 ORDER BY 排序字段 offset ((pageIndex - 1) \* pageSize) ROWS FETCH NEXT pageSize ROWS ONLY
3、top not in方式 （不推荐）
示例：​​​​​​​
\--查询第11-20条记录SELECT TOP 10 menuId, \*FROM sys\_menu WHERE menuId NOT IN (SELECT TOP 10 menuId FROM sys\_menu)
这条语句的原理是先查询1-10条记录的ID，然后再查询ID不属于这1-10条记录的ID，并且只需要10条记录，因为每页大小就是10，
这就是获取到的第11-20条记录，这是非常简单的一种写法。
另外IN语句与NOT IN语句类似，这是NOT IN的写法，但是这种写法数据量大的话效率太低。
通用用法​​​​​​​
\--pageIndex 表示指定页--pageSize 表示每页显示的条数SELECT TOP pageSize menuId, \*FROM sys\_menu WHERE menuId NOT IN (SELECT TOP ((pageSize-1)\*pageIndex) menuId FROM sys\_menu)
4、通过升序与降序方式进行查询分页（不推荐）
示例：​​​​​​​
\--查询第11-20条记录SELECT \* FROM( SELECT TOP 10 \* FROM( SELECT TOP 20 \* FROM sys\_menu ORDER BY menuId ASC) AS TEMP1 ORDER BY menuId DESC) AS TEMP2 ORDER BY menuId ASC
这条语句首先查询前20条记录，然后在倒序查询前10条记录（即倒数10条记录），
这个时候就已经获取到了11-20条记录，但是他们的顺序是倒序，所以最后又进行升序排序。
通用方法​​​​​​​
\--pageIndex 表示指定页--pageSize 表示每页显示的条数SELECT \* FROM( SELECT TOP pageSize \* FROM( SELECT TOP ((pageIndex - 1) \* pageSize +(pageSize\*2)) \* FROM sys\_menu ORDER BY menuId ASC) AS TEMP1 ORDER BY menuId DESC) AS TEMP2 ORDER BY menuId ASC
5、采用MAX(ID)或者MIN(ID)函数（不推荐）
示例：​​​​​​​
\--查询第11-20条记录SELECT TOP 10 \* FROM sys\_menu WHERE menuId> (SELECT MAX(menuId) FROM(SELECT TOP 10 menuId FROM sys\_menu ORDER BY menuId) AS TEMP1) --（第10条的id）
这个理解起来也简单，先把第10条记录的id找出来（当然这里面是直接使用MAX()进行查找，MIN()函数的用法也是类似的），
然后再对比取比第10条记录的id大的前10条记录即为我们需要的结果。
这里要注意开始时的边界值调整。
通用用法
\--pageIndex 表示指定页--pageSize 表示每页显示的条数SELECT TOP pageSize \* FROM sys\_menu WHERE menuId> (SELECT MAX(menuId) FROM(SELECT TOP ((PageIndex-1)\*PageSize) menuId FROM sys\_menu ORDER BY menuId) AS TEMP1) --（第10条的id）
上述1\~5方案，再配合存储过程，你就能制造出适合你自己的“分页”轮子，日后反复使用。
但它们有一定自身局限性：方案1、2、5都需要依赖一个排序Id（这个Id要么是个排序列，要么是个主键）。方案3、4则效率太低，完全不推荐。
7、不依赖排序/排序Id的终极方案
此方案在DeveloperSharp框架中有提供（基于.Net/.Net Core/.Net Framework），方案被广东省的多个公司/项目采用，得到了实战验证+稳定性。
【第一步】：从NuGet引用DeveloperSharp包。
【第二步】：创建一个用来与数据库进行通信的“数据源类”（文本示例为：TestData.cs），内容如下：​​​​​​​
using DeveloperSharp.Structure.Model;using DeveloperSharp.Framework.QueryEngine; namespace YZZ{ \[DataSource(DatabaseType.SQLServer, "Server=localhost;Database=Test;Uid=sa;Pwd=123")] public class TestData : DeveloperSharp.Structure.Model.DataLayer { //类中没有任何代码 }}
说 明 ：“数据源类”（文本示例为：TestData.cs）必 须 继 承 自 DeveloperSharp.Structure.Model.DataLayer 类 ， 并 且 在 其 上 设 置DataSource属 性 的 初 始 化 值 为“数据库类型”及其“链接字符串”。
【第三步】：添加通过“数据源类”（TestData）调用其PagePartition方法进行数据分页的代码。注 意：核心代码就一行而已！！
代码如下：​​​​​​​
using DeveloperSharp.Extension;//Table扩展所在的命名空间----------------------------- class Program { static void Main(string\[] args) { TestData td = new TestData(); //分页 var pp = td.PagePartition("select top 5000 \* from t\_Order where Id>10 order by Id desc", 20, 162); List\<Product> Products = pp.Table.ToList\<Product>(); foreach (var P in Products) { Console.WriteLine(P.Name); } Console.ReadLine(); } }
Product类代码如下：​​​​​​​
public class Product { public string Id { get; set; } public string Name { get; set; } public int Quantity { get; set; } }
此处的PagePartition方法有两个重载方法，其详细功能说明如下：​​​​​​​
PagePartition声明：public PagePiece PagePartition(string RecordSet, string Id, int PageSize, int PageIndex)用途：分页功能(有主键)参数：（1）string RecordSet --需要分页的记录集，可以是表、视图、或者SQL语句（2）string Id --主键（3）int PageSize --页面大小（4）int PageIndex --当前页码返回：PagePiece --页片实体PagePartition声明：public PagePiece PagePartition(string RecordSet, int PageSize, int PageIndex)用途：分页功能(无主键)参数：（1）string RecordSet -- 需要分页的记录集，可以是表、视图、或者SQL语句 （2）int PageSize --页面大小（3）int PageIndex --当前页码返回：PagePiece --页片实体
注意：
（1）    当你需要分页的数据表有“主键”字段时，使用“分页功能(有主键)”。反之，使用“分页功能(无主键)”。
（2）    RecordSet是你需要分页的“数据总集”的SQL语句。该SQL语句的形式丰富多样，可以带条件、排序、甚至还能是多表的联合查询、等。
（3）   此方法符合最开始的【第二种】方案，是在SQL Server内部进行的分页操作。而且可以不依赖于排序/排序Id。
<https://blog.csdn.net/mzl87/article/details/128609918>

## 执行计划
使用SQL执行计划
看SQL语句执行计划有三种方式：①快捷键按Ctrl+L；②选中要执行的SQL然后点击右键，弹出的菜单里面选“显示估计的执行计划”；③按Ctrl+M打开显示执行计划窗口，选择每次执行SQL都会显示出相应的执行计划
执行计划的图表是从右向左看的\
![](https://img2023.cnblogs.com/blog/637434/202212/637434-20221206105531670-2001155419.png)
SQL Server查找数据记录的几种方式：
1.Table Scan--表扫描（最慢），对表记录逐行进行检查，对于没有索引或者查询条件不走索引时会进行全表扫描；
2.Clustered Index Scan--聚集索引扫描（较慢），按聚集索引对记录逐行进行检查，对有主键/聚集索引的表进行无条件查找或者使用主键/聚集索引过滤；
3.Index Scan--索引扫描（普通），根据索引滤出部分数据在进行逐行检查，；
4.Index Seek--索引查找（较快），根据索引定位记录所在位置再取出记录，建立非聚集索引并把其他显示列加入索引中；
5.Clustered Index Seek--聚集索引查找（最快），直接根据聚集索引获取记录，建立非聚集索引并把其他显示列加入索引中并把聚集索引列当作条件；
6.Key Lookup--书签查找：通过非聚集索引找到所求的行，但这个索引并不包含显示的列，因此还要额外去基本表中找到这些列，所以要进行键查找，如果基本表在堆中则Key Lookup会变成RID查找。
7.RID--书签查找：同上
如果有些SQL执行很慢，可以用执行计划看一下是否包含太多“扫描”操作，可以考虑为这些字段建立索引，建立索引切记不要再经常有更新操作的字段上建立，每次更新数据和插入数据都会导致重建索引的操作，会增加索引的维护成本。
在SQL Server中，每个join命令，都会在内部执行时采用这几种更具体的方式来运行：
1.  Nested Loops join：如果一个联接输入很小，而另一个联接输入很大而且已在其联接列上创建了索引， 则索引 Nested Loops 连接是最快的联接操作，因为它们需要的 I/O 和比较都最少。嵌套循环联接也称为“嵌套迭代”，它将一个联接输入用作外部输入表（显示为图形执行计划中的顶端输入），将另一个联接输入用作内部（底端）输入表。外部循环逐行处理外部输入表。内部循环会针对每个外部行执行，在内部输入表中搜索匹配行。最简单的情况是，搜索时扫描整个表或索引；这称为“单纯嵌套循环联接”。如果搜索时使用索引，则称为“索引嵌套循环联接”。如果将索引生成为查询计划的一部分（并在查询完成后立即将索引破坏），则称为“临时索引嵌套循环联接”。
    如果外部输入较小而内部输入较大且预先创建了索引，则嵌套循环联接尤其有效。在小事务中（只影响较少数据的事务），索引嵌套循环联接优于合并联接和哈希联接，但在大型查询中，嵌套循环联接通常不是最佳选择。
2.  Merge Join：如果两个联接输入并不小但已在二者联接列上排序（例如，如果它们是通过扫描已排序的索引获得的），则合并联接是最快的联接操作。如果两个联接输入都很大，而且这两个输入的大小差不多，则预先排序的合并联接提供的性能与哈希联接相近。但是，如果这两个输入的大小相差很大，则哈希联接操作通常快得多。合并联接要求两个输入都在合并列上排序，而合并列由联接谓词的等效 (ON) 子句定义。通常，查询优化器扫描索引（如果在适当的一组列上存在索引），或在合并联接的下面放一个排序运算符。在极少数情况下，虽然可能有多个等效子句，但只用其中一些可用的等效子句获得合并列。
3.  Hash Join：哈希联接可以有效处理未排序的大型非索引输入。它们对复杂查询的中间结果很有用，因为：①.中间结果未经索引（除非已经显式保存到磁盘上然后创建索引），而且通常不为查询计划中的下一个操作进行适当的排序。②.查询优化器只估计中间结果的大小。由于对于复杂查询，估计可能有很大的误差，因此如果中间结果比预期的大得多，则处理中间结果的算法不仅必须有效而且必须适度弱化。哈希联接可以减少使用非规范化。非规范化一般通过减少联接操作获得更好的性能，尽管这样做有冗余之险（如不一致的更新）。哈希联接则减少使用非规范化的需要。哈希联接使垂直分区（用单独的文件或索引代表单个表中的几组列）得以成为物理数据库设计的可行选项。
1.图形的执行计划：
我们将用鼠标点击每个执行计划的节点，可以看到如下数据，各节点的查询数据方式、资源占用情况都可一目了然的看到。\
![](https://img2023.cnblogs.com/blog/637434/202212/637434-20221206105936448-857299166.png)
并且系统会给出缺少索引的提示，我们右键点击即可选择“缺少索引详细信息”，会自动生成创建索引的语句。
![](https://img2023.cnblogs.com/blog/637434/202212/637434-20221206105949533-2081417458.png)
2.表格的执行计划：
输入以下语句来获取表格样式的执行计划

  set statistics profile on 
  
  select *,name from test_index where name='Tom' 
  union  ALL    
  select *,name from test_index where age>=12

如下图，执行查询后，得到二个表格，上面的表格显示了查询的结果，下面的表格显示了查询的执行过程。相比图形方式展示的执行计划， 这种表格可能在展现上不太直观，但是它能反映更多的信息，而且尤其在比较复杂的查询时看起来更容易，因为对于复杂的查询，【执行计划】的步骤太多，图形方式会造成图形过大，不容易观察，需要上下左右不停拖动。\
![](https://img2023.cnblogs.com/blog/637434/202212/637434-20221206110104206-1690740487.png)
字段解释：\
【Rows】：表示在一个执行步骤中，所产生的记录条数。\
【Executes】：表示某个执行步骤被执行的次数。\
【Stmt Text】：表示要执行的步骤的描述。\
【EstimateRows】：表示要预期返回多少行数据。

## 镜像

## log shipping（日志传送）

## 发布订阅

## always on

## 主从同步 方案比较
sqlserver 数据库 sql
1、使用SQL Server数据库镜像：SQL Server数据库镜像是一种可以实现实时同步的技术，它可以将一个数据库的数据实时复制到另一个数据库，从而实现实时同步。
2、使用SQL Server复制：SQL Server复制是一种可以实现实时同步的技术，它可以将一个数据库的数据实时复制到另一个数据库，从而实现实时同步。
3、使用SQL Server同步：SQL Server同步是一种可以实现实时同步的技术，它可以将一个数据库的数据实时同步到另一个数据库，从而实现实时同步。
SQLserver读写分离方案对比
读写分离方案 实时同步 副本数据是否直接可读 副本数 最小粒度 副本建立索引 环境 缺点
镜像 是 否（需要开启快照，只读） 1 库 否 域/非域(使用证书) 在高安全模式下对主库性能有一定影响
log shipping 否 是（只读） N 库 否 UNC方式可访问 副本库在做resotre时会断开已连接用户连接/可能影响常规日志备份
发布订阅 是 是（读写，但写可能会产生数据不一致） N 表（查询) 是 域/非域 在主库上有大量DML操作时，对分发服务器会有一定影响，且订阅数据库可能有数据同步延迟
always on 是 是（只读） 4(sql 2012) 8(sql 2014) 库 否 域 非域环境无法使用
| 读写分离方案       | 实时同步 | 副本数据是否直接可读         | 副本数                     | 最小粒度  | 副本建立索引 | 环境         | 缺点                                         |
| :----------- | :--- | :----------------- | :---------------------- | :---- | :----- | :--------- | :----------------------------------------- |
| 镜像           | 是    | 否（需要开启快照，只读）       | 1                       | 库     | 否      | 域/非域(使用证书) | 在高安全模式下对主库                                 |
| log shipping | 否    | 是（只读）              | N                       | 库     | 否      | UNC方式可访问  | 副本库在做resotre时会断开已连接用户连接/可能影响常规日志备份         |
| 发布订阅         | 是    | 是（读写，但写可能会产生数据不一致） | N                       | 表（查询) | 是      | 域/非域       | 在主库上有大量DML操作时，对分发服务器会有一定影响，且订阅数据库可能有数据同步延迟 |
| always on    | 是    | 是（只读）              | 4(sql 2012) 8(sql 2014) | 库     | 否      | 域          | 非域环境无法使用                                   |

## CLR扩展

## 其他知识点

# MySQL

## Ubuntu Docker部署mysql
1.创建安装目录 mnt为硬盘挂载目录，根据实际情况修改
sudo mkdir -p /mnt/mysql
cd /mnt/mysql
sudo gedit docker-compose.yml
2.编写docker-compose.yml
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
3.创建配置文件
cd /mnt/mysql
sudo mkdir etc
gedit my.cnf
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
cd /mnt/mysql
docker-compose up -d
5.验证启动状态
6.优化指南
max\_connections：允许客户端并发连接的最大数量，默认值是151，一般将该参数设置为500-2000
max\_connect\_errors：如果客户端尝试连接的错误数量超过这个参数设置的值，则服务器不再接受新的客户端连接。可以通过清空主机的缓存来解除服务器的这种阻止新连接的状态，通过FLUSH HOSTS或mysqladmin flush-hosts命令来清空缓存。这个参数的默认值是100，一般将该参数设置为100000。
interactive\_timeout：Mysql关闭交互连接前的等待时间，单位是秒，默认是8小时，建议不要将该参数设置超过24小时，即86400
wait\_timeout：Mysql关闭非交互连接前的等待时间，单位是秒，默认是8小时，建议不要将该参数设置超过24小时，即86400
skip\_name\_resolve：如果这个参数设为OFF，则MySQL服务在检查客户端连接的时候会解析主机名；如果这个参数设为ON，则MySQL服务只会使用IP，在这种情况下，授权表中的Host字段必须是IP地址或localhost。
这个参数默认是关闭的
back\_log：MySQL服务器连接请求队列所能处理的最大连接请求数，如果队列放满了，后续的连接才会拒绝。当主要的MySQL线程在很短时间内获取大量连接请求时，这个参数会生效。接下来，MySQL主线程会花费很短的时间去检查连接，然后开启新的线程。这个参数指定了MySQL的TCP/IP监听队列的大小。如果MySQL服务器在短时间内有大量的连接，可以增加这个参数。
文件相关参数sync\_binlog：控制二进制日志被同步到磁盘前二进制日志提交组的数量。当这个参数为0的时候，二进制日志不会被同步到磁盘；当这个参数设为0以上的数值时，就会有设置该数值的二进制提交组定期同步日志到磁盘。当这个参数设为1的时候，所有事务在提交前会被同步到二进制日志中，因而即使MySQL服务器发生意外重启，任何二进制日志中没有的事务只会处于准备状态，这会导致MySQL服务器自动恢复以回滚这些事务。这样就会保证二进制日志不会丢失事务，是最安全的选项；同时由于增加了磁盘写，这对性能有一定降低。将这个参数设为1以上的数值会提高数据库的性能，但同时会伴随数据丢失的风险。建议将该参数设为2、4、6、8、16。
expire\_logs\_days：二进制日志自动删掉的时间间隔。默认值为0，代表不会自动删除二进制日志。想手动删除二进制日志，可以执行 PURGE BINARY LOGS。
max\_binlog\_size：二进制日志文件的最大容量，当写入的二进制日志超过这个值的时候，会完成当前二进制的写入，向新的二进制日志写入日志。这个参数最小值时4096字节；最大值和默认值时1GB。相同事务中的语句都会写入同一个二进制日志，当一个事务很大时，二进制日志实际的大小会超过max\_binlog\_size参数设置的值。如果max\_relay\_log\_size参数设为0，则max\_relay\_log\_size参数会使用和max\_binlog\_size参数同样的大小。建议将此参数设为512M。
local\_infile：是否允许客户端使用LOAD DATA INFILE语句。如果这个参数没有开启，客户端不能在LOAD DATA语句中使用LOCAL参数。
open\_files\_limit：操作系统允许MySQL服务打开的文件数量。这个参数实际的值以系统启动时设定的值、max\_connections和table\_open\_cache为基础，使用下列的规则：
10 + max\_connections + (table\_open\_cache \* 2)
max\_connections \* 5
MySQL启动时指定open\_files\_limit的值
缓存控制参数binlog\_cache\_size：在事务中二进制日志使用的缓存大小。如果MySQL服务器支持所有的存储引擎且启用二进制日志，每个客户端都会被分配一个二进制日志缓存。如果数据库中有很多大的事务，增大这个缓存可以获得更好的性能。
Binlog\_cache\_use和Binlog\_cache\_disk\_use这两个参数对于binlog\_cache\_size参数的优化很有用。binlog\_cache\_size参数只设置事务所使用的缓存，非事务SQL语句所使用的缓存由binlog\_stmt\_cache\_size系统参数控制。建议不要将这个参数设为超过64MB，以防止客户端连接多而影响MySQL服务的性能。
max\_binlog\_cache\_size：如果一个事务需要的内存超过这个参数，服务器会报错"Multi-statement transaction required more than 'max\_binlog\_cache\_size' bytes"。这个参数最大的推荐值是4GB，这是因为MySQL不能在二进制日志设为超过4GB的情况下正常的工作。建议将该参数设为binlog\_cache\_size\*2。
binlog\_stmt\_cache\_size：这个参数决定二进制日志处理非事务性语句的缓存。如果MySQL服务支持任何事务性的存储引擎且开启了二进制日志，每个客户端连接都会被分配二进制日志事务和语句缓存。如果数据库中经常运行大的事务，增加这个缓存可以获得更好的性能。
table\_open\_cache：所有线程能打开的表的数量。
thread\_cache\_size：MySQL服务缓存以重用的线程数。当客户端断开连接的时候，如果线程缓存没有使用满，则客户端的线程被放入缓存中。如果有客户端断开连接后再次连接到MySQL服务且线程在缓存中，则MySQL服务会优先使用缓存中的线程；如果线程缓存没有这些线程，则MySQL服务器会创建新的线程。如果数据库有很多的新连接，可以增加这个参数来提升性能。如果MySQL服务器每秒有上百个连接，可以增大thread\_cache\_size参数来使MySQL服务器使用缓存的线程。通过检查Connections和Threads\_created状态参数，可以判断线程缓存是否足够。这个参数默认的值是由下面的公式来决定的：8 + (max\_connections / 100)
建议将此参数设置为300\~500。线程缓存的命中率计算公式为(1-thread\_created/connections)\*100%，可以通过这个公式来优化和调整thread\_cache\_size参数。
query\_cache\_size：为查询结果所分配的缓存。默认这个参数是没有开启的。这个参数的值应设为整数的1024倍，如果设为其他值则会被自动调整为接近此数值的1024倍。这个参数最小需要40KB。建议不要将此参数设为大于256MB，以免占用太多的系统内存。
query\_cache\_min\_res\_unit：查询缓存所分配的最小块的大小。默认值是4096(4KB)。
query\_cache\_type：设置查询缓存的类型。当这个参数为0或OFF时，则MySQL服务器不会启用查询缓存；当这个参数为1或ON时，则MySQL服务器会缓存所有查询结果（除了带有SELECT SQL\_NO\_CACHE的语句）；当这个参数为2或DEMAND时，则MySQL服务器只会缓存带有SELECT SQL\_CACHE的语句。
sort\_buffer\_size：每个会话执行排序操作所分配的内存大小。想要增大max\_sort\_length参数，需要增大sort\_buffer\_size参数。如果在SHOW GLOBAL STATUS输出结果中看到每秒输出的Sort\_merge\_passes状态参数很大，可以考虑增大sort\_buffer\_size这个值来提高ORDER BY 和 GROUP BY的处理速度。建议设置为1\~4MB。当个别会话需要执行大的排序操作时，在会话级别增大这个参数。
read\_buffer\_size：为每个线程对MyISAm表执行顺序读所分配的内存。如果数据库有很多顺序读，可以增加这个参数，默认值是131072字节。这个参数的值需要是4KB的整数倍。这个参数也用在下面场景中：
当执行ORDER BY操作时，缓存索引到临时文件（不是临时表）中；
执行批量插入到分区表中；
缓存嵌套查询的执行结果。
read\_rnd\_buffer\_size：这个参数用在MyISAM表和任何存储引擎表随机读所使用的内存。当从MyISAM表中以键排序读取数据的时候，扫描的行将使用这个缓存以避免磁盘的扫描。将这个值设到一个较大的值可以显著提升ORDER BY的性能。然后，这个参数会应用到所有的客户端连接，所有不应该将这个参数在全局级别设为一个较大的值；在运行大查询的会话中，在会话级别增大这个参数即可。
join\_buffer\_size：MySQL服务器用来作普通索引扫描、范围索引扫描和不使用索引而执行全表扫描这些操作所用的缓存大小。通常，获取最快连接的方法是增加索引。当不能增加索引的时候，使全连接变快的方法是增大join\_buffer\_size参数。对于执行全连接的两张表，每张表都被分配一块连接内存。对于没有使用索引的多表复杂连接，需要多块连接内存。通常来说，可以将此参数在全局上设置一个较小的值，而在需要执行大连接的会话中在会话级别进行设置。默认值是256KB。
net\_buffer\_length：每个客户端线程和连接缓存和结果缓存交互，每个缓存最初都被分配大小为net\_buffer\_length的容量，并动态增长，直至达到max\_allowed\_packet参数的大小。当每条SQL语句执行完毕后，结果缓存会缩小到net\_buffer\_length大小。不建议更改这个参数，除非你的系统有很少的内存，可以调整这个参数。如果语句需要的内存超过了这个参数的大小，则连接缓存会自动增大。net\_buffer\_length参数最大可以设置到1MB。不能在会话级别设置这个参数。
max\_allowed\_packet：网络传输时单个数据包的大小。默认值是4MB。包信息缓存的初始值是由net\_buffer\_length指定的，但是包可能会增长到max\_allowed\_packet参数设置的值。如果要使用BLOB字段或长字符串，需要增加这个参数的值。这个参数的值需要设置成和最大的BLOB字段一样的大小。max\_allowed\_packet参数的协议限制是1GB。这个参数应该是1024整数倍。
bulk\_insert\_buffer\_size：MyISAM表使用一种特殊的树状缓存来提高批量插入的速度，如INSERT ... SELECT,INSERT ... VALUES (...),(...), ...,对空表执行执行LOAD DATA INFILE。这个参数每个线程的树状缓存大小。将这个参数设为0会关闭这个参数。这个参数的默认值是8MB。
max\_heap\_table\_size：这个参数设置用户创建的MEMORY表允许增长的最大容量，这个参数用来MEMORY表的MAX\_ROWS值。设置这个参数对已有的MEMORY表没有影响，除非表重建或执行ALTER TABLE、TRUNCATE TABLE语句。
这个参数也和tmp\_table\_size参数一起来现在内部in-memory表的大小。如果内存表使用频繁，可以增大这个参数的值。
tmp\_table\_size：内部内存临时表的最大内存。这个参数不会应用到用户创建的MEMORY表。如果内存临时表的大小超过了这个参数的值，则MySQL会自动将超出的部分转化为磁盘上的临时表。在MySQL 5.7.5版本，internal\_tmp\_disk\_storage\_engine存储引擎将作为磁盘临时表的默认引擎。在MySQL 5.7.5之前的版本，会使用MyISAM存储引擎。如果有很多的GROUP BY查询且系统内存充裕，可以考虑增大这个参数。
innodb\_buffer\_pool\_dump\_at\_shutdown：指定在MySQL服务关闭时，是否记录InnoDB缓存池中的缓存页，以缩短下次重启时的预热过程。通常和innodb\_buffer\_pool\_load\_at\_startup参数搭配使用。innodb\_buffer\_pool\_dump\_pct参数定义了保留的最近使用缓存页的百分比。
innodb\_buffer\_pool\_dump\_now：立刻记录InnoDB缓冲池中的缓存页。通常和innodb\_buffer\_pool\_load\_now搭配使用。
innodb\_buffer\_pool\_load\_at\_startup：指定MySQL服务在启动时，InnoDB缓冲池通过加载之前的缓存页数据来自动预热。通常和innodb\_buffer\_pool\_dump\_at\_shutdown参数搭配使用。
innodb\_buffer\_pool\_load\_now：立刻通过加载数据页来预热InnoDB缓冲池，无需重启数据库服务。可以用来在性能测试时，将缓存改成到一个已知的状态；或在数据库运行报表查询或维护后，将数据库改成到一个正常的状态。
MyISAM参数key\_buffer\_size：所有线程所共有的MyISAM表索引缓存，这块缓存被索引块使用。增大这个参数可以增加索引的读写性能，在主要使用MyISAM存储引擎的系统中，可设置这个参数为机器总内存的25%。如果将这个参数设置很大，比如设为机器总内存的50%以上，机器会开始page且变得异常缓慢。可以通过SHOW STATUS 语句查看 Key\_read\_requests,Key\_reads,Key\_write\_requests, and Key\_writes这些状态值。正常情况下Key\_reads/Key\_read\_requests 比率应该小于0.01。数据库更新和删除操作频繁的时候，Key\_writes/Key\_write\_requests 比率应该接近1。
key\_cache\_block\_size：key缓存的块大小，默认值是1024字节。
myisam\_sort\_buffer\_size：在REPAIR TABLE、CREATE INDEX 或 ALTER TABLE操作中，MyISAM索引排序使用的缓存大小。
myisam\_max\_sort\_file\_size：当重建MyISAM索引的时候，例如执行REPAIR TABLE、ALTER TABLE、或 LOAD DATA INFILE命令，MySQL允许使用的临时文件的最大容量。如果MyISAM索引文件超过了这个值且磁盘还有充裕的空间，增大这个参数有助于提高性能。
myisam\_repair\_threads：如果这个参数的值大于1，则MyISAM表在执行Repair操作的排序过程中，在创建索引的时候会启用并行，默认值为1。
InnoDB参数innodb\_buffer\_pool\_size：InnDB存储引擎缓存表和索引数据所使用的内存大小。默认值是128MB。在以InnDB存储引擎为主的系统中，可以将这个参数设为机器物理内存的80%。同时需要注意：
设置较大物理内存时是否会引擎页的交换而导致性能下降；
InnoDB存储引擎会为缓存和控制表结构信息使用部分内存，因而实际花费的内存会比设置的值大于10%；
这个参数设置的越大，初始化内存池的时间越长。在MySQL 5.7.5版本，可以以chunk为单位增加或减少内存池的大小。chunk的大小可以通过innodb\_buffer\_pool\_chunk\_size参数设定，默认值是128MB。内存池的大小可以等于或是innodb\_buffer\_pool\_chunk\_size \* innodb\_buffer\_pool\_instances的整数倍。
innodb\_buffer\_pool\_instances：InnoDB缓存池被分成的区域数。对于1GB以上大的InnoDB缓存，将缓存分成多个部分可以提高MySQL服务的并发性，减少不同线程读缓存页的读写竞争。每个缓存池有它单独的空闲列表、刷新列表、LRU列表和其他连接到内存池的数据结构，它们被mutex锁保护。这个参数只有将innodb\_buffer\_pool\_size参数设为1GB或以上时才生效。建议将每个分成的内存区域设为1GB大小。
innodb\_max\_dirty\_pages\_pct：当Innodb缓存池中脏页所占的百分比达到这个参数的值时，InnoDB会从缓存中向磁盘写入数据。默认值是75。
innodb\_thread\_concurrency：InnoDB存储引擎可以并发使用的最大线程数。当InnoDB使用的线程超过这参数的值时，后面的线程会进入等待状态，以先进先出的算法来处理。等待锁的线程不计入这个参数的值。这个参数的范围是0\~1000。默认值是0。当这个参数为0时，代表InnoDB线程的并发数没有限制，这样会导致MySQL创建它所需要的尽可能多的线程。设置这个参数可以参考下面规则：
如果用户线程的并发数小于64，可以将这个参数设为0；
如果系统并发很严重，可以先将这个参数设为128，然后再逐渐将这个参数减小到96, 80, 64或其他数值，直到找到性能较好的一个数值。
innodb\_flush\_method：指定刷新数据到InnoDB数据文件和日志文件的方法，刷新方法会对I/O有影响。如果这个参数的值为空，在类Unix系统上，这个参数的默认值为fsync；在Windows系统上，这个参数的默认值为async\_unbuffered。在类Unix系统上，这个参数可设置的值如下：
fsync\:InnoDB使用fsync()系统函数来刷新数据和日志文件，fsync是默认参数。
O\_DSYNC\:InnoDB使用O\_SYNC函数来打开和刷新日志文件，使用fsync()函数刷新数据文件
littlesync:这个选项用在内部性能的测试，目前MySQL尚不支持，使用这个参数又一定的风险
nosync:这个选项用在内部性能的测试，目前MySQL尚不支持，使用这个参数又一定的风险
O\_DIRECT\:InnoDB使用O\_DIRECT（或者directio()在Solaris）函数打开数据文件，使用fsync()刷新数据文件和日志文件
O\_DIRECT\_NO\_FSYNC:在刷新I/O时，InnoDB使用O\_DIRECT方式。
在有RAID卡和写缓存的系统中，O\_DIRECT有助于避免InnoDB缓存池和操作系统缓存之间的双重缓存。在InnoDB数据和日志文件放在SAN存储上面的系统，默认值或O\_DSYNC方法会对以读为主的数据库起到加速作用。
innodb\_data\_home\_dir：InnoDB系统表空间所使用的数据文件的物理路径，默认路径是MySQL数据文件路径。如果这个参数的值为空，可以在innodb\_data\_file\_path参数里使用绝对路径
innodb\_data\_file\_path：InnoDB数据文件的路径和大小。
innodb\_file\_per\_table：当这个参数启用的时候，InnoDB会将新建表的数据和索引单独存放在.ibd格式的文件中，而不是存放在系统表空间中。当这张表被删除或TRUNCATE时，InnoDB表所占用的存储会被释放。这个设定会开启InnoDB的一些其他特性，比如表的压缩。当这个参数关闭的时候，InnoDB会将表和索引的数据存放到系统表空间的ibdata文件中，这会有一个问题，因为系统表空间不会缩小，这样设置会导致空间无法回放。
innodb\_undo\_directory：InnoDB undo日志所在表空间的物理路径。和innodb\_undo\_logs、innodb\_undo\_tablespaces参数配合，来设置undo日志的路径，默认路径是数据文件路径。
innodb\_undo\_logs：指定InnoDB使用的undo日志的个数。在MySQL 5.7.2版本，32个undo日志被临时表预留使用，并且这些日志存放在临时表表空间(ibtmp1)中。如果undo日志只存放在系统表空间中，想要额外分配供数据修改事务用的undo日志，innodb\_undo\_logs参数必须设置为32以上的整数。如果你配置了单独的undo表空间，要将innodb\_undo\_logs参数设为33以上来分配额外供数据修改事务使用的undo日志。每个undo日志最多可以支持1024个事务。如果这个参数没有设置，则它会设为默认值128。
innodb\_undo\_tablespaces：undo日志的表空间文件数量。默认，所有的undo日志都是系统表空间的一部分。因为在运行大的事务时，undo日志会增大，将undo日志设置在多个表空间中可以减少一个表空间的大小。undo表空间文件创建在innodb\_undo\_directory参数指定的路径下，以undoN格式命名，N是以0开头的一系列整数。undo表空间的默认大小为10M。需要在初始化InnoDB前设置innodb\_undo\_tablespaces这个参数。在MySQL 5.7.2版本，在128个undo日志中，有32个undo日志是为临时表所预留的，有95个undo日志供undo表空间使用。
innodb\_log\_files\_in\_group：InnoDB日志组包含的日志个数。InnoDB以循环的方式写入日志。这个参数的默认值和推荐值均是2。日志的路径由innodb\_log\_group\_home\_dir参数设定。
innodb\_log\_group\_home\_dir：InnoDB重做日志文件的物理路径，重做日志的数量由innodb\_log\_files\_in\_group参数指定。如果不指定任何InnoDB日志参数，MySQL默认会在MySQL数据文件路径下面创建两个名为ib\_logfile0、ib\_logfile1的两个重做日志文件，它们的大小由innodb\_log\_file\_size参数设定。
innodb\_log\_file\_size：日志组中每个日志文件的字节大小。所有日志文件的大小(innodb\_log\_file\_size \* innodb\_log\_files\_in\_group)不能超过512GB。
innodb\_log\_buffer\_size：InnoDB写入磁盘日志文件所使用的缓存字节大小。如果innodb\_page\_size参数为32K，则默认值是8MB；如果innodb\_page\_size参数为64K，则默认值是16MB。如果日志的缓存设置较大，则MySQL在处理大事务时，在提交事务前无需向磁盘写入日志文件。建议设置此参数为4\~8MB。
innodb\_flush\_log\_at\_trx\_commit：当提交相关的I/O操作被批量重新排列时，这个参数控制提交操作的ACID一致性和高性能之间的平衡。可以改变这个参数的默认值来提升数据库的性能，但是在数据库宕机的时候会丢失少量的事务。这个参数的默认值为1，代表数据库遵照完整的ACID模型，每当事务提交时，InnoDB日志缓存中的内容均会被刷新到日志文件，并写入到磁盘。当这个参数为0时，InnDB日志缓存大概每秒刷新一次日志文件到磁盘。当事务提交时，日志缓存不会立刻写入日志文件，这样的机制不会100%保证每秒都向日志文件刷新日志，当mysqld进程宕掉的时候可能会丢失持续时间为1秒左右的事务数据。当这个参数为2时，当事务提交后，InnoDB日志缓存中的内容会写入到日志文件且日志文件，日志文件以大概每秒一次的频率刷新到磁盘。在MySQL 5.6.6版本，InnoDB日志刷新频率由innodb\_flush\_log\_at\_timeout参数决定。通常将个参数设为1。
innodb\_flush\_log\_at\_timeout：写入或刷新日志的时间间隔。这个参数是在MySQL 5.6.6版本引入的。在MySQL 5.6.6版本之前，刷新的频率是每秒刷新一次。innodb\_flush\_log\_at\_timeout参数的默认值也是1秒刷新一次。
innodb\_lock\_wait\_timeout：InnDB事务等待行锁的时间长度。默认值是50秒。当一个事务锁定了一行，这时另外一个事务想访问并修改这一行，当等待时间达到innodb\_lock\_wait\_timeout参数设置的值时，MySQL会报错"ERROR 1205 (HY000): Lock wait timeout exceeded; try restarting transaction"，同时会回滚语句（不是回滚整个事务）。如果想回滚整个事务，需要使用--innodb\_rollback\_on\_timeout参数启动MySQL。在高交互性的应用系统或OLTP系统上，可以减小这个参数来快速显示用户的反馈或把更新放入队列稍后处理。在数据仓库中，为了更好的处理运行时间长的操作，可以增大这个参数。这个参数只应用在InnoDB行锁上，这个参数对表级锁无效。这个参数不适用于死锁，因为发生死锁时，InnoDB会立刻检测到死锁并将发生死锁的一个事务回退。
innodb\_fast\_shutdown：InnoDB关库模式。如果这个参数为0，InnoDB会做一个缓慢关机，在关机前会做完整的刷新操作，这个级别的关库操作会持续数分钟，当缓存中的数据量很大时，甚至会持续几个小时；如果数据库要执行版本升级或降级，需要执行这个级别的关库操作，以保证所有的数据变更都写入到数据文件。如果这个参数的值是1（默认值），为了节省关库时间，InnoDB会跳过新操作，而是在下一次开机的时候通过crash recovery方式执行刷新操作。如果这个参数的值是2，InnoDB会刷新日志并以冷方式关库，就像MySQL宕机一样，没有提交的事务会丢失，在下一次开启数据库时，crash recovery所需要的时间更长；在紧急或排错情形下，需要立刻关闭数据库时，会使用这种方式停库。

## MySQL事务隔离级别
查看事物隔离级别
SELECT @@tx\_isolation;
设置mysql的隔离级别：
set session transaction isolation level 设置事务隔离级别
设置read uncommitted级别：
set session transaction isolation level read uncommitted;
设置read committed级别：
set session transaction isolation level read committed;
设置repeatable read级别：
set session transaction isolation level repeatable read;
设置serializable级别：
set session transaction isolation level serializable;
事务隔离级别	脏读	不可重复读	幻读
读未提交（READ UNCOMMITTED）	√	√	√
读已提交（READ COMMITTED）	×	√	√
可重复读（REPEATABLE READ）	×	×	√
串行化（SERIALIZABLE）	×	×	×

## 锁

## 执行计划
大家好，我是只谈技术不剪发的 Tony 老师。今天给大家深入分析一下 MySQL 中的执行计划。
执行计划（execution plan，也叫查询计划或者解释计划）是 MySQL 服务器执行 SQL 语句的具体步骤。例如，通过索引还是全表扫描访问表中的数据，连接查询的实现方式和连接的顺序，分组和排序操作的实现方式等。
负责生成执行计划的组件就是优化器，优化器利用表结构、字段、索引、查询条件、数据库的统计信息和配置参数决定 SQL 语句的最佳执行方式。如果想要解决慢查询的性能问题，首先应该查看它的执行计划。

## 获取执行计划
MySQL 提供了 [EXPLAIN](https://link.zhihu.com/?target=https%3A//dev.mysql.com/doc/refman/8.0/en/explain.html) 语句，用于获取 SQL 语句的执行计划。该语句的基本形式如下：
    {EXPLAIN | DESCRIBE | DESC}
    {
        SELECT statement
      | TABLE statement
      | DELETE statement
      | INSERT statement
      | REPLACE statement
      | UPDATE statement
    }
`EXPLAIN`和`DESCRIBE`是同义词，可以通用。实际应用中，`DESCRIBE`主要用于查看表的结构，`EXPLAIN`主要用于获取执行计划。MySQL 可以获取 SELECT、INSERT、DELETE、UPDATE、REPLACE 等语句的执行计划。从 MySQL 8.0.19 开始，支持 [TABLE](https://link.zhihu.com/?target=https%3A//dev.mysql.com/doc/refman/8.0/en/table.html) 语句的执行计划。
举例来说：
    explain
    select *
    from employee;
    id|select_type|table   |partitions|type|possible_keys|key|key_len|ref|rows|filtered|Extra|
    --|-----------|--------|----------|----|-------------|---|-------|---|----|--------|-----|
     1|SIMPLE     |employee|          |ALL |             |   |       |   |  25|   100.0|     |
MySQL 中的执行计划包含了 12 列信息，这些字段的含义我们在下文中进行解读。
除了使用 EXPLAIN 语句之外，很多管理和开发工具都提供了查看图形化执行计划的功能，例如 MySQL Workbench 中显示以上查询的执行计划如下：
![](https://pic1.zhimg.com/80/v2-644b2b3d90524a9f7564f42fd0f172dc_720w.webp)
当然，这种方式最终也是执行了 EXPLAIN 语句。

## 解读执行计划
理解执行计划中每个字段的含义可以帮助我们知悉 MySQL 内部的操作过程，找到性能问题的所在并有针对性地进行优化。在执行计划的输出信息中，最重要的字段就是 type。

## type 字段
type 被称为连接类型（join type）或者访问类型（access type），它显示了 MySQL 如何访问表中的数据。
访问类型会直接影响到查询语句的性能，性能从好到差依次为：
* system，表中只有一行数据（系统表），这是 const 类型的特殊情况；
* const，最多返回一条匹配的数据，在查询的最开始读取；
* eq\_ref，对于前面的每一行，从该表中读取一行数据；
* ref，对于前面的每一行，从该表中读取匹配索引值的所有数据行；
* fulltext，通过 FULLTEXT 索引查找数据；
* ref\_or\_null，与 ref 类似，额外加上 NULL 值查找；
* index\_merge，使用索引合并优化技术，此时 key 列显示使用的所有索引；
* unique\_subquery，替代以下情况时的 eq\_ref：value IN (SELECT primary\_key FROM single\_table WHERE some\_expr)；
* index\_subquery，与 unique\_subquery 类似，用于子查询中的非唯一索引：value IN (SELECT key\_column FROM single\_table WHERE some\_expr)；
* range，使用索引查找范围值；
* index，与 ALL 类型相同，只不过扫描的是索引；
* ALL，全表扫描，通常表示存在性能问题。
const 和 eq\_ref 都意味着着通过 PRIMARY KEY 或者 UNIQUE 索引查找唯一值；它们的区别在于 const 对于整个查询只返回一条数据，eq\_ref 对于前面的结果集中的每条记录只返回一条数据。例如以下查询通过主键（key = PRIMARY）进行等值查找：
    explain
    select * 
    from employee
    where emp_id = 1;
    id|select_type|table   |partitions|type |possible_keys|key    |key_len|ref  |rows|filtered|Extra|
    --|-----------|--------|----------|-----|-------------|-------|-------|-----|----|--------|-----|
     1|SIMPLE     |employee|          |const|PRIMARY      |PRIMARY|4      |const|   1|   100.0|     |
const 只返回一条数据，是一种非常快速的访问方式，所以相当于一个常量（constant）。
以下语句通过主键等值连接两个表：
    explain
    select * 
    from employee e
    join department d
    on (e.dept_id = d.dept_id )
    where e.emp_id in(1, 2);
    id|select_type|table|partitions|type  |possible_keys       |key    |key_len|ref           |rows|filtered|Extra      |
    --|-----------|-----|----------|------|--------------------|-------|-------|--------------|----|--------|-----------|
     1|SIMPLE     |e    |          |range |PRIMARY,idx_emp_dept|PRIMARY|4      |              |   2|   100.0|Using where|
     1|SIMPLE     |d    |          |eq_ref|PRIMARY             |PRIMARY|4      |hrdb.e.dept_id|   1|   100.0|           |
对于 employee 中返回的每一行（table = e），department 表通过主键（key = PRIMARY）返回且仅返回一条数据（type = eq\_ref）。Extra 字段中的 Using where 表示将经过条件过滤后的数据传递给下个表或者客户端。
ref、ref\_or\_null 以及 range 表示通过范围查找所有匹配的索引项，然后根据需要再访问表中的数据。通常意味着使用了非唯一索引或者唯一索引的前面部分字段进行数据访问，例如：
    explain
    select * 
    from employee e
    where e.dept_id = 1;
    id|select_type|table|partitions|type|possible_keys|key         |key_len|ref  |rows|filtered|Extra|
    --|-----------|-----|----------|----|-------------|------------|-------|-----|----|--------|-----|
     1|SIMPLE     |e    |          |ref |idx_emp_dept |idx_emp_dept|4      |const|   3|   100.0|     |
    explain
    select * 
    from employee e
    join department d
    on (e.dept_id = d.dept_id )
    where d.dept_id = 1;
    id|select_type|table|partitions|type |possible_keys|key         |key_len|ref  |rows|filtered|Extra|
    --|-----------|-----|----------|-----|-------------|------------|-------|-----|----|--------|-----|
     1|SIMPLE     |d    |          |const|PRIMARY      |PRIMARY     |4      |const|   1|   100.0|     |
     1|SIMPLE     |e    |          |ref  |idx_emp_dept |idx_emp_dept|4      |const|   3|   100.0|     |
以上两个查询语句都是通过索引 idx\_emp\_dept 返回 employee 表中的数据。
ref\_or\_null 和 ref 的区别在于查询中包含了 IS NULL 条件。例如：
    alter table employee modify column dept_id int null;
    explain
    select * 
    from employee e
    where e.dept_id = 1 or dept_id is null;
    id|select_type|table|partitions|type       |possible_keys|key         |key_len|ref  |rows|filtered|Extra                |
    --|-----------|-----|----------|-----------|-------------|------------|-------|-----|----|--------|---------------------|
     1|SIMPLE     |e    |          |ref_or_null|idx_emp_dept |idx_emp_dept|5      |const|   4|   100.0|Using index condition|
其中，Extra 字段显示为 Using index condition，意味着通过索引访问表中的数据之前，直接通过 WHERE 语句中出现的索引字段条件过滤数据。这是 MySQL 5.6 之后引入了一种优化，叫做[索引条件下推](https://link.zhihu.com/?target=https%3A//dev.mysql.com/doc/refman/8.0/en/index-condition-pushdown-optimization.html)（Index Condition Pushdown）。
为了显示 ref\_or\_null，我们需要将字段 dept\_id 设置为可空，测试之后记得重新修改为 NOT NULL：
    alter table employee modify column dept_id int not null;
range 通常出现在使用 =、<>、>、>=、<、<=、IS NULL、<=>、BETWEEN、LIKE 或者 IN() 运算符和索引字段进行比较时，例如：
    explain
    select * 
    from employee e
    where e.email like 'zhang%';
    id|select_type|table|partitions|type |possible_keys|key         |key_len|ref|rows|filtered|Extra                |
    --|-----------|-----|----------|-----|-------------|------------|-------|---|----|--------|---------------------|
     1|SIMPLE     |e    |          |range|uk_emp_email |uk_emp_email|302    |   |   2|   100.0|Using index condition|
index\_merge 表示索引合并，当查询通过多个索引 range 访问方式返回数据时，MySQL 可以先对这些索引扫描结果合并成一个，然后通过这个索引获取表中的数据。例如：
    explain
    select * 
    from employee e
    where dept_id = 1 or job_id = 1;
    id|select_type|table|partitions|type       |possible_keys      |key                |key_len|ref|rows|filtered|Extra                                        |
    --|-----------|-----|----------|-----------|-------------------|-------------------|-------|---|----|--------|---------------------------------------------|
     1|SIMPLE     |e    |          |index_merge|PRIMARY,idx_emp_job|PRIMARY,idx_emp_job|4,4    |   |   2|   100.0|Using union(PRIMARY,idx_emp_job); Using where|
其中，字段 key 显示了使用的索引列表；Extra 中的 Using union(PRIMARY,idx\_emp\_job) 是索引合并的算法，这里采用了并集算法（查询条件使用了 or 运算符）。
unique\_subquery 本质上也是 eq\_ref 索引查找，用于优化以下形式的子查询：
    value IN (SELECT primary_key FROM single_table WHERE some_expr)
index\_subquery 本质上也是 ref 范围索引查找，用于优化以下形式的子查询：
    value IN (SELECT key_column FROM single_table WHERE some_expr)
index表示扫描整个索引，以下两种情况会使用这种访问方式：
* 查询可以直接通过索引返回所需的字段信息，也就是 index-only scan。此时 Extra 字段显示为 Using index。例如：
    explain
    select dept\_id
    from employee;
    | id | select\_type | table    | partitions | type  | possible\_keys | key            | key\_len | ref | rows | filtered | Extra       |
    | -- | ------------ | -------- | ---------- | ----- | -------------- | -------------- | -------- | --- | ---- | -------- | ----------- |
    | 1  | SIMPLE       | employee |            | index |                | idx\_emp\_dept | 4        |     | 25   | 100.0    | Using index |
查询所需的 dept\_id 字段通过扫描索引 idx\_emp\_dept 即可获得，所以采用了 index 访问类型。
* 通过扫描索引执行全表扫描，从而按照索引的顺序返回数据。此时 Extra 字段不会出现 Using index。
    explain
    select \*
    from employee force index (idx\_emp\_name)
    order by emp\_name;
    | id | select\_type | table    | partitions | type  | possible\_keys | key            | key\_len | ref | rows | filtered | Extra |
    | -- | ------------ | -------- | ---------- | ----- | -------------- | -------------- | -------- | --- | ---- | -------- | ----- |
    | 1  | SIMPLE       | employee |            | index |                | idx\_emp\_name | 202      |     | 25   | 100.0    |       |
为了演示 index 访问方式，我们使用了强制索引（force index）；否则，MySQL 选择使用全表扫描（ALL）。
ALL表示全表扫描，这是一种 I/O 密集型的操作，通常意味着存在性能问题。例如：
    explain
    select *
    from employee;
    id|select_type|table   |partitions|type|possible_keys|key|key_len|ref|rows|filtered|Extra|
    --|-----------|--------|----------|----|-------------|---|-------|---|----|--------|-----|
     1|SIMPLE     |employee|          |ALL |             |   |       |   |  25|   100.0|     |
因为 employee 表本身不大，而且我们查询了所有的数据，这种情况下全表扫描反而是一个很好的访问方法。但是，以下查询显然需要进行优化：
    explain
    select *
    from employee
    where salary = 10000;
    id|select_type|table   |partitions|type|possible_keys|key|key_len|ref|rows|filtered|Extra      |
    --|-----------|--------|----------|----|-------------|---|-------|---|----|--------|-----------|
     1|SIMPLE     |employee|          |ALL |             |   |       |   |  25|    10.0|Using where|
显然，针对这种查询语句，我们可以通过为 salary 字段创建一个索引进行优化。

## Extra 字段
执行计划输出中的 Extra 字段通常会显示更多的信息，可以帮助我们发现性能问题的所在。上文中我们已经介绍了一些 Extra 字段的信息，需要重点关注的输出内容包括：
* Using where，表示将经过 WHERE 条件过滤后的数据传递给下个数据表或者返回客户端。如果访问类型为 ALL 或者 index，而 Extra 字段不是 Using where，意味着查询语句可能存在问题（除非就是想要获取全部数据）。
* Using index condition，表示通过索引访问表之前，基于查询条件中的索引字段进行一次过滤，只返回必要的索引项。这也就是索引条件下推优化。
* Using index，表示直接通过索引即可返回所需的字段信息（index-only scan），不需要访问表。对于 InnoDB，如果通过主键获取数据，不会显示 Using index，但是仍然是 index-only scan。此时，访问类型为 index，key 字段显示为 PRIMARY。
* Using filesort，意味着需要执行额外的排序操作，通常需要占用大量的内存或者磁盘。例如：
    explain
    select \*
    from employee
    where dept\_id =3
    order by hire\_date;
    | id | select\_type | table    | partitions | type | possible\_keys | key            | key\_len | ref   | rows | filtered | Extra          |
    | -- | ------------ | -------- | ---------- | ---- | -------------- | -------------- | -------- | ----- | ---- | -------- | -------------- |
    | 1  | SIMPLE       | employee |            | ref  | idx\_emp\_dept | idx\_emp\_dept | 4        | const | 2    | 100.0    | Using filesort |
索引通常可以用于优化排序操作，我们可以为索引 idx\_emp\_dept 增加一个 hire\_date 字段来消除示例中的排序。
* Using temporary，意味着需要创建临时表保存中间结果。例如：
    explain
    select dept\_id,job\_id, sum(salary)
    from employee
    group by dept\_id, job\_id;
    | id | select\_type | table    | partitions | type | possible\_keys | key | key\_len | ref | rows | filtered | Extra           |
    | -- | ------------ | -------- | ---------- | ---- | -------------- | --- | -------- | --- | ---- | -------- | --------------- |
    | 1  | SIMPLE       | employee |            | ALL  |                |     |          |     | 25   | 100.0    | Using temporary |
示例中的分组操作需要使用临时表，同样可以通过增加索引进行优化。

## 访问谓词与过滤谓词
在 SQL 中，WHERE 条件也被称为谓词（predicate）。MySQL 数据库中的谓词存在以下三种使用方式：
* 访问谓词（access predicate），在执行计划的输出中对应于 key\_len 和 ref 字段。访问谓词代表了索引叶子节点遍历的开始和结束条件。
* 索引过滤谓词（index filter predicate），在执行计划中对应于 Extra 字段的 Using index condition。索引过滤谓词在遍历索引叶子节点时用于判断是否返回该索引项，但是不会用于判断遍历的开始和结束条件，也就不会缩小索引扫描的范围。
* 表级过滤谓词（table level filter predicate），在执行计划中对应于 Extra 字段的 Using where。谓词中的非索引字段条件在表级别进行判断，意味着数据库需要访问表中的数据然后再应用该条件。
一般来说，对于相同的查询语句，访问谓词的性能好于索引过滤谓词，索引过滤谓词的性能好于表级过滤谓词。
MySQL 执行计划中不会显示每个条件对应的谓词类型，而只是笼统地显示使用了哪种谓词类型。我们创建一个示例表：
    create table test (
      id int not null auto_increment primary key,
      col1 int,
      col2 int,
      col3 int);
    insert into test(col1, col2, col3)
    values (1,1,1), (2,4,6), (3,6,9);
    create index test_idx on test (col1, col2);
    analyze table test;
以下语句使用 col1 和 col2 作为查询条件：
    explain
    select *
    from test
    where col1=1 and col2=1;
    id|select_type|table|partitions|type|possible_keys|key     |key_len|ref        |rows|filtered|Extra|
    --|-----------|-----|----------|----|-------------|--------|-------|-----------|----|--------|-----|
     1|SIMPLE     |test |          |ref |test_idx     |test_idx|10     |const,const|   1|   100.0|     |
其中，Extra 字段为空；key = test\_idx 表示使用索引进行查找，key\_len = 10 就是 col1 和 col2 两个字段的长度（可空字段长度加 1）；ref = const,const 表示使用了索引中的两个字段和常量进行比较，从而判断是否返回数据行。因此，该语句中的 WHERE 条件是一个访问谓词。
接下来我们仍然使用 col1 和 col2 作为查询条件，但是修改一下返回的字段：
    explain
    select id, col1, col2
    from test
    where col1=1 and col2=1;
    id|select_type|table|partitions|type|possible_keys|key     |key_len|ref        |rows|filtered|Extra      |
    --|-----------|-----|----------|----|-------------|--------|-------|-----------|----|--------|-----------|
     1|SIMPLE     |test |          |ref |test_idx     |test_idx|10     |const,const|   1|   100.0|Using index|
其中，Extra 字段中的 Using index 不是 Using index condition，它是一个 index-only scan，因为所有的查询结果都可以通过索引直接返回（包括 id）；其他字段的信息和上面的示例相同。因此，该语句中的 WHERE 条件也是一个访问谓词。
然后使用 col1 进行范围查询：
    explain
    select *
    from test
    where col1 between 1 and 2;
    id|select_type|table|partitions|type |possible_keys|key     |key_len|ref|rows|filtered|Extra                |
    --|-----------|-----|----------|-----|-------------|--------|-------|---|----|--------|---------------------|
     1|SIMPLE     |test |          |range|test_idx     |test_idx|5      |   |   2|   100.0|Using index condition|
其中，Extra 字段中显示为 Using index condition；key = test\_idx 表示使用索引进行范围查找，key\_len = 5 就是 col1 字段的长度（可空字段长度加 1）；ref 为空表示没有访问谓词。因此，该语句中的 WHERE 条件是一个索引过滤谓词，查询需要遍历整个索引并且通过索引判断是否访问表中的数据。
最后使用 col1 和 col3 作为查询条件：
    explain
    select *
    from test
    where col1=1 and col3=1;
    id|select_type|table|partitions|type|possible_keys|key     |key_len|ref  |rows|filtered|Extra      |
    --|-----------|-----|----------|----|-------------|--------|-------|-----|----|--------|-----------|
     1|SIMPLE     |test |          |ref |test_idx     |test_idx|5      |const|   1|   33.33|Using where|
其中，Extra 字段中显示为 Using where，表示访问表中的数据然后再应用查询条件 col3=1；key = test\_idx 表示使用索引进行查找，key\_len = 5 就是 col1 字段的长度（可空字段长度加 1）；ref = const 表示常量等值比较；filtered = 33.33 意味着经过查询条件比较之后只保留三分之一的数据。因此，该语句中的 WHERE 条件是一个表级过滤谓词，意味着数据库需要访问表中的数据然后再应用该条件。

## 完整字段信息
下表列出了 MySQL 执行计划中各个字段的作用：
| 列名             | 作用                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| :------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| id             | 语句中 SELECT 的序号。如果是 UNION 操作的结果，显示为 NULL；此时 table 列显示为 。                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| select\_type   | SELECT 的类型，包括： - SIMPLE，不涉及 UNION 或者子查询的简单查询； - PRIMARY，最外层 SELECT； - UNION，UNION 中第二个或之后的 SELECT； - DEPENDENT UNION，UNION 中第二个或之后的 SELECT，该 SELECT 依赖于外部查询； - UNION RESULT，UNION 操作的结果； - SUBQUERY，子查询中的第一个 SELECT； - DEPENDENT SUBQUERY，子查询中的第一个 SELECT，该 SELECT 依赖于外部查询； - DERIVED，派生表，即 FROM 中的子查询； - DEPENDENT DERIVED，依赖于其他表的派生表； - MATERIALIZED，物化子查询； - UNCACHEABLE SUBQUERY，无法缓存结果的子查询，对于外部表中的每一行都需要重新查询； - UNION 中第二个或之后的 SELECT，该 UNION属于 UNCACHEABLE SUBQUERY。                                                                                                            |
| table          | 数据行的来源表，也有可能是以下值之一： - ，id 为 M 和 N 的 SELECT 并集运算的结果； - ，id 为 N 的派生表的结果； - ，id 为 N 的物化子查询的结果。                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| partitions     | 对于分区表而言，表示数据行所在的分区；普通表显示为 NULL。                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| type           | 连接类型或者访问类型，性能从好到差依次为： - system，表中只有一行数据，这是 const 类型的特殊情况； - const，最多返回一条匹配的数据，在查询的最开始读取； - eq\_ref，对于前面的每一行，从该表中读取一行数据； - ref，对于前面的每一行，从该表中读取匹配索引值的所有数据行； - fulltext，通过 FULLTEXT 索引查找数据； - ref\_or\_null，与 ref 类似，额外加上 NULL 值查找； - index\_merge，使用索引合并优化技术，此时 key 列显示使用的所有索引； - unique\_subquery，替代以下情况时的 eq\_ref：value IN (SELECT primary\_key FROM single\_table WHERE some\_expr)； - index\_subquery，与 unique\_subquery 类似，用于子查询中的非唯一索引：value IN (SELECT key\_column FROM single\_table WHERE some\_expr)； - range，使用索引查找范围值； - index，与 ALL 类型相同，只不过扫描的是索引； - ALL，全表扫描，通常表示存在性能问题。 |
| possible\_keys | 可能用到的索引，实际上不一定使用。                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
| key            | 实际使用的索引。                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| key\_len       | 实际使用的索引的长度。                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| ref            | 用于和 key 中的索引进行比较的字段或者常量，从而判断是否返回数据行。                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
| rows           | 执行查询需要检查的行数，对于 InnoDB 是一个估计值。                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|                |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| Extra          | 包含了额外的信息。例如 Using temporary 表示使用了临时表，Using filesort 表示需要额外的排序操作等。                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |

## 格式化参数
MySQL EXPLAIN 语句支持使用 FORMAT 选项指定不同的输出格式：
    {EXPLAIN | DESCRIBE | DESC}
    FORMAT = {TRADITIONAL | JSON | TREE}
    explainable_stmt
默认的格式为 TRADITIONAL，以表格的形式显示输出信息；JSON 选项表示以 JSON 格式显示信息；MySQL 8.0.16 之后支持 TREE 选项，以树形结构输出了比默认格式更加详细的信息，这也是唯一能够显示 hash join 的格式。
例如，以下语句输出了 JSON 格式的执行计划：
    explain
    format=json
    select *
    from employee
    where emp_id = 1;
    {
      "query_block": {
        "select_id": 1,
        "cost_info": {
          "query_cost": "1.00"
        },
        "table": {
          "table_name": "employee",
          "access_type": "const",
          "possible_keys": [
            "PRIMARY"
          ],
          "key": "PRIMARY",
          "used_key_parts": [
            "emp_id"
          ],
          "key_length": "4",
          "ref": [
            "const"
          ],
          "rows_examined_per_scan": 1,
          "rows_produced_per_join": 1,
          "filtered": "100.00",
          "cost_info": {
            "read_cost": "0.00",
            "eval_cost": "0.10",
            "prefix_cost": "0.00",
            "data_read_per_join": "568"
          },
          "used_columns": [
            "emp_id",
            "emp_name",
            "sex",
            "dept_id",
            "manager",
            "hire_date",
            "job_id",
            "salary",
            "bonus",
            "email"
          ]
        }
      }
    }
其中，大部分的节点信息和表格形式的字段能够对应；但是也返回了一些额外的信息，尤其是各种操作的成本信息 cost\_info，可以帮助我们了解不同执行计划之间的成本差异。
以下语句返回了树状结构的执行计划：
    explain
    format=tree
    select *
    from employee e1
    join employee e2 
    on e1.salary = e2.salary;
    -> Inner hash join (e2.salary = e1.salary)  (cost=65.51 rows=63)
        -> Table scan on e2  (cost=0.02 rows=25)
        -> Hash
            -> Table scan on e1  (cost=2.75 rows=25)
从结果可以看出，该执行计划使用了 Inner hash join 实现两个表的连接查询。

## 执行计划中的分区表信息
如果 SELECT 语句使用了分区表，可以通过 EXPLAIN 命令查看涉及的具体分区。执行计划输出的 partitions 字段显示了数据行所在的表分区。首先创建一个分区表：
    create table trb1 (id int primary key, name varchar(50), purchased date)
        partition by range(id)
        (
            partition p0 values less than (3),
            partition p1 values less than (7),
            partition p2 values less than (9),
            partition p3 values less than (11)
        );
    insert into trb1 values
        (1, 'desk organiser', '2003-10-15'),
        (2, 'CD player', '1993-11-05'),
        (3, 'TV set', '1996-03-10'),
        (4, 'bookcase', '1982-01-10'),
        (5, 'exercise bike', '2004-05-09'),
        (6, 'sofa', '1987-06-05'),
        (7, 'popcorn maker', '2001-11-22'),
        (8, 'aquarium', '1992-08-04'),
        (9, 'study desk', '1984-09-16'),
        (10, 'lava lamp', '1998-12-25');
然后查看使用 id 进行范围查询时的执行计划：
    explain 
    select * from trb1 
    where id < 5;
    id|select_type|table|partitions|type |possible_keys|key    |key_len|ref|rows|filtered|Extra      |
    --|-----------|-----|----------|-----|-------------|-------|-------|---|----|--------|-----------|
     1|SIMPLE     |trb1 |p0,p1     |range|PRIMARY      |PRIMARY|4      |   |   4|   100.0|Using where|
结果显示查询访问了分区 p0 和 p1。

## 获取额外的执行计划信息
除了直接输出的执行计划之外，EXPLAIN 命令还会产生一些[额外信息](https://link.zhihu.com/?target=https%3A//dev.mysql.com/doc/refman/8.0/en/explain-extended.html)，可以使用`SHOW WARNINGS`命令进行查看。例如：
    explain
    select * 
    from department d
    where exists (select 1 from employee e where e.dept_id = d.dept_id );
    id|select_type|table|partitions|type|possible_keys|key         |key_len|ref           |rows|filtered|Extra                     |
    --|-----------|-----|----------|----|-------------|------------|-------|--------------|----|--------|--------------------------|
     1|SIMPLE     |d    |          |ALL |PRIMARY      |            |       |              |   6|   100.0|                          |
     1|SIMPLE     |e    |          |ref |idx_emp_dept |idx_emp_dept|4      |hrdb.d.dept_id|   5|   100.0|Using index; FirstMatch(d)|
    show warnings\G
    * 1. row *
      Level: Note
       Code: 1276
    Message: Field or reference 'hrdb.d.dept_id' of SELECT #2 was resolved in SELECT #1
    * 2. row *
      Level: Note
       Code: 1003
    Message: /* select#1 */ select `hrdb`.`d`.`dept_id` AS `dept_id`,`hrdb`.`d`.`dept_name` AS `dept_name` from `hrdb`.`department` `d` semi join (`hrdb`.`employee` `e`) where (`hrdb`.`e`.`dept_id` = `hrdb`.`d`.`dept_id`)
    2 rows in set (0.00 sec)
SHOW WARNINGS 命令输出中的 Message 显示了优化器如何限定查询语句中的表名和列名、应用了重写和优化规则后的查询语句以及优化过程的其他信息。
目前只有 SELECT 语句相关的额外信息可以通过 SHOW WARNINGS 语句进行查看，其他语句（DELETE、INSERT、REPLACE 和UPDATE）显示的信息为空。

## 获取指定连接的执行计划
EXPLAIN 语句也可以用于获取指定连接中正在执行的 SQL 语句的执行计划，语法如下：
    EXPLAIN [FORMAT = {TRADITIONAL | JSON | TREE}] FOR CONNECTION connection_id;
其中，connection\_id 是连接标识符，可以通过字典表 INFORMATION\_SCHEMA PROCESSLIST 或者 SHOW PROCESSLIST 命令获取。如果某个会话中存在长时间运行的慢查询语句，在另一个会话中执行该命令可以获得相关的诊断信息。
首先获取当前连接的会话标识符：
    mysql> SELECT CONNECTION_ID();
    +-----------------+
    | CONNECTION_ID() |
    +-----------------+
    |              30 |
    +-----------------+
    1 row in set (0.00 sec)
如果此时在当前会话中获取执行计划，将会返回错误信息：
    mysql> EXPLAIN FOR CONNECTION 30;
    ERROR 3012 (HY000): EXPLAIN FOR CONNECTION command is supported only for SELECT/UPDATE/INSERT/DELETE/REPLACE
因为只有 SELECT、UPDATE、INSERT、DELETE、REPLACE 语句支持执行计划，当前正在执行的是 EXPLAIN 语句。
在当前会话中执行一个大表查询：
    mysql> select * from large_table;
然后在另一个会话中执行 EXPLAIN 命令：
    explain for connection 30;
    id|select_type|table      |partitions|type|possible_keys|key|key_len|ref|rows  |filtered|Extra|
    --|-----------|-----------|----------|----|-------------|---|-------|---|------|--------|-----|
     1|SIMPLE     |large_table|          |ALL |             |   |       |   |244296|   100.0|     |
如果指定会话没有正在运行的语句，EXPLAIN 命令将会返回空结果。

## 获取实际运行的执行计划
MySQL 8.0.18 增加了一个新的命令：`EXPLAIN ANALYZE`。该语句用于运行一个语句并且产生 EXPLAIN 结果，包括执行时间和迭代器（iterator）信息，可以获取优化器的预期执行计划和实际执行计划之间的差异。
    {EXPLAIN | DESCRIBE | DESC} ANALYZE select_statement
例如，以下 EXPLAIN 语句返回了查询计划和成本估算：
    explain
    format=tree
    select * 
    from employee e
    join department d
    on (e.dept_id = d.dept_id )
    where e.emp_id in(1, 2);
    -> Nested loop inner join  (cost=1.61 rows=2)
        -> Filter: (e.emp_id in (1,2))  (cost=0.91 rows=2)
            -> Index range scan on e using PRIMARY  (cost=0.91 rows=2)
        -> Single-row index lookup on d using PRIMARY (dept_id=e.dept_id)  (cost=0.30 rows=1)
那么，实际上的执行计划和成本消耗情况呢？我们可以使用 EXPLAIN ANALYZE 语句查看：
    explain analyze 
    select * 
    from employee e
    join department d
    on (e.dept_id = d.dept_id )
    where e.emp_id in(1, 2);
    -> Nested loop inner join  (cost=1.61 rows=2) (actual time=0.238..0.258 rows=2 loops=1)
        -> Filter: (e.emp_id in (1,2))  (cost=0.91 rows=2) (actual time=0.218..0.233 rows=2 loops=1)
            -> Index range scan on e using PRIMARY  (cost=0.91 rows=2) (actual time=0.214..0.228 rows=2 loops=1)
        -> Single-row index lookup on d using PRIMARY (dept_id=e.dept_id)  (cost=0.30 rows=1) (actual time=0.009..0.009 rows=1 loops=2)
对于每个迭代器，EXPLAIN ANALYZE 输出了以下信息：
* 估计执行成本，某些迭代器不计入成本模型；
* 估计返回行数；
* 返回第一行的实际时间（ms）；
* 返回所有行的实际时间（ms），如果存在多次循环，显示平均时间；
* 实际返回行数；
* 循环次数。
在输出结果中的每个节点包含了下面所有节点的汇总信息，所以最终的估计信息和实际信息如下：
    -> Nested loop inner join  (cost=1.61 rows=2) (actual time=0.238..0.258 rows=2 loops=1)
查询通过嵌套循环内连接实现；估计成本为 1.61，估计返回 2 行数据；实际返回第一行数据的时间为 0.238 ms，实际返回所有数据的平均时间为 0.258 ms，实际返回了 2 行数据，嵌套循环操作执行了 1 次。
循环的实现过程是首先通过主键扫描 employee 表并且应用过滤迭代器：
    -> Filter: (e.emp_id in (1,2))  (cost=0.91 rows=2) (actual time=0.218..0.233 rows=2 loops=1)
            -> Index range scan on e using PRIMARY  (cost=0.91 rows=2) (actual time=0.214..0.228 rows=2 loops=1)
其中，应用过滤迭代器返回第一行数据的时间为 0.218 ms，包括索引扫描的 0.214 ms；返回所有数据的平均时间为 0.233 ms，包括索引扫描的 0.228 ms；绝大部分时间都消耗在了索引扫描，总共返回了 2 条数据。
然后循环上一步返回的 2 条数据，扫描 department 表的主键返回其他数据：
    -> Single-row index lookup on d using PRIMARY (dept_id=e.dept_id)  (cost=0.30 rows=1) (actual time=0.009..0.009 rows=1 loops=2)
其中，loops=2 表示这个迭代器需要执行 2 次；每次返回 1 行数据，所以两个实际时间都是 0.009 ms。
以上示例的预期执行计划和实际执行计划基本上没有什么差异。但有时候并不一定如此，例如：
    explain analyze 
    select * 
    from employee e
    join department d
    on (e.dept_id = d.dept_id )
    where e.salary = 10000;
    -> Nested loop inner join  (cost=3.63 rows=3) (actual time=0.427..0.444 rows=1 loops=1)
        -> Filter: (e.salary = 10000.00)  (cost=2.75 rows=3) (actual time=0.406..0.423 rows=1 loops=1)
            -> Table scan on e  (cost=2.75 rows=25) (actual time=0.235..0.287 rows=25 loops=1)
        -> Single-row index lookup on d using PRIMARY (dept_id=e.dept_id)  (cost=0.29 rows=1) (actual time=0.018..0.018 rows=1 loops=1)
我们使用 salary 字段作为过滤条件，该字段没有索引。执行计划中的最大问题在于估计返回的行数是 3，而实际返回的行数是 1；这是由于缺少字段的直方图统计信息。
我们对 employee 表进行分析，收集字段的直方图统计之后再查看执行计划：
    analyze table employee update histogram on salary;
    explain analyze 
    select * 
    from employee e
    join department d
    on (e.dept_id = d.dept_id )
    where e.salary = 10000;
    -> Nested loop inner join  (cost=3.10 rows=1) (actual time=0.092..0.105 rows=1 loops=1)
        -> Filter: (e.salary = 10000.00)  (cost=2.75 rows=1) (actual time=0.082..0.093 rows=1 loops=1)
            -> Table scan on e  (cost=2.75 rows=25) (actual time=0.056..0.080 rows=25 loops=1)
        -> Single-row index lookup on d using PRIMARY (dept_id=e.dept_id)  (cost=0.35 rows=1) (actual time=0.009..0.009 rows=1 loops=1)
估计返回的行数变成了 1，和实际执行结果相同。
除了本文介绍的各种 EXPLAIN 语句之外，MySQL 还提供了优化器跟踪（optimizer trace）功能，可以获取关于优化器的更多信息，具体可以参考 [MySQL Internals\:Tracing the Optimizer](https://link.zhihu.com/?target=https%3A//dev.mysql.com/doc/internals/en/optimizer-tracing.html)。

## 优化
1、MySQL的复制原理以及流程
(1)、复制基本原理流程
1. 主：binlog线程——记录下所有改变了数据库数据的语句，放进master上的binlog中； 2. 从：io线程——在使用start slave 之后，负责从master上拉取 binlog 内容，放进 自己的relay log中； 3. 从：sql执行线程——执行relay log中的语句；
(2)、MySQL复制的线程有几个及之间的关联
MySQL 的复制是基于如下 3 个线程的交互（ 多线程复制里面应该是 4 类线程）： 1. Master 上面的 binlog dump 线程，该线程负责将 master 的 binlog event 传到slave； 2. Slave 上面的 IO 线程，该线程负责接收 Master 传过来的 binlog，并写入 relay log； 3. Slave 上面的 SQL 线程，该线程负责读取 relay log 并执行； 4. 如果是多线程复制，无论是 5.6 库级别的假多线程还是 MariaDB 或者 5.7 的真正的多线程复制， SQL 线程只做 coordinator，只负责把 relay log 中的 binlog读出来然后交给 worker 线程， woker 线程负责具体 binlog event 的执行；
(3)、MySQL如何保证复制过程中数据一致性及减少数据同步延时
一致性主要有以下几个方面：
![0](https://note.youdao.com/yws/res/31258/WEBRESOURCE4e281bd70d1ec17f641544e2e35c28fe "0")
1.在 MySQL5.5 以及之前， slave 的 SQL 线程执行的 relay log 的位置只能保存在文件（ relay-log.info）里面，并且该文件默认每执行 10000 次事务做一次同步到磁盘， 这意味着 slave 意外 crash 重启时， SQL 线程执行到的位置和数据库的数据是不一致的，将导致复制报错，如果不重搭复制，则有可能会 导致数据不一致。 MySQL 5.6 引入参数 relay\_log\_info\_repository，将该参数设置为 TABLE 时， MySQL 将 SQL 线程执行到的位置存到mysql.slave\_relay\_log\_info 表，这样更新该表的位置和 SQL 线程执行的用户事务绑定成一个事务，这样 slave 意外宕机后， slave 通过 innodb 的崩溃 恢复可以把 SQL 线程执行到的位置和用户事务恢复到一致性的状态。 2. MySQL 5.6 引入 GTID 复制，每个 GTID 对应的事务在每个实例上面最多执行一次， 这极大地提高了复制的数据一致性； 3. MySQL 5.5 引入半同步复制， 用户安装半同步复制插件并且开启参数后，设置超时时间，可保证在超时时间内如果 binlog 不传到 slave 上面，那么用户提交事务时不会返回，直到超时后切成异步复制，但是如果切成异步之前用户线程提交时在 master 上面等待的时候，事务已经提交，该事务对 master 上面的其他 session 是可见的，如果这时 master 宕机，那么到 slave 上面该事务又不可见了，该问题直到 5.7 才解决； 4. MySQL 5.7 引入无损半同步复制，引入参 rpl\_semi\_sync\_master\_wait\_point，该参数默认为 after\_sync，指的是在切成半同步之前，事务不提交，而是接收到 slave 的 ACK 确认之后才提交该事务，从此，复制真正可以做到无损的了。 5.可以再说一下 5.7 的无损复制情况下， master 意外宕机，重启后发现有 binlog没传到 slave 上面，这部分 binlog 怎么办？？？分 2 种情况讨论， 1 宕机时已经切成异步了， 2 是宕机时还没切成异步？？？ 这个怎么判断宕机时有没有切成异步呢？？？ 分别怎么处理？？？
![0](https://note.youdao.com/yws/res/31259/WEBRESOURCE3e60088800c897d17ecff23f62b3e5ab "0")
延时性：
5.5 是单线程复制， 5.6 是多库复制（对于单库或者单表的并发操作是没用的）， 5.7 是真正意义的多线程复制，它的原理是基于 group commit， 只要 master 上面的事务是 group commit 的，那 slave 上面也可以通过多个 worker线程去并发执行。 和 MairaDB10.0.0.5 引入多线程复制的原理基本一样。
(4)、工作遇到的复制 bug 的解决方法
5.6 的多库复制有时候自己会停止，我们写了一个脚本重新 start slave;待补充…
2、MySQL中myisam与innodb的区别，至少5点
(1)、问5点不同
1.InnoDB支持事物，而MyISAM不支持事物 2.InnoDB支持行级锁，而MyISAM支持表级锁 3.InnoDB支持MVCC, 而MyISAM不支持 4.InnoDB支持外键，而MyISAM不支持 5.InnoDB不支持全文索引，而MyISAM支持。 6.InnoDB不能通过直接拷贝表文件的方法拷贝表到另外一台机器， myisam 支持 7.InnoDB表支持多种行格式， myisam 不支持 8.InnoDB是索引组织表， myisam 是堆表
(2)、innodb引擎的4大特性
1.插入缓冲（insert buffer) 2.二次写(double write) 3.自适应哈希索引(ahi) 4.预读(read ahead)
(3)、各种不同 mysql 版本的Innodb的改进
MySQL5.6 下 Innodb 引擎的主要改进： （ 1） online DDL （ 2） memcached NoSQL 接口 （ 3） transportable tablespace（ alter table discard/import tablespace） （ 4） MySQL 正常关闭时，可以 dump 出 buffer pool 的（ space， page\_no），重启时 reload，加快预热速度 （ 5） 索引和表的统计信息持久化到 mysql.innodb\_table\_stats 和mysql.innodb\_index\_stats，可提供稳定的执行计划 （ 6） Compressed row format 支持压缩表 MySQL 5.7 innodb 引擎主要改进 （ 1） 修改 varchar 字段长度有时可以使用 online DDL （ 2） Buffer pool 支持在线改变大小 （ 3） Buffer pool 支持导出部分比例 （ 4） 支持新建 innodb tablespace，并可以在其中创建多张表 （ 5） 磁盘临时表采用 innodb 存储，并且存储在 innodb temp tablespace 里面，以前是 myisam 存储 （ 6） 透明表空间压缩功能
(4)、2者select  count(\*)哪个更快，为什么
myisam更快，因为myisam内部维护了一个计数器，可以直接调取。
(5)、2 者的索引的实现方式
都是 B+树索引， Innodb 是索引组织表， myisam 是堆表， 索引组织表和堆表的区别要熟悉
3、MySQL中varchar与char的区别以及varchar(50)中的50代表的涵义
(1)、varchar与char的区别
在单字节字符集下， char（ N） 在内部存储的时候总是定长， 而且没有变长字段长度列表中。 在多字节字符集下面， char(N)如果存储的字节数超过 N，那么 char（ N）将和 varchar（ N）没有区别。在多字节字符集下面，如果存 储的字节数少于 N，那么存储 N 个字节，后面补空格，补到 N 字节长度。 都存储变长的数据和变长字段长度列表。 varchar(N)无论是什么字节字符集，都是变长的，即都存储变长数据和变长字段长度列表。
(2)、varchar(50)中50的涵义
最多存放50个字符，varchar(50)和(200)存储hello所占空间一样，但后者在排序时会消耗更多内存，因为order by col采用fixed\_length计算col长度(memory引擎也一样)。在早期 MySQL 版本中， 50 代表字节数，现在代表字符数。
(3)、int（20）中20的涵义
是指显示字符的长度 不影响内部存储，只是影响带 zerofill 定义的 int 时，前面补多少个 0，易于报表展示
(4)、mysql为什么这么设计
对大多数应用没有意义，只是规定一些工具用来显示字符的个数；int(1)和int(20)存储和计算均一样；
4、innodb的事务与日志的实现方式
(1)、有多少种日志
redo和undo
(2)、日志的存放形式
redo：在页修改的时候，先写到 redo log buffer 里面， 然后写到 redo log 的文件系统缓存里面(fwrite)，然后再同步到磁盘文件（ fsync）。 Undo：在 MySQL5.5 之前， undo 只能存放在 ibdata\*文件里面， 5.6 之后，可以通过设置 innodb\_undo\_tablespaces 参数把 undo log 存放在 ibdata\*之外。
(3)、事务是如何通过日志来实现的，说得越深入越好
基本流程如下： 因为事务在修改页时，要先记 undo，在记 undo 之前要记 undo 的 redo， 然后修改数据页，再记数据页修改的 redo。 Redo（里面包括 undo 的修改） 一定要比数据页先持久化到磁盘。 当事务需要回滚时，因为有 undo，可以把数据页回滚到前镜像的 状态，崩溃恢复时，如果 redo log 中事务没有对应的 commit 记录，那么需要用 undo把该事务的修改回滚到事务开始之前。 如果有 commit 记录，就用 redo 前滚到该事务完成时并提交掉。
5、MySQL binlog的几种日志录入格式以及区别
(1)、各种日志格式的涵义
1.Statement：每一条会修改数据的sql都会记录在binlog中。 优点：不需要记录每一行的变化，减少了binlog日志量，节约了IO，提高性能。(相比row能节约多少性能 与日志量，这个取决于应用的SQL情况，正常同一条记录修改或者插入row格式所产生的日志量还小于Statement产生的日志量， 但是考虑到如果带条 件的update操作，以及整表删除，alter表等操作，ROW格式会产生大量日志，因此在考虑是否使用ROW格式日志时应该跟据应用的实际情况，其所 产生的日志量会增加多少，以及带来的IO性能问题。) 缺点：由于记录的只是执行语句，为了这些语句能在slave上正确运行，因此还必须记录每条语句在执行的时候的 一些相关信息，以保证所有语句能在slave得到和在master端执行时候相同 的结果。另外mysql 的复制, 像一些特定函数功能，slave可与master上要保持一致会有很多相关问题(如sleep()函数， last\_insert\_id()，以及user-defined functions(udf)会出现问题). 使用以下函数的语句也无法被复制： \* LOAD\_FILE() \* UUID() \* USER() \* FOUND\_ROWS() \* SYSDATE() (除非启动时启用了 --sysdate-is-now 选项) 同时在INSERT ...SELECT 会产生比 RBR 更多的行级锁 2.Row:不记录sql语句上下文相关信息，仅保存哪条记录被修改。 优点： binlog中可以不记录执行的sql语句的上下文相关的信息，仅需要记录那一条记录被修改成什么了。所以rowlevel的日志内容会非常清楚的记录下 每一行数据修改的细节。而且不会出现某些特定情况下的存储过程，或function，以及trigger的调用和触发无法被正确复制的问题 缺点:所有的执行的语句当记录到日志中的时候，都将以每行记录的修改来记录，这样可能会产生大量的日志内容,比 如一条update语句，修改多条记录，则binlog中每一条修改都会有记录，这样造成binlog日志量会很大，特别是当执行alter table之类的语句的时候， 由于表结构修改，每条记录都发生改变，那么该表每一条记录都会记录到日志中。 3.Mixedlevel: 是以上两种level的混合使用，一般的语句修改使用statment格式保存binlog，如一些函数，statement无法完成主从复制的操作，则 采用row格式保存binlog,MySQL会根据执行的每一条具体的sql语句来区分对待记录的日志形式， 也就是在Statement和Row之间选择 一种.新版本的MySQL中队row level模式也被做了优化，并不是所有的修改都会以row level来记录，像遇到表结构变更的时候就会以statement模式来记录。至于update或者delete等修改数据的语句，还是会记录所有行的变更。
 (2)、适用场景
在一条 SQL 操作了多行数据时， statement 更节省空间， row 更占用空间。但是 row模式更可靠。
(3)、结合第一个问题，每一种日志格式在复制中的优劣
Statement 可能占用空间会相对小一些，传送到 slave 的时间可能也短，但是没有 row模式的可靠。 Row 模式在操作多行数据时更占用空间， 但是可靠。
6、下MySQL数据库cpu飙升到500%的话他怎么处理？
当 cpu 飙升到 500%时，先用操作系统命令 top 命令观察是不是 mysqld 占用导致的，如果不是，找出占用高的进程，并进行相关处理。如果是 mysqld 造成的， show processlist，看看里面跑的 session 情况，是不是有消耗资源的 sql 在运行。找出消耗高的 sql， 看看执行计划是否准确， index 是否缺失，或者实在是数据量太大造成。一般来说，肯定要 kill 掉这些线程(同时观察 cpu 使用率是否下降)，等进行相应的调整(比如说加索引、改 sql、改内存参数)之后，再重新跑这些 SQL。也有可能是每个 sql 消耗资源并不多，但是突然之间， 有大量的 session 连进来导致 cpu 飙升，这种情况就需要跟应用一起来分析为何连接数会激增，再做出相应的调整，比如说限制连接数等
7、sql优化
(1)、explain出来的各种item的意义
id:每个被独立执行的操作的标志，表示对象被操作的顺序。一般来说， id 值大，先被执行；如果 id 值相同，则顺序从上到下。 select\_type：查询中每个 select 子句的类型。 table:名字，被操作的对象名称，通常的表名(或者别名)，但是也有其他格式。 partitions:匹配的分区信息。 type\:join 类型。 possible\_keys：列出可能会用到的索引。 key:实际用到的索引。 key\_len:用到的索引键的平均长度，单位为字节。 ref:表示本行被操作的对象的参照对象，可能是一个常量用 const 表示，也可能是其他表的 key 指向的对象，比如说驱动表的连接列。 rows:估计每次需要扫描的行数。 filtered\:rows\*filtered/100 表示该步骤最后得到的行数(估计值)。 extra:重要的补充信息。
(2)、profile的意义以及使用场景
Profile 用来分析 sql 性能的消耗分布情况。当用 explain 无法解决慢 SQL 的时候，需要用profile 来对 sql 进行更细致的分析，找出 sql 所花的时间大部分消耗在哪个部分，确认 sql的性能瓶颈。
(3)、explain 中的索引问题
Explain 结果中，一般来说，要看到尽量用 index(type 为 const、ref 等， key 列有值)，避免使用全表扫描(type 显式为 ALL)。比如说有 where 条件且选择性不错的列，需要建立索引。 被驱动表的连接列，也需要建立索引。被驱动表的连接列也可能会跟 where 条件列一起建立联合索引。当有排序或者 group by 的需求时，也可以考虑建立索引来达到直接排序和汇总的需求。
8、备份计划，mysqldump以及xtranbackup的实现原理
(1)、备份计划
视库的大小来定，一般来说 100G 内的库，可以考虑使用 mysqldump 来做，因为 mysqldump更加轻巧灵活，备份时间选在业务低峰期，可以每天进行都进行全量备份(mysqldump 备份 出来的文件比较小，压缩之后更小)。100G 以上的库，可以考虑用 xtranbackup 来做，备份速度明显要比 mysqldump 要快。一般是选择一周一个全备，其余每天进行增量备份，备份时间为业务低峰期。
(2)、备份恢复时间
物理备份恢复快，逻辑备份恢复慢 这里跟机器，尤其是硬盘的速率有关系，以下列举几个仅供参考 20G的2分钟（mysqldump） 80G的30分钟(mysqldump) 111G的30分钟（mysqldump) 288G的3小时（xtra) 3T的4小时（xtra) 逻辑导入时间一般是备份时间的5倍以上
(3)、备份恢复失败如何处理
首先在恢复之前就应该做足准备工作，避免恢复的时候出错。比如说备份之后的有效性检查、权限检查、空间检查等。如果万一报错，再根据报错的提示来进行相应的调整。
(4)、mysqldump和xtrabackup实现原理
mysqldump
mysqldump 属于逻辑备份。加入--single-transaction 选项可以进行一致性备份。后台进程会先设置 session 的事务隔离级别为 RR(SET SESSION TRANSACTION ISOLATION LEVELREPEATABLE READ)， 之后显式开启一个事务(START TRANSACTION /\*!40100 WITH CONSISTENTSNAPSHOT \*/)，这样就保证了该事务里读到的数据都是事务事务时候的快照。之后再把表的数据读取出来。 如果加上--master-data=1 的话，在刚开始的时候还会加一个数据库的读锁 (FLUSH TABLES WITH READ LOCK),等开启事务后，再记录下数据库此时 binlog 的位置(showmaster status)，马上解锁，再读取表的数据。等所有的数据都已经导完，就可以结束事务
Xtrabackup:
xtrabackup 属于物理备份，直接拷贝表空间文件，同时不断扫描产生的 redo 日志并保存下来。最后完成 innodb 的备份后，会做一个 flush engine logs 的操作(老版本在有 bug，在5.6 上不做此操作会丢数据)，确保所有的 redo log 都已经落盘(涉及到事务的两阶段提交 概念，因为 xtrabackup 并不拷贝 binlog，所以必须保证所有的 redo log 都落盘，否则可能会丢最后一组提交事务的数据)。这个时间点就是 innodb 完成备份的时间点，数据文件虽然不是一致性的，但是有这段时间的 redo 就可以让数据文件达到一致性(恢复的时候做的事 情)。然后还需要 flush tables with read lock，把 myisam 等其他引擎的表给备份出来，备份完后解锁。 这样就做到了完美的热备。
9、mysqldump中备份出来的sql，如果我想sql文件中，一行只有一个insert....value()的话，怎么办？如果备份需要带上master的复制点信息怎么办？
\--skip-extended-insert \[root\@helei-zhuanshu \~]# mysqldump -uroot -p helei --skip-extended-insert Enter password: KEY \`idx\_c1\` (\`c1\`), KEY \`idx\_c2\` (\`c2\`) ) ENGINE=InnoDB AUTO\_INCREMENT=51 DEFAULT CHARSET=latin1; /\*!40101 SET character\_set\_client = @saved\_cs\_client \*/; -- -- Dumping data for table \`helei\` -- LOCK TABLES \`helei\` WRITE; /\*!40000 ALTER TABLE \`helei\` DISABLE KEYS \*/; INSERT INTO \`helei\` VALUES (1,32,37,38,'2016-10-18 06:19:24','susususususususususususu'); INSERT INTO \`helei\` VALUES (2,37,46,21,'2016-10-18 06:19:24','susususususu'); INSERT INTO \`helei\` VALUES (3,21,5,14,'2016-10-18 06:19:24','susu');
10、500台db，在最快时间之内重启
可以使用批量 ssh 工具 pssh 来对需要重启的机器执行重启命令。 也可以使用 salt（前提是客户端有安装 salt）或者 ansible（ ansible 只需要 ssh 免登通了就行）等多线程工具同时操作多台服务器
11、innodb的读写参数优化
(1)、读取参数
global buffer 以及 local buffer； Global buffer： Innodb\_buffer\_pool\_size innodb\_log\_buffer\_size innodb\_additional\_mem\_pool\_size local buffer(下面的都是 server 层的 session 变量，不是 innodb 的)： Read\_buffer\_size Join\_buffer\_size Sort\_buffer\_size Key\_buffer\_size Binlog\_cache\_size
(2)、写入参数
innodb\_flush\_log\_at\_trx\_commit innodb\_buffer\_pool\_size insert\_buffer\_size innodb\_double\_write innodb\_write\_io\_thread innodb\_flush\_method
(3)、与IO相关的参数
innodb\_write\_io\_threads = 8 innodb\_read\_io\_threads = 8 innodb\_thread\_concurrency = 0 Sync\_binlog Innodb\_flush\_log\_at\_trx\_commit Innodb\_lru\_scan\_depth Innodb\_io\_capacity Innodb\_io\_capacity\_max innodb\_log\_buffer\_size innodb\_max\_dirty\_pages\_pct
(4)、缓存参数以及缓存的适用场景
query cache/query\_cache\_type 并不是所有表都适合使用query cache。造成query cache失效的原因主要是相应的table发生了变更 第一个：读操作多的话看看比例，简单来说，如果是用户清单表，或者说是数据比例比较固定，比如说商品列表，是可以打开的，前提是这些库比较集中，数据库中的实务比较小。 第二个：我们“行骗”的时候，比如说我们竞标的时候压测，把query cache打开，还是能收到qps激增的效果，当然前提示前端的连接池什么的都配置一样。大部分情况下如果写入的居多，访问量并不多，那么就不要打开，例如社交网站的，10%的人产生内容，其余的90%都在消费，打开还是效果很好的，但是你如果是qq消息，或者聊天，那就很要命。 第三个：小网站或者没有高并发的无所谓，高并发下，会看到 很多 qcache 锁 等待，所以一般高并发下，不建议打开query cache
12、你是如何监控你们的数据库的？你们的慢日志都是怎么查询的？
监控的工具有很多，例如zabbix，lepus，我这里用的是lepus
13、你是否做过主从一致性校验，如果有，怎么做的，如果没有，你打算怎么做？
主从一致性校验有多种工具 例如checksum、mysqldiff、pt-table-checksum等
14、表中有大字段X(例如：text类型)，且字段X不会经常更新，以读为为主，请问您是选择拆成子表，还是继续放一起?写出您这样选择的理由
答：拆带来的问题：连接消耗 + 存储拆分空间；不拆可能带来的问题：查询性能； 如果能容忍拆分带来的空间问题,拆的话最好和经常要查询的表的主键在物理结构上放置在一起(分区) 顺序IO,减少连接消耗,最后这是一个文本列再加上一个全文索引来尽量抵消连接消耗 如果能容忍不拆分带来的查询性能损失的话:上面的方案在某个极致条件下肯定会出现问题,那么不拆就是最好的选择
15、MySQL中InnoDB引擎的行锁是通过加在什么上完成(或称实现)的？为什么是这样子的？
答：InnoDB是基于索引来完成行锁 例: select \* from tab\_with\_index where id = 1 for update; for update 可以根据条件来完成行锁锁定,并且 id 是有索引键的列, 如果 id 不是索引键那么InnoDB将完成表锁,,并发将无从谈起
16、如何从mysqldump产生的全库备份中只恢复某一个库、某一张表？
全库备份 \[root\@HE1 ~]# mysqldump -uroot -p --single-transaction -A --master-data=2 >dump.sql 只还原erp库的内容 \[root\@HE1 ~]# mysql -uroot -pMANAGER erp --one-database \<dump.sql 可以看出这里主要用到的参数是--one-database简写-o的参数，极大方便了我们的恢复灵活性 那么如何从全库备份中抽取某张表呢，全库恢复，再恢复某张表小库还可以，大库就很麻烦了，那我们可以利用正则表达式来进行快速抽取，具体实现方法如下： 从全库备份中抽取出t表的表结构 \[root\@HE1 ~]# sed -e'/./{H;\$!d;}' -e 'x;/CREATE TABLE \`t\`/!d;q' dump.sql DROP TABLE IF EXISTS\`t\`; /\*!40101 SET\@saved\_cs\_client =@@character\_set\_client \*/; /\*!40101 SETcharacter\_set\_client = utf8 \*/; CREATE TABLE \`t\` ( \`id\` int(10) NOT NULL AUTO\_INCREMENT, \`age\` tinyint(4) NOT NULL DEFAULT '0', \`name\` varchar(30) NOT NULL DEFAULT '', PRIMARY KEY (\`id\`) ) ENGINE=InnoDBAUTO\_INCREMENT=4 DEFAULT CHARSET=utf8; /\*!40101 SETcharacter\_set\_client = @saved\_cs\_client \*/; 从全库备份中抽取出t表的内容 \[root\@HE1 ~]# grep'INSERT INTO \`t\`' dump.sql INSERT INTO \`t\`VALUES (0,0,''),(1,0,'aa'),(2,0,'bbb'),(3,25,'helei');
18、请简洁地描述下 MySQL 中 InnoDB 支持的四种事务隔离级别名称，以及逐级之间的区别？
(1)、事物的4种隔离级别
读未提交(read uncommitted) 读已提交(read committed) 可重复读(repeatable read) 串行(serializable)
(2)、不同级别的现象
Read Uncommitted:可以读取其他 session 未提交的脏数据。 Read Committed:允许不可重复读取，但不允许脏读取。提交后，其他会话可以看到提交的数据。 Repeatable Read: 禁止不可重复读取和脏读取、以及幻读(innodb 独有)。 Serializable: 事务只能一个接着一个地执行，但不能并发执行。事务隔离级别最高。 不同的隔离级别有不同的现象，并有不同的锁定/并发机制，隔离级别越高，数据库的并发性就越差。
![0](https://note.youdao.com/yws/res/31261/WEBRESOURCE181709096094697 "0")
面试中其他的问题：
1、2 年 MySQL DBA 经验
其中许多有水分，一看到简历自我介绍，说公司项目的时候，会写上 linux 系统维护，mssql server 项目，或者 oracle data gard 项目，一般如果有这些的话，工作在 3 年到 4年的话，他的 2 年 MySQL DBA 管理经验，是有很大的水分的。刚开始我跟领导说，这些 不用去面试了，肯定 mysql dba 经验不足，领导说先面面看看，于是我就面了，结果很多人卡在基础知识这一环节之上，比如： （ 1）有的卡在复制原理之上 （ 2）有的卡在 binlog 的日志格式的种类和分别 （ 3）有的卡在 innodb 事务与日志的实现上。 （ 4）有的卡在 innodb 与 myisam 的索引实现方式的理解上面。 ......... 个人觉得如果有过真正的 2 年 mysql 专职 dba 经验，那么肯定会在 mysql 的基本原理上有所研究，因为很多问题都不得不让你去仔细研究各种细节，而自 己研究过的细节肯定会记忆深刻，别人问起一定会说的头头是道，起码一些最基本的关键参数比如 Seconds\_Behind\_Master 为 60 这个值 60 的准确涵义，面试了 10+的 mysql dba，没有一个说的准确，有的说不知道忘记了，有的说是差了 60 秒，有的说是与主上执行时间延后了 60 秒。
2 、对于简历中写有熟悉 mysql 高可用方案
我一般先问他现在管理的数据库架构是什么，如果他只说出了主从，而没有说任何 ha的方案，那么我就可以判断出他没有实际的 ha 经验。不过这时候也不能就是 断定他不懂mysql 高可用，也许是没有实际机会去使用，那么我就要问 mmm 以及 mha 以及mm+keepalived 等的原理 实现方式以及它们之间的优 势和不足了，一般这种情况下，能说出这个的基本没有。mmm 那东西好像不靠谱，据说不稳定，但是有人在用的，我只在虚拟机上面用过，和mysql-router 比较像，都是指定可写的机器和只读机器。 MHA 的话一句话说不完，可以翻翻学委的笔记
3 、对于简历中写有批量 MySQL 数据库服务器的管理经验
这个如果他说有的话，我会先问他们现在实际线上的 mysql 数据库数量有多少，分多少个节点组，最后问这些节点组上面的 slow log 是如何组合在一起来统计分析的。如果这些他都答对了，那么我还有一问，就是现在手上有 600 台数据库，新来的机器， Mysql 都 安装好了，那么你如 何在最快的时间里面把这 600 台 mysql 数据库的 mysqld 服务启动起来。这个重点在于最快的时间，而能准确回答出清晰思路的只有 2 个人。slow log 分析：可以通过一个管理服务器定时去各台 MySQL 服务器上面 mv 并且 cp slowlog， 然后分析入库，页面展示。最快的时间里面启动 600 台服务器： 肯定是多线程。 可以用 pssh， ansible 等多线程批量管理服务器的工具
4 、对于有丰富的 SQL 优化的经验
首先问 mysql 中 sql 优化的思路，如果能准备说出来， ok，那么我就开始问 explain的各种参数了，重点是 select\_type， type， possible\_key, ref,rows,extra 等参数的各种 值的含义，如果他都回答正确了，那么我再问 file sort 的含义以及什么时候会出现这个分析结果，如果这里他也回答对了，那么我就准备问 profile 分析了，如果这里他也答对了，那么我就会再问一个问 题， 那是曾经 tx 问我的让我郁闷不已的问题，一个 6 亿的表 a，一个 3 亿的表 b，通过外间 tid 关联，你如何最快的查询出满足条件的第 50000 到第 50200中的这 200 条数据记录。 Explain 在上面的题目中有了，这里就不说了。如何最快的查询出满足条件的第 50000 到第 50200 中的这 200 条数据记录？这个我想不出来！ 关于 explain 的各种参数，请参考： <http://blog.csdn.net/mchdba/article/details/9190771>
5、对于有丰富的数据库设计经验
这个对于数据库设计我真的没有太多的经验，我也就只能问问最基础的， mysql 中varchar(60) 60 是啥含义， int(30)中 30 是啥含义？ 如果他都回答对了，那么我就问 mysql中为什么要这么设计呢？ 如果他还回答对了，我就继续问 int(20)存储的数字的上限和下限是多少？这个问题难道了全部的 mysql dba 的应聘者，不得不佩服提出这个问题的金总的睿智啊，因为这个问题回答正确了， 那么他确实认认真真地研究了 mysql 的设计中关于字段类型的细节。至 于丰富的设计数据库的经验，不用着急，这不我上面还有更加厉害的 dba吗，他会搞明白的，那就跟我无关了。 varchar(60)的 60 表示最多可以存储 60 个字符。int(30)的 30 表示客户端显示这个字段的宽度。 为何这么设计？说不清楚，请大家补充 。 int(20)的上限为 2147483647(signed)或者4294967295(unsigned)。
6 、关于 mysql 参数优化的经验
首先问他它们线上 mysql 数据库是怎么安装的，如果说是 rpm 安装的，那么我就直接问调优参数了，如果是源码安装的，那么我就要问编译中的一些参数了，比如 my.cnf 以及存储引擎以及字符类型等等。然后从以下几个方面问起： （ 1） mysql 有哪些 global 内存参数，有哪些 local 内存参数。 Global: innodb\_buffer\_pool\_size/innodb\_additional\_mem\_pool\_size/innodb\_log\_buffer\_size/key\_buffer\_size/query\_cache\_size/table\_open\_cache/table\_definition\_cache/thread\_cache\_size Local: read\_buffer\_size/read\_rnd\_buffer\_size/sort\_buffer\_size/join\_buffer\_size/binlog\_cache\_size/tmp\_table\_size/thread\_stack/bulk\_insert\_buffer\_size （ 2） mysql 的写入参数需要调整哪些？重要的几个写参数的几个值得含义以及适用场景， 比如 innodb\_flush\_log\_at\_trx\_commit 等。 (求补充) sync\_binlog 设置为 1，保证 binlog 的安全性。 innodb\_flush\_log\_at\_trx\_commit： 0：事务提交时不将 redo log buffer 写入磁盘(仅每秒进行 master thread 刷新，安全 性最差，性能最好) 1：事务提交时将 redo log buffer 写入磁盘(安全性最好，性能最差， 推荐生产使用) 2：事务提交时仅将 redo log buffer 写入操作系统缓存(安全性和性能都居中，当 mysql宕机但是操作系统不宕机则不丢数据，如果操作系统宕机，最多丢一秒数据) innodb\_io\_capacity/innodb\_io\_capacity\_max：看磁盘的性能来定。如果是 HDD 可以设置为 200-几百不等。如果是 SSD，推荐为 4000 左右。 innodb\_io\_capacity\_max 更大一些。 innodb\_flush\_method 设置为 O\_DIRECT。 （ 3） 读取的话，那几个全局的 pool 的值的设置，以及几个 local 的 buffer 的设置。 Global: innodb\_buffer\_pool\_size:设置为可用内存的 50%-60%左右，如果不够，再慢慢上调。 innodb\_additional\_mem\_pool\_size：采用默认值 8M 即可。 innodb\_log\_buffer\_size:默认值 8M 即可。 key\_buffer\_size\:myisam 表需要的 buffer size，选择基本都用 innodb，所以采用默认的 8M 即可。 Local: join\_buffer\_size： 当 sql 有 BNL 和 BKA 的时候，需要用的 buffer\_size(plain index scans, range index scans 的时候可能也会用到)。默认为 256k，建议设置为 16M-32M。 read\_rnd\_buffer\_size：当使用 mrr 时，用到的 buffer。默认为 256k，建议设置为16-32M。 read\_buffer\_size:当顺序扫描一个 myisam 表，需要用到这个 buffer。或者用来决定memory table 的大小。或者所有的 engine 类型做如下操作：order by 的时候用 temporaryfile、SELECT INTO … OUTFILE 'filename' 、For caching results of nested queries。默认为 128K，建议为 16M。 sort\_buffer\_size： sql 语句用来进行 sort 操作(order by,group by)的 buffer。如果 buffer 不够，则需要建立 temporary file。如果在 show global status 中发现有大量的 Sort\_merge\_passes 值，则需要考虑调大 sort\_buffer\_size。默认为 256k，建议设置为 16-32M。 binlog\_cache\_size： 表示每个 session 中存放 transaction 的 binlog 的 cache size。默认 32K。一般使用默认值即可。如果有大事务，可以考虑调大。 thread\_stack： 每个进程都需要有，默认为 256K，使用默认值即可。 （ 4） 还有就是著名的 query cache 了，以及 query cache 的适用场景了，这里有一个陷阱， 就是高并发的情况下，比如双十一的时候， query cache 开还是不开，开了怎么保证高并发，不开又有何别的考虑？建议关闭，上了性能反而更差。
7、关于熟悉 mysql 的锁机制
gap 锁， next-key 锁，以及 innodb 的行锁是怎么实现的，以及 myisam 的锁是怎么实现的等 Innodb 的锁的策略为 next-key 锁，即 record lock+gap lock。是通过在 index 上加 lock 实现的，如果 index 为 unique index，则降级为 record lock,如果是普通 index，则为 next-key lock，如果没有 index，则直接锁住全表。 myisam 直接使用全表扫描。
8、 关于熟悉 mysql 集群的
我就问了 ndbd 的节点的启动先后顺序，再问配置参数中的内存配置几个重要的参数，再问 sql 节点中执行一个 join 表的 select 语句的实现流程是怎么走的？ ok，能回答的也只有一个。 关于 mysql 集群入门资料，请参考： <http://write.blog.csdn.net/postlist/1583151/all>
9、 关于有丰富的备份经验的
就问 mysqldump 中备份出来的 sql，如果我想 sql 文件中，一行只有一个 insert .... value()的话，怎么办？如果备份需要带上 master 的复制点信息怎么办？或者 xtrabackup 中如何 做到实时在线备份的？以及 xtrabackup 是如何做到带上 master 的复制点的信息的？ 当前 xtrabackup 做增量备份的时候有何缺陷？能全部回答出来的没有一个，不过没有关系，只要回答出 mysqldump 或者xtrabackup 其中一个的也可以。 1). --skip-extended-insert 2). --master-date=1 3). 因为 xtrabackup 是多线程，一个线程不停地在拷贝新产生的 redo 文件，另外的线程去备份数据库，当所有表空间备份完成的时候，它会执行 flush table with read lock 操作 锁住所有表，然后执行 show master status; 接着执行 flush engine logs; 最后解锁表。执行 show master status; 时就能获取到 mster 的复制点信息，执行 flush engine logs 强制把redo 文件刷新到磁盘。 4). xtrabackup 增量备份的缺陷不了解，在线上用 xtrabackup 备份没有发现什么缺陷
10 、关于有丰富的线上恢复经验的
就问你现在线上数据量有多大，如果是 100G，你用 mysqldump 出来要多久，然后 mysql进去又要多久，如果互联网不允许延时的话，你又怎么做到 恢复单张表的时候保证 nagios不报警。如果有人说 mysqldump 出来 1 个小时就 ok 了，那么我就要问问他 db 服务器是 啥配置了，如果他说 mysql 进去 50 分钟搞定了，那么我也要问问他 db 机器啥配置了，如果是普通的吊丝 pc server，那么真实性，大家懂得。然后如果你用 xtrabackup 备份要多久，恢复要多久，大家都知道 copy-back 这一步要很久，那么你有没有办法对这一块优化。
一、现有表结构如下图
TABLENAME\:afinfo
| Id | name | age | birth      | sex | memo |    |    |
| :- | :--- | :-- | :--------- | :-- | :--: | :- | :- |
| 1  | 徐洪国  | 37  | 1979-03-23 | 男   |  高中  |    |    |
| 2  | 王芳   | 26  | 1988-02-06 | 女   |  本科  |    |    |
| 3  | 李达康  | 24  | 1990-04-02 | 男   |  硕士  |    |    |
| 4  | 侯亮平  | 30  | 1984-09-12 | 女   |  博士  |    |    |
| 5  | 徐夫子  | 27  | 1987-12-30 | 男   |  大专  |    |    |
| 6  | ……   | ……  | ……         | ……  |  ……  |    |    |
1）请编写sql语句对年龄进行升序排列
mysql> select \* from afinfo -> order by birth;
2）请编写sql语句查询对“徐”姓开头的人员名单
mysql> select \* from afinfo -> where name like '徐%';
3）请编写sql语句修改“李达康”的年龄为“45”
mysql> update afinfo -> set age=45 -> where name='李达康';
4）请编写sql删除王芳这表数据记录。
mysql> delete from afinfo -> where name='王芳';
二、现有以下学生表和考试信息表
学生信息表（student）
| 姓名name | 学号code |
| :----- | :----- |
| 张三     | 001    |
| 李四     | 002    |
| 马五     | 003    |
| 甲六     | 004    |
考试信息表(exam)
| 学号code | 学科subject | 成绩score |
| :----- | :-------- | :------ |
| 001    | 数学        | 80      |
| 002    | 数学        | 75      |
| 001    | 语文        | 90      |
| 002    | 语文        | 80      |
| 001    | 英语        | 90      |
| 002    | 英语        | 85      |
| 003    | 英语        | 80      |
| 004    | 英语        | 70      |
1）查询出所有学生信息，SQL怎么编写？
mysql> select \* from student;
2）新学生小明，学号为005，需要将信息写入学生信息表，SQL语句怎么编写？
mysql> insert into student values('小明','005');
3）李四语文成绩被登记错误，成绩实际为85分，更新到考试信息表中，SQL语句怎么编写？
mysql> update exam,student -> set exam.score=85 -> where student.code=exam.code -> and student.name='李四' -> and exam.subject='语文';
4）查询出各科成绩的平均成绩，显示字段为：学科、平均分，SQL怎么编写？
mysql> select subject 学科,avg(score) 平均分 -> from exam -> group by subject;
5）查询出所有学生各科成绩，显示字段为：姓名、学号、学科、成绩，并以学号与学科排序，没有成绩的学生也需要列出，SQL怎么编写？
mysql> select s.name 姓名,s.code 学号,e.subject 学科,e.score 成绩 -> from student s -> left join exam e -> on s.code=e.code -> order by 学号,学科;
6）查询出单科成绩最高的，显示字段为：姓名、学号、学科、成绩，SQL怎么编写？
mysql> select s.name 姓名,s.code 学号,e.subject 学科,e.score 成绩 -> from student s -> join exam e -> on s.code=e.code -> where (e.subject,e.score) in -> ( -> select subject,max(score) -> from exam -> group by subject -> );
7）列出每位学生的各科成绩，要求输出格式：姓名、学号、语文成绩、数学成绩、英语成绩，SQL怎么编写？
mysql> select s.name 姓名,s.code 学号, -> sum(if(e.subject='语文',e.score,0)) 语文成绩, -> sum(if(e.subject='数学',e.score,0)) 数学成绩, -> sum(if(e.subject='英语',e.score,0)) 英语成绩 -> from student s -> left join exam e -> on s.code=e.code -> group by s.name,s.code;
 
 
三、根据要求写出SQL语句
表结构：
student(s\_no,s\_name,s\_age,sex) 学生表
teacher(t\_no,t\_name) 教师表
course(c\_no,c\_name,t\_no) 课程表
sc(s\_no,c\_no,score) 成绩表
基础表数据(个人铺的)：根据题目需要自行再铺入数据
mysql> select \* from student; +------+--------+-------+------+ | s\_no | s\_name | s\_age | sex | +------+--------+-------+------+ | 1001 | 张三 | 23 | 男 | | 1002 | 李四 | 19 | 女 | | 1003 | 马五 | 20 | 男 | | 1004 | 甲六 | 17 | 女 | | 1005 | 乙七 | 22 | 男 | +------+--------+-------+------+ 5 rows in set (0.00 sec) mysql> select \* from teacher; +------+--------+ | t\_no | t\_name | +------+--------+ | 2001 | 叶平 | | 2002 | 赵安 | | 2003 | 孙顺 | | 2004 | 刘六 | +------+--------+ 4 rows in set (0.00 sec) mysql> select \* from course; +------+--------------+------+ | c\_no | c\_name | t\_no | +------+--------------+------+ | 001 | 企业管理 | 2001 | | 002 | 马克思 | 2002 | | 003 | UML | 2003 | | 004 | 数据库 | 2004 | +------+--------------+------+ 4 rows in set (0.05 sec) mysql> select \* from sc; +------+------+-------+ | s\_no | c\_no | score | +------+------+-------+ | 1001 | 001 | 93 | | 1001 | 002 | 86 | | 1001 | 004 | 92 | | 1002 | 003 | 100 | | 1003 | 001 | 93 | | 1003 | 004 | 99 | | 1004 | 002 | 75 | | 1004 | 003 | 59 | | 1002 | 002 | 50 | | 1005 | 003 | 60 | | 1005 | 002 | 60 | +------+------+-------+ 11 rows in set (0.00 sec)
1、查询“001”课程比“002”课程成绩高的所有学生的学号。
mysql> select a.s\_no -> from -> 　　(select s\_no,score from sc where c\_no='001') a, -> 　　(select s\_no,score from sc where c\_no='002') b -> where a.score>b.score -> and a.s\_no=b.s\_no;
2、查询平均成绩大于60分的同学的学号和平均成绩。
mysql> select s\_no,avg(score) -> from sc -> group by s\_no -> having avg(score)>60;
3、查询所有同学的学号、姓名、选课数、总成绩。
mysql> select student.s\_no,student.s\_name,count(sc.c\_no),sum(sc.score) -> from student -> left join sc -> on student.s\_no=sc.s\_no -> group by student.s\_no,student.s\_name;
4、查询姓李的老师的个数。
mysql> select count(\*) -> from teacher -> where t\_name like '李%';
5、查询没学过“叶平”老师课的同学的学号、姓名
mysql> select student.s\_no,student.s\_name -> from student -> where student.s\_no not in -> ( -> 　　select distinct(sc.s\_no) -> 　　from sc -> 　　join course -> 　　on course.c\_no=sc.c\_no -> 　　join teacher -> 　　on teacher.t\_no=course.t\_no -> 　　where t\_name='叶平' -> );
6、查询学过“001”并且也学过编号“002”课程的同学的学号、姓名。
mysql> select student.s\_no,student.s\_name -> from student -> join sc -> on sc.s\_no=student.s\_no -> where c\_no='001' -> and exists -> (select \* from sc where sc.s\_no=student.s\_no and c\_no='002');
7、查询学过“叶平”老师所教的所有课的同学的学号、姓名。
mysql> select student.s\_no,student.s\_name -> from student -> join sc -> on sc.s\_no=student.s\_no -> join course -> on course.c\_no=sc.c\_no -> join teacher -> on teacher.t\_no=course.t\_no -> where teacher.t\_name='叶平';
8、查询课程编号“002”的成绩比课程编号“001”课程低的所有同学的学号、姓名。
mysql> select student.s\_no,student.s\_name -> from student -> join (select s\_no,score from sc where c\_no='001') a -> on a.s\_no=student.s\_no -> join (select s\_no,score from sc where c\_no='002') b -> on b.s\_no=student.s\_no -> where a.s\_no=b.s\_no -> and a.score>b.score;
9、查询所有课程成绩小于60分的同学的学号、姓名。
mysql> select student.s\_no,student.s\_name -> from student -> join sc -> on sc.s\_no=student.s\_no -> where sc.score<60;
10、查询没有学全所有课的同学的学号、姓名。
mysql> select student.s\_no 学号,student.s\_name 姓名 -> from student -> left join sc -> on sc.s\_no=student.s\_no -> group by student.s\_no,student.s\_name -> having count(\*) < ( -> 　　select count(\*) from course);
11、查询至少有一门课与学号为“1001”的同学所学相同的同学的学号和姓名。
mysql> select student.s\_no,student.s\_name -> from student -> join sc -> on sc.s\_no=student.s\_no -> where sc.c\_no in -> ( -> 　　select c\_no -> 　　from sc -> 　　where s\_no='1001' -> ) -> and student.s\_no != '1001';
12、查询至少学过学号为“1001”同学所有一门课的其他同学学号和姓名。
mysql> select distinct sc.s\_no,s\_name -> from student,sc -> where student.s\_no=sc.s\_no -> and c\_no in -> (select c\_no from sc where s\_no=1001) -> and student.s\_no != '1001';
13、把“sc”表中“叶平”老师叫的课的成绩都更改为此课程的平均成绩。
mysql> set @ye\_avg\_score= -> ( -> 　　select avg(score) -> 　　from -> ( -> 　　　　select sc.score -> 　　　　from sc -> 　　　　join course -> 　　　　on course.c\_no=sc.c\_no -> 　　　　join teacher -> 　　　　on teacher.t\_no=course.t\_no -> 　　　　where teacher.t\_name='叶平' -> 　　) azi -> ); mysql> update sc -> set score=@ye\_avg\_score -> where c\_no in -> ( -> 　　select c\_no -> 　　from course -> join teacher -> 　　on teacher.t\_no=course.t\_no -> where teacher.t\_name='叶平' -> );
14、查询和“1002”号同学学习的课程完全相同的其他同学学号和姓名。
mysql> select s\_no,s\_name -> from student -> where s\_no in ( -> 　　select distinct s\_no from sc where c\_no in -> 　　　　(select c\_no from sc where s\_no='1002') -> group by s\_no -> having count(\*)=(select count(\*) from sc where s\_no='1002') -> and s\_no<>'1002' -> );
15、删除学习“叶平”老师课的sc表记录。
mysql> set @ye\_c\_no=(select c\_no from course,teacher where course.t\_no=teacher.t\_no and t\_name=’叶平’); mysql> delete from sc -> where c\_no=@ye\_c\_no;
16、向sc表中插入一些记录，这些记录要求符合一下条件：没有上过编号“003”课程的同学学号
mysql> select distinct s\_no from sc -> where c\_no not in (select c\_no from sc where c\_no='003') -> and s\_no not in (select s\_no from sc where c\_no='003');
17、查询各科成绩最高和最低的分：以如下形式显示：课程ID，最高分，最低分。
mysql> select c\_no 课程ID,max(score) 最高分,min(score) 最低分 -> from sc -> group by c\_no;
18、按照平均成绩从高到低显示所有学生的“数据库”、“企业管理”、“马克思”三门的课程成绩，按如下形式显示：学生ID,数据库，企业管理，马克思，有效课程数，有效平均分。
mysql> select sc.s\_no 学号, -> max(case c\_name when '数据库' then score end) 数据库, -> max(case c\_name when '企业管理' then score end) 企业管理, -> max(case c\_name when '马克思' then score end) 马克思, -> count(sc.s\_no) 有效课程数, -> avg(ifnull(score,0)) 有效平均分 -> from sc,course -> where sc.c\_no=course.c\_no -> group by sc.s\_no -> order by 6 desc;
19、查询不同老师所教不同课程平均分从高到低显示。
mysql> select c\_no,avg(score) -> from sc -> group by c\_no -> order by 2 desc;
20、查询如下课程成绩第3名到第6名的学生成绩单：企业管理（001）、马克思（002），UML（003），数据库（004）
mysql> (select student.s\_no,s\_name,c\_no,score from student,sc where student.s\_no=sc.s\_no and c\_no=001 order by score desc limit 2,4) -> union -> (select student.s\_no,s\_name,c\_no,score from student,sc where student.s\_no=sc.s\_no and c\_no=002 order by score desc limit 2,4) -> union -> (select student.s\_no,s\_name,c\_no,score from student,sc where student.s\_no=sc.s\_no and c\_no=003 order by score desc limit 2,4) -> union -> (select student.s\_no,s\_name,c\_no,score from student,sc where student.s\_no=sc.s\_no and c\_no=004 order by score desc limit 2,4);
21、统计各科成绩，各分数段人数：课程ID，课程名称，【100-85】，【85-70】，【70-60】，【<60】
mysql> select course.c\_no 课程ID,c\_name 课程名称, -> count(case when score>85 and score<=100 then score end) '\[85-100]', -> count(case when score>70 and score<=85 then score end) '\[70-85]', -> count(case when score>=60 and score<=70 then score end) '\[60-70]', -> count(case when score<60 then score end) '\[<60]' -> from course,sc -> where course.c\_no=sc.c\_no -> group by course.c\_no,c\_name;
22、查询每门课程被选修的学生数
mysql> select c\_no 课程ID,count(s\_no) 学生人数 -> from sc -> group by c\_no;
23、查询出只选修了一门课程的全部学生的学号和姓名
mysql> select student.s\_no 学号,student.s\_name 姓名,count(c\_no) 选课数 -> from student -> join sc -> on sc.s\_no=student.s\_no -> group by student.s\_no,student.s\_name -> having count(c\_no)=1;
24、查询同名同性学生名单，并统计同名人数。
mysql> select s\_name 姓名,count(\*) -> from student -> group by s\_name -> having count(\*)>1;
25、查询1994年出生的学生名单（注：student表中sage列的类型是datatime）
mysql> select \* from student -> where year(curdate())-s\_age='1994';
26、查询每门课程的平均成绩，结果按平均成绩升序排列，平均成绩相同时，按课程号降序排列。
mysql> select c\_no 课程ID,avg(score) -> from sc -> group by c\_no -> order by avg(score) asc,c\_no desc;
27、查询平均成绩都大于85的所有学生的学号，姓名和平均成绩
mysql> select student.s\_no 学号,s\_name 姓名,avg(score) 平均成绩 -> from student,sc -> where student.s\_no=sc.s\_no -> group by student.s\_no,s\_name -> having avg(score)>85;
28、查询课程名称为“数据库”且分数低于60的学生姓名和分数
mysql> select s\_name 学生姓名,score 分数 -> from student,sc,course -> where student.s\_no=sc.s\_no and sc.c\_no=course.c\_no -> and c\_name='数据库' -> and score<60;
29、查询所有学生的选课情况
mysql> select student.s\_no 学号,student.s\_name 姓名,group\_concat(c\_no) 所选课程ID -> from student,sc -> where student.s\_no=sc.s\_no -> group by student.s\_no,student.s\_name;
30、查询任何一门课程成绩在90分以上的姓名、课程名称和分数。
mysql> select s\_name 姓名,c\_name 课程名称,score 分数 -> from student,sc,course -> where student.s\_no=sc.s\_no and sc.c\_no=course.c\_no -> and score > 90 -> order by s\_name;
31、查询不及格的课程，并按课程号从大到小排序。
mysql> select s\_no 学生ID,c\_no 不及格课程ID -> from sc -> where score<60 -> order by c\_no desc;
32、求选修了课程的学生人数。
mysql> select count(\*) 已选课程人数 -> from -> ( -> select distinct(sc.s\_no) from student -> left join sc -> 　　on sc.s\_no=student.s\_no -> 　　where c\_no is not null -> ) as ayixuan;
33、查询选修了“冯老师”所授课程的学生中，成绩最高的学生姓名及其成绩。
mysql> select s\_name 学生姓名,score 成绩 -> from student,sc,course,teacher -> where student.s\_no=sc.s\_no and sc.c\_no=course.c\_no and course.t\_no=teacher.t\_no -> and t\_name='冯老师' -> order by score -> limit 1;
34、查询各个课程及相应的选修人数。
mysql> select course.c\_no 课程ID,course.c\_name 课程名,count(s\_no) 选修人数 -> from course -> join sc -> on course.c\_no=sc.c\_no -> group by course.c\_no,course.c\_name;
35、查询不同课程成绩相同的学生的学号、课程号、学生成绩。
mysql> select a.s\_no 学号,group\_concat(a.c\_no) 课程号,a.score 学生成绩 -> from sc a,sc b -> where a.score=b.score and a.c\_no<>b.c\_no -> group by a.s\_no,a.score;
36、查询每门课程最好的前两名。
mysql> select a.s\_no,a.c\_no,a.score -> from sc a -> where -> 　　(select count(distinct score) from sc b where b.c\_no=a.c\_no and b.score>=a.score)<=2 -> order by a.c\_no,a.score desc;
37、检索至少选修两门课程的学生学号。
mysql> select s\_no 学生学号 -> from sc -> group by s\_no -> having count(\*)>=2;
38、查询全部学生都选修的课程的课程号和课程名。
mysql> select course.c\_no 课程号,c\_name 课程名 -> from course -> join sc on course.c\_no=sc.c\_no -> join ( -> select c\_no,count(s\_no) from sc group by c\_no -> having count(s\_no)=(select count(\*) from student)) as a -> on course.c\_no=a.c\_no;
39、查询没有学过“叶平”老师讲授的任一门课程的学号姓名。
mysql> select student.s\_no 学号,student.s\_name 姓名 -> from student -> join sc -> on sc.s\_no=student.s\_no -> where sc.s\_no not in -> ( -> 　　select s\_no -> 　　from course,teacher,sc -> 　　where course.t\_no=teacher.t\_no and sc.c\_no=course.c\_no -> 　　and teacher.t\_name='叶平' -> );
40、查询两门以上不及格课程的同学的学号及其平均成绩。
mysql> select s\_no 学号,avg(score) 平均成绩 -> from sc -> where s\_no in ( -> 　　select s\_no from sc -> 　　where score<60 -> group by s\_no -> having count(\*)>2) -> group by s\_no;
 
 
四、根据表1和表2的信息写出SQL
表1：books书表b
| 主码 | 列标题   | 列名        | 数据类型    | 宽度 | 小数位数 | 是否空值 |
| :- | :---- | :-------- | :------ | :- | :--- | :--- |
| P  | 书号    | TNO       | char    | 15 |      | no   |
|    | 书名    | TNAME     | varchar | 50 |      | no   |
|    | 作者姓名  | TAUTHOR   | varchar | 8  |      | no   |
|    | 出版社编号 | CNO       | char    | 5  |      | yes  |
|    | 书类    | TCATEGORY | varchar | 20 |      | yes  |
|    | 价格    | TPRICE    | numeric | 8  | 2    | yes  |
表2：book\_concern出版社表C
| 主码 | 列标题   | 列名     | 数据类型    | 宽度 | 小数位数 | 是否空值 |
| :- | :---- | :----- | :------ | :- | :--- | :--- |
| p  | 出版社编号 | CNO    | char    | 5  |      | NO   |
|    | 出版社名称 | CNAME  | varchar | 20 |      | NO   |
|    | 出版社电话 | CPHONE | varchar | 15 |      | YES  |
|    | 出版社城市 | CCITY  | varchar | 20 |      | YES  |
1、查询出版过“计算机”类图书的出版社编号（若一个出版社出版过多部“计算机”类图书，则在查询结果中该出版社编号只显示一次）
mysql> select distinct cno 出版社编号 -> from books -> where tcategory='计算机';
2、查询南开大学出版社的“经济”类或“数学”类图书的信息。
mysql> select \* -> from books,book\_concern -> where books.cno=book\_concern.cno -> and cname='南开大学出版社' -> and tcategory in ('数学','经济');
3、查询编号为“20001”的出版社出版图书的平均价格。
mysql> select cno 出版社编号,avg(tprice) 图书均价 -> from books -> where cno='20001';
4、查询至少出版过20套图书的出版社，在查询结果中按出版社编号的升序顺序显示满足条件的出版社编号、出版社名称和每个出版社出版的图书套数。
mysql> select b.cno 出版社编号,cname 出版社名称,count(\*) 图书套数 -> from books b,book\_concern c -> where b.cno=c.cno -> group by b.cno,cname -> having count(\*)>20 -> order by b.cno;
5、查询比编号为“20001”的出版社出版图书套数多的出版社编号。
mysql> select cno 出版社编号 -> from books -> group by cno -> having count(\*)>(select count(\*) from books where cno='20001');
 
 
五、一道关于group by的经典面试题：
有一张shop表如下，有三个字段article、author、price，选出每个author的price最高的记录（要包含所有字段）。
mysql> select \* from shop; +---------+--------+-------+ | article | author | price | +---------+--------+-------+ | 0001 | B | 9.95 | | 0002 | A | 10.99 | | 0003 | C | 1.69 | | 0004 | B | 19.95 | | 0005 | A | 6.96 | +---------+--------+-------+ 5 rows in set (0.02 sec)
1、使用相关子查询
mysql> select article,author,price -> from shop s1 -> where price = ( -> select max(s2.price) -> from shop s2 -> where s1.author=s2.author);
2、使用非相关子查询
mysql> select article,s1.author,s1.price -> from shop s1 -> join ( -> select author,max(price) price -> from shop -> group by author) s2 -> on s1.author=s2.author and s1.price=s2.price;
3、使用left join语句（毕竟子查询在有些时候，效率会很低）
mysql> select s1.article,s1.author,s1.price -> from shop s1 -> left join shop s2 -> on s1.author=s2.author and s1.price\<s2.price -> where s2.article is null;
原理分析：当s1.price是当前author的最大值时，就没有s2.price比它还要大，所以此时s2的rows的值都会是null。
 
 
六、用一条SQL语句查询出每门课都大于80分的学生
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
mysql> select year, -> sum(if(month=1,amount,0)) M1, -> sum(if(month=2,amount,0)) M2, -> sum(if(month=3,amount,0)) M3, -> sum(if(month=4,amount,0)) M4 -> from NO\_7 -> group by year;
 
 
八、已知表A =login\_ftp记录着登录FTP服务器的计算机IP、时间等字段信息
请写出SQL查询表A中存在ID重复三次以上的记录。
mysql> select IP from login\_ftp -> group by IP -> having count(\*)>3;
 
 
九、创建存储过程，要求具有游标(遍历表)示例
CREATE PROCEDURE curdemo() BEGIN DECLARE done INT DEFAULT FALSE; DECLARE a CHAR(16); DECLARE b, c INT; DECLARE cur1 CURSOR FOR SELECT id,data FROM test.t1; DECLARE cur2 CURSOR FOR SELECT i FROM test.t2; DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE; OPEN cur1; OPEN cur2; read\_loop: LOOP FETCH cur1 INTO a, b; FETCH cur2 INTO c; IF done THEN LEAVE read\_loop; END IF; IF b < c THEN INSERT INTO test.t3 VALUES (a,b); ELSE INSERT INTO test.t3 VALUES (a,c); END IF; END LOOP; CLOSE cur1; CLOSE cur2; END;

# Postgresql

## PGPool

## 执行计划
[PostgreSQL](https://so.csdn.net/so/search?q=PostgreSQL\&spm=1001.2101.3001.7020)为每个收到查询产生一个查询计划。 选择正确的计划来匹配查询结构和数据的属性对于好的性能来说绝对是最关键的，因此系统包含了一个复杂的规划器来尝试选择好的计划。 你可以使用EXPLAIN命令察看规划器为任何查询生成的查询计划。
执行计划命令
EXPLAIN \[ ( option \[, ...] ) ] statement\
EXPLAIN \[ ANALYZE ] \[ VERBOSE ] statement
这里 option可以是：\
ANALYZE \[ boolean ]\
VERBOSE \[ boolean ]\
COSTS \[ boolean ]\
BUFFERS \[ boolean ]\
TIMING \[ boolean ]\
SUMMARY \[ boolean ]\
FORMAT { TEXT | XML | JSON | YAML }
ANALYZE，执行命令并且显示实际的运行时间和其他统计信息。这个参数默认被设置为FALSE。\
VERBOSE，显示关于计划的额外信息。特别是：计划树中每个结点的输出列列表、模式限定的表和函数名、总是把表达式中的变量标上它们的范围表别名，以及总是打印统计信息被显示的每个触发器的名称。这个参数默认被设置为FALSE。\
COSTS，包括每一个计划结点的估计启动和总代价，以及估计的行数和每行的宽度。这个参数默认被设置为TRUE。\
BUFFERS，包括缓冲区使用的信息。特别是：共享块命中、读取、标记为脏和写入的次数、本地块命中、读取、标记为脏和写入的次数、以及临时块读取和写入的次数。只有当ANALYZE也被启用时，这个参数才能使用。它的默认被设置为FALSE。\
TIMING，在输出中包括实际启动时间以及在每个结点中花掉的时间。只有当ANALYZE也被启用时，这个参数才能使用。它的默认被设置为TRUE。\
SUMMARY，在查询计划之后包含摘要信息（例如，总计的时间信息）。当使用ANALYZE 时默认包含摘要信息，但默认情况下不包含摘要信息，但可以使用此选项启用摘要信息。 使用EXPLAIN EXECUTE中的计划时间包括从缓存中获取计划所需的时间 以及重新计划所需的时间（如有必要）。\
FORMAT，指定输出格式，可以是 TEXT、XML、JSON 或者 YAML。非文本输出包含和文本输出格式相同的信息，但是更容易被程序解析。这个参数默认被设置为TEXT。\
statement，你想查看其执行计划的任何SELECT、INSERT、UPDATE、DELETE、VALUES、EXECUTE、DECLARE、CREATE TABLE AS或者CREATE MATERIALIZED VIEW AS语句。
常用组合
* 一般查询
    \--在不需要真正执行sql时，需把analyze去掉
    explain analyze select … ;
* 查询缓存及详细信息
    \--在不需要真正执行sql时，需把analyze去掉
    explain (analyze,verbose,buffers) select … ;
更多关于大数据 PostgreSQL 系列的学习文章，请参阅：PostgreSQL 数据库，本系列持续更新中。
执行计划解读
db\_test=# explain (analyze,verbose,buffers) select \* from db\_test.t\_test;\
QUERY PLAN\
\-----------------------------------------------------------------------------------------------------------------\
Seq Scan on db\_test.t\_test(cost=0.00..22.32 rows=1032 width=56) (actual time=0.060..1.167 rows=1032 loops=1)\
Output: c\_bh, n\_dm, c\_ah\
Buffers: shared read=12\
Planning Time: 0.283 ms\
Execution Time: 1.730 ms
解读
cost=0.00..22.32，0.00代表启动成本，22.32代表返回所有数据的成本。\
rows=1032：表示返回多少行。\
width=56，表示每行平均宽度。\
actual time=0.060..1.167，实际花费的时间。\
loops=1，循环的次数\
Output，输出的字段名\
Buffers，缓冲命中数\
shared read，代表数据来自disk(磁盘)而并非cache(缓存)，当再次执行sql，会发现变成shared hit，说明数据已经在cache中\
Planning Time，生成执行计划的时间\
Execution Time，执行执行计划的时间

####
PostgreSQL中数据扫描方式很多，常见有如下几种
1、seq scan
顺序扫描
db\_test=# explain (analyze,verbose,buffers) select \* from db\_test.t\_ms\_aj;\
QUERY PLAN\
\-----------------------------------------------------------------------------------------------------------------\
Seq Scan on db\_test.t\_ms\_aj (cost=0.00..22.32 rows=1032 width=56) (actual time=0.060..1.167 rows=1032 loops=1)\
Output: c\_bh, n\_dm, c\_ah\
Buffers: shared hit=12\
Planning Time: 0.283 ms\
Execution Time: 1.730 ms
2、Index Only Scan
按索引顺序扫描，通过VM减少回表，绝大数情况下不需要回表。
db\_test=# explain (analyze,verbose,buffers) select c\_bh from db\_test.t\_ms\_aj where c\_bh='db22f5a4f828d0f4eaa0b70679a4d637';\
QUERY PLAN\
\------------------------------------------------------------------------------------------------------------------------------------\
Index Only Scan using t\_ms\_aj\_pkey on db\_test.t\_ms\_aj (cost=0.28..8.29 rows=1 width=33) (actual time=0.079..0.081 rows=1 loops=1)\
Output: c\_bh\
Index Cond: (t\_ms\_aj.c\_bh = 'db22f5a4f828d0f4eaa0b70679a4d637'::bpchar)\
Heap Fetches: 1\
Buffers: shared hit=3\
Planning Time: 0.139 ms\
Execution Time: 0.166 ms
3、Index Scan
 按索引顺序扫描，并回表。
db\_test=# explain (analyze,buffers) select \* from db\_test.t\_ms\_aj where c\_bh='db22f5a4f828d0f4eaa0b70679a4d637';\
QUERY PLAN\
\-----------------------------------------------------------------------------------------------------------------------\
Index Scan using t\_ms\_aj\_pkey on t\_ms\_aj (cost=0.28..8.29 rows=1 width=56) (actual time=0.890..0.894 rows=1 loops=1)\
Index Cond: (c\_bh = 'db22f5a4f828d0f4eaa0b70679a4d637'::bpchar)\
Buffers: shared hit=3\
Planning Time: 0.376 ms\
Execution Time: 1.136 ms
4、[Bitmap](https://so.csdn.net/so/search?q=Bitmap\&spm=1001.2101.3001.7020) Index Scan+Bitmap Heap Scan
按索引取得的BLOCKID排序，然后根据BLOCKID顺序回表扫描，然后再根据条件过滤掉不符合条件的记录。这种扫描方法，主要解决了离散数据(索引字段的逻辑顺序与记录的实际存储顺序非常离散的情况)，需要大量离散回表扫描的情况
db\_test=# explain (analyze,verbose,buffers) select \* from db\_test.t\_ms\_aj\_bak where n\_dm=12;\
QUERY PLAN\
\-----------------------------------------------------------------------------------------------------------------------------------\
Bitmap Heap Scan on db\_test.t\_ms\_aj\_bak (cost=100.85..1303.26 rows=5233 width=56) (actual time=1.477..107.896 rows=5204 loops=1)\
Output: c\_bh, n\_dm, c\_ah\
Recheck Cond: (t\_ms\_aj\_bak.n\_dm = 12)\
Heap Blocks: exact=1125\
Buffers: shared hit=1126 read=15\
\-> Bitmap Index Scan on i\_ms\_aj\_bak\_n\_dm (cost=0.00..99.54 rows=5233 width=0) (actual time=1.260..1.260 rows=5204 loops=1)\
Index Cond: (t\_ms\_aj\_bak.n\_dm = 12)\
Buffers: shared hit=1 read=15\
Planning Time: 0.114 ms\
Execution Time: 109.361 ms
5、Hash join
哈希JOIN
db\_test=# explain (analyze,verbose,buffers) select aj.c\_bh from db\_test.t\_ms\_aj aj join db\_test.t\_ms\_dsr dsr on dsr.c\_bh\_aj=aj.c\_bh;\
QUERY PLAN\
\------------------------------------------------------------------------------------------------------------------------------------\
Hash Join (cost=35.22..5378.59 rows=2307 width=33) (actual time=3.121..1254.234 rows=2074 loops=1)\
Output: aj.c\_bh\
Inner Unique: true\
Hash Cond: (dsr.c\_bh\_aj = aj.c\_bh)\
Buffers: shared hit=2828\
\-> Seq Scan on db\_test.t\_ms\_dsr dsr (cost=0.00..4817.86 rows=200186 width=33) (actual time=0.013..598.660 rows=200186 loops=1)\
Output: dsr.c\_bh, dsr.c\_bh\_aj, dsr.c\_name\
Buffers: shared hit=2816\
\-> Hash (cost=22.32..22.32 rows=1032 width=33) (actual time=3.089..3.089 rows=1032 loops=1)\
Output: aj.c\_bh\
Buckets: 2048 Batches: 1 Memory Usage: 82kB\
Buffers: shared hit=12\
\-> Seq Scan on db\_test.t\_ms\_aj aj (cost=0.00..22.32 rows=1032 width=33) (actual time=0.010..1.860 rows=1032 loops=1)\
Output: aj.c\_bh\
Buffers: shared hit=12\
Planning Time: 0.396 ms\
Execution Time: 1257.348 ms
6、Nested Loop
嵌套循环。其中一个表扫描一次，另一个表则循环多次。
 
db\_test=# explain analyze select aj.c\_bh from db\_test.t\_ms\_aj aj join db\_test.t\_ms\_dsr dsr on dsr.c\_bh\_aj=aj.c\_bh where aj.n\_dm=20;\
QUERY PLAN\
\-----------------------------------------------------------------------------------------------------------------------------\
Nested Loop (cost=8.87..263.50 rows=45 width=33) (actual time=0.058..0.405 rows=37 loops=1)\
\-> Bitmap Heap Scan on t\_ms\_aj aj (cost=4.43..17.09 rows=20 width=33) (actual time=0.028..0.067 rows=20 loops=1)\
Recheck Cond: (n\_dm = 20)\
Heap Blocks: exact=10\
\-> Bitmap Index Scan on i\_ms\_aj\_n\_dm (cost=0.00..4.43 rows=20 width=0) (actual time=0.018..0.019 rows=20 loops=1)\
Index Cond: (n\_dm = 20)\
\-> Bitmap Heap Scan on t\_ms\_dsr dsr (cost=4.44..12.30 rows=2 width=33) (actual time=0.014..0.015 rows=2 loops=20)\
Recheck Cond: (c\_bh\_aj = aj.c\_bh)\
Heap Blocks: exact=20\
\-> Bitmap Index Scan on i\_ms\_dsr\_c\_bh (cost=0.00..4.43 rows=2 width=0) (actual time=0.011..0.011 rows=2 loops=20)\
Index Cond: (c\_bh\_aj = aj.c\_bh)\
Planning Time: 0.409 ms\
Execution Time: 0.555 ms
7、Merge Join
需要两个JOIN的表的KEY都是先排好顺序的，如果有索引没有排序过程。Merge Join两个表都只扫描一次。
db\_test=# explain analyze select aj.c\_bh from db\_test.t\_ms\_aj aj join db\_test.t\_ms\_dsr dsr on dsr.c\_bh=aj.c\_ah;\
QUERY PLAN\
\-------------------------------------------------------------------------------------------------------------------------------------------------\
Gather (cost=14985.80..15689.01 rows=1032 width=33) (actual time=944.856..951.963 rows=0 loops=1)\
Workers Planned: 1\
Workers Launched: 1\
\-> Merge Join (cost=13985.80..14585.81 rows=607 width=33) (actual time=851.573..851.573 rows=0 loops=2)\
Merge Cond: (dsr.c\_bh = (aj.c\_ah)::bpchar)\
\-> Sort (cost=13911.82..14206.21 rows=117756 width=33) (actual time=747.508..792.472 rows=100093 loops=2)\
Sort Key: dsr.c\_bh\
Sort Method: quicksort Memory: 11282kB\
Worker 0: Sort Method: quicksort Memory: 10503kB\
\-> Parallel Seq Scan on t\_ms\_dsr dsr (cost=0.00..3993.56 rows=117756 width=33) (actual time=0.035..115.401 rows=100093 loops=2)\
\-> Sort (cost=73.98..76.56 rows=1032 width=52) (actual time=2.963..3.154 rows=338 loops=2)\
Sort Key: aj.c\_ah USING <\
Sort Method: quicksort Memory: 194kB\
Worker 0: Sort Method: quicksort Memory: 194kB\
\-> Seq Scan on t\_ms\_aj aj (cost=0.00..22.32 rows=1032 width=52) (actual time=0.082..0.545 rows=1032 loops=2)\
Planning Time: 0.481 ms\
Execution Time: 952.152 ms
五、示例
1、我们先看sql，根据现场反馈修改其他c\_dbbh后，sql执行较快，唯独这一个c\_dbbh需要一分钟才会出结果
SELECT COUNT(1)\
FROM db\_test.t\_zh\_axx aj\
LEFT JOIN (SELECT n\_ccsl,c\_ajbh,c\_zblx,c\_laay FROM db\_test.t\_zh\_zjxx A\
WHERE\
c\_bh = (SELECT c\_bh FROM db\_test.t\_zh\_zjxx b WHERE b.c\_ajbh = A.c\_ajbh AND b.c\_zblx = '0050002' ORDER BY dt\_cjsj DESC NULLS LAST LIMIT 1)\
) zb ON zb.c\_ajbh = aj.c\_ajbh\
WHERE\
c\_dbbh = '0191H4325678D8172F58EE383720D0A9'\
AND zb.c\_zblx = '0050002'\
AND aj.c\_zy = '1628'\
\--涉及表的数据量\
\--db\_test.t\_zh\_axx 1200万+\
\--db\_test.t\_zh\_zjxx 1900万+
2、先看执行计划为什么慢，在进行sql优化。
Aggregate (cost=3214.11..3214.12 rows=1 width=8) (actual time=61097.734..61097.734 rows=1 loops=1)\
\-> Nested Loop (cost=743.92..3214.11 rows=1 width=0) (actual time=8.702..61097.110 rows=1461 loops=1)\
\-> Bitmap Heap Scan on t\_zh\_axx aj (cost=743.36..763.39 rows=5 width=17) (actual time=8.585..11.327 rows=1461 loops=1)\
Recheck Cond:((c\_dbbh = '0191H4325678D8172F58EE383720D0A9'::bpchar) AND ((c\_zy)::text = '1801'::text))\
Heap Blocks\:exact=720\
\-> BitmapAnd (cost=743.36..743.36 rows=5 width=0)(actual time=8.479..8.479 rows=0 loops=1)\
\-> Bitmap Index Scan on i\_t\_zh\_axx\_c\_dbbh\_c\_cbfy (cost=0.00..70.63 rows=1343 width=0)(actual time=0.766..0.766 rows=0 loops=1)\
Index Cond:(c\_dbbh = '0191H4325678D8172F58EE383720D0A9'::bpchar)\
\-> Bitmap Index Scan on i\_t\_zh\_axx\_zblx\_c\_zy (cost=0.00..672.47 rows=36272 width=0)(actual time=7.644..7.644 rows=0 loops=1)\
Index Cond:((c\_zy)::text = '1628'::text)\
\-> Index Scan using i\_t\_zh\_zjxx\_c\_ajbh on t\_zh\_zjxx a (cost=0.56..190.13 rows=1 width=16) (actual time=20.069..41.822 rows=1 loops=1461)\
Index Cond: ((c\_ajbh)::text = (aj.c\_ajbh)::text)\
Filter: (((c\_zblx)::text = '0020002'::text) AND (c\_bh = (SubPlan 1)))\
Rows Removed by Filter: 167\
SubPlan 1\
\-> Limit (cost=44.55..44.56 rows=1 width=41) (actual time=0.247..0.248 rows=1 loops=245603)\
\-> Sort (cost=44.55..44.56 rows=1 width=41) (actual time=0.247..0.247 rows=1 loops=245603)\
Sort Key: b.dt\_cjsj DESC NULLS LAST\
Sort Method: top-N heapsort Memory: 25kB\
\-> Index Scan using i\_t\_zh\_zjxx\_c\_ajbh on t\_zh\_zjxx b (cost=0.56..54.82 rows=1 width=41) (actual time=0.017..0.071 rows=38 loops=245603)\
Index Cond: ((c\_ajbh)::text = (a.c\_ajbh)::text)\
Filter: ((c\_zblx)::text = '0020002'::text)\
Rows Removed by Filter: 114\
Planning Time: 1.267 ms\
Execution Time: 61097.876 ms
分析
仔细观察执行计划后发现，占用时间最多的在第2行Nested Loop（actual time=8.702…61097.110），嵌套循环占用了一分钟，然后在16 -> 20行看到（loops=245603），循环了24.5万次。\
上篇文章可以了解到嵌套循环：其中一个表扫描一次，另一个表则循环多次。这里基本可以确定问题了，找开发确认发现是确实是数据问题，原因是重复上报导致。
3、改写sql
\--用exists改写\
explain analyze\
select count(\*) from db\_test.t\_zh\_axx aj\
where exists (select 1 from db\_test.t\_zh\_zjxx zbajxx where zbajxx.c\_ajbh=aj.c\_ajbh and c\_zblx = '0020002')\
and aj.c\_dbbh = '8B7D8C93864E0D0C3E3259C49ED65471'\
AND aj.c\_zy = '1801'
\--执行计划都走索引\
\--值得关注的是join的方式是Nested Loop Semi Join，多了个Semi。Semi Join支持支持hash, merge, nestloop几种JOIN方法\
\--semi Join的操作在EXISTS中有一个返回TRUE的操作即可，所以在有索引的情况下很大概率下并不需要全表扫描\
QUERY PLAN\
\--------------------------------------------------------------------------------------------------------------------------------------------------------------------\
Aggregate (cost=5560.83..5560.84 rows=1 width=8) (actual time=38.158..38.158 rows=1 loops=1)\
\-> Nested Loop Semi Join， (cost=1.12..5560.82 rows=6 width=0) (actual time=0.072..37.912 rows=1356 loops=1)\
\-> Index Scan using t\_zh\_axx\_c\_dbbh\_idx on t\_zh\_axx aj (cost=0.56..5210.98 rows=6 width=17) (actual time=0.042..1.315 rows=1461 loops=1)\
Index Cond: (c\_dbbh = '8B7D8C93864E0D0C3E3259C49ED65471'::bpchar)\
Filter: ((c\_zy)::text = '1801'::text)\
\-> Index Scan using i\_t\_zh\_zjxx\_c\_ajbh on t\_zh\_zjxx zbajxx (cost=0.56..58.50 rows=1 width=16) (actual time=0.024..0.024 rows=1 loops=1461)\
Index Cond: ((c\_ajbh)::text = (aj.c\_ajbh)::text)\
Filter: ((c\_zblx)::text = '0020002'::text)\
Planning Time: 0.852 ms\
Execution Time: 38.255 ms

# NoSQL

## 键值数据库
Redis
BerkeleyDB
Memcached
Project Voldemort
Riak
LevelDB

## 文档数据库
MongoDB
CouchDB
RavenDB
Terrastore
OrientDB

## 列族数据库
HBase
Amazon SimpleDB
Cassdndra
Hypertable
BigTable(google)

## 图数据库
FlockDB
HyperGraphDB
Infinite Graph
Neo4J
OrientDB

# LiteD
LiteDB是一个小型的.NET平台开源的NoSQL类型的轻量级文件数据库。特点是小和快，dll文件只有200K大小，而且支持LINQ和命令行操作，数据库是一个单一文件，类似Sqlite。官方网站：<http://www.litedb.org/>

## 特点
1.NoSQL文件存储。这是和传统关系型数据库的主要区别；支持实体类的字段更新；
2.类似MongoDB的简单API；
3.完全使用C#代码,在.NET 4.0环境下编写，核心dll小巧,只有168K;
4.支持ACID事务处理；
5.可以进行写入失败的恢复；
6.存储到文件或者数据流中（类似MongoDB的GridFS）;
7.类似Sqlite的单一文件存储；
8.支持文件索引，可以进行快速搜索；可以直接存储文件；
9.支持Linq查询；【这也许是C#编写最直接的好处】;
10.支持命令行操作数据库，官方提供了一个Shell command line;
11.完全开源和免费，包括商业使用；
Serverless NoSQL 文档存储
类似于 MongoDB 的简单 API
100% C# 代码，支持.NET 3.5 / .NET 4.0 / NETStandard 1.3 / NETStandard 2.0，单 DLL (小于 300kb)
支持线程和进程安全
支持文档/操作级别的 ACID
支持写失败后的数据还原 (日志模式)
可使用 DES (AES) 加密算法进行数据文件加密
可使用特性或 fluent 映射 API 将你的 POCO类映射为 BsonDocument
可存储文件与流数据 (类似 MongoDB 的 GridFS)
单数据文件存储 (类似 SQLite)
支持基于文档字段索引的快速搜索 (每个集合支持多达16个索引)
支持 LINQ 查询
Shell 命令行 - 试试这个在线版本
相当快 - 这里是与 SQLite 的对比结果
开源，对所有人免费 - 包括商业应用

## LiteDB使用基本案例

### 创建实体类

public class Customer
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string[] Phones { get; set; }
    public bool IsActive { get; set; }
}

### 使用Demo

使用过程首先要添加dll应用，以及引入命名空间：
using LiteDB;
下面是测试代码，会在当前目录下创建一个sample.db的数据库文件：
//打开或者创建新的数据库

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

上述过程很清楚，根据注释理解几乎不用费神。

## 使用场景

1.桌面或者本地小型的应用程序
2.小型web应用程序
3.单个数据库账户或者单个用户数据的存储
4.少量用户的并发写操作的应用程序

## LiteDB的技术细节

### LiteDB的工作原理

LiteDB是虽然单个文件类型的数据库，但是数据库有很多信息，例如索引，集合，文件等。为了管理这些信息，LiteDB实现了数据库页的概念。
页 是一个拥有4096 字节的 存储相同信息的地址块。也是操作磁盘文件(读写)的最小单元。LiteDB有6种页类型。其作用也不一样，分布是：Header Page，Collection Page，Index Page， Data Page，Extend Page，Empty Page。
Data Page的作用是存储核心的数据，是以序列化后的BSON格式来存储。
值得注意的是，如果存储的数据太大，超过page大小，数据块就会使用一个指针指向Extend Page。
在上面的代码中，我们初始化数据库是这样的：
var db = new LiteDatabase("MyData.db");
这种情况比较好用，可以打开或者创建新的数据库，同样也可以使用连接名称来获取，例如：
var db = new LiteDatabase("userdb");
这样会直接从connectionStrings找到这个名称的连接。包括了文件名称，使用模式，以及版本信息。一般情况下直接使用第一种即可。LiteDB的数据库连接完整形式是：filename=C:\Path\mydb.db; journal=false; version=5　　

### LiteDB的查询

LiteDB的查询必须在相关的查询字段上使用索引，如果没有索引，会默认去创建索引。上面例子中就是创建字段的索引，并查询。LiteDB中查询有2种方法：
1.使用静态的帮助类Query;
2.使用Linq方式，就是类似Demo的方法;
LiteDB使用Query的查询方式有以下一些方法，详细讲解几个重要的，其他几个大家理解一下，也应该不难，如果有不准确的地方，还请指正：
Query.All 返回所有的数据，可以使用指定的索引字段进行排序
Query.EQ 查找返回和指定字段值相等的数据
Query.LT/LTE 查找< 或 <= 某个值的数据
Query.GT/GTE 查找> 或 >= 某个值的数据
Query.Between 查找在指定区间范围内的数据
Query.In - 和SQL的in类似吧，查找和列表中值相等的数据
Query.Not - 和EQ相反，是不等于某个值的数据
Query.StartsWith 查找以某个字符串开头的数据
Query.Contains 查找保护某个字符串的数据，这个查询只扫描索引
Query.And 2个查询的交集
Query.Or 2个查询结果的并集

var results = collection.Find(Query.EQ("Name", "John Doe"));
var results = collection.Find(Query.GTE("Age", 25));
var results = collection.Find(Query.And(
    Query.EQ("FirstName", "John"), Query.EQ("LastName", "Doe")
));
var results = collection.Find(Query.StartsWith("Name", "Jo"));

注意LiteDB不支持这种表达式：CreationDate == DueDate。
下面介绍使用Linq的查询的几个主要方法：
FindAll: 查找表或者集合中所有的结果记录
FindOne:返回第一个或者默认的结果
FindById: 通过索引返回单个结果
Find: 使用查询表达式或者linq表达式查询返回结果

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
    
当然还有一些方法如：Count() , Exists(),Min() , Max()等方法。。比较好理解。看看linq表达式的查询案例：

var collection = db.GetCollection<Customer>("customer");
var results = collection.Find(x => x.Name == "John Doe");
var results = collection.Find(x => x.Age > 30);
var results = collection.Find(x => x.Name.StartsWith("John") && x.Age > 30);

### LiteDB的查询示例

namespace DEVGIS.OutTest.Views
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
