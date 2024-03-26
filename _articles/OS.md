---
layout: post
title: 计算机操作系统
description: 计算机科学相关学习内容总结,包括各种操作系统安装配置，Windows Linux,以及Docker等虚拟化技术。
date: 2022-10-01 09:01:01
updatedate: 2024-03-26 10:55:53
---

- [操作系统理论](#操作系统理论)
  - [计算机系统概述](#计算机系统概述)
  - [操作系统引论](#操作系统引论)
  - [进程与线程](#进程与线程)
  - [进程同步与通信](#进程同步与通信)
  - [调度与死锁](#调度与死锁)
  - [存储管理](#存储管理)
  - [虚拟存储管理](#虚拟存储管理)
  - [设备管理](#设备管理)
  - [文件管理](#文件管理)
  - [indows操作系统](#indows操作系统)
  - [Linux操作系统](#linux操作系统)
  - [操作系统安全](#操作系统安全)
- [操作系统安装](#操作系统安装)
  - [legacy+MBR](#legacymbr)
  - [UEFI](#uefi)
  - [CSM](#csm)
- [嵌入式操作系统基础](#嵌入式操作系统基础)
  - [Uboot](#uboot)
  - [rootfs](#rootfs)
  - [kernel](#kernel)
  - [Busybox](#busybox)
- [Windows](#windows)
- [LinuxAndOpenSource](#linuxandopensource)
  - [Linux 命令大全](#linux-命令大全)
    - [系统信息](#系统信息)
    - [文件搜索](#文件搜索)
    - [挂载一个文件系统](#挂载一个文件系统)
    - [磁盘空间](#磁盘空间)
    - [用户和群组](#用户和群组)
    - [打包和压缩文件](#打包和压缩文件)
    - [RPM 包](#rpm-包)
    - [YUM 软件包升级器](#yum-软件包升级器)
    - [DEB 包](#deb-包)
    - [查看文件内容](#查看文件内容)
    - [文本处理](#文本处理)
    - [字符设置和文件格式转换](#字符设置和文件格式转换)
    - [文件系统分析](#文件系统分析)
    - [初始化一个文件系统](#初始化一个文件系统)
    - [SWAP文件系统](#swap文件系统)
    - [备份](#备份)
    - [光盘](#光盘)
    - [网络 - （以太网和WIFI无线）](#网络---以太网和wifi无线)
    - [DD 命令](#dd-命令)
  - [OpenSource主流开源协议](#opensource主流开源协议)
    - [GPL](#gpl)
    - [LGPL](#lgpl)
    - [BSD](#bsd)
    - [Apache](#apache)
    - [MIT(MITL)](#mitmitl)
    - [Mozilla(MPL)](#mozillampl)
  - [Git in linux](#git-in-linux)
    - [GithubCli](#githubcli)
    - [Login](#login)
    - [Git helper](#git-helper)
  - [systemctl](#systemctl)
  - [Q\&A](#qa)
  - [Ubuntu 相关](#ubuntu-相关)
- [ubuntu](#ubuntu)
  - [文件管理器中不显示图片视频缩略图](#文件管理器中不显示图片视频缩略图)
  - [安装指定版本nodejs](#安装指定版本nodejs)
  - [yarn](#yarn)
  - [安装 npmp](#安装-npmp)
- [Docker](#docker)
  - [Docker 安装 \& 配置镜像加速器](#docker-安装--配置镜像加速器)
  - [container容器](#container容器)
    - [共享数据](#共享数据)
      - [DataVolume](#datavolume)
  - [镜像](#镜像)
  - [DockFile](#dockfile)
  - [daemon D](#daemond)
  - [Docker Server ](#docker-server)
    - [Job](#job)
  - [client](#client)
  - [Swarm](#swarm)
  - [Machine](#machine)
  - [Compose](#compose)
  - [LXC](#lxc)
    - [NameSpace](#namespace)
  - [repository](#repository)
    - [DockerHub](#dockerhub)
    - [私有仓库](#私有仓库)
  - [优点](#优点)
    - [快速，一致地交付您的应用程序](#快速一致地交付您的应用程序)
    - [响应式部署和扩展](#响应式部署和扩展)
    - [在同一硬件上运行更多工作负载](#在同一硬件上运行更多工作负载)
  - [Dockerfile 详解](#dockerfile-详解)
    - [Docker 命令详解](#docker-命令详解)
  - [Docker-compose](#docker-compose)
    - [一，Docker-compose简介](#一docker-compose简介)
    - [二，Docker-compose常用命令](#二docker-compose常用命令)
    - [三，Docker-compose模板文件](#三docker-compose模板文件)
  - [Dpcler-Kubernetes](#dpcler-kubernetes)
    - [kubernetes 概述](#kubernetes-概述)
    - [核心概念](#核心概念)
    - [kubernetes 集群搭建(kubeadm 方式)](#kubernetes-集群搭建kubeadm-方式)
    - [安装方法二](#安装方法二)
    - [kubernetes 集群搭建（二进制）](#kubernetes-集群搭建二进制)
    - [kubernetes 集群 YAML 文件详解](#kubernetes-集群-yaml-文件详解)
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
  - [文件管理](#文件管理-1)
  - [数据采集](#数据采集)
  - [通信技术](#通信技术)


# 操作系统理论

## 计算机系统概述

> 计算机系统及其结构

> 计算机硬件

> > 中央处理器

> > 存储器

> > I/O系统

> > 总线

> > 启动计算机

> 指令的执行

> > 取指令与执行指令

> > I/O函数

> 中断

> > 中断与指令周期

> > 中断处理

> > 多个中断

## 操作系统引论

> 是一组主管并控制计算机操作、运用和运行硬件、软件资源和提供公共服务来组织用户交互的相互关联的系统软件程序。

> > 1资源管理的观点

> > 用户的观点（扩展机器的观点）

> 操作系统的产生和发展

> > 第一代计算机没有操作系统

> > 第二代计算机有了监控系统

> > 第三代计算机操作系统得到极大的发展

> > 第四代计算机操作系统向多元化方向发展

> 操作系统的特征

> 操作系统的功作系统的功能

> > 进程管理

> > 存储管理

> > 设备管理

> > 文件管理

> > 操作系统接口

> 操作系统的类型

> > 批处理操作系统

> > 分时操作系统

> > 实时操作系统

> > 微机操作系统

> > 多处理机操作系统

> > 网络操作系统

> > 分布式操作系统

> > 嵌入式操作系统

> 操作系统的体系结构

> > 单核系统

> > 多核系统

> > 集群系统

## 进程与线程

> 进程的引入

> > 单道程序的顺序执行

> > 多道程序的并发执行

> > 程序并发执行的条件

> > 进程的概念

> 进程的状态及组成

> > 进程的基本状态

> > 进程的挂起状态

> > 进程控制块

> 进程控制

> > 操作系统内核

> > 进程的创建与撤销

> > 进程的阻塞与唤醒

> > 进程的挂起与激活

> 线程

> > 线程的概念

> > 线程与进程的比较

> > 线程的实现

> > 多线程问题

## 进程同步与通信

> 进程同步与互斥

> 并发原理

> > 临界资源与临界区

> > 互斥实现的硬件方法

> > 互斥实现的软件方法

> > 信号量和P、V操作

3.2经典进程同步与互斥问题

3.2.1生产者—消费者问题

3.2.2读者—写者问题

3.2.3哲学家进餐问题

3.2.4打瞌睡的理发师问题

3.3AND信号量

3.3.1AND信号量的引入

3.3.2用AND信号量解决实际应用

3.4管程

3.4.1管程的思想

3.4.2管程的结构

3.4.3用管程解决实际应用

3.5同步与互斥实例

3.5.1Solaris的同步与互斥

3.5.2Windows的同步与互斥

3.5.3Linux的同步与互斥

3.6进程通信

3.6.1进程通信的类型

3.6.2进程通信中的问题

3.6.3消息传递系统的实现

3.6.4客户端—服务器系统通信

## 调度与死锁

4.1调度类型与准则

4.1.1调度类型

4.1.2进程调度方式

4.1.3进程调度时机

4.1.4调度的性能准则

4.2调度算法

4.2.1先来先服务调度算法

4.2.2短作业（进程）优先调度算法

4.2.3时间片轮转调度算法

4.2.4优先权调度算法

4.2.5多级反馈队列调度算法

4.2.6多种调度算法的比较

4.3死锁的基本概念

4.3.1死锁的定义

4.3.2死锁产生的原因

4.3.3可重复使用资源和可消耗资源

4.3.4死锁产生的必要条件

4.4死锁的预防与避免

4.4.1死锁的预防

4.4.2死锁的避免

4.4.3银行家算法

4.5死锁的检测与解除

4.5.1资源分配图

4.5.2死锁的解除

4.5.3鸵鸟算法

## 存储管理

5.1程序的装入和链接

5.1.1重定位

5.1.2链接

5.2连续分配存储管理方式

5.2.1单一连续分区

5.2.2固定分区

5.2.3可变分区

5.2.4动态重定位分区

5.3页式存储管理

5.3.1页式存储管理的基本原理

5.3.2页式存储管理的地址变换

5.3.3页表的硬件实现

5.3.4页表的组织

5.4段式存储管理

5.4.1段式存储管理的基本原理

5.4.2段式存储管理系统的地址变换

5.4.3分段和分页的区别

5.4.4段的共享与保护

5.5段页式存储管理

5.5.1段页式存储管理的基本原理

5.5.2段页式存储管理的地址变换

5.5.3段页式存储管理系统举例

## 虚拟存储管理

6.1虚拟存储器的引入

6.1.1局部性原理

6.1.2虚拟存储器

6.1.3虚拟存储器的特征

6.2请求页式存储管理

6.2.1请求页式存储管理系统的实现

6.2.2请求页式存储管理驻留集管理

6.2.3请求页式存储管理的调入策略

6.2.4请求页式存储管理的页面置换算法

6.2.5请求页式存储管理系统的性能

6.3请求段式存储管理

6.3.1请求段式存储管理的地址实现

6.3.2动态链接

## 设备管理

7.1I/O管理概述

7.1.1I/O管理的功能

7.1.2I/O硬件组成

7.1.3I/O设备

7.1.4设备控制器

7.1.5设备通道

7.2I/O控制方式

7.2.1程序直接控制方式

7.2.2中断控制方式

7.2.3DMA控制方式

7.2.4通道控制方式

7.3I/O系统

7.3.1设备分配

7.3.2SPOOLing技术

7.3.3设备驱动程序

7.3.4中断处理程序

7.4磁盘管理

7.4.1磁盘结构和管理

7.4.2磁盘调度

7.4.3独立磁盘冗余阵列

7.4.4非易失性存储器

7.5缓冲管理

7.5.1缓冲

7.5.2磁盘高速缓存

7.5.3提高磁盘I/O速度的其他方法

## 文件管理

8.1文件概述

8.1.1文件类型

8.1.2文件属性

8.1.3文件的操作

8.1.4文件访问方式

8.2文件结构和文件系统

8.2.1文件结构

8.2.2有结构文件的组织

8.2.3文件系统

8.3目录

8.3.1文件控制块和索引节点

8.3.2单级目录

8.3.3两级目录

8.3.4树形目录

8.3.5目录的查询

8.3.6文件的共享

8.4文件系统实现

8.4.1文件系统的格式

8.4.2文件的存储结构

8.4.3空闲存储空间的管理

8.5文件系统的可靠性

8.5.1坏块管理

8.5.2备份

8.5.3文件系统一致性问题

8.5.4数据一致性控制

8.6保护机制

8.6.1保护域

8.6.2保护矩阵的实现

8.6.3分级安全管理

思考与练习题

## indows操作系统

9.1Windows的特点和结构

9.1.1Windows的特点

9.1.2Windows的结构

9.2Windows 进程管理

9.2.1Windows的进程和线程

9.2.2Windows的互斥与同步

9.2.3Windows的进程通信

9.2.4Windows的线程调度

9.3Windows内存管理

9.3.1Windows的地址空间布局

9.3.2Windows的地址变换机制

9.3.3Windows的内存分配

9.3.4Windows的页面共享

9.3.5Windows的驻留集

9.3.6Windows的物理内存管理

9.4Windows设备管理

9.4.1Windows的I/O系统结构

9.4.2Windows的I/O系统的数据结构

9.4.3Windows的I/O系统的设备驱动程序

9.4.4Windows的I/O处理

9.4.5Windows的磁盘管理

9.4.6Windows的高速缓存管理

9.4.7Windows的高速缓存支持的操作

9.5Windows文件管理

9.5.1Windows文件系统概述

9.5.2NTFS卷及其结构

9.5.3NTFS的可恢复性、可靠性和安全性

## Linux操作系统

10.1Linux内核设计

10.1.1内核设计目标

10.1.2微内核与单内核

10.1.3Linux内核结构

10.2Linux系统的启动与初始化

10.2.1初始化系统

10.2.2操作系统的初始化

10.2.3init进程

10.3Linux进程管理

10.3.1Linux中的进程与线程

10.3.2进程与线程的创建和撤销

10.3.3进程调度

10.3.4进程通信

10.4Linux内存管理

10.4.1虚拟内存管理

10.4.2物理内存管理

10.5Linux文件管理

10.5.1虚拟文件系统

10.5.2文件系统的安装与卸载

10.5.3EXT2逻辑文件系统

10.6Linux设备管理

10.6.1Linux设备管理概述

10.6.2Linux设备的类型

10.6.3中断

10.6.4缓存和刷新机制

10.6.5磁盘调度

## 操作系统安全

11.1操作系统安全概述

11.1.1操作系统的脆弱性

11.1.2安全操作系统的重要性

11.2操作系统的安全机制

11.2.1硬件安全机制

11.2.2软件安全机制

11.3操作系统安全评测

11.3.1操作系统安全评测方法

11.3.2国内外计算机系统安全评测准则

11.3.3美国国防部可信计算机系统评测准则

11.3.4CC(ISO/IEC 154081999)

11.3.5中国计算机信息系统安全保护等级划分准则

11.4分布式操作系统安全

11.4.1加密和数据签名

11.4.2身份认证

11.4.3防火墙

11.5Linux操作系统安全性

11.5.1标识与鉴别

11.5.2存取控制

11.5.3审计与加密

11.5.4网络安全

11.5.5备份

11.6Windows 2000/XP操作系统安全

11.6.1Windows 2000/XP安全模型

11.6.2Windows的注册表、文件系统及系统的激活和授权机制

11.7主流操作系统安全机制

11.7.1Windows Vista/Windows 7/Windows 10操作系统

11.7.2Android操作系统

11.7.3Mac OS & iOS操作系统

11.8云操作系统

11.8.1Windows Azure

11.8.2Google Chrome OS

# 操作系统安装

## legacy+MBR

## UEFI

## CSM

> CSM是一个兼容支持模块，可以让新的UEFI BIOS兼容老的legacy+MBR启动模式。在品牌机的BIOS里，CSM因为安全启动选项打开的原因，默认都是关闭的，而想打开CSM就得关闭安全启动，而有些激进的品牌机则干脆直接抛弃了对CSM的支持，BIOS内没有CSM支持模块。

# 嵌入式操作系统基础

## Uboot

> 嵌入式系统上电后先执行uboot、然后uboot负责初始化DDR，初始化Flash，然后将OS从Flash中读取到DDR中，然后启动OS(OS启动后uboot就无用了) 总结：嵌入式系统和PC机的启动过程几乎没有两样，只是BIOS成了uboot，硬盘成了Flash。

> Uboot支持的命令

    复制代码
    ?       - alias for 'help'
    base    - print or set address offset
    bdinfo  - print Board Info structure
    bmode   - sd1|sd2|qspi1|normal|usb|sata|ecspi1:0|ecspi1:1|ecspi1:2|ecspi1:3|esdhc1|esdhc2|esdhc3|esdhc4 [noreset]
    bmp     - manipulate BMP image data
    boot    - boot default, i.e., run 'bootcmd'
    bootd   - boot default, i.e., run 'bootcmd'
    bootelf - Boot from an ELF image in memory
    bootm   - boot application image from memory
    bootp   - boot image via network using BOOTP/TFTP protocol
    bootvx  - Boot vxWorks from an ELF image
    bootz   - boot Linux zImage image from memory
    clocks  - display clocks
    clrlogo - fill the boot logo area with black
    cmp     - memory compare
    coninfo - print console devices and information
    cp      - memory copy
    crc32   - checksum calculation
    dcache  - enable or disable data cache
    dhcp    - boot image via network using DHCP/TFTP protocol
    dm      - Driver model low level access
    echo    - echo args to console
    editenv - edit environment variable
    env     - environment handling commands
    erase   - erase FLASH memory
    exit    - exit script
    ext2load- load binary file from a Ext2 filesystem
    ext2ls  - list files in a directory (default /)
    ext4load- load binary file from a Ext4 filesystem
    ext4ls  - list files in a directory (default /)
    ext4size- determine a file's size
    ext4write- create a file in the root directory
    false   - do nothing, unsuccessfully
    fatinfo - print information about filesystem
    fatload - load binary file from a dos filesystem
    fatls   - list files in a directory (default /)
    fatsize - determine a file's size
    fdt     - flattened device tree utility commands
    flinfo  - print FLASH memory information
    fstype  - Look up a filesystem type
    fuse    - Fuse sub-system
    go      - start application at address 'addr'
    gpio    - query and control gpio pins
    help    - print command description/usage
    i2c     - I2C sub-system
    icache  - enable or disable instruction cache
    iminfo  - print header information for application image
    imxtract- extract a part of a multi-image
    itest   - return true/false on integer compare
    load    - load binary file from a filesystem
    loadb   - load binary file over serial line (kermit mode)
    loads   - load S-Record file over serial line
    loadx   - load binary file over serial line (xmodem mode)
    loady   - load binary file over serial line (ymodem mode)
    loop    - infinite loop on address range
    ls      - list files in a directory (default /)
    md      - memory display
    mm      - memory modify (auto-incrementing address)
    mmc     - MMC sub system
    mmcinfo - display MMC info
    mw      - memory write (fill)
    nand    - NAND sub-system
    nboot   - boot from NAND device
    nfs     - boot image via network using NFS protocol
    nm      - memory modify (constant address)
    ping    - send ICMP ECHO_REQUEST to network host
    pmic    - PMIC
    printenv- print environment variables
    protect - enable or disable FLASH write protection
    reset   - Perform RESET of the CPU
    run     - run commands in an environment variable
    save    - save file to a filesystem
    saveenv - save environment variables to persistent storage
    setenv  - set environment variables
    setexpr - set environment variable as the result of eval expression
    showvar - print local hushshell variables
    size    - determine a file's size
    sleep   - delay execution for some time
    source  - run script from memory
    test    - minimal test like /bin/sh
    tftpboot- boot image via network using TFTP protocol
    true    - do nothing, successfully
    usb     - USB sub-system
    usbboot - boot from USB device
    version - print monitor, compiler and linker version

## rootfs

## kernel

## Busybox

# Windows

Windows

Windows Powershell

Windows批量添加文件后缀

![0](data\:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA3MAAADlCAYAAAD5nq65AAAAAXNSR0IArs4c6QAAIABJREFUeF7snX9oU9f//5+CX0jBN6TgGxrYwDt8gxEFUzYwYf5hpB8wxTeYomCCA40baKqwJhPWZv2jJg40ceAahc0oKIkwSQqTpvAu3v7hSASlV1CawWS3sEICK/TCu9AL74Jfzs2vm5ubX23drL7C/nG9P855nHPPOc/z+nG2vH79+jXoRwSIABEgAkSACBABIkAEiAARIAKbisAWEnObqr2osESACBABIkAEiAARIAJEgAgQAYUAiTnqCESACBABIkAEiAARIAJEgAgQgU1IgMTcJmw0KjIRIAJEgAgQASJABIgAESACRIDEHPUBIkAEiAARIAJEgAgQASJABIjAJiRAYm4TNhoVmQgQASJABIgAESACRIAIEAEiQGKO+gARIAJEgAgQASJABIgAESACRGATEiAxtwkbjYpMBIgAESACRIAIEAEiQASIABEgMUd9gAgQASJABIgAESACRIAIEAEisAkJkJjbhI1GRSYCRIAIEAEiQASIABEgAkSACJCYoz5ABIgAESACRIAIEAEiQASIABHYhARIzG3CRqMiEwEiQASIABEgAkSACBABIkAESMxRHyACRIAIEAEiQASIABEgAkSACGxCAiTmNmGjUZGJABEgAkSACBABIkAEiAARIAIk5qgPEAEiQASIABEgAkSACBABIkAENiEBEnObsNGoyESACBABIkAEiAARIAJEgAgQARJzun1AhrRogHF7kw7yLAL3jAWRL+3o2bqJO9LzKM5MmxHU1qOQRuge4DrrALdtE9dvsxZd5hEZluC84gSn7V8vEwj9ZsXIUW6z1o7KTQSIABEgAkSACBABIrABBN59MbeQRuCKCPuwF/ae9omJ984gtOrD+CkzDHq3zScwcHQO/sdBWDex2BG+64VD8CNz14UaaSDz8P87B89/vDC3wvYkgoHHHLwfG1tdqfy9MBPDrDmA4IkGbNt6yjt+Eetf1kkMZONw7aita+H+AExDBiSfxuH84B3nQNUjAkSACBABIkAEiAARaEjg3RdzAORfArAdExHoaPErIub4CNnPl3DrqI5IWUhgYAiI/uRCBxrxLeuKAiIWD3BnFr592qJlETouwlNTPxnyqgEGraXoSQhbpu14/Y215iFMdHgR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4Jd29JSEW2EmAt+FMBIvu2Dts8PWZ4HtsAfOPcxkwiPyYzd85/VFcfbSR0h+PIvwYXbumAh+IorQcAR8oaeY8XH/G6rYJn5sW5Y5Ftc5HUPwahqFFRH8EzuSf9ZnbN3EGKjoRIAIEAEiQASIABEgAm0QeEfEnIzcVArihw449jTOQsLcB/svS3CqdvnbYPTOXlKYimDS5EbviyQyhl4MHLGikU6Vfk0jmeABZxieUkIZ8Rce+NReE9fXEtbzKAYf2xAuW2xa3vB+XZB7EIV00Ks6U02C+FIGt6ec21/Fg8VwHk+AGwvD8/Emy77zfjUr1ZYIEAEiQASIABEgAm+EwDsi5t4IG3ooESACRIAIEAEiQASIABEgAkTgrSVAYu6tbRoqGBEgAkSACBABIkAEiAARIAJEoDEBEnPUO4gAESACRIAIEAEiQASIABEgApuQAIm5TdhoVGQiQASIABEgAkSACBABIkAEiACJOeoDRIAIEAEiQASIABEgAkSACBCBTUiAxNwmbDQqMhEgAkSACBABIkAEiAARIAJEgMQc9QEiQASIABEgAkSACBABIkAEiMAmJEBibhM2GhWZCBABIkAEiAARIAJEgAgQASJAYo76ABEgAkSACBABIkAEiAARIAJEYBMSIDG3CRuNikwEiAARIAJEgAgQASJABIgAESAxR32ACBABIkAEiAARIAJEgAgQASKwCQmQmNuEjUZFJgJEgAgQASJABIgAESACRIAIkJijPkAEiAARIAJEgAgQASJABIgAEdiEBEjMbcJGoyITASJABIgAESACRIAIEAEiQARIzFEfIAJEgAgQASJABIgAESACRIAIbEICJOY2YaNRkYkAESACRIAIEAEiQASIABEgAiTmqA8QASJABIgAESACRIAIEAEiQAQ2IQESc5uw0ajIRIAIEAEiQASIABEgAkSACBABEnPUB4gAESACRIAIEAEiQASIABEgApuQAIm5TdhoVGQiQASIABEgAkSACBABIkAEiACJOeoDRIAIEAEiQASIABEgAkSACBCBTUiAxNwmbDQqMhEgAkSACBABIkAEiAARIAJEgMQc9QEiQASIABEgAkSACBABIkAEiMAmJEBibhM2GhWZCBABIkAEiAARIAJEgAgQASJAYo76ABEgAkSACBABIkAEiAARIAJEYBMSIDG34Y2WRcSVgeWaD/ae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cze7RpoKwPtqADGWZrzdm9Z7nSQg8UCE5ZgT5s4+s9ZvZruxT+2IrXVcavkG1kbjMAzVjyE1GWFbPqf1BYWJQQSWfbiltpI0uq3AIzrTDc+Jv7AdS2VhGwPpPy1w9HENxLaE3EQcosWriIG3+ycidSnVYg7hYUmMwL7RfbcZmPXOt283dGA+Af91I7zXGliCXyUw+IMRvoq1qrZC8ise6d9MsB9uEvKg3FJA+rs4DCwjd81G8NsO6P0pH8venTkYazmnFaYiSHZ7Gh8R8/4ge69rSmLuvW5+qjwRIAJEgAgQASJABIgAESACm5UAibnN2nJUbiJABIgAESACRIAIEAEiQATeawIk5t7r5qfKEwEiQASIABEgAkSACBABIrBZCZCY26wtR+UmAkSACBABIkAEiAARIAJE4L0mQGLuvW5+qjwRIAJEgAgQASJABIgAESACm5UAibnN2nJUbiJABIgAESACRIAIEAEiQATeawIk5t7r5qfKEwEiQASIABEgAkSACBABIrBZCZCY26wtR+UmAkSACBABIkAEiAARIAJE4L0mQGLuvW5+qjwRIAJEgAgQASJABIgAESACm5UAibnN2nJUbiJABIgAESACRIAIEAEiQATeawIk5t7r5qfKEwEiQASIABEgAkSACBABIrBZCZCY26wtR+UmAkSACBABIkAEiAARIAJE4L0mQGLuvW5+qjwRIAJEgAgQASJABIgAESACm5UAibnN2nJUbiJABIgAESACRIAIEAEiQATeawIk5t7r5qfKEwEiQASIABEgAkSACBABIrBZCZCY26wtR+UmAkSACBABIkAEiAARIAJE4L0mQGLuvW5+qjwRIAJEgAgQASJABIgAESACm5UAibnN2nJUbiJABIgAESACRIAIEAEiQATeawIk5t7r5qfKEwEiQASIABEgAkSACBABIrBZCZCY26wtR+UmAkSACBABIkAEiAARIAJE4L0mQGLuvW5+qjwRIAJEgAgQASJABIgAESACm5UAibnN2nJUbiJABIgAESACRIAIEAEiQATeawIk5t7r5qfKEwEiQASIABEgAkSACBABIrBZCZCY26wtR+UmAkSACBABIkAEiAARIAJE4L0mQGLuvW5+qjwRIAJEgAgQASJABIgAESACm5UAibnN2nJUbiJABIgAESACRIAIEAEiQATeawIk5tbZ/NJM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CAiBjSEgYm5juEqrQkAICAEhIASEgBAQAkJACAiBDSUgYm5D8UrjQkAICAEhIASEgBAQAkJACAiBjSEgYm5juEqrQkAICAEhIASEgBAQAkJACAiBDSUgYm5D8UrjQkAICAEhIASEgBAQAkJACAiBjSEgYm5juEqrQkAICAEhIASEgBAQAkJACAiBDSUgYm5D8UrjQkAICAEhIASEgBAQAkJACAiBjSEgYm5juEqrQkAICAEhIASEgBAQAkJACAiBDSUgYm5D8UrjQkAICAEhIASEgBAQAkJACAiBjSEgYm5juEqrQkAICAEhIASEgBAQAkJACAiBDSUgYm5D8UrjQkAICAEhIASEgBAQAkJACAiBjSEgYm5juEqrQkAICAEhIASEgBAQAkJACAiBDSUgYm5D8UrjQkAICAEhIASEgBAQAkJACAiBjSEgYm5juEqrQkAICAEhIASEgBAQAkJACAiBDSUgYm5D8UrjQkAICAEhIASEgBAQAkJACAiBjSEgYm5juEqrQkAICAEhIASEgBAQAkJACAiBDSUgYm5D8UrjQkAICAEhIASEgBAQAkJACAiBjSEgYm5juEqrQkAICAEhIASEgBAQAkJACAiBDSUgYm5D8UrjQkAICAEhIASEgBAQAkJACAiBjSEgYm49uN7Nkt3mwtVd25hOZjiM7g3hfd26Hk95ytrQyZyO0/PREI7n//6hla6NEjc8BPbZqZut21F8122EPvFgbzONpaujJKx+hnbULQRKV4JE5v2E9je0vaJh54i+l8U2HMDz5srXU+7rINqOmrX4IEva6MWzwrWpXQkSnfER/shRz2lFY3lCL36UJnhuloGjfpz1U7jyDhtZosM6nlMebFsabr+bZPQ3JyN7bStv90m8406c0H9chPc8JeN5EhlLn4SAEBACQkAItCAgYm49lsatUZ771ML0T0M4qhu3O1F6PzKIXBvBtW09HgLanQI9b9qxVJpr/PeKnzKnkZ/MkriSputIipG3qy3XtKRnGD2h4znhxb6eomsmzaF/BtBOpJn4wrkwps7GYFC6r2F5yY5VdXlep/BgFtsrNiyNG+fOGqQ0PkBgPkLqQMOGVM1txsWfJ5wwDyzTvmrDXQiQPeGqEToacbeP0nCGkXc6FGF308T/6MNfJwpzjD7XR/HHWcb2dNjOwtjzRB29TB2+R/yjsqBUfe05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 "0")

Get-ChildItem | Rename-Item -NewName {\$\_.Name + '.后缀'}

# LinuxAndOpenSource

## Linux 命令大全

### 系统信息

> cat /etc/redhat-release 显示安装的系统版本

> getconf LONG\_BIT 显示系统是多少位的（32/64bit）

> centos7的防火墙相关：

> firewall-cmd --state （防火墙状态）

> systemctl list-unit-files|grep firewalld.service（防火墙状态）

> systemctl restart firewalld.service(重启防火墙)

> systemctl disable firewalld.service（禁止开机自动启动）

> centos7以下的防火墙相关：

> service iptables stop(关闭防火墙centos7以下)

> chkconfig iptables off（禁止开机自动启动）

> arch 显示机器的处理器架构(1)

> uname -m 显示机器的处理器架构(2)

> uname -r 显示正在使用的内核版本

> dmidecode -q 显示硬件系统部件 - (SMBIOS / DMI)

> hdparm -i /dev/hda 罗列一个磁盘的架构特性

> hdparm -tT /dev/sda 在磁盘上执行测试性读取操作

> cat /proc/cpuinfo 显示CPU info的信息

> cat /proc/interrupts 显示中断

> cat /proc/meminfo 校验内存使用

> cat /proc/swaps 显示哪些swap被使用

> cat /proc/version 显示内核的版本

> cat /proc/net/dev 显示网络适配器及统计

> cat /proc/mounts 显示已加载的文件系统

> lspci -tv 罗列 PCI 设备

> lsusb -tv 显示 USB 设备

> date 显示系统日期

> cal 2007 显示2007年的日历表

> date 041217002007.00 设置日期和时间 - 月日时分年.秒

> clock -w 将时间修改保存到 BIOS

> 关机 (系统的关机、重启以及登出 )

> shutdown -h now 关闭系统(1)

> init 0 关闭系统(2)

> telinit 0 关闭系统(3)

> shutdown -h hours\:minutes & 按预定时间关闭系统

> shutdown -c 取消按预定时间关闭系统

> shutdown -r now 重启(1)

> reboot 重启(2)

> logout 注销

> 文件和目录

> cd /home 进入 '/home' 目录'

> cd .. 返回上一级目录

> cd ../.. 返回上两级目录

> cd 进入个人的主目录

> cd \~user1 进入个人的主目录

> cd - 返回上次所在的目录

> pwd 显示工作路径

> ls 查看目录中的文件

> ls -F 查看目录中的文件

> ls -l 显示文件和目录的详细资料

> ls -a 显示隐藏文件

> ls *\[0-9]* 显示包含数字的文件名和目录名

> tree 显示文件和目录由根目录开始的树形结构(1)

> lstree 显示文件和目录由根目录开始的树形结构(2)

> mkdir dir1 创建一个叫做 'dir1' 的目录'

> mkdir dir1 dir2 同时创建两个目录

> mkdir -p /tmp/dir1/dir2 创建一个目录树

> rm -f file1 删除一个叫做 'file1' 的文件'

> rmdir dir1 删除一个叫做 'dir1' 的目录'

> rm -rf dir1 删除一个叫做 'dir1' 的目录并同时删除其内容

> rm -rf dir1 dir2 同时删除两个目录及它们的内容

> mv dir1 new\_dir 重命名/移动 一个目录

> cp file1 file2 复制一个文件

> cp dir/\* . 复制一个目录下的所有文件到当前工作目录

> cp -a /tmp/dir1 . 复制一个目录到当前工作目录

> cp -a dir1 dir2 复制一个目录

> ln -s file1 lnk1 创建一个指向文件或目录的软链接

> ln file1 lnk1 创建一个指向文件或目录的物理链接

> touch -t 0712250000 file1 修改一个文件或目录的时间戳 - (YYMMDDhhmm)

> file file1 outputs the mime type of the file as text

> iconv -l 列出已知的编码

> iconv -f fromEncoding -t toEncoding inputFile > outputFile creates a new from the given input file by assuming it is encoded in fromEncoding and converting it to toEncoding.

> find . -maxdepth 1 -name \*.jpg -print -exec convert "{}" -resize 80x60 "thumbs/{}" ; batch resize files in the current directory and send them to a thumbnails directory (requires convert from Imagemagick)

### 文件搜索

> find / -name file1 从 '/' 开始进入根文件系统搜索文件和目录

> find / -user user1 搜索属于用户 'user1' 的文件和目录

> find /home/user1 -name \*.bin 在目录 '/ home/user1' 中搜索带有'.bin' 结尾的文件

> find /usr/bin -type f -atime +100 搜索在过去100天内未被使用过的执行文件

> find /usr/bin -type f -mtime -10 搜索在10天内被创建或者修改过的文件

> find / -name \*.rpm -exec chmod 755 '{}' ; 搜索以 '.rpm' 结尾的文件并定义其权限

> find / -xdev -name \*.rpm 搜索以 '.rpm' 结尾的文件，忽略光驱、捷盘等可移动设备

> locate \*.ps 寻找以 '.ps' 结尾的文件 - 先运行 'updatedb' 命令

> whereis halt 显示一个二进制文件、源码或man的位置

> which halt 显示一个二进制文件或可执行文件的完整路径

### 挂载一个文件系统

> mount /dev/hda2 /mnt/hda2 挂载一个叫做hda2的盘 - 确定目录 '/ mnt/hda2' 已经存在

> umount /dev/hda2 卸载一个叫做hda2的盘 - 先从挂载点 '/ mnt/hda2' 退出

> fuser -km /mnt/hda2 当设备繁忙时强制卸载

> umount -n /mnt/hda2 运行卸载操作而不写入 /etc/mtab 文件- 当文件为只读或当磁盘写满时非常有用

> mount /dev/fd0 /mnt/floppy 挂载一个软盘

> mount /dev/cdrom /mnt/cdrom 挂载一个cdrom或dvdrom

> mount /dev/hdc /mnt/cdrecorder 挂载一个cdrw或dvdrom

> mount /dev/hdb /mnt/cdrecorder 挂载一个cdrw或dvdrom

> mount -o loop file.iso /mnt/cdrom 挂载一个文件或ISO镜像文件

> mount -t vfat /dev/hda5 /mnt/hda5 挂载一个Windows FAT32文件系统

> mount /dev/sda1 /mnt/usbdisk 挂载一个usb 捷盘或闪存设备

> mount -t smbfs -o username=user,password=pass //WinClient/share /mnt/share 挂载一个windows网络共享

### 磁盘空间

> df -h 显示已经挂载的分区列表

> ls -lSr |more 以尺寸大小排列文件和目录

> du -sh dir1 估算目录 'dir1' 已经使用的磁盘空间'

> du -sk \* | sort -rn 以容量大小为依据依次显示文件和目录的大小

> rpm -q -a --qf '%10{SIZE}t%{NAME}n' | sort -k1,1n 以大小为依据依次显示已安装的rpm包所使用的空间 (fedora, redhat类系统)

> dpkg-query -W -f='`${Installed-Size;10}t$`{Package}n' | sort -k1,1n 以大小为依据显示已安装的deb包所使用的空间 (ubuntu, debian类系统)

### 用户和群组

> groupadd group\_name 创建一个新用户组

> groupdel group\_name 删除一个用户组

> groupmod -n new\_group\_name old\_group\_name 重命名一个用户组

> useradd -c "Name Surname " -g admin -d /home/user1 -s /bin/bash user1 创建一个属于 "admin" 用户组的用户

> useradd user1 创建一个新用户

> userdel -r user1 删除一个用户 ( '-r' 排除主目录)

> usermod -c "User FTP" -g system -d /ftp/user1 -s /bin/nologin user1 修改用户属性

> passwd 修改口令

> passwd user1 修改一个用户的口令 (只允许root执行)

> chage -E 2005-12-31 user1 设置用户口令的失效期限

> pwck 检查 '/etc/passwd' 的文件格式和语法修正以及存在的用户

> grpck 检查 '/etc/passwd' 的文件格式和语法修正以及存在的群组

> newgrp group\_name 登陆进一个新的群组以改变新创建文件的预设群组

> 文件的权限 - 使用 "+" 设置权限，使用 "-" 用于取消

> ls -lh 显示权限

> ls /tmp | pr -T5 -W\$COLUMNS 将终端划分成5栏显示

> chmod ugo+rwx directory1 设置目录的所有人(u)、群组(g)以及其他人(o)以读（r ）、写(w)和执行(x)的权限

> chmod go-rwx directory1 删除群组(g)与其他人(o)对目录的读写执行权限

> chown user1 file1 改变一个文件的所有人属性

> chown -R user1 directory1 改变一个目录的所有人属性并同时改变改目录下所有文件的属性

> chgrp group1 file1 改变文件的群组

> chown user1\:group1 file1 改变一个文件的所有人和群组属性

> find / -perm -u+s 罗列一个系统中所有使用了SUID控制的文件

> chmod u+s /bin/file1 设置一个二进制文件的 SUID 位 - 运行该文件的用户也被赋予和所有者同样的权限

> chmod u-s /bin/file1 禁用一个二进制文件的 SUID位

> chmod g+s /home/public 设置一个目录的SGID 位 - 类似SUID ，不过这是针对目录的

> chmod g-s /home/public 禁用一个目录的 SGID 位

> chmod o+t /home/public 设置一个文件的 STIKY 位 - 只允许合法所有人删除文件

> chmod o-t /home/public 禁用一个目录的 STIKY 位

> 文件的特殊属性 - 使用 "+" 设置权限，使用 "-" 用于取消

> chattr +a file1 只允许以追加方式读写文件

> chattr +c file1 允许这个文件能被内核自动压缩/解压

> chattr +d file1 在进行文件系统备份时，dump程序将忽略这个文件

> chattr +i file1 设置成不可变的文件，不能被删除、修改、重命名或者链接

> chattr +s file1 允许一个文件被安全地删除

> chattr +S file1 一旦应用程序对这个文件执行了写操作，使系统立刻把修改的结果写到磁盘

> chattr +u file1 若文件被删除，系统会允许你在以后恢复这个被删除的文件

> lsattr 显示特殊的属性

### 打包和压缩文件

> bunzip2 file1.bz2 解压一个叫做 'file1.bz2'的文件

> bzip2 file1 压缩一个叫做 'file1' 的文件

> gunzip file1.gz 解压一个叫做 'file1.gz'的文件

> gzip file1 压缩一个叫做 'file1'的文件

> gzip -9 file1 最大程度压缩

> rar a file1.rar test\_file 创建一个叫做 'file1.rar' 的包

> rar a file1.rar file1 file2 dir1 同时压缩 'file1', 'file2' 以及目录 'dir1'

> rar x file1.rar 解压rar包

> unrar x file1.rar 解压rar包

> tar -cvf archive.tar file1 创建一个非压缩的 tarball

> tar -cvf archive.tar file1 file2 dir1 创建一个包含了 'file1', 'file2' 以及 'dir1'的档案文件

> tar -tf archive.tar 显示一个包中的内容

> tar -xvf archive.tar 释放一个包

> tar -xvf archive.tar -C /tmp 将压缩包释放到 /tmp目录下

> tar -cvfj archive.tar.bz2 dir1 创建一个bzip2格式的压缩包

> tar -xvfj archive.tar.bz2 解压一个bzip2格式的压缩包

> tar -cvfz archive.tar.gz dir1 创建一个gzip格式的压缩包

> tar -xvfz archive.tar.gz 解压一个gzip格式的压缩包

> zip file1.zip file1 创建一个zip格式的压缩包

> zip -r file1.zip file1 file2 dir1 将几个文件和目录同时压缩成一个zip格式的压缩包

> unzip file1.zip 解压一个zip格式压缩包

### RPM 包

> > （Fedora, Redhat及类似系统）

> rpm -ivh package.rpm 安装一个rpm包

> rpm -ivh --nodeeps package.rpm 安装一个rpm包而忽略依赖关系警告

> rpm -U package.rpm 更新一个rpm包但不改变其配置文件

> rpm -F package.rpm 更新一个确定已经安装的rpm包

> rpm -e package\_name.rpm 删除一个rpm包

> rpm -qa 显示系统中所有已经安装的rpm包

> rpm -qa | grep httpd 显示所有名称中包含 "httpd" 字样的rpm包

> rpm -qi package\_name 获取一个已安装包的特殊信息

> rpm -qg "System Environment/Daemons" 显示一个组件的rpm包

> rpm -ql package\_name 显示一个已经安装的rpm包提供的文件列表

> rpm -qc package\_name 显示一个已经安装的rpm包提供的配置文件列表

> rpm -q package\_name --whatrequires 显示与一个rpm包存在依赖关系的列表

> rpm -q package\_name --whatprovides 显示一个rpm包所占的体积

> rpm -q package\_name --scripts 显示在安装/删除期间所执行的脚本l

> rpm -q package\_name --changelog 显示一个rpm包的修改历史

> rpm -qf /etc/httpd/conf/httpd.conf 确认所给的文件由哪个rpm包所提供

> rpm -qp package.rpm -l 显示由一个尚未安装的rpm包提供的文件列表

> rpm --import /media/cdrom/RPM-GPG-KEY 导入公钥数字证书

> rpm --checksig package.rpm 确认一个rpm包的完整性

> rpm -qa gpg-pubkey 确认已安装的所有rpm包的完整性

> rpm -V package\_name 检查文件尺寸、 许可、类型、所有者、群组、MD5检查以及最后修改时间

> rpm -Va 检查系统中所有已安装的rpm包- 小心使用

> rpm -Vp package.rpm 确认一个rpm包还未安装

> rpm2cpio package.rpm | cpio --extract --make-directories *bin* 从一个rpm包运行可执行文件

> rpm -ivh /usr/src/redhat/RPMS/`arch`/package.rpm 从一个rpm源码安装一个构建好的包

> rpmbuild --rebuild package\_name.src.rpm 从一个rpm源码构建一个 rpm 包

### YUM 软件包升级器

> > （Fedora, RedHat及类似系统）

> yum install package\_name 下载并安装一个rpm包

> yum localinstall package\_name.rpm 将安装一个rpm包，使用你自己的软件仓库为你解决所有依赖关系

> yum update package\_name.rpm 更新当前系统中所有安装的rpm包

> yum update package\_name 更新一个rpm包

> yum remove package\_name 删除一个rpm包

> yum list 列出当前系统中安装的所有包

> yum search package\_name 在rpm仓库中搜寻软件包

> yum clean packages 清理rpm缓存删除下载的包

> yum clean headers 删除所有头文件

> yum clean all 删除所有缓存的包和头文件

### DEB 包

> > (Debian, Ubuntu 以及类似系统)

> dpkg -i package.deb 安装/更新一个 deb 包

> dpkg -r package\_name 从系统删除一个 deb 包

> dpkg -l 显示系统中所有已经安装的 deb 包

> dpkg -l | grep httpd 显示所有名称中包含 "httpd" 字样的deb包

> dpkg -s package\_name 获得已经安装在系统中一个特殊包的信息

> dpkg -L package\_name 显示系统中已经安装的一个deb包所提供的文件列表

> dpkg --contents package.deb 显示尚未安装的一个包所提供的文件列表

> dpkg -S /bin/ping 确认所给的文件由哪个deb包提供

> APT 软件工具 (Debian, Ubuntu 以及类似系统)

> apt-get install package\_name 安装/更新一个 deb 包

> apt-cdrom install package\_name 从光盘安装/更新一个 deb 包

> apt-get update 升级列表中的软件包

> apt-get upgrade 升级所有已安装的软件

> apt-get remove package\_name 从系统删除一个deb包

> apt-get check 确认依赖的软件仓库正确

> apt-get clean 从下载的软件包中清理缓存

> apt-cache search searched-package 返回包含所要搜索字符串的软件包名称

### 查看文件内容

> cat file1 从第一个字节开始正向查看文件的内容

> tac file1 从最后一行开始反向查看一个文件的内容

> more file1 查看一个长文件的内容

> less file1 类似于 'more' 命令，但是它允许在文件中和正向操作一样的反向操作

> head -2 file1 查看一个文件的前两行

> tail -2 file1 查看一个文件的最后两行

> tail -f /var/log/messages 实时查看被添加到一个文件中的内容

### 文本处理

> cat file1 file2 ... | command <> file1\_in.txt\_or\_file1\_out.txt general syntax for text manipulation using PIPE, STDIN and STDOUT

> cat file1 | command( sed, grep, awk, grep, etc...) > result.txt 合并一个文件的详细说明文本，并将简介写入一个新文件中

> cat file1 | command( sed, grep, awk, grep, etc...) >> result.txt 合并一个文件的详细说明文本，并将简介写入一个已有的文件中

> grep Aug /var/log/messages 在文件 '/var/log/messages'中查找关键词"Aug"

> grep ^Aug /var/log/messages 在文件 '/var/log/messages'中查找以"Aug"开始的词汇

> grep \[0-9] /var/log/messages 选择 '/var/log/messages' 文件中所有包含数字的行

> grep Aug -R /var/log/\* 在目录 '/var/log' 及随后的目录中搜索字符串"Aug"

> sed 's/stringa1/stringa2/g' example.txt 将example.txt文件中的 "string1" 替换成 "string2"

> sed '/^\$/d' example.txt 从example.txt文件中删除所有空白行

> sed '/ \*#/d; /^\$/d' example.txt 从example.txt文件中删除所有注释和空白行

> echo 'esempio' | tr '\[:lower:]' '\[:upper:]' 合并上下单元格内容

> sed -e '1d' result.txt 从文件example.txt 中排除第一行

> sed -n '/stringa1/p' 查看只包含词汇 "string1"的行

> sed -e 's/ \*\$//' example.txt 删除每一行最后的空白字符

> sed -e 's/stringa1//g' example.txt 从文档中只删除词汇 "string1" 并保留剩余全部

> sed -n '1,5p;5q' example.txt 查看从第一行到第5行内容

> sed -n '5p;5q' example.txt 查看第5行

> sed -e 's/00\*/0/g' example.txt 用单个零替换多个零

> cat -n file1 标示文件的行数

> cat example.txt | awk 'NR%2==1' 删除example.txt文件中的所有偶数行

> echo a b c | awk '{print \$1}' 查看一行第一栏

> echo a b c | awk '{print `$1,$`3}' 查看一行的第一和第三栏

> paste file1 file2 合并两个文件或两栏的内容

> paste -d '+' file1 file2 合并两个文件或两栏的内容，中间用"+"区分

> sort file1 file2 排序两个文件的内容

> sort file1 file2 | uniq 取出两个文件的并集(重复的行只保留一份)

> sort file1 file2 | uniq -u 删除交集，留下其他的行

> sort file1 file2 | uniq -d 取出两个文件的交集(只留下同时存在于两个文件中的文件)

> comm -1 file1 file2 比较两个文件的内容只删除 'file1' 所包含的内容

> comm -2 file1 file2 比较两个文件的内容只删除 'file2' 所包含的内容

> comm -3 file1 file2 比较两个文件的内容只删除两个文件共有的部分

### 字符设置和文件格式转换

> dos2unix filedos.txt fileunix.txt 将一个文本文件的格式从MSDOS转换成UNIX

> unix2dos fileunix.txt filedos.txt 将一个文本文件的格式从UNIX转换成MSDOS

> recode ..HTML < page.txt > page.html 将一个文本文件转换成html

> recode -l | more 显示所有允许的转换格式

### 文件系统分析

> badblocks -v /dev/hda1 检查磁盘hda1上的坏磁块

> fsck /dev/hda1 修复/检查hda1磁盘上linux文件系统的完整性

> fsck.ext2 /dev/hda1 修复/检查hda1磁盘上ext2文件系统的完整性

> e2fsck /dev/hda1 修复/检查hda1磁盘上ext2文件系统的完整性

> e2fsck -j /dev/hda1 修复/检查hda1磁盘上ext3文件系统的完整性

> fsck.ext3 /dev/hda1 修复/检查hda1磁盘上ext3文件系统的完整性

> fsck.vfat /dev/hda1 修复/检查hda1磁盘上fat文件系统的完整性

> fsck.msdos /dev/hda1 修复/检查hda1磁盘上dos文件系统的完整性

> dosfsck /dev/hda1 修复/检查hda1磁盘上dos文件系统的完整性

### 初始化一个文件系统

> mkfs /dev/hda1 在hda1分区创建一个文件系统

> mke2fs /dev/hda1 在hda1分区创建一个linux ext2的文件系统

> mke2fs -j /dev/hda1 在hda1分区创建一个linux ext3(日志型)的文件系统

> mkfs -t vfat 32 -F /dev/hda1 创建一个 FAT32 文件系统

> fdformat -n /dev/fd0 格式化一个软盘

> mkswap /dev/hda3 创建一个swap文件系统

### SWAP文件系统

> mkswap /dev/hda3 创建一个swap文件系统

> swapon /dev/hda3 启用一个新的swap文件系统

> swapon /dev/hda2 /dev/hdb3 启用两个swap分区

### 备份

> dump -0aj -f /tmp/home0.bak /home 制作一个 '/home' 目录的完整备份

> dump -1aj -f /tmp/home0.bak /home 制作一个 '/home' 目录的交互式备份

> restore -if /tmp/home0.bak 还原一个交互式备份

> rsync -rogpav --delete /home /tmp 同步两边的目录

> rsync -rogpav -e ssh --delete /home ip\_address\:/tmp 通过SSH通道rsync

> rsync -az -e ssh --delete ip\_addr:/home/public /home/local 通过ssh和压缩将一个远程目录同步到本地目录

> rsync -az -e ssh --delete /home/local ip\_addr:/home/public 通过ssh和压缩将本地目录同步到远程目录

> dd bs=1M if=/dev/hda | gzip | ssh user\@ip\_addr 'dd of=hda.gz' 通过ssh在远程主机上执行一次备份本地磁盘的操作

> dd if=/dev/sda of=/tmp/file1 备份磁盘内容到一个文件

> tar -Puf backup.tar /home/user 执行一次对 '/home/user' 目录的交互式备份操作

> ( cd /tmp/local/ && tar c . ) | ssh -C user\@ip\_addr 'cd /home/share/ && tar x -p' 通过ssh在远程目录中复制一个目录内容

> ( tar c /home ) | ssh -C user\@ip\_addr 'cd /home/backup-home && tar x -p' 通过ssh在远程目录中复制一个本地目录

> tar cf - . | (cd /tmp/backup ; tar xf - ) 本地将一个目录复制到另一个地方，保留原有权限及链接

> find /home/user1 -name '\*.txt' | xargs cp -av --target-directory=/home/backup/ --parents 从一个目录查找并复制所有以 '.txt' 结尾的文件到另一个目录

> find /var/log -name '\*.log' | tar cv --files-from=- | bzip2 > log.tar.bz2 查找所有以 '.log' 结尾的文件并做成一个bzip包

> dd if=/dev/hda of=/dev/fd0 bs=512 count=1 做一个将 MBR (Master Boot Record)内容复制到软盘的动作

> dd if=/dev/fd0 of=/dev/hda bs=512 count=1 从已经保存到软盘的备份中恢复MBR内容

### 光盘

> cdrecord -v gracetime=2 dev=/dev/cdrom -eject blank=fast -force 清空一个可复写的光盘内容

> mkisofs /dev/cdrom > cd.iso 在磁盘上创建一个光盘的iso镜像文件

> mkisofs /dev/cdrom | gzip > cd\_iso.gz 在磁盘上创建一个压缩了的光盘iso镜像文件

> mkisofs -J -allow-leading-dots -R -V "Label CD" -iso-level 4 -o ./cd.iso data\_cd 创建一个目录的iso镜像文件

> cdrecord -v dev=/dev/cdrom cd.iso 刻录一个ISO镜像文件

> gzip -dc cd\_iso.gz | cdrecord dev=/dev/cdrom - 刻录一个压缩了的ISO镜像文件

> mount -o loop cd.iso /mnt/iso 挂载一个ISO镜像文件

> cd-paranoia -B 从一个CD光盘转录音轨到 wav 文件中

> cd-paranoia -- "-3" 从一个CD光盘转录音轨到 wav 文件中（参数-3）

> cdrecord --scanbus 扫描总线以识别scsi通道

> dd if=/dev/hdc | md5sum 校验一个设备的md5sum编码，例如一张 CD

### 网络 - （以太网和WIFI无线）

> ifconfig eth0 显示一个以太网卡的配置

> ifup eth0 启用一个 'eth0' 网络设备

> ifdown eth0 禁用一个 'eth0' 网络设备

> ifconfig eth0 192.168.1.1 netmask 255.255.255.0 控制IP地址

> ifconfig eth0 promisc 设置 'eth0' 成混杂模式以嗅探数据包 (sniffing)

> dhclient eth0 以dhcp模式启用 'eth0'

> route -n show routing table

> route add -net 0/0 gw IP\_Gateway configura default gateway

> route add -net 192.168.0.0 netmask 255.255.0.0 gw 192.168.1.1 configure static route to reach network '192.168.0.0/16'

> route del 0/0 gw IP\_gateway remove static route

> echo "1" > /proc/sys/net/ipv4/ip\_forward activate ip routing

> hostname show hostname of system

> host [www.example.com](http://www.example.com) lookup hostname to resolve name to ip address and viceversa(1)

> nslookup [www.example.com](http://www.example.com) lookup hostname to resolve name to ip address and viceversa(2)

> ip link show show link status of all interfaces

> mii-tool eth0 show link status of 'eth0'

> ethtool eth0 show statistics of network card 'eth0'

> netstat -tup show all active network connections and their PID

> netstat -tupl show all network services listening on the system and their PID

> tcpdump tcp port 80 show all HTTP traffic

> iwlist scan show wireless networks

> iwconfig eth1 show configuration of a wireless network card

> hostname show hostname

> host [www.example.com](http://www.example.com) lookup hostname to resolve name to ip address and viceversa

> nslookup [www.example.com](http://www.example.com) lookup hostname to resolve name to ip address and viceversa

> whois [www.example.com](http://www.example.com) lookup on Whois database

### DD 命令

> > Linux dd 命令用于读取、转换并输出数据。

> > dd 可从标准输入或文件中读取数据，根据指定的格式来转换数据，再输出到文件、设备或标准输出。

> > dd的相关解释

> if 代表输入文件。如果不指定 if，默认就会从 stdin 中读取输入。

> of 代表输出文件。如果不指定 of，默认就会将 stdout 作为默认输出。

> bs 代表字节为单位的块大小。

> > 对于较小的文件，可以选择较小的块大小，如 512 字节或 1KB，这样可以提高复制速度。对于较大的文件，可以选择较大的块大小，如 4KB 或 8KB，这样可以减少 I/O 操作的次数，提高复制效率。对于使用 USB 设备进行复制的情况，可以选择较小的块大小，因为 USB 设备通常具有较慢的传输速度。对于使用网络设备进行复制的情况，可以选择较大的块大小，以利用网络带宽。

> count 代表被复制的块数。

> /dev/zero 是一个字符设备，会不断返回 0 值字节（\0）。

> 创建指定大小的文件

> > dd if=/dev/zero of=/tmp/1G.txt bs=1M count=1024

> 给磁盘的分区做备份

> 磁盘分区备份

> > dd if=/dev/sda1 of=/root/sda1.bak

> 磁盘分区还原

> > dd if=/root/sda1.bak of=/dev/sda1

> 清空磁盘

> > dd if=/dev/zero of=/dev/sdb

> 备份磁盘

> > dd if=/dev/sda  of=/dev/sdb

> 还原磁盘

> > dd if=/dev/sdb  of=/dev/sda

> 备份分区表
>
> > dd  if=/dev/sda of=/root/mbr.bak bs=512 count=1

> 还原分区表
>
> > dd  if=/root/mbr.bak of=/dev/sda

> 为虚拟机创建一个空磁盘文件

> 制作空磁盘文件

> > dd if=/dev/zero of=aabb.img  bs=1M count=256

> 制作qcow2格式磁盘文件

> > qemu-img create -f qcow2 -o preallocation=metadata server1.qcow2 1G

> 在Linux下制作启动盘

> > dd if=boot.img of=/dev/fd0 bs=1440k

> 转换文件所有字母为大写

> > dd if=test1 of=test2 conv=ucase

## OpenSource主流开源协议

### GPL

> 最开放，只要引用GPL协议的软件必须开源免费，不适合商业软件 有5大自由 使用，复制，修改，衍生，收费。

### LGPL

> 较GPL 宽松

### BSD

> 发布带源代码 则源代码必须遵循BSD

> 发布只有二进制则必须声明遵循了BSD协议

### Apache

> 软件以及衍生品必须继续使用Apache许可。

> 修改了源代码则必须声明

> 基于他人源代码则必须保留原始代码的许可商标声明等。

> 类库保护，只正对引用的类库，而无须适用整个软件系统。

> 发布软件中有声明软件则需在此文件中注明基于Apache 和其他协议。

### MIT(MITL)

> 修改后的源代码需要保留作者的许可信息即可。

### Mozilla(MPL)

> 后续只开源使用的特定代码

> 多种协议可以混合使用

> 发布软件附带专门说明文件有原始的代码的修改时间和方式。

## Git in linux

### GithubCli

> Download and Install :

> <https://github.com/cli/cli/releases>

### Login

> \$ gh auth login (config use ssh,need your token from github config)

### Git helper

> \$ git clone <git@github.com>\:devgis/MyWriting.git //need your private key

> 提交修改 上传修改的代码后执行增加修改：

> \$ git add .

> 增加修改信息：

> \$ git commit -m ‘修改lol清晰增加口径’

> 推送分支：

> \$ git push origin main

## systemctl

> > systemctl命令是系统服务管理器指令，它实际上将 service 和 chkconfig 这两个命令组合到一起。

> 启动一个服务：systemctl start postfix.service

> 关闭一个服务：systemctl stop postfix.service

> 重启一个服务：systemctl restart postfix.service

> 显示一个服务的状态：systemctl status postfix.service

> 在开机时启用一个服务：systemctl enable postfix.service

> 在开机时禁用一个服务：systemctl disable postfix.service

> 查看服务是否开机启动：systemctl is-enabled postfix.service;echo \$?

> 查看已启动的服务列表：systemctl list-unit-files|grep enabled

## Q\&A

> dpkg-deb: error: paste subprocess was killed by signal (Broken pipe)

    ~$ sudo apt --fix-broken install
    Reading package lists... Done
    Building dependency tree... Done
    Reading state information... Done
    Correcting dependencies... Done
    The following packages were automatically installed and are no longer required:
     aspnetcore-targeting-pack-6.0 libflashrom1 libftdi1-2 libllvm13
     liblttng-ust-common1 liblttng-ust-ctl5 liblttng-ust1 libodbc2 libodbccr2
     libodbcinst2 libsss-nss-idmap0 libunwind-13 netstandard-targeting-pack-2.1
     unixodbc-common
    Use 'sudo apt autoremove' to remove them.
    The following additional packages will be installed:
     libodbc1 odbcinst odbcinst1debian2
    Suggested packages:
     unixodbc-bin
    The following NEW packages will be installed:
     libodbc1 odbcinst1debian2
    The following packages will be upgraded:
     odbcinst
    1 upgraded, 2 newly installed, 0 to remove and 162 not upgraded.
    11 not fully installed or removed.
    Need to get 0 B/607 kB of archives.
    After this operation, 892 kB of additional disk space will be used.
    Do you want to continue? [Y/n] Y
    (Reading database ... 201109 files and directories currently installed.)
    Preparing to unpack .../odbcinst_2.3.11-1_amd64.deb ...
    Unpacking odbcinst (2.3.11-1) over (2.3.9-5) ...
    dpkg: error processing archive /var/cache/apt/archives/odbcinst_2.3.11-1_amd64.d
    eb (--unpack):
     trying to overwrite '/etc/odbc.ini', which is also in package unixodbc-common 2
    .3.9-5
    Preparing to unpack .../odbcinst1debian2_2.3.11-1_amd64.deb ...
    Unpacking odbcinst1debian2:amd64 (2.3.11-1) ...
    dpkg: error processing archive /var/cache/apt/archives/odbcinst1debian2_2.3.11-1
    _amd64.deb (--unpack):
     trying to overwrite '/usr/lib/x86_64-linux-gnu/libodbcinst.so.2.0.0', which is 
    also in package libodbcinst2:amd64 2.3.9-5
    dpkg-deb: error: paste subprocess was killed by signal (Broken pipe)
    Preparing to unpack .../libodbc1_2.3.11-1_amd64.deb ...
    Unpacking libodbc1:amd64 (2.3.11-1) ...
    dpkg: error processing archive /var/cache/apt/archives/libodbc1_2.3.11-1_amd64.d
    eb (--unpack):
     trying to overwrite '/usr/lib/x86_64-linux-gnu/libodbc.so.2.0.0', which is also
     in package libodbc2:amd64 2.3.9-5
    dpkg-deb: error: paste subprocess was killed by signal (Broken pipe)
    Errors were encountered while processing:
     /var/cache/apt/archives/odbcinst_2.3.11-1_amd64.deb
     /var/cache/apt/archives/odbcinst1debian2_2.3.11-1_amd64.deb
     /var/cache/apt/archives/libodbc1_2.3.11-1_amd64.deb
    E: Sub-process /usr/bin/dpkg returned an error code (1)
    ~$ sudo dpkg -i --force-overwrite /var/cache/apt/archives/odbcinst_2.3.11-1_amd64.deb
    (Reading database ... 201109 files and directories currently installed.)
    Preparing to unpack .../odbcinst_2.3.11-1_amd64.deb ...
    Unpacking odbcinst (2.3.11-1) over (2.3.9-5) ...
    dpkg: warning: overriding problem because --force enabled:
    dpkg: warning: trying to overwrite '/etc/odbc.ini', which is also in package unixodbc-common 2.3.9-5
    dpkg: dependency problems prevent configuration of odbcinst:
     odbcinst depends on odbcinst1debian2 (>= 2.3.11-1); however:
     Package odbcinst1debian2:amd64 is not installed.

    dpkg: error processing package odbcinst (--install):
     dependency problems - leaving unconfigured
    Processing triggers for man-db (2.10.2-1) ...
    Errors were encountered while processing:
     odbcinst
    ~$ sudo dpkg -i --force-overwrite /var/cache/apt/archives/odbcinst1debian2_2.3.11-1_amd64.deb
    (Reading database ... 201111 files and directories currently installed.)
    Preparing to unpack .../odbcinst1debian2_2.3.11-1_amd64.deb ...
    Unpacking odbcinst1debian2:amd64 (2.3.11-1) ...
    dpkg: warning: overriding problem because --force enabled:
    dpkg: warning: trying to overwrite '/usr/lib/x86_64-linux-gnu/libodbcinst.so.2.0.0', which is also in package libodbcinst2:amd64 2.3.9-5
    dpkg: warning: overriding problem because --force enabled:
    dpkg: warning: trying to overwrite '/usr/lib/x86_64-linux-gnu/libodbcinst.so.2', which is also in package libodbcinst2:amd64 2.3.9-5
    dpkg: dependency problems prevent configuration of odbcinst1debian2:amd64:
     odbcinst1debian2:amd64 depends on odbcinst (>= 2.3.11-1); however:
     Package odbcinst is not configured yet.

    dpkg: error processing package odbcinst1debian2:amd64 (--install):
     dependency problems - leaving unconfigured
    Errors were encountered while processing:
     odbcinst1debian2:amd64
    ~$ sudo dpkg -i --force-overwrite /var/cache/apt/archives/libodbc1_2.3.11-1_amd64.deb
    (Reading database ... 201115 files and directories currently installed.)
    Preparing to unpack .../libodbc1_2.3.11-1_amd64.deb ...
    Unpacking libodbc1:amd64 (2.3.11-1) ...
    dpkg: warning: overriding problem because --force enabled:
    dpkg: warning: trying to overwrite '/usr/lib/x86_64-linux-gnu/libodbc.so.2.0.0', which is also in package libodbc2:amd64 2.3.9-5
    dpkg: warning: overriding problem because --force enabled:
    dpkg: warning: trying to overwrite '/usr/lib/x86_64-linux-gnu/libodbccr.so.2.0.0', which is also in package libodbccr2:amd64 2.3.9-5
    dpkg: warning: overriding problem because --force enabled:
    dpkg: warning: trying to overwrite '/usr/lib/x86_64-linux-gnu/libodbccr.so.2', which is also in package libodbccr2:amd64 2.3.9-5
    dpkg: warning: overriding problem because --force enabled:
    dpkg: warning: trying to overwrite '/usr/lib/x86_64-linux-gnu/libodbc.so.2', which is also in package libodbc2:amd64 2.3.9-5
    Setting up libodbc1:amd64 (2.3.11-1) ...
    Processing triggers for libc-bin (2.35-0ubuntu3.1) ...
    ~$ sudo apt --fix-broken install
    Reading package lists... Done
    Building dependency tree... Done
    Reading state information... Done
    The following packages were automatically installed and are no longer required:
     aspnetcore-targeting-pack-6.0 libflashrom1 libftdi1-2 libllvm13
     liblttng-ust-common1 liblttng-ust-ctl5 liblttng-ust1 libodbc2 libodbccr2
     libodbcinst2 libsss-nss-idmap0 libunwind-13 netstandard-targeting-pack-2.1
     unixodbc-common
    Use 'sudo apt autoremove' to remove them.
    0 upgraded, 0 newly installed, 0 to remove and 162 not upgraded.
    13 not fully installed or removed.
    After this operation, 0 B of additional disk space will be used.
    Setting up gnustep-common (2.9.0-3) ...
    Setting up libgranite-common (6.2.0-1) ...
    Setting up html2text (1.3.2a-28) ...
    Setting up libgranite6:amd64 (6.2.0-1) ...
    Setting up odbcinst1debian2:amd64 (2.3.11-1) ...
    Setting up odbcinst (2.3.11-1) ...
    Setting up unixodbc (2.3.11-1) ...
    Setting up unixodbc-dev (2.3.11-1) ...
    Processing triggers for desktop-file-utils (0.26-1ubuntu3) ...
    Processing triggers for hicolor-icon-theme (0.17-2) ...
    Processing triggers for gnome-menus (3.36.0-1ubuntu3) ...
    Processing triggers for libglib2.0-0:amd64 (2.72.4-0ubuntu1) ...
    Processing triggers for sgml-base (1.30) ...
    Processing triggers for mailcap (3.70+nmu1ubuntu1) ...
    Setting up gnustep-base-common (1.28.0-4build1) ...
    Setting up libgnustep-base1.28 (1.28.0-4build1) ...
    Setting up gnustep-base-runtime (1.28.0-4build1) ...
    Setting up unar (1.10.1-2build11) ...
    Setting up bookworm (1.1.2+git20210715-2build1) ...
    Processing triggers for libc-bin (2.35-0ubuntu3.1) ...

> A fatal error occurred. The folder \[/usr/share/dotnet/host/fxr] does not exist

```

~$ sudo apt install dotnet-host
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages were automatically installed and are no longer required:
 aspnetcore-targeting-pack-6.0 libflashrom1 libftdi1-2 libllvm13
 liblttng-ust-common1 liblttng-ust-ctl5 liblttng-ust1 libodbc2 libodbccr2
 libodbcinst2 libsss-nss-idmap0 libunwind-13 netstandard-targeting-pack-2.1
 unixodbc-common
Use 'sudo apt autoremove' to remove them.
The following NEW packages will be installed:
 dotnet-host
0 upgraded, 1 newly installed, 0 to remove and 162 not upgraded.
Need to get 57.2 kB of archives.
After this operation, 252 kB of additional disk space will be used.
Get:1 https://packages.microsoft.com/ubuntu/22.04/prod jammy/main amd64 dotnet-host amd64 7.0.5-1 [57.2 kB]
Fetched 57.2 kB in 2s (30.4 kB/s)   
Selecting previously unselected package dotnet-host.
(Reading database ... 201120 files and directories currently installed.)
Preparing to unpack .../dotnet-host_7.0.5-1_amd64.deb ...
Unpacking dotnet-host (7.0.5-1) ...
Setting up dotnet-host (7.0.5-1) ...
Processing triggers for man-db (2.10.2-1) ...
~$ dotnet --version
A fatal error occurred. The folder [/usr/share/dotnet/host/fxr] does not exist
~$ dotnet -v
A fatal error occurred. The folder [/usr/share/dotnet/host/fxr] does not exist
~$ dotnet

Usage: dotnet [options]
Usage: dotnet [path-to-application]

Options:
 -h|--help     Display help.
 --info      Display .NET information.
 --list-sdks    Display the installed SDKs.
 --list-runtimes  Display the installed runtimes.

path-to-application:
 The path to an application .dll file to execute.
~$ dotnet --info
A fatal error occurred. The folder [/usr/share/dotnet/host/fxr] does not exist
~$ 
```

> > fix below

```

~$ dotnet --info
A fatal error occurred. The folder [/usr/share/dotnet/host/fxr] does not exist
~$ sudo apt-get remove dotnet* -y

~$ sudo apt-get remove aspnet* -y

~$ whereis dotnet
dotnet: /usr/lib/dotnet
~$ sudo rm -rf /usr/lib/dotnet

~$ wget https://download.visualstudio.microsoft.com/download/pr/8159607a-e686-4ead-ac99-b4c97290a5fd/ec6070b1b2cc0651ebe57cf1bd411315/dotnet-sdk-6.0.401-linux-x64.tar.gz
--2023-04-27 11:03:39-- https://download.visualstudio.microsoft.com/download/pr/8159607a-e686-4ead-ac99-b4c97290a5fd/ec6070b1b2cc0651ebe57cf1bd411315/dotnet-sdk-6.0.401-linux-x64.tar.gz
Resolving download.visualstudio.microsoft.com (download.visualstudio.microsoft.com)... 117.24.10.17
Connecting to download.visualstudio.microsoft.com (download.visualstudio.microsoft.com)|117.24.10.17|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 185736764 (177M) [application/octet-stream]
Saving to: ‘dotnet-sdk-6.0.401-linux-x64.tar.gz’

dotnet-sdk-6.0.401- 100%[===================>] 177.13M  488KB/s  in 6m 14s 

2023-04-27 11:09:55 (485 KB/s) - ‘dotnet-sdk-6.0.401-linux-x64.tar.gz’ saved [185736764/185736764]

~$ tar -zxvf dotnet-sdk-6.0.401-linux-x64.tar.gz  -C /path/dotnet
tar: /path/dotnet: Cannot open: No such file or directory
tar: Error is not recoverable: exiting now
~$ tar -zxvf dotnet-sdk-6.0.401-linux-x64.tar.gz  -C /var/dotnet
tar: /var/dotnet: Cannot open: No such file or directory
tar: Error is not recoverable: exiting now
~$ cd var
bash: cd: var: No such file or directory
~$ cd usr
bash: cd: usr: No such file or directory
~$ cd /usr
/usr$ mkdir dotnet
mkdir: cannot create directory ‘dotnet’: Permission denied
/usr$ sudo mkdir dotnet
/usr$ sudo tar tar -zxvf dotnet-sdk-6.0.401-linux-x64.tar.gz  -C /usr/dotnet
tar: You may not specify more than one '-Acdtrux', '--delete' or '--test-label' option
Try 'tar --help' or 'tar --usage' for more information.
/usr$ sudo tar -zxvf dotnet-sdk-6.0.401-linux-x64.tar.gz  -C /usr/dotnet
tar (child): dotnet-sdk-6.0.401-linux-x64.tar.gz: Cannot open: No such file or directory
tar (child): Error is not recoverable: exiting now
tar: Child returned status 2
tar: Error is not recoverable: exiting now
/usr$ cd
~$ sudo tar -zxvf dotnet-sdk-6.0.401-linux-x64.tar.gz  -C /usr/dotnet


/usr/dotnet$ export export DOTNET_ROOT=/usr/dotnet
/usr/dotnet$ export PATH=$PATH:/usr/dotnet


-------------------
~$ sudo gedit ~/.bashrc
add: 
export export DOTNET_ROOT=/usr/dotnet
export PATH=$PATH:/usr/dotnet
~$ source ~/.bashrc

/usr/dotnet$ dotnet

Usage: dotnet [options]
Usage: dotnet [path-to-application]

Options:
 -h|--help     Display help.
 --info      Display .NET information.
 --list-sdks    Display the installed SDKs.
 --list-runtimes  Display the installed runtimes.

path-to-application:
 The path to an application .dll file to execute.
/usr/dotnet$ dotnet --info
.NET SDK (reflecting any global.json):
 Version:  6.0.401
 Commit:  0906eae6f8

Runtime Environment:
 OS Name:   ubuntu
 OS Version: 22.04
 OS Platform: Linux
 RID:     ubuntu.22.04-x64
 Base Path:  /usr/dotnet/sdk/6.0.401/

global.json file:
 Not found

```

## Ubuntu 相关

> > 彻底卸载火狐 firefox

> sudo apt purge firefox\* -y

# ubuntu

> 配置源： /etc/apt/sources.list

## 文件管理器中不显示图片视频缩略图

> 安装 FFMPEG 缩略图

> > sudo apt install ffmpegthumbnailer

## 安装指定版本nodejs

> curl -sL <https://deb.nodesource.com/setup_14.x> | sudo -E bash -

> > 更新此段时，最新应该已经是20.x了

> > 完成后再执行 ：

> sudo apt-get install -y nodejs

## yarn

> npm install -g yarn

> yarn\*

## 安装 npmp

> > bash

> wget -qO- <https://get.pnpm.io/install.sh> | ENV="`$HOME/.bashrc" SHELL="$`(which bash)" bash -

> > sh

> wget -qO- <https://get.pnpm.io/install.sh> | ENV="`$HOME/.shrc" SHELL="$`(which sh)" sh -

> > dash

> wget -qO- <https://get.pnpm.io/install.sh> | ENV="`$HOME/.dashrc" SHELL="$`(which dash)" dash -

# Docker

## Docker 安装 & 配置镜像加速器

> step 1：安装必要的一些系统工具

> > apt update

> > apt -y install apt-transport-https ca-certificates curl software-properties-common

> step 2：安装 GPG 证书

> > curl -fsSL <http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg> | apt-key add -

> Step 3：写入软件源信息

> > add-apt-repository "deb \[arch=amd64] <http://mirrors.aliyun.com/docker-ce/linux/ubuntu> \$(lsb\_release -cs) stable"

> Step 4：更新并安装 Docker-CE

> > apt -y update

> > apt -y install docker-ce

> > mkdir -p /etc/docker

> > tee /etc/docker/daemon.json <<-'EOF'

> > {

> > "registry-mirrors": \["<https://jrzzvzok.mirror.aliyuncs.com>"]

> > }

> > EOF

> > systemctl daemon-reload

> > systemctl restart docker

## container容器

### 共享数据

#### DataVolume

## 镜像

> 镜像是只读的

> 镜像中包含有需要运行的文件

> 镜像用来创建container，一个镜像可以运行多个container；

> 镜像可以通过Dockerfile创建，也可以从Docker hub/registry上下载

## DockFile

## daemon D

> ocker Daemon是Docker架构中运行在后台的守护进程

## Docker Server 

> Server模块接受Docker Client的请求

> Engine Engine中处理请求，然后根据请求类型，创建出指定的Job并运行

> 向Docker Registry获取镜像，通过graphdriver执行容器镜像的本地化操作，通过networkdriver执行容器网络环境的配置，通过execdriver执行容器内部运行的执行工作等。

### Job

## client

> Docker引擎可以直观理解为就是在某一台机器上运行的Docker程序，实际上它是一个C/S结构的软件，有一个后台守护进程在运行，每次运行docker命令的时候实际上都是通过RESTful Remote API来和守护进程进行交互的，即使是在同一台机器上也是如此。

## Swarm

## Machine

## Compose

## LXC

### NameSpace

## repository

### DockerHub

### 私有仓库

## 优点

### 快速，一致地交付您的应用程序

### 响应式部署和扩展

### 在同一硬件上运行更多工作负载

## Dockerfile 详解

> Docker 的架构很有魅力，他拥有类似于虚拟机性质的隔离机制，但并不是严格意义上的虚拟机。我还是喜欢拿货轮举例，以前我们是一条小船运一个集装箱的货物，现在可以把 N 个集装箱扔到一条大货轮上。每个容器（集装箱）共用宿主机（货轮）的内核（运载力），Dockerfile 就像是每个集装箱中的货物清单和说明书，一般由以下五部分构成：

> 2.1 基础指令

> > FROM： 指定基础镜像，且必须位于第一行，使用格式如下：

> > FROM \<image>

> > FROM \<image>:\<tag>

> > FROM \<image>@\<digest>

> > Docker 的原理基于 Linux 内核的隔离技术，且 Linux From Scratch，因此 FROM scratch 是 docker 中最基础的镜像，debian、ubuntu 和 centos 等都基于 scratch 之上。在实际的运用中，如果必须从零开始搭建镜像的一般都选择 FROM debian 作为基础镜像，不过大多数情况下一般都会以如下：FROM python、FROM nginx、FROM java 等为基础镜像。

> > MAINTAINER：指定维护者信息，例：MAINTAINER user <user@mail.com>。

> 2.2 控制指令

> > RUN： 在构建的过程中指定需要被执行的命令，使用格式如下：

> > RUN command param1 param2 # 更推荐

> > RUN \["executable","param1","param2"]

> > WORKDIR： 用于切换构建过程中的工作目录，例：WORKDIR project。可配合环境变量使用，例：

> > ENV BASEDIR /project

> > WORKDIR \$BASEDIR/test

> > ONBUILD: 在当前镜像被当做基础镜像时，执行其携带指令，例：ONBUILD RUN echo "hello world" “hello world”会在子镜像被构建的过程中输出。

> 2.3 引入指令

> > COPY： 拷贝文件或目录，格式：

> > COPY \<src> \<dest>

> > COPY \["\<src>","\<dest>"]

> > ADD： 在COPY的基础之上，ADD可识别压缩文件，例：ADD rootfs.tar.xz /。理论上也可添加网络地址，但还是建议在 RUN 指令中执行 wget 或 curl 命令，感觉这样更加可控。实际应用中我喜欢将 COPY 用于文件，ADD 用于目录（仅我个人的使用习惯）。

> 2.4 执行指令

> > CMD： 容器启动时需要执行的命令，格式：

> > CMD \["executable","param1","param2"] # 更推荐

> > CMD \["param1","param2"]

> > CMD command param1 param2

> > 若在 docker run 中指定启动命令，则 CMD 将被覆盖。

> > ENTRYPOINT：主程序启动前的准备指令，用于启动主程序所依赖的服务，格式同CMD（基本上没用过就不介绍了，而且容易出错，不推荐使用）。

> 2.5 配置指令

> > EXPOSE： 暴露容器端口，格式：EXPOSE \<port> \[\<port>...]，注意此处的暴露端口和docker run 中-p指定的映射端口是两个概念。

> > ENV： 声明环境变量，格式：ENV \<key>=\<value> ...。

> > LABEL： 标记，格式：LABEL \<key>=\<value>...。

> > USER： 设置启动容器的用户，格式：USER daemo。

> > ARG： 设置变量，格式同ENV。

> > STOPSIGNAL： 容器停止时给应用程序发出的信号，例：STOPSIGNAL SIGKELL。

> > SHELL： 指定shell，例：SHELL \["bash","-c"]。

### Docker 命令详解

> 为了避免喧宾夺主，此处仅摘录我个人操作中较为常用的命令。

> 3.1 生命周期管理

> > run： 创建并运行容器，格式：docker run \[OPTIONS] IMAGE \[COMMAND] \[ARG...]，参数说明：

> > \-d , --detach      # 后台运行

> > \-it, --interactive tty  # 交互终端形式运行

> > \-p , --publish list   # 指定端口

> > \-v , --volume list    # 挂载存储卷

> >     	 --name string    # 定义名字

> >     	 --rm        # 容器终止后自动删除（不支持在后台运行的容器）

> >     	 --restart string  # no、on-failure（非正常退出时重启，on-failure:3 最多重启三次）、always、unless-stopped

> > docker run 的参数甚多，可通过 --help 查询，后续这些复杂的配置都会移交给 Docker Compose，以上几个足以应用70%\~80%的场景，例：

> 类似 ubuntu 这类容器必须以 -it 交互终端形式运行，否则无法在后台保留

> > docker run -it -d --name my-ubuntu ubuntu

> 端口映射和挂载数据卷

> > docker run -d \\

> > \-p 8080:80 \\

> > \-v /data/www:/usr/share/nginx/html\\

> > \--name my-nginx nginx

> > start/stop/restart：docker start/stop/restart my-container。

> > rm：移除容器，格式：docker rm \[OPTIONS] CONTAINER \[CONTAINER...]，参数说明：

> > \-f, --force   Force the removal of a running container

> > \-l, --link   Remove the specified link

> > \-v, --volumes  Remove the volumes associated with the container

> > exec：在运行的容器中执行命令，不过更常用的还是先进入容器再执行命令，例子\:docker exec -it my-nginx bash。

> 3.2 容器操作

> > ps： 列出容器，常用：docker ps -anq，参数说明：all、n last（最新 n 个容器）、quiet（只显示容器编号）。

> > top： 查看容器中的进程信息，例：docker top my-container。

> > logs： 查看容器日志，常用：docker logs -f --tail，参数说明：follow、--tail n（最新条日志）。

> > port：查看端口映射情况，例：docker port my-container。

> 3.3 镜像仓库

> > login/logout： 镜像仓库的登录和退出，格式：

> > docker login \[OPTIONS] \[SERVER]

> > docker logout \[SERVER]

> > 如果是Docker Hub，则示例如下：

> > docker login -u username -p passward

> > docker logout

> > 在生产环境中，我们一般会选择使用云厂商的镜像仓库，例：

> > docker login -u yo\*\*\*\*@qq.com -p \*\*\*\*\*\* registry-vpc.cn-hangzhou.aliyuncs.com

> > docker logout registry-vpc.cn-hangzhou.aliyuncs.com

> > pull： 拉取镜像，最常用的命令之一，格式：docker pull \[OPTIONS] NAME\[:TAG|@DIGEST]。

> > push： 上传镜像，格式：docker push \[OPTIONS] NAME\[:TAG]。

> 3.4 本地镜像管理

> > images： 列出本地镜像，常用 docker images -q，参数说明：quiet（只显示image Id）。

> > rmi： 删除本地镜像，常用 docker rmi -f，参数说明：force。

> > tag： 标记镜像，归入仓库，格式：docker tag \[OPTIONS] IMAGE\[:TAG] \[REGISTRYHOST/]\[USERNAME/]NAME\[:TAG]，例：docker tag ubuntu youclk/my-ubuntu\:v1。

> > build： 使用Dockerfile创建镜像，格式：docker build \[OPTIONS] PATH | URL | -，参数说明：-t tag 例：docker build -t youclk/my-ubuntu\:v1 .。

> > Install \:sudo apt-get -y install docker.io

> Other

> > docker image ls # 列出当前环境下的镜像

> > docker images  # 列出当前环境下的镜像

> > docker image rm ididididid   # 安装id删除镜像

> > 操作容器

> > docker run -i -t --rm centos /bin/bash  # 启动一个centos容器并进入，此时容器是干干净净，没有一点东西的，do everything

> > docker container kill container\_id  # 杀掉这个容器，强行终止

> > docker container rm container\_id   # 删除这个容器

> > docker container ls      # 查找当前容器

> > docker ps // 查看所有正在运行容器

> > docker stop containerId // containerId 是容器的ID

> > docker ps -a // 查看所有容器

> > docker ps -a -q // 查看所有容器ID

> > docker stop \$(docker ps -a -q) // stop停止所有容器

> > docker rm \$(docker ps -a -q) //  remove删除所有容器

## Docker-compose

### 一，Docker-compose简介

> 1，Docker-compose简介

> > Docker-Compose项目是Docker官方的开源项目，负责实现对Docker容器集群的快速编排。 Docker-Compose将所管理的容器分为三层，分别是工程（project），服务（service）以及容器（container）。Docker-Compose运行目录下的所有文件（docker-compose.yml，extends文件或环境变量文件等）组成一个工程，若无特殊指定工程名即为当前目录名。一个工程当中可包含多个服务，每个服务中定义了容器运行的镜像，参数，依赖。一个服务当中可包括多个容器实例，Docker-Compose并没有解决负载均衡的问题，因此需要借助其它工具实现服务发现及负载均衡。 Docker-Compose的工程配置文件默认为docker-compose.yml，可通过环境变量COMPOSE\_FILE或-f参数自定义配置文件，其定义了多个有依赖关系的服务及每个服务运行的容器。 使用一个Dockerfile模板文件，可以让用户很方便的定义一个单独的应用容器。在工作中，经常会碰到需要多个容器相互配合来完成某项任务的情况。例如要实现一个Web项目，除了Web服务容器本身，往往还需要再加上后端的数据库服务容器，甚至还包括负载均衡容器等。 Compose允许用户通过一个单独的docker-compose.yml模板文件（YAML 格式）来定义一组相关联的应用容器为一个项目（project）。 Docker-Compose项目由Python编写，调用Docker服务提供的API来对容器进行管理。因此，只要所操作的平台支持Docker API，就可以在其上利用Compose来进行编排管理。

> >

> 2，Docker-compose的安装

> > 安装环境查看

> > 也可以使用其他发行版本Linux系统

> > image

> > 安装

> > apt-get install python-pip

> > apt-get -y install docker-compose

> > 红帽系Linux使用以下命令安装

> > yum -y install python-pip

> > yum -y install docker-compose

> > 查看安装的版本

> > docker-compose -v

> > docker-compose version 1.21.0, build unknown

> >

> 3，Docker-compose卸载

> > apt-get remove docker-compose

> >

### 二，Docker-compose常用命令

> 1，Docker-compose命令格式

> > docker-compose \[-f \<arg>...] \[options] \[COMMAND] \[ARGS...]

> > 命令选项如下

> >

> > \-f --file FILE指定Compose模板文件，默认为docker-compose.yml

> > \-p --project-name NAME 指定项目名称，默认使用当前所在目录为项目名

> > \--verbose 输出更多调试信息

> > \-v，-version 打印版本并退出

> > \--log-level LEVEL 定义日志等级(DEBUG, INFO, WARNING, ERROR, CRITICAL)

> 2，docker-compose up

> > docker-compose up \[options] \[--scale SERVICE=NUM...] \[SERVICE...]

> > 选项包括：

> > \-d 在后台运行服务容器

> > \-no-color 不是有颜色来区分不同的服务的控制输出

> > \-no-deps 不启动服务所链接的容器

> > \--force-recreate 强制重新创建容器，不能与-no-recreate同时使用

> > –no-recreate 如果容器已经存在，则不重新创建，不能与–force-recreate同时使用

> > –no-build 不自动构建缺失的服务镜像

> > –build 在启动容器前构建服务镜像

> > –abort-on-container-exit 停止所有容器，如果任何一个容器被停止，不能与-d同时使用

> > \-t, –timeout TIMEOUT 停止容器时候的超时（默认为10秒）

> > –remove-orphans 删除服务中没有在compose文件中定义的容器

> 3，docker-compose ps

> > docker-compose ps \[options] \[SERVICE...]

> > 列出项目中所有在运行的容器

> 4，docker-compose stop

> > docker-compose stop \[options] \[SERVICE...]

> > 选项包括

> > \-t, –timeout TIMEOUT 停止容器时候的超时（默认为10秒）

> > docker-compose stop

> > 停止正在运行的容器，可以通过docker-compose start 再次启动

> 5，docker-compose -h

> > docker-compose -h

> > 查看帮助

> 6，docker-compose down

> > docker-compose down \[options]

> > 停止和删除容器、网络、卷、镜像。

> > 选项包括：

> > –rmi type，删除镜像，类型必须是：all，删除compose文件中定义的所有镜像；local，删除镜像名为空的镜像

> > \-v, –volumes，删除已经在compose文件中定义的和匿名的附在容器上的数据卷

> > –remove-orphans，删除服务中没有在compose中定义的容器

> > docker-compose down

> > 停用移除所有容器以及网络相关

> 7，docker-compose logs

> > docker-compose logs \[options] \[SERVICE...]

> > 查看服务容器的输出。默认情况下，docker-compose将对不同的服务输出使用不同的颜色来区分。可以通过–no-color来关闭颜色。

> > docker-compose logs

> > 查看服务容器的输出

> > \-f 跟踪日志输出

> 8，docker-compose bulid

> > docker-compose build \[options] \[--build-arg key=val...] \[SERVICE...]

> > 构建（重新构建）项目中的服务容器。

> > 选项包括：

> > –compress 通过gzip压缩构建上下环境

> > –force-rm 删除构建过程中的临时容器

> > –no-cache 构建镜像过程中不使用缓存

> > –pull 始终尝试通过拉取操作来获取更新版本的镜像

> > \-m, –memory MEM为构建的容器设置内存大小

> > –build-arg key=val为服务设置build-time变量

> > 服务容器一旦构建后，将会带上一个标记名。可以随时在项目目录下运行docker-compose build来重新构建服务

> 9，docker-compose pull

> > docker-compose pull \[options] \[SERVICE...]

> > 拉取服务依赖的镜像。

> > 选项包括：

> > –ignore-pull-failures，忽略拉取镜像过程中的错误

> > –parallel，多个镜像同时拉取

> > –quiet，拉取镜像过程中不打印进度信息

> > docker-compose pull

> > 拉取服务依赖的镜像

> 10，docker-compose restart

> > docker-compose restart \[options] \[SERVICE...]

> > 重启项目中的服务。

> > 选项包括：

> > \-t, –timeout TIMEOUT，指定重启前停止容器的超时（默认为10秒）

> > docker-compose restart

> > 重启项目中的服务

> 11，docker-compose rm

> > docker-compose rm \[options] \[SERVICE...]

> > 删除所有（停止状态的）服务容器。

> > 选项包括：

> > –f, –force，强制直接删除，包括非停止状态的容器

> > \-v，删除容器所挂载的数据卷

> > docker-compose rm

> > 删除所有（停止状态的）服务容器。推荐先执行docker-compose stop命令来停止容器。

> 12，docker-compose start

> > docker-compose start \[SERVICE...]

> > docker-compose start

> > 启动已经存在的服务容器。

> 13，docker-compose run

> > docker-compose scale web=3 db=2

> > 设置指定服务运行的容器个数。通过service=num的参数来设置数量

> 14，docker-compose scale

> > docker-compose scale web=3 db=2

> > 设置指定服务运行的容器个数。通过service=num的参数来设置数量

> 15，docker-compose pause

> > docker-compose pause \[SERVICE...]

> > 暂停一个服务容器

> 16，docker-compose kill

> > docker-compose kill \[options] \[SERVICE...]

> > 通过发送SIGKILL信号来强制停止服务容器。

> > 支持通过-s参数来指定发送的信号，例如通过如下指令发送SIGINT信号：

> > docker-compose kill -s SIGINT

> 17，docker-compose config

> > docker-compose config \[options]

> > 验证并查看compose文件配置。

> > 选项包括：

> > –resolve-image-digests 将镜像标签标记为摘要

> > \-q, –quiet 只验证配置，不输出。 当配置正确时，不输出任何内容，当文件配置错误，输出错误信息

> > –services 打印服务名，一行一个

> > –volumes 打印数据卷名，一行一个

> 18，docker-compose create

> > docker-compose create \[options] \[SERVICE...]

> > 为服务创建容器。

> > 选项包括：

> > –force-recreate：重新创建容器，即使配置和镜像没有改变，不兼容–no-recreate参数

> > –no-recreate：如果容器已经存在，不需要重新创建，不兼容–force-recreate参数

> > –no-build：不创建镜像，即使缺失

> > –build：创建容器前　　，生成镜像

> 19，docker-compose exec

> > docker-compose exec \[options] SERVICE COMMAND \[ARGS...]

> > 选项包括：

> > \-d 分离模式，后台运行命令。

> > –privileged 获取特权。

> > –user USER 指定运行的用户。

> > \-T 禁用分配TTY，默认docker-compose exec分配TTY。

> > –index=index，当一个服务拥有多个容器时，可通过该参数登陆到该服务下的任何服务，例如：docker-compose exec –index=1 web /bin/bash ，web服务中包含多个容器

> 20，docker-compose port

> > docker-compose port \[options] SERVICE PRIVATE\_PORT

> > 显示某个容器端口所映射的公共端口。

> > 选项包括：

> > –protocol=proto，指定端口协议，TCP（默认值）或者UDP

> > –index=index，如果同意服务存在多个容器，指定命令对象容器的序号（默认为1）

> 21，docker-compose push

> > docker-compose push \[options] \[SERVICE...]

> > 推送服务依的镜像。

> > 选项包括：

> > –ignore-push-failures 忽略推送镜像过程中的错误

> 22，docker-compose stop

> > docker-compose stop \[options] \[SERVICE...]

> > 停止运行的容器

> 23，docker-compose uppause

> > docker-compose unpause \[SERVICE...]

> > 恢复处于暂停状态中的服务。

### 三，Docker-compose模板文件

> 1，Docker-compose模板文件简介

> > Compose允许用户通过一个docker-compose.yml模板文件（YAML 格式）来定义一组相关联的应用容器为一个项目（project）。 Compose模板文件是一个定义服务、网络和卷的YAML文件。Compose模板文件默认路径是当前目录下的docker-compose.yml，可以使用.yml或.yaml作为文件扩展名。

> > Docker-Compose标准模板文件应该包含version、services、networks 三大部分，最关键的是services和networks两个部分。

> > 举例

> >

> > version: '3'

> > services:

> > web:

> > image: dockercloud/hello-world

> > ports:

> > *   8080

> > networks:

> > *   front-tier

> > *   back-tier

> >

> > redis:

> > image: redis

> > links:

> > *   web

> > networks:

> > *   back-tier

> >

> > lb:

> > image: dockercloud/haproxy

> > ports:

> > *   80:80

> > links:

> > *   web

> > networks:

> > *   front-tier

> > *   back-tier

> > volumes:

> > *   /var/run/docker.sock:/var/run/docker.sock

> >

> > networks:

> > front-tier:

> > driver: bridge

> > back-tier:

> > driver: bridge

> > Compose目前有三个版本分别为Version 1，Version 2，Version 3，Compose区分Version 1和Version 2（Compose 1.6.0+，Docker Engine 1.10.0+）。Version 2支持更多的指令。Version 1将来会被弃用。

> >

> 2，image

> > image是指定服务的镜像名称或镜像ID。如果镜像在本地不存在，Compose将会尝试拉取镜像。

> >

> > services:

> > web:

> > image: hello-world

> 3，build

> > 服务除了可以基于指定的镜像，还可以基于一份Dockerfile，在使用up启动时执行构建任务，构建标签是build，可以指定Dockerfile所在文件夹的路径。Compose将会利用Dockerfile自动构建镜像，然后使用镜像启动服务容器。

> >

> > build: /path/to/build/dir

> > 也可以是相对路径，只要上下文确定就可以读取到Dockerfile。

> >

> > build: ./dir

> > 设定上下文根目录，然后以该目录为准指定Dockerfile。

> >

> > build:

> > context: ../

> > dockerfile: path/of/Dockerfile

> > build都是一个目录，如果要指定Dockerfile文件需要在build标签的子级标签中使用dockerfile标签指定。 如果同时指定image和build两个标签，那么Compose会构建镜像并且把镜像命名为image值指定的名字。

> >

> 4,context

> > context选项可以是Dockerfile的文件路径，也可以是到链接到git仓库的url，当提供的值是相对路径时，被解析为相对于撰写文件的路径，此目录也是发送到Docker守护进程的context

> >

> > build:

> > context: ./dir

> 5,dockerfile

> > 使用dockerfile文件来构建，必须指定构建路径

> >

> > build:

> > context: .

> > dockerfile: Dockerfile-alternate

> 6,commond

> > command: bundle exec thin -p 3000

> 7,container\_name

> > Compose的容器名称格式是：<项目名称><服务名称><序号>

> > 可以自定义项目名称、服务名称，但如果想完全控制容器的命名，可以使用标签指定：

> >

> > container\_name: app

> 8,depends\_on

> > 在使用Compose时，最大的好处就是少打启动命令，但一般项目容器启动的顺序是有要求的，如果直接从上到下启动容器，必然会因为容器依赖问题而启动失败。例如在没启动数据库容器的时候启动应用容器，应用容器会因为找不到数据库而退出。depends\_on标签用于解决容器的依赖、启动先后的问题

> >

> > version: '2'

> > services:

> > web:

> > build: .

> > depends\_on:

> > *   db

> > *   redis

> > redis:

> > image: redis

> > db:

> > image: postgres

> > 上述YAML文件定义的容器会先启动redis和db两个服务，最后才启动web 服务。

> >

> 9,PID

> > pid: "host"

> > 将PID模式设置为主机PID模式，跟主机系统共享进程命名空间。容器使用pid标签将能够访问和操纵其他容器和宿主机的名称空间。

> >

> 10,ports

> > ports用于映射端口的标签。　

> > 使用HOST\:CONTAINER格式或者只是指定容器的端口，宿主机会随机映射端口。

> >

> > ports:

> > /- "3000"

> > /- "8000:8000"

> > /- "49100:22"

> > /- "127.0.0.1:8001:8001"

> > 当使用HOST\:CONTAINER格式来映射端口时，如果使用的容器端口小于60可能会得到错误得结果，因为YAML将会解析xx\:yy这种数字格式为60进制。所以建议采用字符串格式。

> >

> 11,extra\_hosts

> > 添加主机名的标签，会在/etc/hosts文件中添加一些记录。

> >

> > extra\_hosts:

> > /- "somehost:162.242.195.82"

> > /- "otherhost:50.31.209.229"

> > 启动后查看容器内部hosts：

> >

> 162.242.195.82 somehost

> 50.31.209.229  otherhost

> 12,volumes

> > 挂载一个目录或者一个已存在的数据卷容器，可以直接使用 \[HOST\:CONTAINER]格式，或者使用\[HOST\:CONTAINER\:ro]格式，后者对于容器来说，数据卷是只读的，可以有效保护宿主机的文件系统。 Compose的数据卷指定路径可以是相对路径，使用 . 或者 .. 来指定相对目录。 数据卷的格式可以是下面多种形式

> >

> > volumes:

> > // 只是指定一个路径，Docker 会自动在创建一个数据卷（这个路径是容器内部的）。

> > /- /var/lib/mysql

> > // 使用绝对路径挂载数据卷

> > /- /opt/data:/var/lib/mysql

> > // 以 Compose 配置文件为中心的相对路径作为数据卷挂载到容器。

> > /- ./cache:/tmp/cache

> > // 使用用户的相对路径（\~/ 表示的目录是 /home/<用户目录>/ 或者 /root/）。

> > /- \~/configs\:/etc/configs/\:ro

> > // 已经存在的命名的数据卷。

> > /- datavolume:/var/lib/mysql

> > 如果不使用宿主机的路径，可以指定一个volume\_driver。

> >

> 13,volumes\_from

> > 从另一个服务或容器挂载其数据卷：

> >

> > volumes\_from:

> > *   service\_name

> > *   container\_name

> 14,dns

> > 自定义DNS服务器。可以是一个值，也可以是一个列表。

> >

> > dns：8.8.8.8

> > dns：

> > *   8.8.8.8

> > *   9.9.9.9

> 15,expose

> > 暴露端口，但不映射到宿主机，只允许能被连接的服务访问。仅可以指定内部端口为参数，如下所示：

> >

> > expose:

> > *   "3000"

> > *   "8000"

> 16,links

> > 链接到其它服务中的容器。使用服务名称（同时作为别名），或者服务名称:服务别名（如 SERVICE\:ALIAS），例如

> >

> > links:

> > *   db

> > *   db\:database

> > *   redis

> 17,net

> > 设置网络模式。

> >

> > net: "bridge"

> > net: "none"

> > net: "host"

> > 四，Docker-compose模板文件示例

> 1，Docker-compose模板文件编写

> > docker-compose.yml

> >

> > version: '2'

> > services:

> > web1:

> > image: nginx

> > ports:

> > *   "6061:80"

> > container\_name: "web1"

> > networks:

> > *   dev

> > web2:

> > image: nginx

> > ports:

> > *   "6062:80"

> > container\_name: "web2"

> > networks:

> > *   dev

> > *   pro

> > web3:

> > image: nginx

> > ports:

> > *   "6063:80"

> > container\_name: "web3"

> > networks:

> > *   pro

> > networks:

> > dev:

> > driver: bridge

> > pro:

> > driver: bridge

> > docker-compose.yml文件指定了3个web服务

> >

> 2，启动应用

> > 创建一个webapp目录，将docker-compose.yaml文件拷贝到webapp目录下，使用docker-compose启动应用。

> >

> > docker-compose up -d

> 3，服务访问

> > 通过浏览器访问web1，web2，web3

> >

> > <http://127.0.0.1:6061>

> > <http://127.0.0.1:6062>

> > <http://127.0.0.1:6063>

## Dpcler-Kubernetes

> Kubernetes 也称为 K8s，是用于自动部署、扩缩和管理容器化应用程序的开源系统。

### kubernetes 概述

> kubernetes 基本介绍

> > kubernetes，简称 K8s，是用 8 代替 8 个字符“ubernete”而成的缩写。是一个开源的，用于管理云平台中多个主机上的容器化的应用，Kubernetes 的目标是让部署容器化的应用简单并且高效（powerful）,Kubernetes 提供了应用部署，规划，更新，维护的一种机制。说白了，K8S，就是基于容器(Docker单机版)的集群管理平台,用于管理多个Docker的。Docker 非常适合在一台主机上运行容器，并为此提供所有必需的功能。但在当今的分布式服务环境中，真正的挑战是管理跨服务器和复杂基础架构的资源和工作负载。

> > Kubernetes 是 Google 开源的一个容器编排引擎，它支持自动化部署、大规模可伸缩、应用容器化管理。在生产环境中部署一个应用程序时，通常要部署该应用的多个实例以便对应用请求进行负载均衡。在 Kubernetes 中，我们可以创建多个容器，每个容器里面运行一个应用实例，然后通过内置的负载均衡策略，实现对这一组应用实例的管理、发现、访问，而这些细节都不需要运维人员去进行复杂的手工配置和处理。

> kubernetes 功能和架构

> > Kubernetes 是一个轻便的和可扩展的开源平台，用于管理容器化应用和服务。通过Kubernetes 能够进行应用的自动化部署和扩缩容。在 Kubernetes 中，会将组成应用的容器组合成一个逻辑单元以更易管理和发现。Kubernetes 积累了作为 Google 生产环境运行工作负载 15 年的经验，并吸收了来自于社区的最佳想法和实践。

> > K8s 功能(Kubernetes 适用场景):

> > > （1）自动装箱:基于容器对应用运行环境的资源配置要求自动部署应用容器

> > > （2）自我修复(自愈能力):当容器失败时，会对容器进行重启,当所部署的 Node 节点有问题时，会对容器进行重新部署和重新调度,当容器未通过监控检查时，会关闭此容器直到容器正常运行时，才会对外提供服务

> > > （3）水平扩展:通过简单的命令、用户 UI 界面或基于 CPU 等资源使用情况，对应用容器进行规模扩大或规模剪裁

> > > （3）服务发现:用户不需使用额外的服务发现机制，就能够基于 Kubernetes 自身能力实现服务发现和负载均衡

> > > （4）滚动更新:可以根据应用的变化，对应用容器运行的应用，进行一次性或批量式更新

> > > （5）版本回退:可以根据应用部署情况，对应用容器运行的应用，进行历史版本即时回退

> > > （6）密钥和配置管理:在不需要重新构建镜像的情况下，可以部署和更新密钥和应用配置，类似热部署。

> > > （7）存储编排:自动实现存储系统挂载及应用，特别对有状态应用实现数据持久化非常重要存储系统可以来自于本地目录、网络存储(NFS、Gluster、Ceph 等)、公共云存储服务

> > > （8）批处理:提供一次性任务，定时任务；满足批量数据处理和分析的场景

> > 应用部署架构分类

> > > (1) 无中心节点架构： GlusterFS

> > > (2) 有中心节点架构： HDFS、K8S

> > k8s 集群架构

> > > Pod

> > > > 一个服务，是k8s管理的`最小单元`，k8s从 Pod中启动和管理容器；

> > > > 由Pod来管理一组相同功能的容器；

> > > > 一个Pod可以管理一个容器,也可以管理多个容器；

> > k8s 集群架构节点角色功能

Master Node:集群主控制节点，对集群进行调度管理，接受集群外用户去集群操作请求；Master Node 由

API server (管理接口):是整个系统的对外接口，供客户端和其他组件调用，相当于“营业厅”

scheduler（调度器）:负责对集群内部的资源进行调度，相当于“调度室”

controller (控制器):负责管理控制器，相当于“大总管”。

etcd (键值对数据库):是一个键值存储仓库，存储集群的状态

Worker Node:集群工作节点，运行用户业务应用容器；Worker Node 包含 \`

docker：容器管理

kubelet：主要负责监视指派到它所在的 Pod，包括创建、修改、监控、删除等。

kube-proxy：主要负责为Pod对象提供代理

其他附加服务

分布式键值存储服务

Etcd 服务

etcd是什么：

etcd 是 CoreOS 团队于 2013 年 6 月发起的开源项目，它的目标是构建一个高可用的分布式键值（key-value）数据库，基于 Go 语言实现。在分布式系统中，各种服务的配置信息的管理分享，服务的发现是一个很基本同时也是很重要的问题。CoreOS 项目就希望基于 etcd 来解决这一问题。

我们使用 etcd 来存储网络配置，解决容器互联互通的问题。

> > K8S核心概念：

通过Service统一入口进行访问，Controller用于创建Pot，Pot是一组容器的集合。

Pod:最小部署单元,一组容器的集合,共享网络,生命周期是短暂的

controller：确保预期的pod副本数量、无状态应用部署（无约定）、有状态应用部署(有特定条件)、确保所有的node运行同一个pod、一次性任务和定时任务

Service：定义一组pod的访问规则

搭建k8环境平台规划

服务器硬件配置要求搭建

测试环境：

master：2核+4G+20G

node：4核+8G+40G

生产环境：

Kubernetes 架构

核心角色

master (管理节点)

node（计算节点）

image (镜像仓库)

master 节点

master 节点服务

API server (管理接口)

scheduler（调度器）

controller (控制器)

etcd (键值对数据库)

Node 节点

node节点服务

docer

kubelet

kube-proxy

### 核心概念

> 基础架构

> > Master

> > > Master节点上面主要由四个模块组成：APIServer、scheduler、controller manager、etcd。

> > > APIServer。APIServer负责对外提供RESTful的Kubernetes API服务，它是系统管理指令的统一入口，任何对资源进行增删改查的操作都要交给APIServer处理后再提交给etcd。如架构图中所示，kubectl（Kubernetes提供的客户端工具，该工具内部就是对Kubernetes API的调用）是直接和APIServer交互的。

> > > schedule。scheduler的职责很明确，就是负责调度pod到合适的Node上。如果把scheduler看成一个黑匣子，那么它的输入是pod和由多个Node组成的列表，输出是Pod和一个Node的绑定，即将这个pod部署到这个Node上。Kubernetes目前提供了调度算法，但是同样也保留了接口，用户可以根据自己的需求定义自己的调度算法。

> > > controller manager。如果说APIServer做的是“前台”的工作的话，那controller manager就是负责“后台”的。每个资源一般都对应有一个控制器，而controller manager就是负责管理这些控制器的。比如我们通过APIServer创建一个pod，当这个pod创建成功后，APIServer的任务就算完成了。而后面保证Pod的状态始终和我们预期的一样的重任就由controller manager去保证了。

> > > etcd。etcd是一个高可用的键值存储系统，Kubernetes使用它来存储各个资源的状态，从而实现了Restful的API。

> > Node

> > > 每个Node节点主要由三个模块组成：kubelet、kube-proxy、runtime。

> > > runtime。runtime指的是容器运行环境，目前Kubernetes支持docker和rkt两种容器。

> > > kube-proxy。该模块实现了Kubernetes中的服务发现和反向代理功能。反向代理方面：kube-proxy支持TCP和UDP连接转发，默认基于Round Robin算法将客户端流量转发到与service对应的一组后端pod。服务发现方面，kube-proxy使用etcd的watch机制，监控集群中service和endpoint对象数据的动态变化，并且维护一个service到endpoint的映射关系，从而保证了后端pod的IP变化不会对访问者造成影响。另外kube-proxy还支持session affinity。

> > > kubelet。Kubelet是Master在每个Node节点上面的agent，是Node节点上面最重要的模块，它负责维护和管理该Node上面的所有容器，但是如果容器不是通过Kubernetes创建的，它并不会管理。本质上，它负责使Pod得运行状态与期望的状态一致。

> > > 至此，Kubernetes的Master和Node就简单介绍完了。下面我们来看Kubernetes中的各种资源/对象。

> Pod

> > > Pod 是Kubernetes的基本操作单元，也是应用运行的载体。整个Kubernetes系统都是围绕着Pod展开的，比如如何部署运行Pod、如何保证Pod的数量、如何访问Pod等。另外，Pod是一个或多个机关容器的集合，这可以说是一大创新点，提供了一种容器的组合的模型。

> > 基本操作

> > > 创建

> > > > kubectl create -f xxx.yaml

> > > 查询

> > > > kubectl get pod yourPodName

> > > > kubectl describe pod yourPodName

> > > 删除

> > > > kubectl delete pod yourPodName

> > > 更新

> > > > kubectl replace /path/to/yourNewYaml.yaml

> > Pod与容器

> > > 在Docker中，容器是最小的处理单元，增删改查的对象是容器，容器是一种虚拟化技术，容器之间是隔离的，隔离是基于Linux Namespace实现的。而在Kubernetes中，Pod包含一个或者多个相关的容器，Pod可以认为是容器的一种延伸扩展，一个Pod也是一个隔离体，而Pod内部包含的一组容器又是共享的（包括PID、Network、IPC、UTS）。除此之外，Pod中的容器可以访问共同的数据卷来实现文件系统的共享。

> > 镜像

> > > 在kubernetes中，镜像的下载策略为：

> > > Always：每次都下载最新的镜像

> > > Never：只使用本地镜像，从不下载

> > > IfNotPresent：只有当本地没有的时候才下载镜像

> > > Pod被分配到Node之后会根据镜像下载策略进行镜像下载，可以根据自身集群的特点来决定采用何种下载策略。无论何种策略，都要确保Node上有正确的镜像可用。

> > 其他设置

> > > 通过yaml文件，可以在Pod中设置：

> > > 启动命令，如：spec-->containers-->command；

> > > 环境变量，如：spec-->containers-->env-->name/value；

> > > 端口桥接，如：spec-->containers-->ports-->containerPort/protocol/hostIP/hostPort（使用hostPort时需要注意端口冲突的问题，不过Kubernetes在调度Pod的时候会检查宿主机端口是否冲突，比如当两个Pod均要求绑定宿主机的80端口，Kubernetes将会将这两个Pod分别调度到不同的机器上）;

> > > Host网络，一些特殊场景下，容器必须要以host方式进行网络设置（如接收物理机网络才能够接收到的组播流），在Pod中也支持host网络的设置，如：spec-->hostNetwork=true；

> > > 数据持久化，如：spec-->containers-->volumeMounts-->mountPath;

> > > 重启策略，当Pod中的容器终止退出后，重启容器的策略。这里的所谓Pod的重启，实际上的做法是容器的重建，之前容器中的数据将会丢失，如果需要持久化数据，那么需要使用数据卷进行持久化设置。Pod支持三种重启策略：Always（默认策略，当容器终止退出后，总是重启容器）、OnFailure（当容器终止且异常退出时，重启）、Never（从不重启）；

> > Pod生命周期

> > > Pod被分配到一个Node上之后，就不会离开这个Node，直到被删除。当某个Pod失败，首先会被Kubernetes清理掉，之后ReplicationController将会在其它机器上（或本机）重建Pod，重建之后Pod的ID发生了变化，那将会是一个新的Pod。所以，Kubernetes中Pod的迁移，实际指的是在新Node上重建Pod。以下给出Pod的生命周期图。

> > > 生命周期回调函数：PostStart（容器创建成功后调研该回调函数）、PreStop（在容器被终止前调用该回调函数）。以下示例中，定义了一个Pod，包含一个JAVA的web应用容器，其中设置了PostStart和PreStop回调函数。即在容器创建成功后，复制/sample.war到/app文件夹中。而在容器终止之前，发送HTTP请求到<http://monitor.com:8080/waring，即向监控系统发送警告。具体示例如下：>

```

………..

containers:

- image: sample:v2 

   name: war

   lifecycle：

   posrStart:

    exec:

     command:

     - “cp”

     - “/sample.war”

     - “/app”

   prestop:

    httpGet:

    host: monitor.com

    psth: /waring

    port: 8080

    scheme: HTTP

```

> Replication Controller

> > > Replication Controller（RC）是Kubernetes中的另一个核心概念，应用托管在Kubernetes之后，Kubernetes需要保证应用能够持续运行，这是RC的工作内容，它会确保任何时间Kubernetes中都有指定数量的Pod在运行。在此基础上，RC还提供了一些更高级的特性，比如滚动升级、升级回滚等。

> > RC与Pod的关联——Label

> > > RC与Pod的关联是通过Label来实现的。Label机制是Kubernetes中的一个重要设计，通过Label进行对象的弱关联，可以灵活地进行分类和选择。对于Pod，需要设置其自身的Label来进行标识，Label是一系列的Key/value对，在Pod-->metadata-->labeks中进行设置。

> > > Label的定义是任一的，但是Label必须具有可标识性，比如设置Pod的应用名称和版本号等。另外Lable是不具有唯一性的，为了更准确的标识一个Pod，应该为Pod设置多个维度的label。如下：

> > > "release" : "stable", "release" : "canary"

> > > "environment" : "dev", "environment" : "qa", "environment" : "production"

> > > "tier" : "frontend", "tier" : "backend", "tier" : "cache"

> > > "partition" : "customerA", "partition" : "customerB"

> > > "track" : "daily", "track" : "weekly"

> > > 举例，当你在RC的yaml文件中定义了该RC的selector中的label为app\:my-web，那么这个RC就会去关注Pod-->metadata-->labeks中label为app\:my-web的Pod。修改了对应Pod的Label，就会使Pod脱离RC的控制。同样，在RC运行正常的时候，若试图继续创建同样Label的Pod，是创建不出来的。因为RC认为副本数已经正常了，再多起的话会被RC删掉的。

> > 弹性伸缩

> > > 弹性伸缩是指适应负载变化，以弹性可伸缩的方式提供资源。反映到Kubernetes中，指的是可根据负载的高低动态调整Pod的副本数量。调整Pod的副本数是通过修改RC中Pod的副本是来实现的，示例命令如下：

> > > 扩容Pod的副本数目到10

> > > > \$ kubectl scale relicationcontroller yourRcName --replicas=10

> > > 缩容Pod的副本数目到1

> > > > \$ kubectl scale relicationcontroller yourRcName --replicas=1

> > 滚动升级

> > > 滚动升级是一种平滑过渡的升级方式，通过逐步替换的策略，保证整体系统的稳定，在初始升级的时候就可以及时发现、调整问题，以保证问题影响度不会扩大。Kubernetes中滚动升级的命令如下：

\$ kubectl rolling-update my-rcName-v1 -f my-rcName-v2-rc.yaml --update-period=10s

> > > 升级开始后，首先依据提供的定义文件创建V2版本的RC，然后每隔10s（--update-period=10s）逐步的增加V2版本的Pod副本数，逐步减少V1版本Pod的副本数。升级完成之后，删除V1版本的RC，保留V2版本的RC，及实现滚动升级。

> > > 升级过程中，发生了错误中途退出时，可以选择继续升级。Kubernetes能够智能的判断升级中断之前的状态，然后紧接着继续执行升级。当然，也可以进行回退，命令如下：

\$ kubectl rolling-update my-rcName-v1 -f my-rcName-v2-rc.yaml --update-period=10s --rollback

回退的方式实际就是升级的逆操作，逐步增加V1.0版本Pod的副本数，逐步减少V2版本Pod的副本数。

> > 新一代副本控制器replica set

> > > 这里所说的replica set，可以被认为 是“升级版”的Replication Controller。也就是说。replica set也是用于保证与label selector匹配的pod数量维持在期望状态。区别在于，replica set引入了对基于子集的selector查询条件，而Replication Controller仅支持基于值相等的selecto条件查询。这是目前从用户角度肴，两者唯一的显著差异。 社区引入这一API的初衷是用于取代vl中的Replication Controller，也就是说．当v1版本被废弃时，Replication Controller就完成了它的历史使命，而由replica set来接管其工作。虽然replica set可以被单独使用，但是目前它多被Deployment用于进行pod的创建、更新与删除。Deployment在滚动更新等方面提供了很多非常有用的功能，关于DeplOymCn的更多信息，读者们可以在后续小节中获得。

> Job

> > > 从程序的运行形态上来区分，我们可以将Pod分为两类：长时运行服务（jboss、mysql等）和一次性任务（数据计算、测试）。RC创建的Pod都是长时运行的服务，而Job创建的Pod都是一次性任务。

> > > 在Job的定义中，restartPolicy（重启策略）只能是Never和OnFailure。Job可以控制一次性任务的Pod的完成次数（Job-->spec-->completions）和并发执行数（Job-->spec-->parallelism），当Pod成功执行指定次数后，即认为Job执行完毕。

> Service

> > > 为了适应快速的业务需求，微服务架构已经逐渐成为主流，微服务架构的应用需要有非常好的服务编排支持。Kubernetes中的核心要素Service便提供了一套简化的服务代理和发现机制，天然适应微服务架构。

> > 原理

> > > 在Kubernetes中，在受到RC调控的时候，Pod副本是变化的，对于的虚拟IP也是变化的，比如发生迁移或者伸缩的时候。这对于Pod的访问者来说是不可接受的。Kubernetes中的Service是一种抽象概念，它定义了一个Pod逻辑集合以及访问它们的策略，Service同Pod的关联同样是居于Label来完成的。Service的目标是提供一种桥梁， 它会为访问者提供一个固定访问地址，用于在访问时重定向到相应的后端，这使得非 Kubernetes原生应用程序，在无须为Kubemces编写特定代码的前提下，轻松访问后端。

> > > Service同RC一样，都是通过Label来关联Pod的。当你在Service的yaml文件中定义了该Service的selector中的label为app\:my-web，那么这个Service会将Pod-->metadata-->labeks中label为app\:my-web的Pod作为分发请求的后端。当Pod发生变化时（增加、减少、重建等），Service会及时更新。这样一来，Service就可以作为Pod的访问入口，起到代理服务器的作用，而对于访问者来说，通过Service进行访问，无需直接感知Pod。

> > > 需要注意的是，Kubernetes分配给Service的固定IP是一个虚拟IP，并不是一个真实的IP，在外部是无法寻址的。真实的系统实现上，Kubernetes是通过Kube-proxy组件来实现的虚拟IP路由及转发。所以在之前集群部署的环节上，我们在每个Node上均部署了Proxy这个组件，从而实现了Kubernetes层级的虚拟转发网络。

> > Service代理外部服务

> > > Service不仅可以代理Pod，还可以代理任意其他后端，比如运行在Kubernetes外部Mysql、Oracle等。这是通过定义两个同名的service和endPoints来实现的。示例如下：

> > > redis-service.yaml

```

apiVersion: v1

kind: Service

metadata:

 name: redis-service

spec:

 ports:

 - port: 6379

  targetPort: 6379

  protocol: TCP

```

> > > redis-endpoints.yaml

```

apiVersion: v1

kind: Endpoints

metadata:

 name: redis-service

subsets:

 - addresses:

  - ip: 10.0.251.145

  ports:

  - port: 6379

   protocol: TCP

```

> > > 基于文件创建完Service和Endpoints之后，在Kubernetes的Service中即可查询到自定义的Endpoints。

```

[root@k8s-master demon]# kubectl describe service redis-service

Name:      redis-service

Namespace:    default

Labels:      <none>

Selector:    <none>

Type:      ClusterIP

IP:      10.254.52.88

Port:      <unset> 6379/TCP

Endpoints:    10.0.251.145:6379

Session Affinity:  None

No events.

[root@k8s-master demon]# etcdctl get /skydns/sky/default/redis-service

{"host":"10.254.52.88","priority":10,"weight":10,"ttl":30,"targetstrip":0}

```

> > Service内部负载均衡

> > > 当Service的Endpoints包含多个IP的时候，及服务代理存在多个后端，将进行请求的负载均衡。默认的负载均衡策略是轮训或者随机（有kube-proxy的模式决定）。同时，Service上通过设置Service-->spec-->sessionAffinity=ClientIP，来实现基于源IP地址的会话保持。

> > 发布Service

> > > Service的虚拟IP是由Kubernetes虚拟出来的内部网络，外部是无法寻址到的。但是有些服务又需要被外部访问到，例如web前段。这时候就需要加一层网络转发，即外网到内网的转发。Kubernetes提供了NodePort、LoadBalancer、Ingress三种方式。

> > > NodePort，在之前的Guestbook示例中，已经延时了NodePort的用法。NodePort的原理是，Kubernetes会在每一个Node上暴露出一个端口：nodePort，外部网络可以通过（任一Node）\[NodeIP]:\[NodePort]访问到后端的Service。

> > > LoadBalancer，在NodePort基础上，Kubernetes可以请求底层云平台创建一个负载均衡器，将每个Node作为后端，进行服务分发。该模式需要底层云平台（例如GCE）支持。

> > > Ingress，是一种HTTP方式的路由转发机制，由Ingress Controller和HTTP代理服务器组合而成。Ingress Controller实时监控Kubernetes API，实时更新HTTP代理服务器的转发规则。HTTP代理服务器有GCE Load-Balancer、HaProxy、Nginx等开源方案。

> > servicede 自发性机制

> > > Kubernetes中有一个很重要的服务自发现特性。一旦一个service被创建，该service的service IP和service port等信息都可以被注入到pod中供它们使用。Kubernetes主要支持两种service发现 机制：环境变量和DNS。

> > 环境变量方式

> > > Kubernetes创建Pod时会自动添加所有可用的service环境变量到该Pod中，如有需要．这些环境变量就被注入Pod内的容器里。需要注意的是，环境变量的注入只发送在Pod创建时，且不会被自动更新。这个特点暗含了service和访问该service的Pod的创建时间的先后顺序，即任何想要访问service的pod都需要在service已经存在后创建，否则与service相关的环境变量就无法注入该Pod的容器中，这样先创建的容器就无法发现后创建的service。

> > DNS方式

> > > Kubernetes集群现在支持增加一个可选的组件——DNS服务器。这个DNS服务器使用Kubernetes的watchAPI，不间断的监测新的service的创建并为每个service新建一个DNS记录。如果DNS在整个集群范围内都可用，那么所有的Pod都能够自动解析service的域名。Kube-DNS搭建及更详细的介绍请见：基于Kubernetes集群部署skyDNS服务

> > 多个service如何避免地址和端口冲突

> > > 此处设计思想是，Kubernetes通过为每个service分配一个唯一的ClusterIP，所以当使用ClusterIP：port的组合访问一个service的时候，不管port是什么，这个组合是一定不会发生重复的。另一方面，kube-proxy为每个service真正打开的是一个绝对不会重复的随机端口，用户在service描述文件中指定的访问端口会被映射到这个随机端口上。这就是为什么用户可以在创建service时随意指定访问端口。

> > service目前存在的不足

> > > Kubernetes使用iptables和kube-proxy解析service的人口地址，在中小规模的集群中运行良好，但是当service的数量超过一定规模时，仍然有一些小问题。首当其冲的便是service环境变量泛滥，以及service与使用service的pod两者创建时间先后的制约关系。目前来看，很多使用者在使用Kubernetes时往往会开发一套自己的Router组件来替代service，以便更好地掌控和定制这部分功能。

> Deployment

> > > Kubernetes提供了一种更加简单的更新RC和Pod的机制，叫做Deployment。通过在Deployment中描述你所期望的集群状态，Deployment Controller会将现在的集群状态在一个可控的速度下逐步更新成你所期望的集群状态。Deployment主要职责同样是为了保证pod的数量和健康，90%的功能与Replication Controller完全一样，可以看做新一代的Replication Controller。但是，它又具备了Replication Controller之外的新特性：

> > > Replication Controller全部功能：Deployment继承了上面描述的Replication Controller全部功能。

> > > 事件和状态查看：可以查看Deployment的升级详细进度和状态。

> > > 回滚：当升级pod镜像或者相关参数的时候发现问题，可以使用回滚操作回滚到上一个稳定的版本或者指定的版本。

> > > 版本记录: 每一次对Deployment的操作，都能保存下来，给予后续可能的回滚使用。

> > > 暂停和启动：对于每一次升级，都能够随时暂停和启动。

> > > 多种升级方案：Recreate----删除所有已存在的pod,重新创建新的; RollingUpdate----滚动升级，逐步替换的策略，同时滚动升级时，支持更多的附加参数，例如设置最大不可用pod数量，最小升级间隔时间等等。

> > 滚动升级

> > > 相比于RC，Deployment直接使用kubectl edit deployment/deploymentName 或者kubectl set方法就可以直接升级（原理是Pod的template发生变化，例如更新label、更新镜像版本等操作会触发Deployment的滚动升级）。操作示例——首先 我们同样定义一个nginx-deploy-v1.yaml的文件，副本数量为2：

```

apiVersion: extensions/v1beta1

kind: Deployment

metadata:

 name: nginx-deployment

spec:

 replicas: 3

 template:

  metadata:

   labels:

    app: nginx

  spec:

   containers:

   - name: nginx

    image: nginx:1.7.9

    ports:

    - containerPort: 80

```

> > > 创建deployment：

```

$ kubectl create -f nginx-deploy-v1.yaml --record

deployment "nginx-deployment" created

$ kubectl get deployments

NAME    DESIRED  CURRENT  UP-TO-DATE  AVAILABLE  AGE

nginx-deployment  3     0     0      0      1s

$ kubectl get deployments

NAME    DESIRED  CURRENT  UP-TO-DATE  AVAILABLE  AGE

nginx-deployment  3     3     3      3      18s

```

> > > 正常之后，将nginx的版本进行升级，从1.7升级到1.9。第一种方法，直接set镜像：

\$ kubectl set image deployment/nginx-deployment2 nginx=nginx:1.9

deployment "nginx-deployment2" image updated

> > > 第二种方法，直接edit：

> > > > \$ kubectl edit deployment/nginx-deployment

> > > > deployment "nginx-deployment2" edited

> > > 查看Deployment的变更信息（以下信息得以保存，是创建时候加的“--record”这个选项起的作用）：

```

$ kubectl rollout history deployment/nginx-deployment

deployments "nginx-deployment":

REVISION  CHANGE-CAUSE

1      kubectl create -f docs/user-guide/nginx-deployment.yaml --record

2      kubectl set image deployment/nginx-deployment nginx=nginx:1.9.1

3      kubectl set image deployment/nginx-deployment nginx=nginx:1.91

$ kubectl rollout history deployment/nginx-deployment --revision=2

deployments "nginx-deployment" revision 2

 Labels:    app=nginx

     pod-template-hash=1159050644

 Annotations: kubernetes.io/change-cause=kubectl set image deployment/nginx-deployment nginx=nginx:1.9.1

 Containers:

  nginx:

  Image:   nginx:1.9.1

  Port:    80/TCP

   QoS Tier:

    cpu:   BestEffort

    memory:  BestEffort

  Environment Variables:   <none>

 No volumes.

```

> > > 最后介绍下Deployment的一些基础命令。

> > > > \$ kubectl describe deployments #查询详细信息，获取升级进度

> > > > \$ kubectl rollout pause deployment/nginx-deployment2 #暂停升级

> > > > \$ kubectl rollout resume deployment/nginx-deployment2 #继续升级

> > > > \$ kubectl rollout undo deployment/nginx-deployment2 #升级回滚

> > > > \$ kubectl scale deployment nginx-deployment --replicas 10 #弹性伸缩Pod数量

> > > 关于多重升级，举例，当你创建了一个nginx1.7的Deployment，要求副本数量为5之后，Deployment Controller会逐步的将5个1.7的Pod启动起来；当启动到3个的时候，你又发出更新Deployment中Nginx到1.9的命令；这时Deployment Controller会立即将已启动的3个1.7Pod杀掉，然后逐步启动1.9的Pod。Deployment Controller不会等到1.7的Pod都启动完成之后，再依次杀掉1.7，启动1.9。

> Volume

> > 在Docker的设计实现中，容器中的数据是临时的，即当容器被销毁时，其中的数据将会丢失。如果需要持久化数据，需要使用Docker数据卷挂载宿主机上的文件或者目录到容器中。在Kubernetes中，当Pod重建的时候，数据是会丢失的，Kubernetes也是通过数据卷挂载来提供Pod数据的持久化的。Kubernetes数据卷是对Docker数据卷的扩展，Kubernetes数据卷是Pod级别的，可以用来实现Pod中容器的文件共享。目前，Kubernetes支持的数据卷类型如下：

> > > 1.  EmptyDir

> > > 1.  HostPath

> > > 1.  GCE Persistent Disk

> > > 1.  AWS Elastic Block Store

> > > 1.  NFS

> > > 1.  iSCSI

> > > 1.  Flocker

> > > 1.  GlusterFS

> > > 1.  RBD

> > > 1.  Git Repo

> > > 1.  Secret

> > > 1.  Persistent Volume Claim

> > > 1.  Downward API

> > 本地数据卷

> > > EmptyDir、HostPath这两种类型的数据卷，只能最用于本地文件系统。本地数据卷中的数据只会存在于一台机器上，所以当Pod发生迁移的时候，数据便会丢失。该类型Volume的用途是：Pod中容器间的文件共享、共享宿主机的文件系统。

> > > EmptyDir

> > > 如果Pod配置了EmpyDir数据卷，在Pod的生命周期内都会存在，当Pod被分配到 Node上的时候，会在Node上创建EmptyDir数据卷，并挂载到Pod的容器中。只要Pod 存在，EmpyDir数据卷都会存在（容器删除不会导致EmpyDir数据卷丟失数据），但是如果Pod的生命周期终结（Pod被删除），EmpyDir数据卷也会被删除，并且永久丢失。

> > > EmpyDir数据卷非常适合实现Pod中容器的文件共享。Pod的设计提供了一个很好的容器组合的模型，容器之间各司其职，通过共享文件目录来完成交互，比如可以通过一个专职日志收集容器，在每个Pod中和业务容器中进行组合，来完成日志的收集和汇总。

> > > HostPath

> > > HostPath数据卷允许将容器宿主机上的文件系统挂载到Pod中。如果Pod需要使用宿主机上的某些文件，可以使用HostPath。

> > 网络数据卷

> > > Kubernetes提供了很多类型的数据卷以集成第三方的存储系统，包括一些非常流行的分布式文件系统，也有在IaaS平台上提供的存储支持，这些存储系统都是分布式的，通过网络共享文件系统，因此我们称这一类数据卷为网络数据卷。

> > > 网络数据卷能够满足数据的持久化需求，Pod通过配置使用网络数据卷，每次Pod创建的时候都会将存储系统的远端文件目录挂载到容器中，数据卷中的数据将被水久保存，即使Pod被删除，只是除去挂载数据卷，数据卷中的数据仍然保存在存储系统中，且当新的Pod被创建的时候，仍是挂载同样的数据卷。网络数据卷包含以下几种：NFS、iSCISI、GlusterFS、RBD（Ceph Block Device）、Flocker、AWS Elastic Block Store、GCE Persistent Disk

> > Persistent Volume和Persistent Volume Claim

> > > 理解每个存储系统是一件复杂的事情，特别是对于普通用户来说，有时候并不需要关心各种存储实现，只希望能够安全可靠地存储数据。Kubernetes中提供了Persistent Volume和Persistent Volume Claim机制，这是存储消费模式。Persistent Volume是由系统管理员配置创建的一个数据卷（目前支持HostPath、GCE Persistent Disk、AWS Elastic Block Store、NFS、iSCSI、GlusterFS、RBD），它代表了某一类存储插件实现；而对于普通用户来说，通过Persistent Volume Claim可请求并获得合适的Persistent Volume，而无须感知后端的存储实现。Persistent Volume和Persistent Volume Claim的关系其实类似于Pod和Node，Pod消费Node资源，Persistent Volume Claim则消费Persistent Volume资源。Persistent Volume和Persistent Volume Claim相互关联，有着完整的生命周期管理：

> > > 1.  准备：系统管理员规划或创建一批Persistent Volume；

> > > 1.  绑定：用户通过创建Persistent Volume Claim来声明存储请求，Kubernetes发现有存储请求的时候，就去查找符合条件的Persistent Volume（最小满足策略）。找到合适的就绑定上，找不到就一直处于等待状态；

> > > 1.  使用：创建Pod的时候使用Persistent Volume Claim；

> > > 1.  释放：当用户删除绑定在Persistent Volume上的Persistent Volume Claim时，Persistent Volume进入释放状态，此时Persistent Volume中还残留着上一个Persistent Volume Claim的数据，状态还不可用；

> > > 1.  回收：是否的Persistent Volume需要回收才能再次使用。回收策略可以是人工的也可以是Kubernetes自动进行清理（仅支持NFS和HostPath）

> > 信息数据卷

　　

> > > Kubernetes中有一些数据卷，主要用来给容器传递配置信息，我们称之为信息数据卷，比如Secret（处理敏感配置信息，密码、Token等）、Downward API（通过环境变量的方式告诉容器Pod的信息）、Git Repo（将Git仓库下载到Pod中），都是将Pod的信息以文件形式保存，然后以数据卷方式挂载到容器中，容器通过读取文件获取相应的信息。

> Pet Sets/StatefulSet

> > K8s在1.3版本里发布了Alpha版的PetSet功能。在云原生应用的体系里，有下面两组近义词；第一组是无状态（stateless）、牲畜（cattle）、无名（nameless）、可丢弃（disposable）；第二组是有状态（stateful）、宠物（pet）、有名（having name）、不可丢弃（non-disposable）。RC和RS主要是控制提供无状态服务的，其所控制的Pod的名字是随机设置的，一个Pod出故障了就被丢弃掉，在另一个地方重启一个新的Pod，名字变了、名字和启动在哪儿都不重要，重要的只是Pod总数；而PetSet是用来控制有状态服务，PetSet中的每个Pod的名字都是事先确定的，不能更改。PetSet中Pod的名字的作用，是用来关联与该Pod对应的状态。

> > 对于RC和RS中的Pod，一般不挂载存储或者挂载共享存储，保存的是所有Pod共享的状态，Pod像牲畜一样没有分别；对于PetSet中的Pod，每个Pod挂载自己独立的存储，如果一个Pod出现故障，从其他节点启动一个同样名字的Pod，要挂在上原来Pod的存储继续以它的状态提供服务。

> > 适合于PetSet的业务包括数据库服务MySQL和PostgreSQL，集群化管理服务Zookeeper、etcd等有状态服务。PetSet的另一种典型应用场景是作为一种比普通容器更稳定可靠的模拟虚拟机的机制。传统的虚拟机正是一种有状态的宠物，运维人员需要不断地维护它，容器刚开始流行时，我们用容器来模拟虚拟机使用，所有状态都保存在容器里，而这已被证明是非常不安全、不可靠的。使用PetSet，Pod仍然可以通过漂移到不同节点提供高可用，而存储也可以通过外挂的存储来提供高可靠性，PetSet做的只是将确定的Pod与确定的存储关联起来保证状态的连续性。

> ConfigMap

> > 很多生产环境中的应用程序配置较为复杂，可能需要多个config文件、命令行参数和环境变量的组合。并且，这些配置信息应该从应用程序镜像中解耦出来，以保证镜像的可移植性以及配置信息不被泄露。社区引入ConfigMap这个API资源来满足这一需求。

> > ConfigMap包含了一系列的键值对，用于存储被Pod或者系统组件（如controller）访问的信息。这与secret的设计理念有异曲同工之妙，它们的主要区别在于ConfigMap通常不用于存储敏感信息，而只存储简单的文本信息。

> Horizontal Pod Autoscaler

> > 自动扩展作为一个长久的议题，一直为人们津津乐道。系统能够根据负载的变化对计算资源的分配进行自动的扩增或者收缩，无疑是一个非常吸引人的特征，它能够最大可能地减少费用或者其他代价（如电力损耗）。自动扩展主要分为两种，其一为水平扩展，针对于实例数目的增减；其二为垂直扩展，即单个实例可以使用的资源的增减。Horizontal Pod Autoscaler（HPA）属于前者。

> > Horizontal Pod Autoscaler如何工作

> > > Horizontal Pod Autoscaler的操作对象是Replication Controller、ReplicaSet或Deployment对应的Pod，根据观察到的CPU实际使用量与用户的期望值进行比对，做出是否需要增减实例数量的决策。controller目前使用heapSter来检测CPU使用量，检测周期默认是30秒。

> > Horizontal Pod Autoscaler的决策策略

> > > 在HPA Controller检测到CPU的实际使用量之后，会求出当前的CPU使用率（实际使用量与pod 请求量的比率)。然后，HPA Controller会通过调整副本数量使得CPU使用率尽量向期望值靠近．另外，考虑到自动扩展的决策可能需要一段时间才会生效，甚至在短时间内会引入一些噪声． 例如当pod所需要的CPU负荷过大，从而运行一个新的pod进行分流，在创建的过程中，系统的CPU使用量可能会有一个攀升的过程。所以，在每一次作出决策后的一段时间内，将不再进行扩展决策。对于ScaleUp而言，这个时间段为3分钟，Scaledown为5分钟。再者HPA Controller允许一定范围内的CPU使用量的不稳定，也就是说，只有当aVg（CurrentPodConsumption／Target低于0.9或者高于1.1时才进行实例调整，这也是出于维护系统稳定性的考虑。

### kubernetes 集群搭建(kubeadm 方式)

2.搭建K8s集群--->kubeadm

2.1环境准备

2.1.1关闭防火墙

2.1.2关闭seliux

2.1.3关闭swap分区

2.1.4设置主机名称

2.1.5将桥接的IPv4流量传递到iptables的链

2.1.6时间同步

2.2三台虚拟机都安装Docker

2.3添加阿里云YUM软件源

2.4安装/kubeadm/kubelet

2.5部署Kubernetes Master

2.6加入Kubernetes Node

2.7 部署CNI网络插件

2.8 测试kubernetes集群

> 目前生产部署 Kubernetes 集群主要有两种方式：

（1）kubeadm

Kubeadm 是一个K8s 部署工具，提供kubeadm init和 kubeadm join，用于快速部署 Kubernetes 集群。官方地址

（2）二进制包

从 github 下载发行版的二进制包，手动部署每个组件，组成 Kubernetes 集群。

Kubeadm 降低部署门槛，但屏蔽了很多细节，遇到问题很难排查。如果想更容易可

控，推荐使用二进制包部署 Kubernetes 集群，虽然手动部署麻烦点，期间可以学习很

多工作原理，也利于后期维护。

kubeadm 部署方式介绍

kubeadm 是官方社区推出的一个用于快速部署 kubernetes 集群的工具，这个工具能通过两条指令完成一个 kubernetes 集群的部署：

第一、创建一个 Master 节点 kubeadm init

第二， 将 Node节点加入到当前集群中 \$ kubeadm join \<Master 节点的 IP 和端口 >

安装要求

在开始之前，部署 Kubernetes 集群机器需要满足以下几个条件：

一台或多台机器，操作系统 CentOS7.x-86\_x64

硬件配置：2GB 或更多 RAM，2 个 CPU 或更多 CPU，硬盘 30GB 或更多

集群中所有机器之间网络互通

可以访问外网，需要拉取镜像

禁止 swap 分区

最终目标

角色	IP

k8s-master	192.168.31.61

k8s-node1	192.168.31.62

k8s-node2	192.168.31.63

> 系统初始化

> > 关闭防火墙：

```

$ systemctl stop firewalld

$ systemctl disable firewalld

```

> > 关闭 selinux：

```

$ sed -i 's/enforcing/disabled/' /etc/selinux/config # 永久

$ setenforce 0 # 临时

```

> > swap：

```

$ swapoff -a # 临时

$ vim /etc/fstab # 永久

```

> > 主机名：

```

$ hostnamectl set-hostname <hostname>

```

> > 在 master 添加 hosts：

```

$ cat >> /etc/hosts << EOF

192.168.31.61 k8s-master

192.168.31.62 k8s-node1

192.168.31.63 k8s-node2

EOF

```

> > 将桥接的 IPv4 流量传递到 iptables 的链：

```

$ cat > /etc/sysctl.d/k8s.conf << EOF

net.bridge.bridge-nf-call-ip6tables = 1

net.bridge.bridge-nf-call-iptables = 1

EOF

$ sysctl --system # 生效

```

> > 时间同步：

```

$ yum install ntpdate -y

$ ntpdate time.windows.com

```

> 所有节点安装 Docker/kubeadm/kubelet

> > Kubernetes 默认 CRI（容器运行时）为 Docker，因此先安装 Docker。

> > （1）安装 Docker

```

$ wget https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo -O /etc/yum.repos.d/docker-ce.repo

$ yum -y install docker-ce-18.06.1.ce-3.el7

$ systemctl enable docker && systemctl start docker

$ docker --version

```

> > 添加阿里云 YUM 软件源

> > 设置仓库地址

```

$ cat > /etc/docker/daemon.json << EOF

{

"registry-mirrors": ["https://b9pmyelo.mirror.aliyuncs.com"]

}

EOF

```

> > 添加 yum 源

```

$ cat > /etc/yum.repos.d/kubernetes.repo << EOF

[kubernetes]

name=Kubernetes

baseurl=https://mirrors.aliyun.com/kubernetes/yum/repos/kubernetes-el7-x86_64

enabled=1

gpgcheck=0

repo_gpgcheck=0

gpgkey=https://mirrors.aliyun.com/kubernetes/yum/doc/yum-key.gpg

https://mirrors.aliyun.com/kubernetes/yum/doc/rpm-package-key.gpg

EOF

```

> > 安装 kubeadm，kubelet 和 kubectl

```

$ yum install -y kubelet kubeadm kubectl

$ systemctl enable kubelet

```

> 部署 Kubernetes Master

> > 在 192.168.31.61（Master）执行

```

$ kubeadm init \

--apiserver-advertise-address=192.168.31.61 \

--image-repository registry.aliyuncs.com/google_containers \

--kubernetes-version v1.17.0 \

--service-cidr=10.96.0.0/12 \

--pod-network-cidr=10.244.0.0/16

```

> > 由于默认拉取镜像地址 k8s.gcr.io 国内无法访问，这里指定阿里云镜像仓库地址。

> > 使用 kubectl 工具：

```

mkdir -p $HOME/.kube

sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config

sudo chown $(id -u):$(id -g) $HOME/.kube/config

$ kubectl get nodes

```

> 安装 Pod 网络插件（CNI）

```

$ kubectl apply –f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kubeflannel.yml

```

> > 检查一下

```

kubect1 get pods -n kube-system

```

> > 确保能够访问到 quay.io 这个 registery。如果 Pod 镜像下载失败，可以改这个镜像地址

> 加入 Kubernetes Node

> > 在 192.168.31.62/63（Node）执行

> > 向集群添加新节点，执行在 kubeadm init 输出的 kubeadm join 命令：

```

$ kubeadm join 192.168.31.61:6443 --token esce21.q6hetwm8si29qxwn \

--discovery-token-ca-cert-hash

sha256:00603a05805807501d7181c3d60b478788408cfe6cedefedb1f97569708be9c5

```

> 测试 kubernetes 集群

> > 在 Kubernetes 集群中创建一个 pod，验证是否正常运行：

```

$ kubectl create deployment nginx --image=nginx

$ kubectl expose deployment nginx --port=80 --type=NodePort

$ kubectl get pod,svc

```

> > 访问地址：<http://NodeIP:Port>

### 安装方法二

> 安装三台虚拟机，centos7

> 对三台操作系统进行初始化

> > 关闭防火墙

```

systemctl status firewalld //查看防火墙状态

systemctl stop firewalld //关闭防火墙

systemctl disable firewalld //开机不启动防火墙

```

> > 关闭seliux

```

 getenforce

 sed -ri 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config

```

> > 关闭swap分区

```

swapoff -a # 临时关闭

sed -ri 's/.*swap.*/#&/' /etc/fstab  # 永久

```

> > 设置主机名称

> > > 根据规划设置主机名

```

hostnamectl set-hostname <hostname>

```

> > > 在master添加hosts

```

cat >> /etc/hosts << EOF

192.168.26.128 k8smaster

192.168.26.129 k8snode1

192.168.26.130 k8snode2

EOF

```

> > 将桥接的IPv4流量传递到iptables的链

```

cat > /etc/sysctl.d/k8s.conf << EOF

net.bridge.bridge-nf-call-ip6tables = 1

net.bridge.bridge-nf-call-iptables = 1

EOF

sysctl --system # 生效

```

> > 时间同步

```

yum install ntpdate -y

ntpdate time.windows.com

```

> 三台虚拟机都安装Docker

```

yum -y install wget

$ wget https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo -O /etc/yum.repos.d/docker-ce.repo

$ yum -y install docker-ce-18.06.1.ce-3.el7

$ systemctl enable docker && systemctl start docker

$ docker --version

Docker version 18.06.1-ce, build e68fc7a

$ cat > /etc/docker/daemon.json << EOF

{

 "registry-mirrors": ["https://b9pmyelo.mirror.aliyuncs.com"]

}

EOF

systemctl restart docker

```

> 添加阿里云YUM软件源

```

$ cat > /etc/yum.repos.d/kubernetes.repo << EOF

[kubernetes]

name=Kubernetes

baseurl=https://mirrors.aliyun.com/kubernetes/yum/repos/kubernetes-el7-x86_64

enabled=1

gpgcheck=0

repo_gpgcheck=0

gpgkey=https://mirrors.aliyun.com/kubernetes/yum/doc/yum-key.gpg https://mirrors.aliyun.com/kubernetes/yum/doc/rpm-package-key.gpg

EOF

```

> 安装/kubeadm/kubelet

> > 由于版本更新频繁，这里指定版本号部署：

```

$ yum install -y kubelet-1.18.0 kubeadm-1.18.0 kubectl-1.18.0

$ systemctl enable kubelet

```

> 部署Kubernetes Master

> > 在192.168.26.128（Master）执行。

```

$ kubeadm init \

 --apiserver-advertise-address=192.168.26.128 \

 --image-repository registry.aliyuncs.com/google_containers \

 --kubernetes-version v1.18.0 \

 --service-cidr=10.96.0.0/12 \

 --pod-network-cidr=10.244.0.0/16

```

> > 执行慢，稍作等待

> > 由于默认拉取镜像地址k8s.gcr.io国内无法访问，这里指定阿里云镜像仓库地址。

> > 使用kubectl工具：

```

mkdir -p $HOME/.kube

sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config

sudo chown $(id -u):$(id -g) $HOME/.kube/config

$ kubectl get nodes

```

> 加入Kubernetes Node

> > 在（Node）服务器执行。

> > 向集群添加新节点，执行在kubeadm init输出的kubeadm join命令：

```

$ kubeadm join 192.168.1.11:6443 --token esce21.q6hetwm8si29qxwn \

  --discovery-token-ca-cert-hash sha256:00603a05805807501d7181c3d60b478788408cfe6cedefedb1f97569708be9c5

```

> > 默认token有效期为24小时，当过期之后，该token就不可用了。这时就需要重新创建token，操作如下：

> > kubeadm token create --print-join-command

> 部署CNI网络插件

> > wget <https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml>

> > 默认镜像地址无法访问，sed命令修改为docker hub镜像仓库。可以换源下载

```

kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

kubectl get pods -n kube-system

NAME             READY  STATUS  RESTARTS  AGE

kube-flannel-ds-amd64-2pc95  1/1   Running  0     72s

```

> 测试kubernetes集群

> > 在Kubernetes集群中创建一个pod，验证是否正常运行：

```

$ kubectl create deployment nginx --image=nginx

$ kubectl expose deployment nginx --port=80 --type=NodePort

$ kubectl get pod,svc

```

> > 访问地址：<http://NodeIP:Port>

```

http://192.168.26.128:30340/

```

### kubernetes 集群搭建（二进制）

> 安装要求

> 准备环境、操作系统初始化

> 为etcd和apiserver准备自签证书（△）

> > 准备 cfssl 证书生成工具

> > > cfssl 是一个开源的证书管理工具， 使用 json 文件生成证书， 相比 openssl 更方便使用。找任意一台服务器操作， 这里用 Master 节点。

```

wget https://pkg.cfssl.org/R1.2/cfssl_linux-amd64

wget https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64

wget https://pkg.cfssl.org/R1.2/cfssl-certinfo_linux-amd64

chmod +x cfssl_linux-amd64 cfssljson_linux-amd64 cfssl-certinfo_linux-amd64

mv cfssl_linux-amd64 /usr/local/bin/cfssl

mv cfssljson_linux-amd64 /usr/local/bin/cfssljson

mv cfssl-certinfo_linux-amd64 /usr/bin/cfssl-certinfo

```

> > 生成 Etcd 证书

> > > 自签证书颁发机构（ CA）

> > > 创建工作目录：

```

mkdir -p ~/TLS/{etcd,k8s}

cd TLS/etcd

```

> > > 自签 CA：

```

cat > ca-config.json<< EOF

	{

	"signing": {

	"default": {

		"expiry": "87600h"

	},

	"profiles": {

	"www": {

		"expiry": "87600h",

		"usages": [

			"signing",

			"key encipherment",

			"server auth",

			"client auth"

		]

	}

	}

}

} EOF

cat > ca-csr.json<< EOF

{

	"CN": "etcd CA",

	"key": {

	"algo": "rsa",

	"size": 2048

	},

	"names": [

		{

		"C": "CN",

		"L": "Beijing",

		"ST": "Beijing"

		}

	]

} EOF

```

> > > 生成证书：

```

cfssl gencert -initca ca-csr.json | cfssljson -bare ca -

ls *pem

ca-key.pem ca.pem

```

> > > 使用自签 CA 签发 Etcd HTTPS 证书

> > > 创建证书申请文件：

```

cat > server-csr.json<< EOF

{

	"CN": "etcd",

	"hosts": [

		"192.168.31.71",

		"192.168.31.72",

		"192.168.31.73"

	],

	"key": {

		"algo": "rsa",

		"size": 2048

	},

	"names": [

		{

			"C": "CN",

			"L": "BeiJing",

			"ST": "BeiJing"

		}

	]

} EOF

```

> > > 注： 上述文件 hosts 字段中 IP 为所有 etcd 节点的集群内部通信 IP， 一个都不能少！ 为了方便后期扩容可以多写几个预留的 IP。

> > > 生成证书：

```

cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -

profile=www server-csr.json | cfssljson -bare server

ls server*pem

server-key.pem server.pem

```

> > 从 Github 下载二进制文件

> > > 下载地址： <https://github.com/etcd-io/etcd/releases/download/v3.4.9/etcd-v3.4.9-linux-amd64.tar.gz>

> 部署Etcd集群（△）

> > Etcd 是一个分布式键值存储系统， Kubernetes 使用 Etcd 进行数据存储， 所以先准备一个 Etcd 数据库， 为解决 Etcd 单点故障， 应采用集群方式部署， 这里使用 3 台组建集群， 可容忍 1 台机器故障， 当然， 你也可以使用 5 台组建集群， 可容忍 2 台机器故障。

> > > 创建工作目录并解压二进制包

```

mkdir /opt/etcd/{bin,cfg,ssl} – p

tar zxvf etcd-v3.4.9-linux-amd64.tar.gz

mv etcd-v3.4.9-linux-amd64/{etcd,etcdctl} /opt/etcd/bin/

```

> > > 创建 etcd 配置文件

```

cat > /opt/etcd/cfg/etcd.conf << EOF

#[Member]

	ETCD_NAME="etcd-1"

	ETCD_DATA_DIR="/var/lib/etcd/default.etcd"

	ETCD_LISTEN_PEER_URLS="https://192.168.31.71:2380"

	ETCD_LISTEN_CLIENT_URLS="https://192.168.31.71:2379"

	#[Clustering]

	ETCD_INITIAL_ADVERTISE_PEER_URLS="https://192.168.31.71:2380"

	ETCD_ADVERTISE_CLIENT_URLS="https://192.168.31.71:2379"

	ETCD_INITIAL_CLUSTER="etcd-1=https://192.168.31.71:2380,etcd-

	2=https://192.168.31.72:2380,etcd-3=https://192.168.31.73:2380"

	ETCD_INITIAL_CLUSTER_TOKEN="etcd-cluster"

	ETCD_INITIAL_CLUSTER_STATE="new"

EOF

ETCD_NAME： 节点名称， 集群中唯一

ETCD_DATA_DIR： 数据目录

ETCD_LISTEN_PEER_URLS： 集群通信监听地址

ETCD_LISTEN_CLIENT_URLS： 客户端访问监听地址

ETCD_INITIAL_ADVERTISE_PEER_URLS： 集群通告地址

ETCD_ADVERTISE_CLIENT_URLS： 客户端通告地址

ETCD_INITIAL_CLUSTER： 集群节点地址

ETCD_INITIAL_CLUSTER_TOKEN： 集群 Token

ETCD_INITIAL_CLUSTER_STATE： 加入集群的当前状态， new 是新集群， existing 表示加入已有集群

```

> > > systemd 管理 etcd

```

cat > /usr/lib/systemd/system/etcd.service << EOF

[Unit]

	Description=Etcd Server

	After=network.target

	After=network-online.target

	Wants=network-online.target

	[Service]

	Type=notify

	EnvironmentFile=/opt/etcd/cfg/etcd.conf

	ExecStart=/opt/etcd/bin/etcd \

	--cert-file=/opt/etcd/ssl/server.pem \

	--key-file=/opt/etcd/ssl/server-key.pem \

	--peer-cert-file=/opt/etcd/ssl/server.pem \

	--peer-key-file=/opt/etcd/ssl/server-key.pem \

	--trusted-ca-file=/opt/etcd/ssl/ca.pem \

	--peer-trusted-ca-file=/opt/etcd/ssl/ca.pem \

	--logger=zap

	Restart=on-failure

	LimitNOFILE=65536

	[Install]

	WantedBy=multi-user.target

EOF

```

> > > 拷贝刚才生成的证书把刚才生成的证书拷贝到配置文件中的路径：

```

cp ~/TLS/etcd/ca*pem ~/TLS/etcd/server*pem /opt/etcd/ssl/

```

> > > 启动并设置开机启动

```

systemctl daemon-reload

systemctl start etcd

systemctl enable etcd

```

> > > 将上面节点 1 所有生成的文件拷贝到节点 2 和节点 3

```

scp -r /opt/etcd/ root@192.168.31.72:/opt/

scp /usr/lib/systemd/system/etcd.service

root@192.168.31.72:/usr/lib/systemd/system/

scp -r /opt/etcd/ root@192.168.31.73:/opt/

scp /usr/lib/systemd/system/etcd.service

root@192.168.31.73:/usr/lib/systemd/system/

```

> > > 然后在节点 2 和节点 3 分别修改 etcd.conf 配置文件中的节点名称和当前服务器 IP：

```

vi /opt/etcd/cfg/etcd.conf

#[Member]

ETCD_NAME="etcd-1" # 修改此处， 节点 2 改为 etcd-2， 节点 3 改为 etcd-3

ETCD_DATA_DIR="/var/lib/etcd/default.etcd"

ETCD_LISTEN_PEER_URLS="https://192.168.31.71:2380" # 修改此处为当前服务器 IP

ETCD_LISTEN_CLIENT_URLS="https://192.168.31.71:2379" # 修改此处为当前服务器 IP

#[Clustering]

ETCD_INITIAL_ADVERTISE_PEER_URLS="https://192.168.31.71:2380" # 修改此处为当前

服务器 IP

ETCD_ADVERTISE_CLIENT_URLS="https://192.168.31.71:2379" # 修改此处为当前服务器

IP

ETCD_INITIAL_CLUSTER="etcd-1=https://192.168.31.71:2380,etcd-

2=https://192.168.31.72:2380,etcd-3=https://192.168.31.73:2380"

ETCD_INITIAL_CLUSTER_TOKEN="etcd-cluster"

ETCD_INITIAL_CLUSTER_STATE="new"

```

> > > 最后启动 etcd 并设置开机启动， 同上。

> > > 查看集群状态

```

ETCDCTL_API=3 /opt/etcd/bin/etcdctl --cacert=/opt/etcd/ssl/ca.pem --

cert=/opt/etcd/ssl/server.pem --key=/opt/etcd/ssl/server-key.pem --

endpoints="https://192.168.31.71:2379,https://192.168.31.72:2379,https://192.16

8.31.73:2379" endpoint health

https://192.168.31.71:2379 is healthy: successfully committed proposal: took =

8.154404ms

https://192.168.31.73:2379 is healthy: successfully committed proposal: took =

9.044117ms

https://192.168.31.72:2379 is healthy: successfully committed proposal: took =

10.000825ms

```

> > > 如果输出上面信息， 就说明集群部署成功。 如果有问题第一步先看日志：

```

/var/log/message 或 journalctl -u etcd

```

> 安装Docker

> > systemd 管理 docker

```

cat > /usr/lib/systemd/system/docker.service << EOF

[Unit]

Description=Docker Application Container Engine

Documentation=https://docs.docker.com

After=network-online.target firewalld.service

Wants=network-online.target

[Service]

Type=notify

ExecStart=/usr/bin/dockerd

ExecReload=/bin/kill -s HUP $MAINPID

LimitNOFILE=infinity

LimitNPROC=infinity

LimitCORE=infinity

TimeoutStartSec=0

Delegate=yes

KillMode=process

Restart=on-failure

StartLimitBurst=3

StartLimitInterval=60s

[Install]

WantedBy=multi-user.target

EOF

```

> > 创建配置文件

```

mkdir /etc/docker

cat > /etc/docker/daemon.json << EOF

{"registry-mirrors": ["https://b9pmyelo.mirror.aliyuncs.com"]

} EOF

```

> > > registry-mirrors 阿里云镜像加速器

> 部署Master Node

> 部署Worker Node

> 部署集群网络

### kubernetes 集群 YAML 文件详解

1、YAML 文件概述

k8s 集群中对资源管理和资源对象编排部署都可以通过声明样式（YAML）文件来解决，也就是可以把需要对资源对象操作编辑到 YAML 格式文件中，我们把这种文件叫做资源清单文件，通过 kubectl 命令直接使用资源清单文件就可以实现对大量的资源对象进行编排部署了。

3、资源清单描述方法

（1）在 k8s 中，一般使用 YAML 格式的文件来创建符合我们预期期望的 pod,这样的 YAML文件称为资源清单。

必须存在的属性（必须写）

参数名	字段类型	说明	默认值

apiVersion	String	这里是指的是K8S API的版本，目前基本上是v1，可以用 kubectl api-versions 或者 kubectl explain pod 命令查询

kind	String	这里指的是yaml文件定义的资源类型和角色，比如: Pod

metadata	Object	元数据对象，固定值就写metadata

metadata.name	String	元数据对象的名字，这里由我们编写，比如命名Pod的名字

metadata.namespace	String	元数据对象的命名空间，由我们自身定义	default

metadata.labels	map\[string]string	键值数据，常被用作挑选条件

spec	Object 详细定义对象，固定值就写Spec

spec.containers\[]		List	这里是Spec对象的容器列表定义，是个列表

spec.containers\[].name	String	这里定义容器的名字

spec.containers\[].image	String	这里定义要用到的镜像名称，如果镜像的标签是 latest，每次使用该镜像都会从远程下载

## LabⅥEW基础知识

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

## 前面板设计

> 前面板

> > “工具”选板

> > 图标/连接器

> > 选板可见性设置

> 前面板控件

> > “控件”选板

> > 控件样式

> 对象的设置

> > 选择对象

> > 删除对象

> > 变更对象位置

> > 属性节点

> 设置前面板的外观

> > 改变对象的大小

> > 改变对象的颜色

> > 设置对象的字体

> 菜单设计

> > 菜单编辑器

> > “菜单”函数

## 程序框图与程序结构

> 程序框图

> 循环结构

> > For循环及并行循环

> > 移位寄存器

> > While循环

> > 反馈节点

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

## 数值字符串与布尔运算

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

## 数组、矩阵与簇

> 数组控件

#### 数组、矩阵和簇控件

#### 列表框、树形控件和表格

#### 容器控件

#### 实例——数组分类

> 数组

#### 数组的组成

#### 实例——创建数组控件

#### 实例——创建多维数组控件

#### 数组函数

#### 实例——比较数组

#### 实例——选项卡数组

> 簇

#### 簇的组成

#### 创建簇

#### 实例——创建簇控件

#### 实例——调整“簇”控件顺序

#### 簇函数

#### 实例——使用“捆绑”函数创建“簇”控件

> 矩阵

#### 创建矩阵

#### 矩阵函数

#### 实例——创建矩阵控件

#### 实例——矩阵变换

### 综合实例——矩形的绘制

## 数据图形显示

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

## 数学函数

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

## 波形运算

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

### 信号生成

> 信号运算

> > 滤波器

> > 谱分析

> > 变换

> > 线性代数

## 文件管理

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

## 数据采集

> 数据采集基础

> DAQ功能概述

## 通信技术

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