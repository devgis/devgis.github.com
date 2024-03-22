---
layout: post
title: 计算机编程
description: 计算机科学相关学习内容总结,各种编程语言以及计算机数据结构等总结梳理
date: 2022-10-01 09:01:01
updatedate: 2023-11-03 09:19:01
---

- [数据结构](#数据结构)
  - [数据结构分类](#数据结构分类)
    - [逻辑结构](#逻辑结构)
    - [线性结构](#线性结构)
  - [指针与数组](#指针与数组)
  - [链表](#链表)
  - [集合与字典](#集合与字典)
- [算法](#算法)
  - [递归](#递归)
  - [排序](#排序)
  - [字符串与模式匹配](#字符串与模式匹配)
- [Php](#php)
  - [Pyplot，画出各种你想要的图](#pyplot画出各种你想要的图)
- [Python](#python)
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
- [LabView](#labview)
  - [LabⅥEW基础知识](#labⅵew基础知识)
  - [前面板设计](#前面板设计)
  - [程序框图与程序结构](#程序框图与程序结构)
  - [数值字符串与布尔运算](#数值字符串与布尔运算)
  - [数组、矩阵与簇](#数组矩阵与簇)
      - [数组、矩阵和簇控件](#数组矩阵和簇控件)
      - [列表框、树形控件和表格](#列表框树形控件和表格)
      - [容器控件](#容器控件)
      - [实例——数组分类](#实例数组分类)
      - [数组的组成](#数组的组成)
      - [实例——创建数组控件](#实例创建数组控件)
      - [实例——创建多维数组控件](#实例创建多维数组控件)
      - [数组函数](#数组函数)
      - [实例——比较数组](#实例比较数组)
      - [实例——选项卡数组](#实例选项卡数组)
      - [簇的组成](#簇的组成)
      - [创建簇](#创建簇)
      - [实例——创建簇控件](#实例创建簇控件)
      - [实例——调整“簇”控件顺序](#实例调整簇控件顺序)
      - [簇函数](#簇函数)
      - [实例——使用“捆绑”函数创建“簇”控件](#实例使用捆绑函数创建簇控件)
      - [创建矩阵](#创建矩阵)
      - [矩阵函数](#矩阵函数)
      - [实例——创建矩阵控件](#实例创建矩阵控件)
      - [实例——矩阵变换](#实例矩阵变换)
    - [综合实例——矩形的绘制](#综合实例矩形的绘制)
  - [数据图形显示](#数据图形显示)
  - [数学函数](#数学函数)
  - [波形运算](#波形运算)
    - [信号生成](#信号生成)
  - [文件管理](#文件管理)
  - [数据采集](#数据采集)
  - [通信技术](#通信技术)
- [插件式框架](#插件式框架)
  - [Main](#main)
    - [Log4Net配置](#log4net配置)
      - [log4net.Config.XmlConfigurator.Configure();](#log4netconfigxmlconfiguratorconfigure)
    - [Log4Net初始化](#log4net初始化)
    - [MEF初始化](#mef初始化)
      - [new FABuilder().Load();](#new-fabuilderload)
  - [Plugin实现层](#plugin实现层)
    - [服务实现层](#服务实现层)
      - [FACommonService](#facommonservice)
        - [FALoggerService](#faloggerservice)
        - [FAMessageService](#famessageservice)
      - [FACommonViews](#facommonviews)
        - [DebugPanel.xaml](#debugpanelxaml)
        - [DebugPanelViewModel](#debugpanelviewmodel)
        - [DebugPanel.Xaml.cs](#debugpanelxamlcs)
    - [插件实现层](#插件实现层)
      - [MyFAPlugin1](#myfaplugin1)
        - [MyFAPlugin1](#myfaplugin1-1)
      - [MyFAPlugin2](#myfaplugin2)
        - [MyFAPlugin2](#myfaplugin2-1)
    - [FAStaticData](#fastaticdata)
  - [Controls](#controls)
    - [Conveter](#conveter)
      - [ProjectVisableConverter](#projectvisableconverter)
    - [DialogCloser](#dialogcloser)
    - [FADialog](#fadialog)
    - [FAWindow](#fawindow)
  - [Plugin接口层](#plugin接口层)
    - [Plugin插件模型接口层](#plugin插件模型接口层)
      - [FAPluginBase](#fapluginbase)
      - [FAView](#faview)
      - [FAViewModel](#faviewmodel)
    - [服务接口层](#服务接口层)
      - [IDebugOut](#idebugout)
      - [IFALogger](#ifalogger)
      - [IFAMessageBox](#ifamessagebox)
    - [Plugin插件模型接口层](#plugin插件模型接口层-1)
      - [MessageReceivedEventArgs](#messagereceivedeventargs)
  - [Core](#core)
    - [FABuilder](#fabuilder)
  - [Viwes](#viwes)
    - [CreateProject](#createproject)
      - [Xaml](#xaml)
      - [ViewModel](#viewmodel)
    - [MainWindow](#mainwindow)
      - [Xaml](#xaml-1)
  - [概述](#概述)
    - [网格计算](#网格计算)
    - [Oracle 11g新特性](#oracle-11g新特性)
      - [ViewModel](#viewmodel-1)
    - [SelectDevices](#selectdevices)
      - [Xaml](#xaml-2)
      - [ViewModel](#viewmodel-2)
    - [ViewLocator](#viewlocator)
  - [外部包依赖](#外部包依赖)
    - [Dirkster.AvalonDock](#dirksteravalondock)
      - [Dirkster.AvalonDock.Themes.VS2013](#dirksteravalondockthemesvs2013)
    - [Fluent.Ribbon](#fluentribbon)
    - [log4net](#log4net)
    - [MEF](#mef)
      - [System.ComponentModel.Composition](#systemcomponentmodelcomposition)
    - [Dirkster.AvalonDock](#dirksteravalondock-1)
    - [log4net](#log4net-1)
  - [LanguageResource实现多语言支持](#languageresource实现多语言支持)
  - [HTTP](#http)
- [认证授权](#认证授权)
  - [认证](#认证)
  - [Token](#token)
    - [SAML](#saml)
    - [JWT](#jwt)
    - [SSO 与CAS](#sso-与cas)
  - [授权](#授权)
    - [OAuth 授权](#oauth-授权)
- [gRPC](#grpc)
  - [gRPC 概述](#grpc-概述)
  - [gRPC 服务项目模板](#grpc-服务项目模板)
  - [ASP.NET Core gRPC 服务项目模板提供了一个入门版服务：](#aspnet-core-grpc-服务项目模板提供了一个入门版服务)
  - [使用 .NET 客户端调用 gRPC 服务](#使用-net-客户端调用-grpc-服务)


## 数据结构

### 数据结构分类

#### 逻辑结构

> 集合结构

> 线性结构

> 树形结构

> 图形结构

#### 线性结构

> 顺序存储结构

> 链式存储结构

### 指针与数组

> 指针

> > 内存与地址

> > 指针的语法

> > 使用指针变量

> > 函数与参数传递

> 数组

> > 结构型数据类型

> > 数组定义与初始化

> > 数组与指针

> > 数组的抽象数据类型

> 动态内存管理

> > 关键词new 和delete

> > 避免内存错误

### 链表

> 单向链表

> > 单向链表的结构

> > 单向链表的操作算法

> > 有序链表的合并算法

> 单向循环链表

> > 单向循环链表的结构

> > 单向循环链表的实现

> > 约瑟夫环的问题

> > 魔术师发牌问题

> > 拉丁方阵的问题

> 双向循环链表

> > 双向循环链表的结构

> > 双向循环链表的实现

> > 维吉尼亚加密法问题

> 游标类的设计与实现

> > 游标类的结构

> > 游标类的实现

> > 遍历

> > 元素的插入与删除

> 先进先出与后进先出

> 排队的智慧

> 优先级队列--兼谈页面置换算法

### 集合与字典

> 集合的概念，运算，实现

> > 位向量集合

> > 单链表集合

> 字典

> > 字典的概念

> > 搜索运算

> 散列

> > 散列的概念

> > 散列函数

> > 字符串散列

> > 处理散列冲突

> 不相交集

> > 不相交集的概念

> > 不相交集的实现

> > 犯罪团伙的问题

> > 路径压缩的实现

> STL 中的set

## 算法

> 算法复杂度

> >（O(n)渐进表示法）

> > 时间复杂度

> > 空间复杂度

### 递归

> 递归的概念，定义，原则，递归和非递归的转化

> 分治法

> > > 分治法简述

> > > 汉诺塔问题

> > > 传染病问题

> 回溯法

> > > 回溯法简述

> > > 迷宫问题

> > > 八皇后问题

> 树

> > 花开二枝分外香--二叉树及相关算法

> > > 二叉树的定义

> > > 二叉树的性质

> > > 二叉树的实现

> > > 二叉树的遍历算法

> > > 二叉树线索化算法

> > 从树到森林

> > > 树的存储表示

> > > 树的实现

> > > 树与森林的遍历算法

> > > 森林与二叉树的转换

> > 哈夫曼树--***优二叉树编码算法

> > > 哈夫曼编码

> > > 构造哈夫曼树

> > > 哈夫曼编码的实现

> 堆

> > 堆的概念

> > 堆的建立

> > 堆的操作

> 图

> > 图的存储与表示

> > > 图的邻接矩阵表示

> > > 图的邻接表表示

> > > 两种表示法的比较

> > 图的遍历

> > > 欧拉路径与欧拉回路

> > > 哈密尔顿路径与哈密尔顿回路

> > > 广度优先遍历算法

> > > 深度优先遍历算法

> > 最短短路径问题

> > > 固定起点***短路径问题

> > > 非固定起点***短路径问题

> > > ***短路径的动态规划解法

> > 图的最小生成树

> > > 图的最小生成树的定义

> > > 克鲁斯卡尔算法

> > > 普里姆算法

> 树形搜索结构

> > 二叉搜索树

> > > 二叉搜索树的概念

> > > 二叉搜索树的操作

> > > 二叉搜索树的实现

> > > 二叉搜索树的分析

> > 自平衡的二叉搜索树--**L 树

> > > **L 树的概念

> > > **L 树的旋转

> > > **L 树的实现

> > 树中亦有"红与黑"

> > > 红黑树的概念

> > > 红黑树的操作

> > > 红黑树的实现

> > 基于Trie 树的单词检索

> > > Trie 树的概念

> > > Trie 树的表示

> > > Trie 树的实现

### 排序

> 插入排序

> > 直接插入排序

> > 二分插入排序

> > 希尔排序

> 选择排序

> > 直接选择排序

> > 堆排序

> 交换排序

> > 冒泡排序

> > 鸡尾酒排序

> > 快速排序

> 归并排序

> 计数排序

> 线性表

> > 顺序表(增，删，查，改，销毁)

> > > 静态顺序表

> > > 动态顺序表

> 链表(增，删，查，改，销毁)

> > 单链表

> > > 无头双链表

> > > 有头单链表

> > 双链表

> > > 无头双链表

> > > 有头双链表

> > > 无头循环双链表

> > > 有头循环双链表

> > 三链表

> > 链表的逆序

> > > 无头链表的删除和插入

> > > 链表带环问题

> 栈和队列

> > 栈和队列的创建

> > 栈和队列的初始化

> > 栈的增容

> > 入栈，出栈，入队，出队

> > 取得栈顶，队头和队尾元素

> > 求栈和队列的大小，判断栈和队列是否为空

> > 栈

> 一种特殊的线性表，其只允许在固定的一端进行插入和删除元素操作

> > 顺序队列

> > >顺序栈

> > >链式栈

> > >栈的应用

> 队列

> > 循环队列

> > 优先级队列

> > 队列的应用

> 树形结构

> > 节点

> > 节点的度

> > 叶节点

> > 分支节点

> > 祖先节点

> > 双亲节点

> > 兄弟节点

> > 孩子节点

> > 树的深度

> > 树的表示方法

> > > 双亲表示法

> > > 孩子表示法

> > > 双亲孩子表示法

> > > 孩子兄弟表示法

> > > 树的存储形式

> > > > 二叉树

> > 二叉树的存储

> > > 顺序存储结构

> > > 链式存储结构

> > 二叉树的基本操作

> > > 二叉树的创建

> > > 二叉树的遍历(递归和非递归)

> > > > 前序遍历

> > > > 中序遍历

> > > > 后序遍历

> > > > 后序遍历

> > > 二叉树的增、删、查、改、销毁

> > > 线索化二叉树

> > > > 堆

> > 堆的概念,创建

> > > 大堆

> > > 小堆

> > > 堆的插入和删除

> > > 堆的应用

> > > > 优先级队列

> > > > 海量数据top K问题

> > > > 堆排序（高校排序算法）

> > > > huffman树

> 搜索

> > 线性查找

> > > 顺序查找：从前往后依次遍历O(n)

> > > 顺序有序查找：二分查找O(log(N))

> > > 索引顺序表

> > 树形查找

> > > 二叉树结构

> 二叉搜索树

> 平衡树

 > AVL树

 > 红黑树

> > > 多叉树结构

> B-树

> B+树

> B*树

> > 哈希查找

> > > 哈希表

> > > > 哈希冲突及解决方法

> > > 哈希函数

> > > > 哈希冲突——开散列

> > > > 哈希冲突——闭散列

> > > 哈希表变形

> > > > 哈希表变形——位图

> > > > 哈希表变形——布隆过滤器

> 排序

> > 插入排序

> > > 直接插入排序

> > > 希尔排序

> > 选择排序

> > > 选择排序

> > > 堆排序

> > 交换排序

> > > 冒泡排序

> > > 快速排序

> > 归并排序

### 字符串与模式匹配

> 文本的匹配

> > BF 算法

> > MP 算法

> > KMP 算法

> > BM 算法

> > BMH 算法

> 文本的模糊匹配

> > 全局编辑距离

> > 局部***佳对准

> > N 元距离模型

## Php

### Pyplot，画出各种你想要的图

> https://blog.csdn.net/qq_42257666/article/details/122439666

## Python

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

####### 相分离

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

####### 源代码脚本

##### 交互式编程

###### 逐行输入

####### 再执行

#### 远行脚本

##### 命令行/终端模式

###### python *.py

##### Linux下可执行脚本

###### 首行添加

####### #!/usr/local/bin/python

####### #!/usr/bin/env python

###### 赋予权限

####### chmod 755 *.py

###### 运行脚本

####### *.py

##### IPython

###### %run *.py

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

####### [],{},()

###### 三引号

####### 常用于【多行注释】

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

####### 关键字

####### 函数名

##### 建议

###### 简短又具有描述性

###### 使用【小写字母】

###### 慎用

####### 小写字母l

####### 大写字母O

####### 易与1&0混淆

### 变量赋值

#### 赋值符

##### =

#### 增量赋值

##### +=

#### 多重赋值

##### x=y=z=1

#### 多元赋值

##### x,y,z=1,2,'a'

###### *var收集多余的值

##### 通常【元组】需要【小括号】

##### 建议

###### 加上【小括号】以增加【可读性】

###### (x,y,z)=(1,2,'a')

#### 变量交换

##### x,y=y,x

## LabView

### LabⅥEW基础知识

> LabⅥEW编程环境

> > 前面板

> > 程序框图

> > 菜单栏

> > 工具栏

> > 项目浏览器窗口

> Xcontrol

> > XControl对于用户来说，和普通的控件没有区别，但XControl对于开发者来说，除了有自定义外观外，还能自定义行为。

> > 可以将控件的功能封装起来，使其和应用程序代码分离。同时有助于重用。

> 创建XControl

> > 新建XCtrl：

> > Data.ctl: 指定了XCtrl的数据类型；

> > State.ctl: 指定了除数据类型之外其他影响XCtrl外观的信息，其他所有数据的定义放在此处；

> > Init.vi: 当XCtrl第一次被放置在前面板上或含有XCtrl的vi第一次被载入内存时，初始化显示状态。

> > 新建Method，定义XCtrl支持的方法（类似于类的成员函数），用于操作State中的数据；这里实现各种具体的操作。

> > 新建Property，定义了XCtrl的可读取属性（类似于LabVIEW类的accessor的工作），用于读取XCtrl中的数据；

> > 修改facade vi，用于定制XControl的外观，创建各种状态改变事件。

> > X控件的本质是为控件事先定义好一系列可以响应的事件，之后使用控件时，就可以在控件的属性或调用节点中看到这些事件，像操作普通控件一样，调用这些节点来执行特定操作。

> > 以LabVIEW自带的摄氏华氏温度转换XCtrl为例：

### 前面板设计

> 前面板

> >  “工具”选板

> >  图标/连接器

> >  选板可见性设置

>  前面板控件

> >  “控件”选板

> >  控件样式

>  对象的设置

> >  选择对象

> >  删除对象

> >  变更对象位置

> >  属性节点

>  设置前面板的外观

> >  改变对象的大小

> >  改变对象的颜色

> >  设置对象的字体

> 菜单设计

> > 菜单编辑器

> >  “菜单”函数

### 程序框图与程序结构

> 程序框图

> 循环结构

> >  For循环及并行循环

> >  移位寄存器

> >  While循环

> >  反馈节点

> 条件结构

> 顺序结构

> 事件结构

> 程序框图禁用结构

> 条件禁用结构

> 定时循环

> 定时循环和定时顺序结构

> 配置定时循环和定时顺序结构

> 同步开始定时结构和中止定时结构的执行

> 公式节点

> 程序逻辑的公式节点

### 数值字符串与布尔运算

> 数值控件

> 数值型控件

> 布尔型控件和单选按钮

> 字符串与路径控件

> 数值运算

> 数值函数

> 三角函数

> 字符串运算

> 字符串常量

> 字符串函数

> 其余运算

> 布尔运算

> 比较运算

> 定时运算

> 图形与声音运算

### 数组、矩阵与簇

> 数组控件

##### 数组、矩阵和簇控件

##### 列表框、树形控件和表格

##### 容器控件

##### 实例——数组分类

> 数组

##### 数组的组成

##### 实例——创建数组控件

##### 实例——创建多维数组控件

##### 数组函数

##### 实例——比较数组

##### 实例——选项卡数组

> 簇

##### 簇的组成

##### 创建簇

##### 实例——创建簇控件

##### 实例——调整“簇”控件顺序

##### 簇函数

##### 实例——使用“捆绑”函数创建“簇”控件

> 矩阵

##### 创建矩阵

##### 矩阵函数

##### 实例——创建矩阵控件

##### 实例——矩阵变换

#### 综合实例——矩形的绘制

### 数据图形显示

> 图形控件

> 图形和图表

> 下拉列表与枚举控件

> I/O控件

> 修饰控件

> 对象和应用程序的引用

> .NET与ActiveX控件

> 图表图形

> 波形图

> 波形图表

> > XY图

> > 强度图

> > 强度图表

> > 二维图形

> > 罗盘图

> > 误差线图

> > 羽状图

> > XY曲线矩阵

> > 三维图形

> > 三维曲面图

> > 三维参数图

> > 三维曲线图

> > 极坐标图

### 数学函数

> 数学函数运算

> 线性代数Ⅵ

> 特殊矩阵

> 矩阵的基本运算

> 矩阵的分解

> 特征值

> 线性方程组

> 初等与特殊函数

> 指数函数

> 双曲函数

> 离散数学

> 贝塞尔曲线

> Gamma函数

> 超几何函数

> 椭圆积分函数

> 指数积分函数

> 误差函数

> 椭圆与抛物函数

> 拟合Ⅵ

> 曲线拟合

> 拟合函数

> 内插与外推Ⅵ

> 概率与统计Ⅵ

> 累积分布函数（连续）

> 逆累积分布函数（连续

> 累积分布函数（离散）

> 逆累积分布函数（离散）

> 方差分析Ⅵ

> 很优化Ⅵ

> 微分方程Ⅵ

> 多项式Ⅵ

### 波形运算

> 波形数据

> 变体函数

> 时间标识

> 波形生成

> 基本函数发生器

> 正弦波形

> 公式波形

> 基本混合单频

> 混合单频与噪声波形

> 基本带幅值混合单频

> 混合单频信号发生器

> 均匀白噪声波形

> 周期性随机噪声波形

> 伯努利噪声波形

> 仿真信号

> 基本波形函数

> 获取波形成分

> 创建波形

> “设置波形属性”函数和“获取波形属性”函数

> “索引波形数组”函数

> “获取波形子集”函数

> 模拟波形

> 数字波形Ⅵ和函数

> 波形调理

> 数字FIR滤波器

> 数字IIR滤波器

> 按窗函数缩放

> 波形对齐（连续）

> 波形对齐（单次）

> 连续卷积（FIR）

> 滤波器

> 对齐和重采样

> 触发与门限

> 波形测量

> 基本平均直流——均方根

> 瞬态特性测量

> 提取单频信息

> 快速傅里叶变换频谱（幅度——相位）

> 频率响应函数（幅度——相位）

> 频谱测量

> 失真测量

> 幅值和电平测量

> 波形监测

> 信号生成与处理

> 信号生成

> 基于持续时间的信号发生器

> 混合单频与噪声

> 高斯调制正弦波

> 正弦信号

> 正弦波

> 均匀白噪声

> 任意波形发生器

> 信号运算

> 卷积和相关ExpressⅥ

> 缩放和映射

> 窗

> 滤波器

> 巴特沃斯滤波器

> 切比雪夫滤波器

> FIR加窗滤波器

> 贝塞尔滤波器

> 谱分析

> 变换

> FFT

> FHT

> 反FFT

> 反FHT

> 逐点

#### 信号生成

> 信号运算

> > 滤波器

> > 谱分析

> > 变换

> > 线性代数

### 文件管理

> 文件数据

> 路径

> 文件I/O格式

> 文件操作

> 文件常量

> 文件类型

> 文本文件

> 带分隔符电子表格文件

> 二进制文件

> 配置文件

> TDMS

> 存储/数据插件

> Zip文件

> XML格式

> 波形文件I/O函数

> 不错文件函数

> 数据记录文件的创建和读取

> 记录前面板数据

> 数据与XML格式间的相互转换

### 数据采集

> 数据采集基础

> DAQ功能概述

### 通信技术

> 串行通信技术

> 串行通信介绍

> ⅥSA配置串口

> DataSocket技术

> > 读取DataSocket

> > 写入DataSocket

> > 打开DataSocket

> > 关闭DataSocket

> TCP

> > TCP侦听

> > 打开TCP连接

> > 读取TCP数据

> > 写入TCP数据

> UDP通信

## 插件式框架

### Main

#### Log4Net配置

##### log4net.Config.XmlConfigurator.Configure();

#### Log4Net初始化

#### MEF初始化

##### new FABuilder().Load();

### Plugin实现层

#### 服务实现层

##### FACommonService

###### FALoggerService

using DEVGIS.FA.Plugin.Interfaces;

using DEVGIS.FA.Plugin.Services;

using log4net;

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.Linq;

using System.Reflection;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.FA.FACommonService

{

  [Export(typeof(IFALogger))]

  public class FALoggerService : IFALogger

  {

    ILog logger;

    public FALoggerService()

    {

      logger = log4net.LogManager.GetLogger("RollingLogFileAppender"); 

    }

    public bool IsDebugEnabled => true;

    public bool IsInfoEnabled => true;

    public bool IsWarnEnabled => true;

    public bool IsErrorEnabled => true;

    public bool IsFatalEnabled => true;

    public void Debug(object message)

    {

      logger.Debug(message);

    }

    public void Debug(object message, Exception exception)

    {

      logger.Debug(message, exception);

    }

    public void DebugFormat(string format, params object[] args)

    {

      logger.DebugFormat(format, args);

    }

    public void Error(object message)

    {

      logger.Error(message);

    }

    public void Error(object message, Exception exception)

    {

      logger.Error(message, exception);

    }

    public void ErrorFormat(string format, params object[] args)

    {

      logger.ErrorFormat(format, args);

    }

    public void Fatal(object message)

    {

      logger.Fatal(message);

    }

    public void Fatal(object message, Exception exception)

    {

      logger.Fatal(message, exception);

    }

    public void FatalFormat(string format, params object[] args)

    {

      logger.FatalFormat(format, args);

    }

    public void Info(object message)

    {

      logger.Info(message);

    }

    public void Info(object message, Exception exception)

    {

      logger.Info(message, exception);

    }

    public void InfoFormat(string format, params object[] args)

    {

      logger.InfoFormat(format, args);

    }

    public void Warn(object message)

    {

      logger.Warn(message);

    }

    public void Warn(object message, Exception exception)

    {

      logger.Warn(message, exception);

    }

    public void WarnFormat(string format, params object[] args)

    {

      logger.WarnFormat(format, args);

    }

  }

}

###### FAMessageService

using DEVGIS.FA.Plugin.Services;

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

using System.Windows;

namespace DEVGIS.FA.FACommonService

{

  [Export(typeof(IFAMessageBox))]

  public class FAMessageService : IFAMessageBox

  {

    public string Title = "FA";

    public void ShowDebug(string message)

    {

      MessageBox.Show(message, Title, MessageBoxButton.OK, MessageBoxImage.Information);

    }

    public void ShowError(string message, Exception ex=null)

    {

      if (ex == null)

      {

        MessageBox.Show(message, Title, MessageBoxButton.OK, MessageBoxImage.Error);

      }

      else

      {

        MessageBox.Show($"{message}/r/n{ex.ToString()}/r/n{ex.Message}/r/n{ex.StackTrace}/r/n", Title, MessageBoxButton.OK, MessageBoxImage.Error);

      }

      

    }

    public void ShowInfo(string message)

    {

      MessageBox.Show(message, Title, MessageBoxButton.OK, MessageBoxImage.Information);

    }

    public bool ShowQuestion(string message)

    {

      if (MessageBox.Show(message, Title, MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)

      {

        return true;

      }

      else

      {

        return false;

      }

    }

    public void ShowWarn(string message)

    {

      MessageBox.Show(message, Title, MessageBoxButton.OK, MessageBoxImage.Warning);

    }

  }

}

##### FACommonViews

###### DebugPanel.xaml

<inplug:FAView x:Class="DEVGIS.FA.FACommonViews.Views.DebugPanel"

       xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"

       xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"

       xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" 

       xmlns:d="http://schemas.microsoft.com/expression/blend/2008" 

       xmlns:local="clr-namespace:DEVGIS.FA.FACommonViews.Views"

       xmlns:facontrols="clr-namespace:DEVGIS.FA.Controls;assembly=FAControls"

       xmlns:localvm="clr-namespace:DEVGIS.FA.FACommonViews.ViewModels"

       xmlns:inplug="clr-namespace:DEVGIS.FA.Plugin;assembly=FAPlugin"

       mc:Ignorable="d" 

       d:DesignHeight="300" d:DesignWidth="600" Width="600" Height="300" >

  <!--<inplug:FAView.DataContext>

    <localvm:DebugPanelViewModel/>

  </inplug:FAView.DataContext>-->

  <Grid>

    <Grid.RowDefinitions>

      <RowDefinition Height="30" />

      <RowDefinition Height="*" />

    </Grid.RowDefinitions>

    <Grid.ColumnDefinitions>

      <ColumnDefinition Width="*" />

    </Grid.ColumnDefinitions>

    <Label Content="显示输出来源" HorizontalAlignment="Left" Grid.Row="0" />

    <!--Text="{Binding Message}"-->

    <TextBlock Text="{Binding Message}" HorizontalAlignment="Left" Grid.Row="1"/>

  </Grid>

</inplug:FAView>

###### DebugPanelViewModel

using DEVGIS.FA.Plugin;

using DEVGIS.FA.Plugin.Services;

using System;

using System.Collections.Generic;

using System.Collections.ObjectModel;

using System.ComponentModel.Composition;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.FA.FACommonViews.ViewModels

{

  [Export(typeof(IDebugOut))]

  [Export(typeof(FAViewModel))]

  public class DebugPanelViewModel : FAViewModel, IDebugOut

  {

    public string message = "请输入";

    public string Message

    {

      get

      {

        return message;

      }

      set

      {

        message = value;

        RaisePropertyChanged("Message");

      }

    }

    public void Debug(string Message)

    {

      this.Message= Message;

    }

  }

}

###### DebugPanel.Xaml.cs

using DEVGIS.FA.Controls;

using DEVGIS.FA.Plugin;

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

using System.Windows;

using System.Windows.Controls;

using System.Windows.Data;

using System.Windows.Documents;

using System.Windows.Input;

using System.Windows.Media;

using System.Windows.Media.Imaging;

using System.Windows.Navigation;

using System.Windows.Shapes;

namespace DEVGIS.FA.FACommonViews.Views

{

  [Export(typeof(FAView))]

  /// <summary>

  /// SelectDevices.xaml 的交互逻辑

  /// </summary>

  public partial class DebugPanel:FAView

  {

    public DebugPanel():base("DebugPanelViewModel")

    {

      InitializeComponent();

    }

  }

}

#### 插件实现层

##### MyFAPlugin1

###### MyFAPlugin1

using DEVGIS.FA.Plugin;

using DEVGIS.FA.Plugin.Services;

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.Linq;

using System.Text;

using System.Threading;

using System.Threading.Tasks;

namespace DEVGIS.FA.MyFAPlugin1

{

  [Export(typeof(FAPluginBase))]

  public class MyFAPlugin1 : FAPluginBase

  {

    //IFALogger FALogger { get; set; }

    [ImportingConstructor]

    public MyFAPlugin1() //IFALogger logger

    {

      this.ID = "MyFAPlugin1";

      this.Name = "MyFAPlugin1";

      this.Categorys = new List<FACategory>();

      ///FALogger = logger;

    }

    public override void Init()

    {

      base.Init();

      

      this.MessageReceived += MyFAPlugin1_MessageReceived;

      //FAMessageBox.ShowInfo("MyFAPlugin1.Init()-MyFAPlugin1 inited!");

      this.PluginInited += MyFAPlugin1_PluginInited;

    }

    private void MyFAPlugin1_PluginInited(object sender, EventArgs e)

    {

      ThreadPool.QueueUserWorkItem(o =>

      {

        Thread.Sleep(10000);

        while (true)

        {

          SendMessage("MyFAPlugin2", "string", Encoding.UTF8.GetBytes("This is a test message from MyFAPlugin1 !"));

          Thread.Sleep(100);

        };

      });

      FALogger.Info("MyFAPlugin1 inited! This message is from MYFAPlugin1.dll");

      //FADebugOut.Debug("MyFAPlugin1 inited! This message is from MYFAPlugin1.dll");

    }

    private void MyFAPlugin1_MessageReceived(object sender, Plugin.Args.MessageReceivedEventArgs e)

    {

      FALogger.Info($"MyFAPlugin1.MyFAPlugin1_MessageReceived()-Message from【{e.SenderID}】 type:{e.DataType} content:{Encoding.Default.GetString(e.Data)}");

      //FAMessageBox.ShowInfo($"MyFAPlugin1.MyFAPlugin1_MessageReceived()-Message from【{e.SenderID}】 type:{e.DataType} content:{e.Data.ToString()}");

      //FADebugOut.Debug($"MyFAPlugin1.MyFAPlugin1_MessageReceived()-Message from【{e.SenderID}】 type:{e.DataType} content:{Encoding.Default.GetString(e.Data)}");

    }

  }

}

##### MyFAPlugin2

###### MyFAPlugin2

using DEVGIS.FA.Plugin;

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.Linq;

using System.Text;

using System.Threading;

using System.Threading.Tasks;

namespace DEVGIS.FA.MyFAPlugin2

{

  [Export(typeof(FAPluginBase))]

  public class MyFAPlugin2 : FAPluginBase

  {

    public MyFAPlugin2()

    {

      this.ID = "MyFAPlugin2";

      this.Name = "MyFAPlugin2";

    }

    public override void Init()

    {

      base.Init();

      this.MessageReceived += MyFAPlugin2_MessageReceived;

      try

      {

        throw new Exception("This is a test exception!");

      }

      catch(Exception ex)

      {

        FALogger.Error("MyFAPlugin2.Init()-There is an error", ex);

        //FADebugOut.Debug("MyFAPlugin2.Init()-There is an error:"+ex.Message);

      }

      this.PluginInited += MyFAPlugin2_PluginInited;

    }

    private void MyFAPlugin2_PluginInited(object sender, EventArgs e)

    {

      ThreadPool.QueueUserWorkItem(o =>

      {

        Thread.Sleep(10000);

        while (true)

        {

          SendMessage("MyFAPlugin1", "string", Encoding.UTF8.GetBytes("This is a test message from MyFAPlugin2 !"));

          Thread.Sleep(100);

        };

      });

    }

    private void MyFAPlugin2_MessageReceived(object sender, Plugin.Args.MessageReceivedEventArgs e)

    {

      FALogger.Info($"MyFAPlugin2.MyFAPlugin2_MessageReceived()-Message from【{e.SenderID}】 type:{e.DataType} content:{Encoding.Default.GetString(e.Data)}");

      //FAMessageBox.ShowInfo($"MyFAPlugin2.MyFAPlugin2_MessageReceived()-Message from【{e.SenderID}】 type:{e.DataType} content:{e.Data.ToString()}");

      //FADebugOut.Debug($"MyFAPlugin2.MyFAPlugin2_MessageReceived()-Message from【{e.SenderID}】 type:{e.DataType} content:{Encoding.Default.GetString(e.Data)}");

    }

  }

}

#### FAStaticData

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.ComponentModel.Composition.Hosting;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.FA.Plugin

{

  public class FAStaticData

  {

    public static CompositionContainer Container = null;

    //[ImportMany(typeof(FAView))]

    ////private IEnumerable<Lazy<View, IViewMetadata>> views { get; set; }

    //public static IEnumerable<FAView> Views { get; set; }

  }

}

### Controls

#### Conveter

##### ProjectVisableConverter

using DEVGIS.FA.Plugin;

using System;

using System.Collections.Generic;

using System.Globalization;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

using System.Windows;

using System.Windows.Data;

namespace DEVGIS.FA.Controls.Conveter

{

  [ValueConversion(typeof(FAProject), typeof(Visibility))]

  public class ProjectVisableConverter : IValueConverter

  {

    public object Convert(object value, Type targetType, object parameter, CultureInfo culture)

    {

      if (value!=null&&value is FAProject)

      {

        return Visibility.Visible;

      }

      else

      {

        return Visibility.Collapsed;

      }

    }

    public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)

    {

      throw new NotImplementedException();

    }

  }

}

#### DialogCloser

using System;

using System.Collections.Generic;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

using System.Windows;

namespace DEVGIS.FA.Controls

{

  public static class DialogCloser

  {

    public static readonly DependencyProperty DialogResultProperty =

      DependencyProperty.RegisterAttached("DialogResult",

                        typeof(bool?),

                        typeof(DialogCloser),

                        new PropertyMetadata(DialogResultChanged));

    private static void DialogResultChanged(DependencyObject d, DependencyPropertyChangedEventArgs e)

    {

      var window = d as Window;

      if (window != null)

      {

        window.DialogResult = e.NewValue as bool?;

      }

    }

    public static void SetDialogResult(Window target, bool? value)

    {

      target.SetValue(DialogResultProperty, value);

    }

  }

}

#### FADialog

using System;

using System.Collections.Generic;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

using System.Windows;

using System.Windows.Data;

namespace DEVGIS.FA.Controls

{

  public class FADialog : FAWindow

  {

    public FADialog()

    {

      this.WindowStyle = WindowStyle.ToolWindow;

      this.WindowStartupLocation = WindowStartupLocation.CenterScreen;

    }

  }

}

#### FAWindow

using System;

using System.Collections.Generic;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

using System.Windows;

using System.Windows.Data;

namespace DEVGIS.FA.Controls

{

  public class FAWindow:Window

  {

    public FAWindow()

    {

      Binding binding = new Binding();

      //binding.Source = DialogCloser.DialogResultProperty;

      binding.Path = new PropertyPath("DialogResult");

      binding.Mode = BindingMode.TwoWay;

      this.SetBinding(DialogCloser.DialogResultProperty, binding);

    }

  }

}

### Plugin接口层

#### Plugin插件模型接口层

##### FAPluginBase

using DEVGIS.FA.Plugin.Args;

using DEVGIS.FA.Plugin.Services;

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.Threading;

namespace DEVGIS.FA.Plugin

{

  public class FAPluginBase:FAObject

  {

    public FAPluginBase()

    {

      

    }

    public bool Inited { get; set; } = false;

    public List<FACategory> Categorys { get; set; }

    public FAEquipmentType EquipmentType { get; set; }

    [Import]

    public IFALogger FALogger { get; set; }

    [Import]

    public IFAMessageBox FAMessageBox { get; set; }

    //[Import]

    //public IDebugOut FADebugOut { get; set; }

    public virtual void Init()

    {

      ThreadPool.QueueUserWorkItem(o => {

        while (!Inited)

        {

          Thread.Sleep(100);

        }

        FALogger.Info($"FAPluginBase.Init()-{this.ToString()} Inited!");

        //FADebugOut.Debug($"FAPluginBase.Init()-{this.ToString()} Inited!");

        if (PluginInited != null)

        {

          PluginInited(this, new EventArgs());

        }

      });

    }

    public void SendMessage(string ReceiverID,string DataType, byte[] Data)

    {

      if (MessageSend != null)

      {

        MessageSend(this, new MessageReceivedEventArgs { Data = Data,DataType=DataType, SenderID = this.ID ,ReceiverID=ReceiverID});

      }

    }

    public void RaiseMessageReceived(MessageReceivedEventArgs e)

    {

      if (MessageReceived != null)

      {

        MessageReceived(this, e);

      }

    }

    public event EventHandler<EventArgs> PluginInited;

    public event EventHandler<MessageReceivedEventArgs> MessageSend;

    public event EventHandler<MessageReceivedEventArgs> MessageReceived;

  }

}

##### FAView

using System;

using System.Collections.Generic;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

using System.Windows;

using System.Windows.Controls;

namespace DEVGIS.FA.Plugin

{

  public class FAView:UserControl

  {

    public FAView(string ViewModelName)

    {

      if(!string.IsNullOrEmpty(ViewModelName))

      {

        DataContext = FAStaticData.Container.GetExportedValues<FAViewModel>().FirstOrDefault(v => v.Name.Equals(ViewModelName));

      }

    }

    public bool IsReadOnly { get; set; }

  }

}

##### FAViewModel

using DEVGIS.FA.Plugin.Services;

using System;

using System.Collections.Generic;

using System.ComponentModel;

using System.ComponentModel.Composition;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.FA.Plugin

{

  public abstract class FAViewModel:INotifyPropertyChanged

  {

    public IFALogger FALogger { get; set; }

    public IFAMessageBox FAMessageBox { get; set; }

    public FAViewModel()

    {

      FALogger = FAStaticData.Container.GetExportedValue<IFALogger>();

      FAMessageBox = FAStaticData.Container.GetExportedValue<IFAMessageBox>();

    }

    public string Name

    {

      get

      {

        return this.GetType().Name;

      }

    }

    private FAProject project = null;

    public FAProject Project

    {

      get

      {

        return project;

      }

      set

      {

        project = value;

        RaisePropertyChanged("Project");

      }

    }

    public bool? dialogResult;

    public bool? DialogResult

    {

      get

      {

        return dialogResult;

      }

      set

      {

        dialogResult = value;

        RaisePropertyChanged("DialogResult");

      }

    }

    protected virtual void RaisePropertyChanged(string propertyName)

		{

			if (PropertyChanged != null)

				PropertyChanged(this, new PropertyChangedEventArgs(propertyName));

		}

		public event PropertyChangedEventHandler PropertyChanged;

	}

}

#### 服务接口层

##### IDebugOut

using System;

using System.Collections.Generic;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.FA.Plugin.Services

{

  public interface IDebugOut

  {

    void Debug(string Message);

  }

}

##### IFALogger

using DEVGIS.FA.Plugin.Interfaces;

using System;

using System.Collections.Generic;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.FA.Plugin.Services

{

  public interface IFALogger: IFAService

	{

		void Debug(object message);

		void Debug(object message, Exception exception);

		void DebugFormat(string format, params object[] args);

		void Info(object message);

		void Info(object message, Exception exception);

		void InfoFormat(string format, params object[] args);

		void Warn(object message);

		void Warn(object message, Exception exception);

		void WarnFormat(string format, params object[] args);

		void Error(object message);

		void Error(object message, Exception exception);

		void ErrorFormat(string format, params object[] args);

		void Fatal(object message);

		void Fatal(object message, Exception exception);

		void FatalFormat(string format, params object[] args);

		bool IsDebugEnabled { get; }

		bool IsInfoEnabled { get; }

		bool IsWarnEnabled { get; }

		bool IsErrorEnabled { get; }

		bool IsFatalEnabled { get; }

	}

}

##### IFAMessageBox

using System;

namespace DEVGIS.FA.Plugin.Services

{

  public interface IFAMessageBox 

  {

    void ShowInfo(string message);

    void ShowError(string message,Exception ex);

    void ShowDebug(string message);

    void ShowWarn(string message);

    bool ShowQuestion(string message);

  }

}

#### Plugin插件模型接口层

##### MessageReceivedEventArgs

using System;

using System.Collections.Generic;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.FA.Plugin.Args

{

  public class MessageReceivedEventArgs:EventArgs

  {

    public string SenderID { get; set; }

    public string ReceiverID { get; set; }

    public string DataType { get; set; }

    public byte[] Data

    {

      get; set;

    }

  }

}

### Core

#### FABuilder

using DEVGIS.FA.Plugin;

using DEVGIS.FA.Plugin.Services;

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.ComponentModel.Composition.Hosting;

using System.IO;

using System.Linq;

using System.Text;

using System.Threading;

using System.Threading.Tasks;

namespace DEVGIS.FA.Core

{

  

  public class FABuilder

  {

    [ImportMany(typeof(FAPluginBase))]

    public static IEnumerable<FAPluginBase> Plugins { get; private set; }

    //[ImportMany(typeof(FAView))]

    ////private IEnumerable<Lazy<View, IViewMetadata>> views { get; set; }

    //public static IEnumerable<FAView> Views { get; private set; }

    [Import(typeof(IFALogger))]

    public IFALogger logger { get; set; }

    //private CompositionContainer container = null;

    public void Load()

    {

      var catalog = new DirectoryCatalog(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Plugins"), "*");

      FAStaticData.Container = new CompositionContainer(catalog);

      try

      {

        Plugins = FAStaticData.Container.GetExportedValues<FAPluginBase>();

        foreach (var plugin in Plugins)

        {

          plugin.Init();

          plugin.Inited = true;

          plugin.MessageSend += Plugin_MessageSend;

        }

      }

      catch (CompositionException compositionEx)

      {

        logger.Error("FABuilder.Load Plugins Failed!", compositionEx);

      }

      //try

      //{

      //  FAStaticData.Views = FAStaticData.Container.GetExportedValues<FAView>();

      //}

      //catch (CompositionException compositionEx)

      //{

      //  logger.Error("FABuilder.Load Views Failed!", compositionEx);

      //}

      

    }

    private void Plugin_MessageSend(object sender, Plugin.Args.MessageReceivedEventArgs e)

    {

      if (e != null && !String.IsNullOrEmpty(e.ReceiverID))

      {

        var plugin = Plugins.Where(p => p.ID == e.ReceiverID).FirstOrDefault();

        ThreadPool.QueueUserWorkItem(o => {

          if (plugin != null)

          {

            while (!plugin.Inited)

            {

              Thread.Sleep(100);

            }

            plugin.RaiseMessageReceived(e);

          }

        });

        

      }

    }

  }

}

### Viwes

#### CreateProject

##### Xaml

<facontrols:FADialog x:Class="DEVGIS.FA.Views.Views.CreateProject"

       xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"

       xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"

       xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" 

       xmlns:d="http://schemas.microsoft.com/expression/blend/2008" 

       xmlns:local="clr-namespace:DEVGIS.FA.Views.Views"

       xmlns:facontrols="clr-namespace:DEVGIS.FA.Controls;assembly=FAControls"

       xmlns:localvm="clr-namespace:DEVGIS.FA.Views.ViewModels"

       mc:Ignorable="d" 

       d:DesignHeight="300" d:DesignWidth="600" Width="600" Height="300" >

  <Window.DataContext>

    <localvm:CreateProjectViewModel/>

  </Window.DataContext>

  <Grid>

    <Grid.RowDefinitions>

      <RowDefinition Height="*" />

      <RowDefinition Height="30" />

      <RowDefinition Height="30" />

      <RowDefinition Height="30" />

      <RowDefinition Height="60" />

      <RowDefinition Height="30" />

      <RowDefinition Height="*" />

    </Grid.RowDefinitions>

    <Grid.ColumnDefinitions>

      <ColumnDefinition Width="*" />

      <ColumnDefinition Width="200" />

      <ColumnDefinition Width="300" />

      <ColumnDefinition Width="*" />

    </Grid.ColumnDefinitions>

    <Label Content="项目名称：" Grid.Row="1" Grid.Column="1" />

    <Label Content="路径：" Grid.Row="2" Grid.Column="1" />

    <Label Content="作者" Grid.Row="3" Grid.Column="1" />

    <Label Content="备注" Grid.Row="4" Grid.Column="1" />

    <Button Content="创建" Grid.Row="5" Grid.Column="2" Command="{Binding CreateProjectCommand}"/>

    <TextBox Text="{Binding Project.Name, Mode=TwoWay}" Grid.Row="1" Grid.Column="2" />

    <TextBox Text="{Binding Project.BasePath, Mode=TwoWay}" Grid.Row="2" Grid.Column="2" />

    <TextBox Text="{Binding Project.Author, Mode=TwoWay}" Grid.Row="3" Grid.Column="2" />

    <TextBox Text="{Binding Project.Description, Mode=TwoWay}" Grid.Row="4" Grid.Column="2" />

  </Grid>

</facontrols:FADialog>

##### ViewModel

using DEVGIS.FA.Plugin;

using System;

using System.Collections.Generic;

using System.Collections.ObjectModel;

using System.IO;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.FA.Views.ViewModels

{

  public class CreateProjectViewModel : FAViewModel

  {

    public FACommand CreateProjectCommand

    {

      get;

      set;

    }

    public CreateProjectViewModel()

    {

      Project = new FAProject(LanguageResource.Resource.DefaultProjectName);

      Project.BasePath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments),"FAProject", Project.Name);

      Project.Author = Environment.UserName;

      Project.Description = LanguageResource.Resource.DefaultProjectDescrption;

      CreateProjectCommand = new FACommand(o => {

        RaisePropertyChanged("Project");

        this.DialogResult = true;

        FAMessageBox.ShowInfo($"[{Project.Author}]创建项目[{Project.Name}]成功！");

        FALogger.Info($"创建项目[{Project.Name}]成功！");

      });

    }

  }

}

#### MainWindow

##### Xaml

<facontrols:FAWindow x:Class="DEVGIS.FA.Views.Views.MainWindow"

    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"

    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"

    xmlns:d="http://schemas.microsoft.com/expression/blend/2008"

    xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"

    xmlns:local="clr-namespace:DEVGIS.FA.Views"

    xmlns:inplug="clr-namespace:DEVGIS.FA.Plugin;assembly=FAPlugin"

    xmlns:facontrols="clr-namespace:DEVGIS.FA.Controls;assembly=FAControls"

    xmlns:lanrs="clr-namespace:DEVGIS.FA.LanguageResource;assembly=LanguageResource"

    xmlns:localvm="clr-namespace:DEVGIS.FA.Views.ViewModels"

    xmlns:facvt="clr-namespace:DEVGIS.FA.Controls.Conveter;assembly=FAControls"

    xmlns:avalon="https://github.com/Dirkster99/AvalonDock"

    mc:Ignorable="d"

    Title ="{x:Static lanrs:Resource.AppTitle}" WindowState="Maximized" Margin="3" Height="450" Width="800">

  <Window.DataContext>

    <localvm:MainWindowViewModel/>

  </Window.DataContext>

  <Window.Resources>

    <facvt:ProjectVisableConverter x:Key="ProjectVisableConverter"/>

    <local:ViewLocator x:Key="InViewLocator"/>

  </Window.Resources>

  <Grid>

    <Grid.RowDefinitions>

      <RowDefinition Height="Auto" />

      <RowDefinition Height="Auto" />

      <RowDefinition Height="*" />

      <RowDefinition Height="Auto" />

    </Grid.RowDefinitions>

    <Menu Grid.Row="0">

      <MenuItem Header="项目(_P)" >

        <MenuItem Header="新建(_N)" Command="{Binding CreateProjectCommand}" CommandParameter="新项目">

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="打开(_O)" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="移植项目(_M)" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="关闭(_C)" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="删除项目(_D)" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <Separator/>

        <MenuItem Header="保存(_S)" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="另存为(_A)" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="归档(_H)" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <Separator/>

        <MenuItem Header="项目服务器(_H)" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

          <MenuItem Header="管理项目服务器" >

          </MenuItem>

          <MenuItem Header="离线运行" >

            <MenuItem.Icon>

              <Image Source="/FAViews;Component/Images/Menu/Box.png" />

            </MenuItem.Icon>

          </MenuItem>

        </MenuItem>

        <Separator/>

        <MenuItem Header="读卡器/USB存储器" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="存储卡文件(_F)" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <Separator/>

        <MenuItem Header="启动完整性基本检查" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <Separator/>

        <MenuItem Header="推出(_X)" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

      </MenuItem>

      <MenuItem Header="编辑(_E)">

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

      </MenuItem>

      <MenuItem Header="视图(_V)">

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

      </MenuItem>

      <MenuItem Header="插入(_I)">

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

      </MenuItem>

      <MenuItem Header="在线(_O)">

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

      </MenuItem>

      <MenuItem Header="选项(_N)">

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

      </MenuItem>

      <MenuItem Header="工具(_T)">

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

      </MenuItem>

      <MenuItem Header="窗口(_W)">

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

      </MenuItem>

      <MenuItem Header="帮助(_H)">

        <MenuItem Header="显示帮助" >

          <MenuItem.Icon>

            <Image Source="/FAViews;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="Internet上得服务帮助与支持" />

        <MenuItem Header="FA中的帮助与支持(_T) Ctrl+Shift+F7" />

        <Separator />

        <MenuItem Header="已安装的产品(_I)..." />

      </MenuItem>

    </Menu>

    <ToolBarTray Grid.Row="1" Background="White">

      <ToolBar Band="1" BandIndex="1" >

        <Button >

          <Image Source="/FAViews;Component/Images/ToolBar/BlueLarge.png" />

        </Button>

        <Button>

          <Image Source="/FAViews;Component/Images/ToolBar/BlueLarge.png" />

        </Button>

        <Button>

          <Image Source="/FAViews;Component/Images/ToolBar/BlueLarge.png" />

        </Button>

      </ToolBar>

      <ToolBar Band="1" BandIndex="2">

        <Button>

          <Image Source="/FAViews;Component/Images/ToolBar/BlueLarge.png" />

        </Button>

        <Button>

          <Image Source="/FAViews;Component/Images/ToolBar/BlueLarge.png" />

        </Button>

      </ToolBar>

      <ToolBar Band="1" BandIndex="3">

        <Button>

          <Image Source="/FAViews;Component/Images/ToolBar/BlueLarge.png" />

        </Button>

        <Button ToolTip="Help">

          <Image Source="/FAViews;Component/Images/ToolBar/BlueLarge.png" />

        </Button>

        <Separator/>

      </ToolBar>

    </ToolBarTray>

    <!--<DockPanel Grid.Row="1" Background="LightBlue" >

      <TextBlock DockPanel.Dock="Top" Text="Hello!"/>

    </DockPanel>-->

    <Grid Grid.Row="2" Background="LightBlue" >

      <Grid.RowDefinitions>

        <RowDefinition Height="0"/>

        <RowDefinition Height="*"/>

        <RowDefinition Height="24"/>

      </Grid.RowDefinitions>

      <!--<Menu>

        <MenuItem Header="File">

          <MenuItem Header="New Document" Click="NewDocument_Click" Name="NewDocument"/>

          <MenuItem Header="Exit"/>

        </MenuItem>

      </Menu>-->

      <DockingManager x:Name="dockManager"

      Grid.Row="1"

      AllowMixedOrientation="True"

      AutoWindowSizeWhenOpened="True"

      IsVirtualizingAnchorable="True"

      IsVirtualizingDocument="True">

        <DockingManager.DocumentHeaderTemplate>

          <DataTemplate>

            <StackPanel Orientation="Horizontal">

              <Image Margin="0,0,4,0" Source="{Binding IconSource}" />

              <TextBlock Text="{Binding Title}" TextTrimming="CharacterEllipsis" />

            </StackPanel>

          </DataTemplate>

        </DockingManager.DocumentHeaderTemplate>

        <LayoutRoot>

          <LayoutPanel Orientation="Horizontal">

            <LayoutAnchorablePane DockWidth="150">

              <LayoutAnchorable x:Name="WinFormsWindow"

              Title="项目树"

              CanClose="False"

              CanHide="False"

              ContentId="WinFormsWindow"

              ToolTip="My WinForms Tool">

                <TreeView>

                  <TreeViewItem Header="{Binding Project.Name}" ToolTip="{Binding Project.Description}" Visibility="{Binding Project,Converter={StaticResource ProjectVisableConverter},Mode=OneWay}"/>

                  <TreeViewItem Header="在线访问"/>

                  <TreeViewItem Header="读卡器/本地USB存储器"/>

                </TreeView>

              </LayoutAnchorable>

            </LayoutAnchorablePane>

            <LayoutDocumentPaneGroup>

              <LayoutDocumentPane

                x:Name="LayoutDocumentPane">

                <!--ContentId="document1"-->

                <LayoutDocument

                CanClose="False"

                Title="欢迎页面"

                >

                  <Grid>

                    <Grid.ColumnDefinitions>

                      <ColumnDefinition Width="10"/>

                      <ColumnDefinition Width="120"/>

                      <ColumnDefinition Width="*"/>

                    </Grid.ColumnDefinitions>

                    <Grid.RowDefinitions>

                      <RowDefinition Height="Auto" />

                      <RowDefinition Height="Auto" />

                      <RowDefinition Height="Auto" />

                      <RowDefinition Height="Auto" />

                      <RowDefinition Height="Auto" />

                    </Grid.RowDefinitions>

                    <Button

                      Grid.Row="0"

                      Grid.Column="1"

                      Height="28"

                      VerticalAlignment="Top"

                      Command="{Binding TestCommand}" 

                      CommandParameter="Hai" 

                      Content="Test Button 1" />

                    <Button

                      Grid.Row="1"

                      Grid.Column="1"

                      Height="28"

                      VerticalAlignment="Top"

                      Command="{Binding TestCommand}" 

                      Content="Test Button 2" />

                    <Button

                      Grid.Row="2"

                      Grid.Column="1"

                      Height="28"

                      VerticalAlignment="Top"

                      Command="{Binding TestCommand}" 

                      CommandParameter="{Binding ElementName=tbValue,Path=Text}"

                      Content="Test Button 3" />

                    <TextBox 

                      x:Name="tbValue" 

                      Grid.Row="5" 

                      Grid.Column="1"

                      Text="Document 1 Content" />

                  </Grid>

                </LayoutDocument>

                <LayoutDocument Title="文档2" ContentId="document2">

                  <TextBox

                  Background="Transparent"

                  BorderThickness="0"

                  Foreground="White"

                  Text="{Binding TestTimer, Mode=OneWay, StringFormat='Document 2 Attached to Timer ->\{0\}'}" />

                </LayoutDocument>

                <LayoutDocument Title="依赖注入测试" ContentId="document2">

                  <Grid>

                    <Grid.RowDefinitions>

                      <RowDefinition Height="*"/>

                      <RowDefinition Height="30"/>

                      <RowDefinition Height="30"/>

                      <RowDefinition Height="30"/>

                      <RowDefinition Height="*"/>

                    </Grid.RowDefinitions>

                    <Grid.ColumnDefinitions>

                      <ColumnDefinition Width="*"/>

                      <ColumnDefinition Width="200"/>

                      <ColumnDefinition Width="200"/>

                      <ColumnDefinition Width="200"/>

                      <ColumnDefinition Width="200"/>

                      <ColumnDefinition Width="*"/>

                    </Grid.ColumnDefinitions>

                    <Label Grid.Row="1" Grid.Column="1" Content="数值1"/>

                    <TextBox Grid.Row="1" Grid.Column="2" />

                    <Label Grid.Row="1" Grid.Column="3" Content="数值2"/>

                    <TextBox Grid.Row="1" Grid.Column="4" />

                    <Button Margin="3" Grid.Row="2" Grid.Column="1" Content="{x:Static lanrs:Resource.Button1}" />

                    <Button Padding="5" Grid.Row="2" Grid.Column="2" Content="{x:Static lanrs:Resource.Button2}"/>

                    <Button Grid.Row="2" Grid.Column="3" Content="{x:Static lanrs:Resource.Button3}"/>

                    <Button Grid.Row="2" Grid.Column="4" Content="{x:Static lanrs:Resource.Button4}"/>

                    <Button Margin="3" Grid.Row="3" Grid.Column="1" Content="测试"/>

                    <Button Padding="5" Grid.Row="3" Grid.Column="2" Content=""/>

                    <Button Grid.Row="3" Grid.Column="3" Content=""/>

                    <Button Grid.Row="3" Grid.Column="4" Content=""/>

                  </Grid>

                </LayoutDocument>

              </LayoutDocumentPane>

            </LayoutDocumentPaneGroup>

            <LayoutAnchorablePaneGroup DockWidth="150">

              <LayoutAnchorablePane>

                <LayoutAnchorable

                Title="属性"

                ContentId="toolWindow1"

                CanHide="False">

                  <StackPanel MinHeight="450">

                    <TextBox Text="{Binding TestTimer, Mode=OneWay, StringFormat='Tool Window 1 Attached to Timer ->\{0\}'}" />

                  </StackPanel>

                </LayoutAnchorable>

                <LayoutAnchorable

                  Title="查找替换" 

                  CanClose="False"

                  CanHide="False"

                  ContentId="toolWindow2">

                  <TextBlock Text="{Binding FocusedElement}" />

                </LayoutAnchorable>

              </LayoutAnchorablePane>

            </LayoutAnchorablePaneGroup>

          </LayoutPanel>

          <LayoutRoot.LeftSide>

            <LayoutAnchorSide >

              <LayoutAnchorGroup >

                <LayoutAnchorable

                Title="设备"

                ContentId="AutoHide1Content"

                IconSource="/FAViews;Component/Images/Blue.png" AutoHideWidth="150">

                  <TextBox Text="{Binding TestTimer, Mode=OneWay, StringFormat='AutoHide Attached to Timer ->\{0\}'}" />

                </LayoutAnchorable>

                <LayoutAnchorable Title="文件" ContentId="AutoHide2Content" AutoHideWidth="150">

                  <StackPanel Orientation="Vertical">

                    <TextBox />

                    <TextBox />

                  </StackPanel>

### 概述

#### 网格计算

> 虚拟化

> 动态供应

> 资源集中

> 自适应软件

> 统一管理

#### Oracle 11g新特性

> 企业网格管理的高可用性

> 更加优化的性能

> 简化的信息管理

> 集成的信息

> 内置的商业智能

> 丰富的开发平台
                </LayoutAnchorable>

              </LayoutAnchorGroup>

            </LayoutAnchorSide>

          </LayoutRoot.LeftSide>

          <LayoutRoot.BottomSide>

            <LayoutAnchorSide>

              <LayoutAnchorGroup>

                <LayoutAnchorable

								FloatingHeight="200"

                Title="调试"

                CanClose="False"

                CanHide="False"

                ContentId="AutoHide1Content"

                IconSource="/FAViews;Component/Images/Blue.png">

                  <TextBox Text="{Binding TestTimer, Mode=OneWay, StringFormat='AutoHide Attached to Timer ->\{0\}'}" />

                </LayoutAnchorable>

                <LayoutAnchorable 

                  Title="输出" 

                  FloatingHeight="200" 

                  ContentId="AutoHide2Content"

                  CanClose="False"

                  CanHide="False">

                  <ContentControl Content="{Binding DebugPanel, Source={StaticResource InViewLocator}}"/>

                </LayoutAnchorable>

              </LayoutAnchorGroup>

            </LayoutAnchorSide>

          </LayoutRoot.BottomSide>

        </LayoutRoot>

      </DockingManager>

      <StatusBar Grid.Row="2">

        <StatusBarItem Content="DEVGIS FA"/>

      </StatusBar>

    </Grid>

  </Grid>

</facontrols:FAWindow>

##### ViewModel

using DEVGIS.FA.Core;

using DEVGIS.FA.Plugin;

using DEVGIS.FA.Plugin.Services;

using DEVGIS.FA.Views.Views;

using System;

using System.Collections.Generic;

using System.Collections.ObjectModel;

using System.ComponentModel.Composition;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

using System.Windows;

using System.Windows.Input;

namespace DEVGIS.FA.Views.ViewModels

{

  public class MainWindowViewModel : FAViewModel

  {

    //[Import]

    //public static ViewLocator Locator;

    public FACommand TestCommand

    {

      get;

      set;

    }

    public FACommand SelectDevicesCommand

    {

      get;

      set;

    }

    public FACommand CreateProjectCommand

    {

      get;

      set;

    }

    public MainWindowViewModel()

    {

      

      TestCommand = new FACommand(ShowMessage);

      SelectDevicesCommand = new FACommand(SelectDevices);

      CreateProjectCommand = new FACommand((o) => {

        

        //Project = new FAProject(o.ToString());

        CreateProject CreateProjectWindow = new CreateProject();

        if (CreateProjectWindow.ShowDialog() == true)

        {

          Project = (CreateProjectWindow.DataContext as CreateProjectViewModel).Project;

          FAStaticData.Container.GetExportedValue<IDebugOut>().Debug($"{Project.Author}创建了项目：{Project.Name} ！");

        }

      });

      

    }

    public void ShowMessage(object obj)    //消息 方法

    {

      if (obj != null)

      {

        MessageBox.Show(obj.ToString());

      }

      else

      {

        MessageBox.Show("obj is null");

      }

    }

    public void SelectDevices(object obj)    //消息 方法

    {

      SelectDevices selectDevices = new SelectDevices();

      var items = new ObservableCollection<string>((from p in FABuilder.Plugins select p.Name).ToList());

      (selectDevices.DataContext as SelectDevicesViewModel).FACategorys = items;

      selectDevices.ShowDialog();

    }

  }

}

#### SelectDevices

##### Xaml

<facontrols:FAWindow x:Class="DEVGIS.FA.Views.Views.SelectDevices"

       xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"

       xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"

       xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" 

       xmlns:d="http://schemas.microsoft.com/expression/blend/2008" 

       xmlns:local="clr-namespace:DEVGIS.FA.Views.Views"

       xmlns:facontrols="clr-namespace:DEVGIS.FA.Controls;assembly=FAControls"

       xmlns:localvm="clr-namespace:DEVGIS.FA.Views.ViewModels"

       mc:Ignorable="d" 

       d:DesignHeight="450" d:DesignWidth="800">

  <Window.DataContext>

    <localvm:SelectDevicesViewModel/>

  </Window.DataContext>

  <Grid>

    <Grid.RowDefinitions>

      <RowDefinition Height="*" />

      <RowDefinition Height="30" />

    </Grid.RowDefinitions>

    <ListView Name="lst" Grid.Row="0" ItemsSource ="{Binding FACategorys}"/>

    <Button Grid.Row="1" Click="Button_Click"/>

  </Grid>

</facontrols:FAWindow>

##### ViewModel

using DEVGIS.FA.Plugin;

using System;

using System.Collections.Generic;

using System.Collections.ObjectModel;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.FA.Views.ViewModels

{

  public class SelectDevicesViewModel:FAViewModel

  {

    public ObservableCollection<string> faCategorys = null;

    public ObservableCollection<string> FACategorys {

      get {

        return faCategorys;

      }

      set {

        faCategorys = value;

        RaisePropertyChanged("FACategorys");

      }

    }

	}

}

#### ViewLocator

using DEVGIS.FA.Plugin;

using DEVGIS.FA.Plugin.Services;

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.Dynamic;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.FA.Views

{

  //[Export(typeof(ViewLocator))]

  public class ViewLocator : DynamicObject, IPartImportsSatisfiedNotification

  {

    //[ImportMany(typeof(FAView))]

    ////private IEnumerable<Lazy<View, IViewMetadata>> views { get; set; }

    //public static IEnumerable<FAView> Views { get; set; }

    public IFALogger FALogger { get {

        return FAStaticData.Container.GetExportedValue<IFALogger>();

      } }

    public override bool TryGetMember(GetMemberBinder binder, out object result)

    {

      string name = binder.Name;

      var views = FAStaticData.Container.GetExportedValues<FAView>();

      if (views == null)

      {

        result = null;

        return false;

      }

      var view = views.FirstOrDefault(v => v.GetType().Name.Equals(name));

      // Error handling

      if (null == view)

        FALogger.Error("views is null at TryGetMember");

      result = view;

      return null != result;

    }

    public void OnImportsSatisfied()

    {

      FALogger.Info($"{this.GetType()} Composition complete");

    }

  }

}

### 外部包依赖

#### Dirkster.AvalonDock

##### Dirkster.AvalonDock.Themes.VS2013

#### Fluent.Ribbon

#### log4net

#### MEF

##### System.ComponentModel.Composition

#### Dirkster.AvalonDock

#### log4net

### LanguageResource实现多语言支持

### HTTP

> HTTP协议的几个重要概念
> > 1.连接(Connection)：一个传输层的实际环流，它是建立在两个相互通讯的应用程序之间。
> > 2.消息(Message)：HTTP通讯的基本单位，包括一个结构化的八元组序列并通过连接传输。
> > 3.请求(Request)：一个从客户端到服务器的请求信息包括应用于资源的方法、资源的标识符和协议的版本号
> > 4.响应(Response)：一个从服务器返回的信息包括HTTP协议的版本号、请求的状态(例如“成功”或“没找到”)和文档的MIME类型。
> > 5.资源(Resource)：由URI标识的网络数据对象或服务。
> > 6.实体(Entity)：数据资源或来自服务资源的回映的一种特殊表示方法，它可能被包围在一个请求或响应信息中。一个实体包括实体头信息和实体的本身内容。
> > 7.客户机(Client)：一个为发送请求目的而建立连接的应用程序。
> > 8.用户代理(Useragent)：初始化一个请求的客户机。它们是浏览器、编辑器或其它用户工具。
> > 9.服务器(Server)：一个接受连接并对请求返回信息的应用程序。
> > 10.源服务器(Originserver)：是一个给定资源可以在其上驻留或被创建的服务器。
> > 11.代理(Proxy)：一个中间程序，它可以充当一个服务器，也可以充当一个客户机，为其它客户机建立请求。请求是通过可能的翻译在内部或经过传递到其它的服务器中。一个代理在发送请求信息之前，必须解释并且如果可能重写它。
> > 代理经常作为通过防火墙的客户机端的门户，代理还可以作为一个帮助应用来通过协议处理没有被用户代理完成的请求。
> > 12.网关(Gateway)：一个作为其它服务器中间媒介的服务器。与代理不同的是，网关接受请求就好象对被请求的资源来说它就是源服务器；发出请求的客户机并没有意识到它在同网关打交道。
> > 网关经常作为通过防火墙的服务器端的门户，网关还可以作为一个协议翻译器以便存取那些存储在非HTTP系统中的资源。
> > 13.通道(Tunnel)：是作为两个连接中继的中介程序。一旦激活，通道便被认为不属于HTTP通讯，尽管通道可能是被一个HTTP请求初始化的。当被中继的连接两端关闭时，通道便消失。当一个门户(Portal)必须存在或中介(Intermediary)不能解释中继的通讯时通道被经常使用。
> > 14.缓存(Cache)：反应信息的局域存储。

## 认证授权

### 认证

> Session-Cookie

Session-Cookie 的认证流程如下：用户先使用用户名和密码登录，登录完成后后端将用户信息存在session 中，把sessionId 写到前端的cookie 中，后面每次操作带着cookie 去后端，只要后端判断sessionId 没问题且没过期就不需要再次登录。

使用这种方式进行认证，开发者可能面临的主要问题如下：

cookie 安全性问题，攻击者可以通过xss 获取cookie 中的sessinId，使用 httpOnly 在一定程度上提高安全性

cookie 不能跨域传输

session 存储在服务器中，所以session 过多会耗费较大服务器资源

### Token

与上面的Session-Cookie 机制不同的地方在于，基于token 的用户认证是一种服务端无状态的认证方式，服务端可以不用存放token 数据，但是服务器可以验证token 的合法性和有效性。

使用token 进行认证的方式这里主要介绍两种：

#### SAML

> SAML (Security Assertion Markup Language) 

未登录的用户通过浏览器访问资源网站（Service Provider，简称SP）

SP 发现用户未登录，将页面重定向至IdP（Identity Provider）

IdP 验证请求无误后，提供表单让用户进行登录

用户登录成功后，IdP 生成并发送SAML token (一个很大的XML对象) 给SP

SP 对token 进行验证，解析获取用户信息，允许用户访问相关资源

#### JWT

JSON Web Token 入门教程（预计阅读时间：2mins）

简言之，JWT 就是一种在用户登录后生成token 并把token 放在前端，后端不需要维护用户的状态信息但是可以验证token 有效性的认证及状态管理方式。 


#### SSO 与CAS
接下来我们探讨一个企业应一定绕不过的课题：单点登录。

举例来说，华为云下有若干云服务。包含项目管理、代码托管、代码检查、流水线、编译构建、部署、自动化测试等众多微服务的DevCloud（软件开发云） 正是其中之一，用户如果在使用任意一个服务没有登录的时候都可以去同一个地方进行登录认证，登录之后的一段时间内可以无需登录访问所有其他服务。

在单点登录领域，CAS（Central Authentication Service，中文名是中央认证服务） 是一个被高频使用的解决方案。因此，这里介绍一下利用CAS 实现SSO。而CAS 的具体实现又可以依赖很多种协议，比如OpenID、OAuth、SAML 等，这里重点介绍一下CAS 协议。

CAS 协议中的几个重要概念
简单介绍一下CAS 协议中的几个重要概念，一开始看概念可能很模糊，可以先过一遍，再结合下面的流程图来理解。

CAS Server：用于认证的中心服务器

CAS Clients：保护CAS 应用，一旦有未认证的用户访问，重定向至CAS Server 进行认证

TGT & TGC：用户认证之后，CAS Server 回生成一个包含用户信息的TGT (Ticket Granting Ticket) 并向浏览器写一个cookie（TGC，Ticket Granting Cookie），有啥用后面流程会讲到

ST：在url 上作为参数传输的ticket，受保护应用可以凭借这个ticket 去CAS Server 确认用户的认证是否合法 

### 授权


#### OAuth 授权

OAuth 的设计本意更倾向于授权而不是认证，所以这一小节的标题写的是授权，但是其实在授权的同时也已经完成了认证。


OAuth 2 是一个授权框架，或称授权标准，它可以使第三方应用程序或客户端获得对HTTP服务上（例如 Google，GitHub ）用户帐户信息的有限访问权限。OAuth 2 通过将用户身份验证委派给托管用户帐户的服务以及授权客户端访问用户帐户进行工作。综上，OAuth 2 可以为 Web 应用 和桌面应用以及移动应用提供授权流程。

本文将从OAuth 2 角色，授权许可类型，授权流程等几方面进行讲解。

在正式讲解之前，这里先引入一段应用场景，用以与后文的角色讲解对应。

开发者A注册某IT论坛后，发现可以在信息栏中填写自己的 Github 个人信息和仓库项目，但是他又觉得手工填写十分麻烦，直接提供 Github 账户和密码给论坛管理员帮忙处理更是十分智障。
不过该论坛似乎和 Github 有不可告人的秘密，开发者A可以点击“导入”按钮，授权该论坛访问自己的 Github 账户并限制其只具备读权限。这样一来， Github 中的所有仓库和相关信息就可以很方便地被导入到信息栏中，账户隐私信息也不会泄露。
这背后，便是 OAuth 2 在大显神威。

2. OAuth2 角色
OAuth 2 标准中定义了以下几种角色：

资源所有者（Resource Owner）
资源服务器（Resource Server）
授权服务器（Authorization Server）
客户端（Client）
2.1 资源所有者（Resource Owner）
资源所有者是 OAuth 2 四大基本角色之一，在 OAuth 2 标准中，资源所有者即代表授权客户端访问本身资源信息的用户（User），也就是应用场景中的“开发者A”。客户端访问用户帐户的权限仅限于用户授权的“范围”（aka. scope，例如读取或写入权限）。

如果没有特别说明，下文中出现的"用户"将统一代表资源所有者。

2.2 资源/授权服务器（Resource/Authorization Server）
资源服务器托管了受保护的用户账号信息，而授权服务器验证用户身份然后为客户端派发资源访问令牌。

在上述应用场景中，Github 既是授权服务器也是资源服务器，个人信息和仓库信息即为资源（Resource）。而在实际工程中，不同的服务器应用往往独立部署，协同保护用户账户信息资源。

2.3 客户端（Client）
在 OAuth 2 中，客户端即代表意图访问受限资源的第三方应用。在访问实现之前，它必须先经过用户者授权，并且获得的授权凭证将进一步由授权服务器进行验证。

如果没有特别说明，下文中将不对"应用"，“第三方应用”，“客户端”做出区分。

3. OAuth 2 的授权流程
目前为止你应该对 OAuth 2 的角色有了些概念，接下来让我们来看看这几个角色之间的抽象授权流程图和相关解释。

请注意，实际的授权流程图会因为用户返回授权许可类型的不同而不同。但是下图大体上能反映一次完整抽象的授权流程。



Authrization Request
客户端向用户请求对资源服务器的authorization grant。
Authorization Grant（Get）
如果用户授权该次请求，客户端将收到一个authorization grant。
Authorization Grant（Post）
客户端向授权服务器发送它自己的客户端身份标识和上一步中的authorization grant，请求访问令牌。
Access Token（Get）
如果客户端身份被认证，并且authorization grant也被验证通过，授权服务器将为客户端派发access token。授权阶段至此全部结束。
Access Token（Post && Validate）
客户端向资源服务器发送access token用于验证并请求资源信息。
Protected Resource（Get）

如果access token验证通过，资源服务器将向客户端返回资源信息。


## gRPC 

### gRPC 概述

```

gRPC 是一种与语言无关的高性能远程过程调用 (RPC) 框架。

gRPC 的主要优点是：

现代高性能轻量级 RPC 框架。

协定优先 API 开发，默认使用协议缓冲区，允许与语言无关的实现。

可用于多种语言的工具，以生成强类型服务器和客户端。

支持客户端、服务器和双向流式处理调用。

使用 Protobuf 二进制序列化减少对网络的使用。

这些优点使 gRPC 适用于：

效率至关重要的轻量级微服务。

需要多种语言用于开发的 Polyglot 系统。

需要处理流式处理请求或响应的点对点实时服务。

 GRPC是google开源的一个高性能、跨语言的RPC框架，基于HTTP2协议，基于protobuf 3.x，基于Netty 4.x +。GRPC与thrift、avro-rpc等其实在总体原理上并没有太大的区别，简而言之GRPC并没有太多突破性的创新。（如下描述，均基于JAVA语言的实现）

  对于开发者而言：

  1）需要使用protobuf定义接口，即.proto文件

  2）然后使用compile工具生成特定语言的执行代码，比如JAVA、C/C++、Python等。类似于thrift，为了解决跨语言问题。

  3）启动一个Server端，server端通过侦听指定的port，来等待Client链接请求，通常使用Netty来构建，GRPC内置了Netty的支持。

  4）启动一个或者多个Client端，Client也是基于Netty，Client通过与Server建立TCP长链接，并发送请求；Request与Response均被封装成HTTP2的stream Frame，通过Netty Channel进行交互。

```

### gRPC 服务项目模板

```

对 .proto 文件的 C# 工具支持

gRPC 使用协定优先方法进行 API 开发。 在 .proto 文件中定义服务和消息：

ProtoBuf

```

syntax = "proto3";

service Greeter {

 rpc SayHello (HelloRequest) returns (HelloReply);

}

message HelloRequest {

 string name = 1;

}

message HelloReply {

 string message = 1;

}

通过在项目中包含 .proto 文件，可自动生成用于服务、客户端和消息的 .NET 类型：

将包引用添加到 Grpc.Tools 包。

将 .proto 文件添加到 <Protobuf> 项目组。

```

XML

```

<ItemGroup>

 <Protobuf Include="Protos\greet.proto" />

</ItemGroup>

```

有关 gRPC 工具支持的详细信息，请参阅使用 C# 的 gRPC 服务。

ASP.NET Core 上的 gRPC 服务

gRPC 服务可以托管在 ASP.NET Core 上。 这些服务与日志记录、依赖关系注入 (DI)、身份验证和授权等 ASP.NET Core 功能完全集成。

将 gRPC 服务添加到 ASP.NET Core 应用

gRPC 需要 Grpc.AspNetCore 包。 若要了解如何在 .NET 应用中配置 gRPC，请查看配置 gRPC。

```

### ASP.NET Core gRPC 服务项目模板提供了一个入门版服务：

```

public class GreeterService : Greeter.GreeterBase

{

  private readonly ILogger<GreeterService> _logger;

  public GreeterService(ILogger<GreeterService> logger)

  {

    _logger = logger;

  }

  public override Task<HelloReply> SayHello(HelloRequest request,

    ServerCallContext context)

  {

    _logger.LogInformation("Saying hello to {Name}", request.Name);

    return Task.FromResult(new HelloReply 

    {

      Message = "Hello " + request.Name

    });

  }

}

GreeterService 继承自 GreeterBase 类型，后者是从 .proto 文件的 Greeter 服务生成的。 Startup.csProgram.cs 中的客户端可以访问该服务：

app.MapGrpcService<GreeterService>();

若要详细了解 ASP.NET Core 上的 gRPC 服务，请参阅使用 ASP.NET Core 的 gRPC 服务。

```

### 使用 .NET 客户端调用 gRPC 服务

```

gRPC 客户端是从 .proto 文件生成的具体客户端类型。 具体 gRPC 客户端具有转换为 .proto 文件中 gRPC 服务的方法。

var channel = GrpcChannel.ForAddress("https://localhost:5001");

var client = new Greeter.GreeterClient(channel);

var response = await client.SayHelloAsync(

  new HelloRequest { Name = "World" });

Console.WriteLine(response.Message);

gRPC 客户端是使用通道创建的，该通道表示与 gRPC 服务的长期连接。 可以使用 GrpcChannel.ForAddress 创建通道。

有关创建客户端、调用不同服务方法的详细信息，请参阅使用 .NET 客户端调用 gRPC 服务。

```
