---
layout: post
title: Python语言学习总结
description: 关于Python语言编程相关的的一些学习和总结
date: 2022-10-01 09:01:01
updatedate: 2024-03-26 11:05:22
---

- [Python](#python)
  - [Pyplot，画出各种你想要的图](#pyplot画出各种你想要的图)
  - [语言特点](#语言特点)
    - [跨平台](#跨平台)
      - [可远行于](#可远行于)
        - [各大操作系统](#各大操作系统)
    - [解释型脚本语言](#解释型脚本语言)
      - [内建](#内建)
        - [高级的数据结构](#高级的数据结构)
    - [面向对象的语言](#面向对象的语言)
      - [便于](#便于)
        - [数据和逻辑](#数据和逻辑)
    - [动态语言](#动态语言)
      - [变量本身](#变量本身)
        - [类型不固定](#类型不固定)
        - [可随意转换](#可随意转换)
        - [不需要声明](#不需要声明)
    - [不用考虑](#不用考虑)
      - [内存问题](#内存问题)
    - [可处理的数据量](#可处理的数据量)
      - [无限制](#无限制)
    - [默认编码](#默认编码)
      - [UTF-8](#utf-8)
  - [运行程序](#运行程序)
    - [两种模式](#两种模式)
      - [脚本式编程](#脚本式编程)
        - [一次性执行](#一次性执行)
      - [交互式编程](#交互式编程)
        - [逐行输入](#逐行输入)
    - [远行脚本](#远行脚本)
      - [命令行/终端模式](#命令行终端模式)
        - [python \*.py](#python-py)
      - [Linux下可执行脚本](#linux下可执行脚本)
        - [首行添加](#首行添加)
        - [赋予权限](#赋予权限)
        - [运行脚本](#运行脚本)
      - [IPython](#ipython)
        - [%run \*.py](#run-py)
  - [代码格式](#代码格式)
    - [缩进](#缩进)
      - [用【缩进深度】区分](#用缩进深度区分)
        - [语句【代码块】](#语句代码块)
    - [行长](#行长)
      - [每行不超过80字符](#每行不超过80字符)
    - [空行](#空行)
      - [将程序的不同部分分开](#将程序的不同部分分开)
    - [\\ ](#)
      - [继续上一行](#继续上一行)
      - [跨行特例](#跨行特例)
        - [闭合操作符](#闭合操作符)
        - [三引号](#三引号)
    - [;](#-1)
      - [在同一行](#在同一行)
        - [连接多个语句](#连接多个语句)
    - [:](#-2)
      - [分开代码块(组)](#分开代码块组)
        - [头\&体](#头体)
  - [变量](#变量)
    - [内涵](#内涵)
      - [存储了一个值](#存储了一个值)
        - [与【变量】相关联的信息](#与变量相关联的信息)
    - [命名规则](#命名规则)
      - [只能包含](#只能包含)
        - [字母、数字和下划线](#字母数字和下划线)
      - [不能](#不能)
        - [以【数字】打头](#以数字打头)
        - [包含【空格】](#包含空格)
        - [使用python保留字：用于【特殊用途】的单词](#使用python保留字用于特殊用途的单词)
      - [建议](#建议)
        - [简短又具有描述性](#简短又具有描述性)
        - [使用【小写字母】](#使用小写字母)
        - [慎用](#慎用)
  - [变量赋值](#变量赋值)
    - [赋值符](#赋值符)
      - [=](#-3)
    - [增量赋值](#增量赋值)
      - [+=](#-4)
    - [多重赋值](#多重赋值)
      - [x=y=z=1](#xyz1)
    - [多元赋值](#多元赋值)
      - [x,y,z=1,2,'a'](#xyz12a)
        - [\*var收集多余的值](#var收集多余的值)
      - [通常【元组】需要【小括号】](#通常元组需要小括号)
      - [建议](#建议-1)
        - [加上【小括号】以增加【可读性】](#加上小括号以增加可读性)
        - [(x,y,z)=(1,2,'a')](#xyz12a-1)
    - [变量交换](#变量交换)
      - [x,y=y,x](#xyyx)
  - [面试题](#面试题)


## Python

### Pyplot，画出各种你想要的图

<https://blog.csdn.net/qq_42257666/article/details/122439666>

### 语言特点

#### 跨平台

##### 可远行于

###### 各大操作系统

#### 解释型脚本语言

##### 内建

###### 高级的数据结构

#### 面向对象的语言

##### 便于

###### 数据和逻辑

\####### 相分离

#### 动态语言

##### 变量本身

###### 类型不固定

###### 可随意转换

###### 不需要声明

#### 不用考虑

##### 内存问题

#### 可处理的数据量

##### 无限制

#### 默认编码

##### UTF-8

### 运行程序

#### 两种模式

##### 脚本式编程

###### 一次性执行

\####### 源代码脚本

##### 交互式编程

###### 逐行输入

\####### 再执行

#### 远行脚本

##### 命令行/终端模式

###### python \*.py

##### Linux下可执行脚本

###### 首行添加

\####### #!/usr/local/bin/python
\####### #!/usr/bin/env python

###### 赋予权限

\####### chmod 755 \*.py

###### 运行脚本

\####### \*.py

##### IPython

###### %run \*.py

### 代码格式

#### 缩进

##### 用【缩进深度】区分

###### 语句【代码块】

#### 行长

##### 每行不超过80字符

#### 空行

##### 将程序的不同部分分开

#### \ 

##### 继续上一行

##### 跨行特例

###### 闭合操作符

\####### \[],{},()

###### 三引号

\####### 常用于【多行注释】

#### ;

##### 在同一行

###### 连接多个语句

#### :

##### 分开代码块(组)

###### 头&体

### 变量

#### 内涵

##### 存储了一个值

###### 与【变量】相关联的信息

#### 命名规则

##### 只能包含

###### 字母、数字和下划线

##### 不能

###### 以【数字】打头

###### 包含【空格】

###### 使用python保留字：用于【特殊用途】的单词

\####### 关键字
\####### 函数名

##### 建议

###### 简短又具有描述性

###### 使用【小写字母】

###### 慎用

\####### 小写字母l
\####### 大写字母O
\####### 易与1&0混淆

### 变量赋值

#### 赋值符

##### =

#### 增量赋值

##### +=

#### 多重赋值

##### x=y=z=1

#### 多元赋值

##### x,y,z=1,2,'a'

###### \*var收集多余的值

##### 通常【元组】需要【小括号】

##### 建议

###### 加上【小括号】以增加【可读性】

###### (x,y,z)=(1,2,'a')

#### 变量交换

##### x,y=y,x

### 面试题

[Python面试题目--汇总](https://www.cnblogs.com/WayneZeng/p/7133647.html)

*   原文链接-<https://github.com/taizilongxu/interview_python>
*   Python语言特性
    *   1 Python的函数参数传递
    *   2 Python中的元类(metaclass)
    *   3 @staticmethod和@classmethod
    *   4 类变量和实例变量
    *   5 Python自省
    *   6 字典推导式
    *   7 Python中单下划线和双下划线
    *   8 字符串格式化:%和.format
    *   9 迭代器和生成器
    *   10 [\*args and \*\*kwargs](https://github.com/taizilongxu/interview_python#10-args-and-kwargs)
    *   11 面向切面编程AOP和装饰器
    *   12 鸭子类型
    *   13 Python中重载
    *   14 新式类和旧式类
    *   15 [\_\_new\_\_和\_\_init\_\_的区别](https://github.com/taizilongxu/interview_python#15-__new__%E5%92%8C__init__%E7%9A%84%E5%8C%BA%E5%88%AB)
    *   16 单例模式
        *   1 使用[\_\_new\_\_方法](https://github.com/taizilongxu/interview_python#1-%E4%BD%BF%E7%94%A8__new__%E6%96%B9%E6%B3%95)
        *   2 共享属性
        *   3 装饰器版本
        *   4 import方法
    *   17 Python中的作用域
    *   18 GIL线程全局锁
    *   19 协程
    *   20 闭包
    *   21 lambda函数
    *   22 Python函数式编程
    *   23 Python里的拷贝
    *   24 Python垃圾回收机制
        *   1 引用计数
        *   2 标记-清除机制
        *   3 分代技术
    *   25 Python的List
    *   26 Python的is
    *   27 read,readline和readlines
    *   28 Python2和3的区别
    *   29 super.[\_\_init\_\_()](https://github.com/taizilongxu/interview_python#29-super-init)
    *   30 range-and-xrange
*   操作系统
    *   1 select,poll和epoll
    *   2 调度算法
    *   3 死锁
    *   4 程序编译与链接
        *   1 预处理
        *   2 编译
        *   3 汇编
        *   4 链接
    *   5 静态链接和动态链接
    *   6 虚拟内存技术
    *   7 分页和分段
        *   分页与分段的主要区别
    *   8 页面置换算法
    *   9 边沿触发和水平触发
*   数据库
    *   1 事务
    *   2 数据库索引
    *   3 Redis原理
    *   4 乐观锁和悲观锁
    *   5 MVCC
    *   6 MyISAM和InnoDB
*   网络
    *   1 三次握手
    *   2 四次挥手
    *   3 ARP协议
    *   4 urllib和urllib2的区别
    *   5 Post和Get
    *   6 Cookie和Session
    *   7 apache和nginx的区别
    *   8 网站用户密码保存
    *   9 HTTP和HTTPS
    *   10 XSRF和XSS
    *   11 幂等 Idempotence
    *   12 RESTful架构(SOAP,RPC)
    *   13 SOAP
    *   14 RPC
    *   15 CGI和WSGI
    *   16 中间人攻击
    *   17 c10k问题
    *   18 socket
    *   19 浏览器缓存
    *   20 HTTP1.0和HTTP1.1
    *   21 Ajax
*   \*NIX
    *   unix进程间通信方式(IPC)
*   数据结构
    *   1 红黑树
*   编程题
    *   1 台阶问题/斐波纳挈
    *   2 变态台阶问题
    *   3 矩形覆盖
    *   4 杨氏矩阵查找
    *   5 去除列表中的重复元素
    *   6 链表成对调换
    *   7 创建字典的方法
        *   1 直接创建
        *   2 工厂方法
        *   3 fromkeys()方法
    *   8 合并两个有序列表
    *   9 交叉链表求交点
    *   10 二分查找
    *   11 快排
    *   12 找零问题
    *   13 广度遍历和深度遍历二叉树
    *   14 二叉树节点
    *   15 层次遍历
    *   16 深度遍历
    *   17 前中后序遍历
    *   18 求最大树深
    *   19 求两棵树是否相同
    *   20 前序中序求后序
    *   21 单链表逆置
    *   22 两个字符串是否是变位词
        操作系统
        1 select,poll和epoll
        其实所有的I/O都是轮询的方法,只不过实现的层面不同罢了.
        这个问题可能有点深入了,但相信能回答出这个问题是对I/O多路复用有很好的了解了.其中tornado使用的就是epoll的.
        [selec,poll和epoll区别总结](http://www.cnblogs.com/Anker/p/3265058.html)
        基本上select有3个缺点:

1.  连接数受限
2.  查找配对速度慢
3.  数据由内核拷贝到用户态
    poll改善了第一个缺点
    epoll改了三个缺点.
    关于epoll的: <http://www.cnblogs.com/my_life/articles/3968782.html>
    2 调度算法
4.  先来先服务(FCFS, First Come First Serve)
5.  短作业优先(SJF, Shortest Job First)
6.  最高优先权调度(Priority Scheduling)
7.  时间片轮转(RR, Round Robin)
8.  多级反馈队列调度(multilevel feedback queue scheduling)
    实时调度[算法](http://lib.csdn.net/base/datastructure):
9.  最早截至时间优先 EDF
10. 最低松弛度优先 LLF
    3 死锁
    原因:
11. 竞争资源
12. 程序推进顺序不当
    必要条件:
13. 互斥条件
14. 请求和保持条件
15. 不剥夺条件
16. 环路等待条件
    处理死锁基本方法:
17. 预防死锁(摒弃除1以外的条件)
18. 避免死锁(银行家算法)
19. 检测死锁(资源分配图)
20. 解除死锁
    1.  剥夺资源
    2.  撤销进程
        4 程序编译与链接
        推荐: <http://www.ruanyifeng.com/blog/2014/11/compiler.html>
        Bulid过程可以分解为4个步骤:预处理(Prepressing), 编译(Compilation)、汇编(Assembly)、链接(Linking)
        以[C语言](http://lib.csdn.net/base/c)为例:
        1 预处理
        预编译过程主要处理那些源文件中的以“#”开始的预编译指令，主要处理规则有：
21. 将所有的“#define”删除，并展开所用的宏定义
22. 处理所有条件预编译指令，比如“#if”、“#ifdef”、 “#elif”、“#endif”
23. 处理“#include”预编译指令，将被包含的文件插入到该编译指令的位置，注：此过程是递归进行的
24. 删除所有注释
25. 添加行号和文件名标识，以便于编译时编译器产生调试用的行号信息以及用于编译时产生编译错误或警告时可显示行号
26. 保留所有的#pragma编译器指令。
    2 编译
    编译过程就是把预处理完的文件进行一系列的词法分析、语法分析、语义分析及优化后生成相应的汇编代码文件。这个过程是整个程序构建的核心部分。
    3 汇编
    汇编器是将汇编代码转化成机器可以执行的指令，每一条汇编语句几乎都是一条机器指令。经过编译、链接、汇编输出的文件成为目标文件(Object File)
    4 链接
    链接的主要内容就是把各个模块之间相互引用的部分处理好，使各个模块可以正确的拼接。 链接的主要过程包块 地址和空间的分配（Address and Storage Allocation）、符号决议(Symbol Resolution)和重定位(Relocation)等步骤。
    5 静态链接和动态链接
    静态链接方法：静态链接的时候，载入代码就会把程序会用到的动态代码或动态代码的地址确定下来 静态库的链接可以使用静态链接，动态链接库也可以使用这种方法链接导入库
    动态链接方法：使用这种方式的程序并不在一开始就完成动态链接，而是直到真正调用动态库代码时，载入程序才计算(被调用的那部分)动态代码的逻辑地址，然后等到某个时候，程序又需要调用另外某块动态代码时，载入程序又去计算这部分代码的逻辑地址，所以，这种方式使程序初始化时间较短，但运行期间的性能比不上静态链接的程序
    6 虚拟内存技术
    虚拟存储器是指具有请求调入功能和置换功能,能从逻辑上对内存容量加以扩充的一种存储系统.
    7 分页和分段
    分页: 用户程序的地址空间被划分成若干固定大小的区域，称为“页”，相应地，内存空间分成若干个物理块，页和块的大小相等。可将用户程序的任一页放在内存的任一块中，实现了离散分配。
    分段: 将用户程序地址空间分成若干个大小不等的段，每段可以定义一组相对完整的逻辑信息。存储分配时，以段为单位，段与段在内存中可以不相邻接，也实现了离散分配。
    分页与分段的主要区别
27. 页是信息的物理单位,分页是为了实现非连续分配,以便解决内存碎片问题,或者说分页是由于系统管理的需要.段是信息的逻辑单位,它含有一组意义相对完整的信息,分段的目的是为了更好地实现共享,满足用户的需要.
28. 页的大小固定,由系统确定,将逻辑地址划分为页号和页内地址是由机器硬件实现的.而段的长度却不固定,决定于用户所编写的程序,通常由编译程序在对源程序进行编译时根据信息的性质来划分.
29. 分页的作业地址空间是一维的.分段的地址空间是二维的.
    8 页面置换算法
30. 最佳置换算法OPT:不可能实现
31. 先进先出FIFO
32. 最近最久未使用算法LRU:最近一段时间里最久没有使用过的页面予以置换.
33. clock算法
    9 边沿触发和水平触发
    边缘触发是指每当状态变化时发生一个 io 事件，条件触发是只要满足条件就发生一个 io 事件
    数据库
    1 事务
    [数据库](http://lib.csdn.net/base/mysql)事务(Database Transaction) ，是指作为单个逻辑工作单元执行的一系列操作，要么完全地执行，要么完全地不执行。
    2 数据库索引
    推荐: <http://tech.meituan.com/mysql-index.html>
    [MySQL索引背后的数据结构及算法原理](http://blog.codinglabs.org/articles/theory-of-mysql-index.html)
    聚集索引,非聚集索引,B-Tree,B+Tree,最左前缀原理
    3 Redis原理
    4 乐观锁和悲观锁
    悲观锁：假定会发生并发冲突，屏蔽一切可能违反数据完整性的操作
    乐观锁：假设不会发生并发冲突，只在提交操作时检查是否违反数据完整性。
    5 MVCC
    6 MyISAM和InnoDB
    MyISAM 适合于一些需要大量查询的应用，但其对于有大量写操作并不是很好。甚至你只是需要update一个字段，整个表都会被锁起来，而别的进程，就算是读进程都无法操作直到读操作完成。另外，MyISAM 对于 SELECT COUNT(\*) 这类的计算是超快无比的。
    InnoDB 的趋势会是一个非常复杂的存储引擎，对于一些小的应用，它会比 MyISAM 还慢。他是它支持“行锁” ，于是在写操作比较多的时候，会更优秀。并且，他还支持更多的高级应用，比如：事务。
    网络
    1 三次握手
34. 客户端通过向服务器端发送一个SYN来创建一个主动打开，作为三路握手的一部分。客户端把这段连接的序号设定为随机数 A。
35. 服务器端应当为一个合法的SYN回送一个SYN/ACK。ACK 的确认码应为 A+1，SYN/ACK 包本身又有一个随机序号 B。
36. 最后，客户端再发送一个ACK。当服务端受到这个ACK的时候，就完成了三路握手，并进入了连接创建状态。此时包序号被设定为收到的确认号 A+1，而响应则为 B+1。
    2 四次挥手
    注意: 中断连接端可以是客户端，也可以是服务器端. 下面仅以客户端断开连接举例, 反之亦然.
37. 客户端发送一个数据分段, 其中的 FIN 标记设置为1. 客户端进入 FIN-WAIT 状态. 该状态下客户端只接收数据, 不再发送数据.
38. 服务器接收到带有 FIN = 1 的数据分段, 发送带有 ACK = 1 的剩余数据分段, 确认收到客户端发来的 FIN 信息.
39. 服务器等到所有数据传输结束, 向客户端发送一个带有 FIN = 1 的数据分段, 并进入 CLOSE-WAIT 状态, 等待客户端发来带有 ACK = 1 的确认报文.
40. 客户端收到服务器发来带有 FIN = 1 的报文, 返回 ACK = 1 的报文确认, 为了防止服务器端未收到需要重发, 进入 TIME-WAIT 状态. 服务器接收到报文后关闭连接. 客户端等待 2MSL 后未收到回复, 则认为服务器成功关闭, 客户端关闭连接.
    3 ARP协议
    地址解析协议(Address Resolution Protocol)，其基本功能为透过目标设备的IP地址，查询目标的MAC地址，以保证通信的顺利进行。它是IPv4网络层必不可少的协议，不过在IPv6中已不再适用，并被邻居发现协议（NDP）所替代。
    4 urllib和urllib2的区别
    这个面试官确实问过,当时答的urllib2可以Post而urllib不可以.
41. urllib提供urlencode方法用来GET查询字符串的产生，而urllib2没有。这是为何urllib常和urllib2一起使用的原因。
42. urllib2可以接受一个Request类的实例来设置URL请求的headers，urllib仅可以接受URL。这意味着，你不可以伪装你的User Agent字符串等。
    5 Post和Get
    [GET和POST有什么区别？及为什么网上的多数答案都是错的](http://www.cnblogs.com/nankezhishi/archive/2012/06/09/getandpost.html) [知乎回答](https://www.zhihu.com/question/31640769?rf=37401322)
    get: [RFC 2616 - Hypertext Transfer Protocol -- HTTP/1.1](http://tools.ietf.org/html/rfc2616#section-9.3) post: [RFC 2616 - Hypertext Transfer Protocol -- HTTP/1.1](http://tools.ietf.org/html/rfc2616#section-9.5)
    6 Cookie和Session
    \|      | Cookie                     | Session |
    \| :--- | :------------------------- | :------ |
    \| 储存位置 | 客户端                        | 服务器端    |
    \| 目的   | 跟踪会话，也可以保存用户偏好设置或者保存用户名密码等 | 跟踪会话    |
    \| 安全性  | 不安全                        | 安全      |
    session技术是要使用到cookie的，之所以出现session技术，主要是为了安全。
    7 apache和nginx的区别
    nginx 相对 apache 的优点：

*   轻量级，同样起web 服务，比apache 占用更少的内存及资源
*   抗并发，nginx 处理请求是异步非阻塞的，支持更多的并发连接，而apache 则是阻塞型的，在高并发下nginx 能保持低资源低消耗高性能
*   配置简洁
*   高度模块化的设计，编写模块相对简单
*   社区活跃
    apache 相对nginx 的优点：
*   rewrite ，比nginx 的rewrite 强大
*   模块超多，基本想到的都可以找到
*   少bug ，nginx 的bug 相对较多
*   超稳定
    8 网站用户密码保存

1.  明文保存
2.  明文hash后保存,如md5
3.  MD5+Salt方式,这个salt可以随机
4.  知乎使用了Bcrypy(好像)加密
    9 HTTP和HTTPS
    \| 状态码       | 定义               |
    \| :-------- | :--------------- |
    \| 1xx 报告    | 接收到请求，继续进程       |
    \| 2xx 成功    | 步骤成功接收，被理解，并被接受  |
    \| 3xx 重定向   | 为了完成请求,必须采取进一步措施 |
    \| 4xx 客户端出错 | 请求包括错的顺序或不能完成    |
    \| 5xx 服务器出错 | 服务器无法完成显然有效的请求   |
    403: Forbidden 404: Not Found
    HTTPS握手,对称加密,非对称加密,TLS/SSL,RSA
    10 XSRF和XSS

*   CSRF(Cross-site request forgery)跨站请求伪造
*   XSS(Cross Site Scripting)跨站脚本攻击
    CSRF重点在请求,XSS重点在脚本
    11 幂等 Idempotence
    HTTP方法的幂等性是指一次和多次请求某一个资源应该具有同样的副作用。(注意是副作用)
    GET <http://www.bank.com/account/123456>，不会改变资源的状态，不论调用一次还是N次都没有副作用。请注意，这里强调的是一次和N次具有相同的副作用，而不是每次GET的结果相同。GET <http://www.news.com/latest-news>这个HTTP请求可能会每次得到不同的结果，但它本身并没有产生任何副作用，因而是满足幂等性的。
    DELETE方法用于删除资源，有副作用，但它应该满足幂等性。比如：DELETE <http://www.forum.com/article/4231>，调用一次和N次对系统产生的副作用是相同的，即删掉id为4231的帖子；因此，调用者可以多次调用或刷新页面而不必担心引起错误。
    POST所对应的URI并非创建的资源本身，而是资源的接收者。比如：POST <http://www.forum.com/articles>的语义是在<http://www.forum.com/articles>下创建一篇帖子，HTTP响应中应包含帖子的创建状态以及帖子的URI。两次相同的POST请求会在服务器端创建两份资源，它们具有不同的URI；所以，POST方法不具备幂等性。
    PUT所对应的URI是要创建或更新的资源本身。比如：PUT <http://www.forum/articles/4231>的语义是创建或更新ID为4231的帖子。对同一URI进行多次PUT的副作用和一次PUT是相同的；因此，PUT方法具有幂等性。
    12 RESTful架构(SOAP,RPC)
    推荐: <http://www.ruanyifeng.com/blog/2011/09/restful.html>
    13 SOAP
    SOAP（原为Simple Object Access Protocol的首字母缩写，即简单对象访问协议）是交换数据的一种协议规范，使用在[计算机网络](http://lib.csdn.net/base/computernetworks)Web服务（web service）中，交换带结构信息。SOAP为了简化网页服务器（Web Server）从XML数据库中提取数据时，节省去格式化页面时间，以及不同应用程序之间按照HTTP通信协议，遵从XML格式执行资料互换，使其抽象于语言实现、平台和硬件。
    14 RPC
    RPC（Remote Procedure Call Protocol）——远程过程调用协议，它是一种通过网络从远程计算机程序上请求服务，而不需要了解底层网络技术的协议。RPC协议假定某些传输协议的存在，如TCP或UDP，为通信程序之间携带信息数据。在OSI网络通信模型中，RPC跨越了传输层和应用层。RPC使得开发包括网络分布式多程序在内的应用程序更加容易。
    总结:服务提供的两大流派.传统意义以方法调用为导向通称RPC。为了企业SOA,若干厂商联合推出webservice,制定了wsdl接口定义,传输soap.当互联网时代,臃肿SOA被简化为http+xml/json.但是简化出现各种混乱。以资源为导向,任何操作无非是对资源的增删改查，于是统一的REST出现了.
    进化的顺序: RPC -SOAP -RESTful
    15 CGI和WSGI
    CGI是通用网关接口，是连接web服务器和应用程序的接口，用户通过CGI来获取动态数据或文件等。 CGI程序是一个独立的程序，它可以用几乎所有语言来写，包括perl，c，lua，python等等。
    WSGI, Web Server Gateway Interface，是Python应用程序或框架和Web服务器之间的一种接口，WSGI的其中一个目的就是让用户可以用统一的语言(Python)编写前后端。
    官方说明：[PEP-3333](https://www.python.org/dev/peps/pep-3333/)
    16 中间人攻击
    在GFW里屡见不鲜的,呵呵.
    中间人攻击（Man-in-the-middle attack，通常缩写为MITM）是指攻击者与通讯的两端分别创建独立的联系，并交换其所收到的数据，使通讯的两端认为他们正在通过一个私密的连接与对方直接对话，但事实上整个会话都被攻击者完全控制。
    17 c10k问题
    所谓c10k问题，指的是服务器同时支持成千上万个客户端的问题，也就是concurrent 10 000 connection（这也是c10k这个名字的由来）。 推荐: <http://www.kegel.com/c10k.html>
    18 socket
    推荐: <http://www.360doc.com/content/11/0609/15/5482098_122692444.shtml>
    Socket=Ip address+ TCP/UDP + port
    19 浏览器缓存
    推荐: <http://www.cnblogs.com/skynet/archive/2012/11/28/2792503.html>
    304 Not Modified
    20 HTTP1.0和HTTP1.1
    推荐: <http://blog.csdn.net/elifefly/article/details/3964766>

1.  请求头Host字段,一个服务器多个网站
2.  长链接
3.  文件断点续传
4.  身份认证,状态管理,Cache缓存
    21 Ajax
    AJAX,Asynchronous JavaScript and XML（异步的 javascript 和 XML）, 是与在不重新加载整个页面的情况下，与服务器交换数据并更新部分网页的技术。
    对于 Web 性能优化，您有哪些了解和经验吗？
    前端优化
    \*NIX
    unix进程间通信方式(IPC)
5.  管道（Pipe）：管道可用于具有亲缘关系进程间的通信，允许一个进程和另一个与它有共同祖先的进程之间进行通信。
6.  命名管道（named pipe）：命名管道克服了管道没有名字的限制，因此，除具有管道所具有的功能外，它还允许无亲缘关系进程间的通信。命名管道在文件系统中有对应的文件名。命名管道通过命令mkfifo或系统调用mkfifo来创建。
7.  信号（Signal）：信号是比较复杂的通信方式，用于通知接受进程有某种事件发生，除了用于进程间通信外，进程还可以发送信号给进程本身；linux除了支持Unix早期信号语义函数sigal外，还支持语义符合Posix.1标准的信号函数sigaction（实际上，该函数是基于BSD的，BSD为了实现可靠信号机制，又能够统一对外接口，用sigaction函数重新实现了signal函数）。
8.  消息（Message）队列：消息队列是消息的链接表，包括Posix消息队列system V消息队列。有足够权限的进程可以向队列中添加消息，被赋予读权限的进程则可以读走队列中的消息。消息队列克服了信号承载信息量少，管道只能承载无格式字节流以及缓冲区大小受限等缺
9.  共享内存：使得多个进程可以访问同一块内存空间，是最快的可用IPC形式。是针对其他通信机制运行效率较低而设计的。往往与其它通信机制，如信号量结合使用，来达到进程间的同步及互斥。
10. 内存映射（mapped memory）：内存映射允许任何多个进程间通信，每一个使用该机制的进程通过把一个共享的文件映射到自己的进程地址空间来实现它。
11. 信号量（semaphore）：主要作为进程间以及同一进程不同线程之间的同步手段。
12. 套接口（Socket）：更为一般的进程间通信机制，可用于不同机器之间的进程间通信。起初是由Unix系统的BSD分支开发出来的，但现在一般可以移植到其它类Unix系统上：Linux和System V的变种都支持套接字。
    数据结构
    1 红黑树
    红黑树与AVL的比较：
    AVL是严格平衡树，因此在增加或者删除节点的时候，根据不同情况，旋转的次数比红黑树要多；
    红黑是用非严格的平衡来换取增删节点时候旋转次数的降低；
    所以简单说，如果你的应用中，搜索的次数远远大于插入和删除，那么选择AVL，如果搜索，插入删除次数几乎差不多，应该选择RB。
    努力奋斗的小墨鱼 ---- <http://www.cnblogs.com/WayneZeng/>

***

