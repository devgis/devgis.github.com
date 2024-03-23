---
layout: post
title: 计算机网络相关
description: 计算机网络相关知识梳理
date: 2023-09-25 01:01:01
updatedate: 2023-09-26 12:39:01
---
- [OSI七层模型](#osi七层模型)
- [TCP/IP体系结构概述](#tcpip体系结构概述)
- [数据链路层](#数据链路层)
- [逻辑链路控制层](#逻辑链路控制层)
- [桥接体系结构](#桥接体系结构)
- [NetBIOS体系结构](#netbios体系结构)
- [了解AppleTalk](#了解appletalk)
- [掌握Novell NetWare](#掌握novell-netware)
- [路由信息协议](#路由信息协议)
- [内部网关路由协议和增强的IGRP](#内部网关路由协议和增强的igrp)
- [开放最短路径优先](#开放最短路径优先)
- [边界网关协议](#边界网关协议)
- [数据链路交换](#数据链路交换)
- [ATM结构](#atm结构)
- [广域网](#广域网)
- [TCP](#tcp)
- [UDP](#udp)
- [以太网](#以太网)
- [无线](#无线)
  - [802.11](#80211)
- [IEEE 802.1](#ieee-8021)
- [其他](#其他)

## OSI七层模型

> 7	应用层（如HTTP、SMTP、SNMP、FTP、Telnet、SIP、SSH、NFS、RTSP、XMPP、Whois、ENRP）

> > 应用层是OSI模型中的最高层，是直接面向用户的一层，用户的通信内容要由应用进程解决，这就要求应用层采用不同的应用协议来解决不同类型的应用要求，并且保证这些不同类型的应用所采用的低层通信协议是一致的。应用层中包含了若干独立的用户通用服务协议模块，为网络用户之间的通信提供专用的程序服务。需要注意的是应用层并不是应用程序，而是为应用程序提供服务。

> 6	表示层（如XDR、ASN.1、SMB、AFP、NCP）

> > 表示层为在应用过程之间传送的信息提供表示方法的服务。表示层以下各层主要完成的是从源端到目的端可靠地的数据传送，而表示层更关心的是所传送数据的语法和语义。表示层的主要功能是处理在两个通信系统中交换信息的表示方式，主要包括数据格式变化、数据加密与解密、数据压缩与解压等。在网络带宽一定的前提下数据压缩的越小其传输速率就越快，所以表示层的数据压缩与解压被视为掌握网络传输速率的关键因素。表示层提供的数据加密服务是重要的网络安全要素，其确保了数据的安全传输，也是各种安全服务最为重视的关键。表示层为应用层所提供的服务包括：语法转换、语法选择和联接管理。

> 5	会话层（如ASAP、TLS、SSH、ISO 8327 / CCITT X.225、RPC、NetBIOS、ASP、Winsock、BSD sockets）

> > 会话层的主要功能是负责维护两个节点之间的传输联接，确保点到点传输不中断，以及管理数据交换等功能。会话层在应用进程中建立、管理和终止会话。会话层还可以通过对话控制来决定使用何种通信方式，全双工通信或半双工通信。会话层通过自身协议对请求与应答进行协调。 会话层主要是管理不同主机上不同进程的通信内容，打造更加完整的协调机制，从而确保用户之间无论是建立对话还是释放会话连接，都能最大程度保证数据交换的及时性和规范性。

> 4	传输层（如TCP、UDP、RTP、SCTP、SPX、ATP、IL）

> > 传输层是网络体系结构中高低层之间衔接的一个接口层。传输层不仅仅是一个单独的结构层，而是整个分析体系协议的核心。传输层主要为用户提供End—to—End(端到端)服务，处理数据报错误、数据包次序等传输问题。传输层是计算机通信体系结构中关键一层，它向高层屏蔽了下层数据的通信细节，使用户完全不用考虑物理层、数据链路层和网络层工作的详细情况。传输层使用网络层提供的网络联接服务，依据系统需求可以选择数据传输时使用面向联接的服务或是面向无联接的服务。

> 3	网络层（如IP、ICMP、IGMP、IPX、BGP、OSPF、RIP、IGRP、EIGRP、ARP、RARP、 X.25）

> > 网络层主要为数据在节点之间传输创建逻辑链路，通过路由选择算法为分组选择最佳路径，从而实现拥塞控制、网络互联等功能。网络层是以路由器为最高节点俯瞰网络的关键层，它负责把分组从源网络传输到目标网络的路由选择工作。互联网是由多个网络组成在一起的一个集合，正是借助了网络层的路由路径选择功能，才能使得多个网络之间的联接得以畅通，信息得以共享。网络层提供的服务有面向联接和面向无联接的服务两种。面向联接的服务是可靠的联接服务，是数据在交换之前必须先建立联接，然后传输数据，结束后终止之前建立联接的服务。网络层以虚电路服务的方式实现面向联接的服务。面向无联接的服务是一种不可靠的服务，不能防止报文的丢失、重发或失序。面向无联接的服务优点在于其服务方式灵活方便，并且非常迅速。网络层以数据报服务的方式实现面向无联接的服务。

> 2	数据链路层（如以太网、令牌环、HDLC、帧中继、ISDN、ATM、IEEE 802.11、FDDI、PPP）

> > 数据链路层是在通信实体间建立数据链路联接，传输的基本单位为“帧”，并为网络层提供差错控制和流量控制服务。数据链路层由MAC(介质访问控制子层)和LLC(逻辑链路控制子层)组成。介质访问控制子层的主要任务是规定如何在物理线路上传输帧。逻辑链路控制子层对在同一条网络链路上的设备之间的通信进行管理。数据链路控制子层主要负责逻辑上识别不同协议类型，并对其进行封装。也就是说数据链路控制子层会接受网络协议数据、分组的数据报并且添加更多的控制信息，从而把这个分组传送到它的目标设备

> 1	物理层（如同轴电缆、双绞线、无线电、光纤）

> > 物理层是参考模型中的最底层，主要定义了系统的电气、机械、过程和功能标准。如：电压、物理数据速率、最大传输距离、物理联接器和其他的类似特性。物理层的主要功能是利用传输介质为数据链路层提供物理联接，负责数据流的物理传输工作。物理层传输的基本单位是比特流，即0和1，也就是最基本的电信号或光信号，是最基本的物理传输特征。物理层定义了通信网络之间物理链路的电气特性或机械特性，主要负责比特流和电压、光线等传输方式之间建立互换模式，并且依据比特流进行实时性传输，其中比特流记为0或1。

## TCP/IP体系结构概述

> TCP/IP协议参考了OSI的体系结构，并简化为了四个层次。 

> > （1）应用层、表示层、会话层三个层次提供的服务相差不是很大，所以在TCP/IP协议中，它们被合并为应用层一个层次。 

> > （2）由于传输层和网络层在网络协议中的地位十分重要，所以在TCP/IP协议中它们被作为独立的两个层次。 

> > （3）因为数据链路层和物理层的内容相差不多，所以在TCP/IP协议中它们被归并在网络接口层一个层次里。只有四层体系结构的TCP/IP协议，与有七层体系结构的OSI相比要简单了不少，也正是这样，TCP/IP协议在实际的应用中效率更高，成本更低。 
分别介绍TCP/IP协议中的四个层次。

> 应用层：应用层是TCP/IP协议的第一层，是直接为应用进程提供服务的。

> > （1）对不同种类的应用程序它们会根据自己的需要来使用应用层的不同协议，邮件传输应用使用了SMTP协议、万维网应用使用了HTTP协议、远程登录服务应用使用了有TELNET协议。 

> > （2）应用层还能加密、解密、格式化数据。 

> > （3）应用层可以建立或解除与其他节点的联系，这样可以充分节省网络资源。 

> 传输层：作为TCP/IP协议的第二层，传输层在整个TCP/IP协议中起到了中流砥柱的作用。且在传输层中，TCP和UDP也同样起到了中流砥柱的作用。 

> 网络层：网络层在TCP/IP协议中的位于第三层。在TCP/IP协议中网络层可以进行网络连接的建立和终止以及IP地址的寻找等功能。 

> 网络接口层：在TCP/IP协议中，网络接口层位于第四层。由于网络接口层兼并了物理层和数据链路层所以，网络接口层既是传输数据的物理媒介，也可以为网络层提供一条准确无误的线路。 

## 数据链路层

## 逻辑链路控制层

## 桥接体系结构

## NetBIOS体系结构

## 了解AppleTalk

## 掌握Novell NetWare

## 路由信息协议

## 内部网关路由协议和增强的IGRP

## 开放最短路径优先

## 边界网关协议

## 数据链路交换

## ATM结构

## 广域网

## TCP 

## UDP

## 以太网

| 以太网标准 | 日期 | 描述 |
| ---- | ---- | ---- |
| 以太网络 | 1973年 | 同轴电缆（同轴）总线上的2.94Mbit / s（367kB/ s）。单字节节点地址仅对单个网络唯一。 |
| 以太网I（DIX v1.0） | 1980年 | 厚同轴电缆上10 Mbit / s（1.25MB/ s）。框架具有“类型”字段。此帧格式通过Internet协议套件中的协议用于所有形式的以太网。六字节MAC地址。 |
| 以太网II（DIX v2.0） | 1982年 | | IEEE 802.3标准 | 1983年 | 10BASE510 Mbit / s（1.25 MB / s）厚同轴电缆。与Ethernet II（上面）相同，除了Type字段被Length替换，802.2LLC报头在802.3报头之后。基于CSMA / CD流程。 |
| 802.3a | 1985年 | 10BASE210 Mbit / s（1.25 MB / s）超薄同轴电缆（又名thinnet或cheapernet） |
| 802.3b | 1985年 | 10BROAD36 |
| 802.3c | 1985年 | 10 Mbit / s（1.25 MB / s）中继器规格 |
| 802.3-1985 | 1985年 | 从1983年开始修订基准 |
| 802.3d | 1987年 | 光纤中继器链路 |
| 802.3e | 1987年 | 1BASE5或StarLAN |
| 802.3i | 1990年 | 10BASE-T10 Mbit / s（1.25 MB / s）双绞线 |
| 802.3j | 1993年 | 10BASE-F10 Mbit / s（1.25 MB / s）光纤 |
| 802.3Q | 1993年 | 层管理对象的GDMO（ISO 10164-4）格式 |
| 802.3u标准 | 1995年 | 具有100 Mbit / s（12.5 MB / s）的100BASE-TX，100BASE-T4,100BASE-FX快速以太网，具有自动协商功能 |
| 802.3X | 1997年 | 全双工和流量控制;还包含DIX框架，因此不再有DIX / 802.3分割 |
| 802.3y | 1998年 | 语音级双绞线100BASE-T2100 Mbit / s（12.5 MB / s） |
| 802.3z支持 | 1998-07 | 1000BASE-XGbit/ s光纤以太网，速率为1 Gbit / s（125 MB / s） |
| 802.3-1998 | 1998-07 | （802.3aa）包含上述修正案和勘误表的基准标准的修订版 |
| 802.3ab标准 | 1999至1906年 | 1000BASE-TGbit / s以太网双绞线，速率为1 Gbit / s（125 MB / s） |
| 协议802.3ac | 1998-09 | 最大帧大小扩展到1522字节（允许“Q-tag”）Q-tag包括802.1QVLAN信息和802.1p优先级信息。 |
| 802.3ad的 | 2000-03 | 自移至IEEE 802.1AX以来，并行链路的链路聚合 |
| 802.3-2002 | 2002年01期 | （802.3ag）包含前三个修正案和勘误表的基准标准的修订版 |
| 802.3ae标准 | 2002-06 | 光纤上的万兆以太网;10GBASE-SR，10GBASE-LR，10GBASE-ER，10GBASE-SW，10GBASE-LW，10GBASE-EW |
| 802.3af标准 | 2003-06 | 以太网供电（15.4 W） |
| 802.3ah标准 | 2004-06 | 第一英里的以太网 |
| 802.3ak | 2004-02 | 10GBASE-CX410 Gbit / s（1,250 MB / s）以太网双轴电缆 |
| 802.3-2005 | 2005-06 | （802.3am）基础标准的修订，包含前四个修正案和勘误表。 |
| 802.3an  | 2006-06 | 通过非屏蔽双绞线（UTP）的10GBASE-T10 Gbit / s（1,250 MB / s）以太网 |
| 802.3ap标准 | 2007-03 | 背板以太网（印刷电路板上1和10 Gbit / s（125和1,250 MB / s）） |
| 802.3aq | 2006-09 | 10GBASE-LRM10 Gbit / s（1,250 MB / s）以太网多模光纤 |
| 802.3ar | 取消 | 拥塞管理（撤销） |
| 802.3as | 2006-09 | 帧扩展 |
| 802.3at标准 | 2009-09 | 以太网供电增强功能（25.5 W） |
| 802.3au | 2006-06 | 以太网供电的隔离要求（802.3-2005 / Cor 1） |
| 802.3av标准 | 2009-09 | 10 Gbit / sEPON |
| 802.3aw | 2007年06期 | 修复了10GBASE-T（发布为802.3-2005 / Cor 2）的出版物中的等式 |
| 802.3ax | 2008-11 | 链接聚合 - 移至并批准为802.1AX |
| 802.3-2008 | 2008-12 | （802.3ay）对基准标准的修订，包括802.3an / ap / aq /作为修正案，两个勘误表和勘误表。 |
| 符合802.3az | 2010-09 | 节能以太网 |
| 802.3ba标准 | 2010-06 | 40 Gbit / s和100 Gbit / s以太网。40 mbit / s超过1 m背板，10 m Cu电缆组件（4 x 25 Gbit或10 x 10 Gbit通道）和100 mMMF和100 Gbit / s高达10 m Cu电缆组件，100 mMMF或40公里的SMF |
| 802.3-2008 / Cor 1 | 2009年 | （802.3bb）增加暂停反应延迟时间不足10 Gbit / s（工作组名称为802.3bb） |
| 802.3bc | 2009-09 | 移动并更新先前在IEEE 802.1AB（LLDP）的附录F中指定的以太网相关TLV（类型，长度，值）到802.3。 |
| 802.3bd | 2011-06 | 基于优先级的流量控制。IEEE 802.1数据中心桥接任务组（802.1Qbb）的修订，以开发对IEEE Std 802.3的修订，以添加MAC控制帧以支持基于IEEE 802.1Qbb优先级的流控制。 |
| 802.3.1 | 2011-05 | （802.3be）以太网的MIB定义。它将附件30A和B中的以太网相关MIB，各种IETFRFC和802.1AB附件F合并到一个具有机器可读提取的主文档中。（工作组名称为P802.3be） |
| 802.3bf | 2011-05 | 根据IEEE P802.1AS的要求，准确指示某些数据包的传输和接收启动时间。 |
| 802.3bg | 2011-03 | 提供40 Gbit / sPMD，与现有的SMF40 Gbit / s客户端接口（OTU3/STM-256/OC-768/40G POS）光学兼容。 |
| 802.3-2012 | 2012-08 | （802.3bh）对基准标准的修订，包括802.3at / av / az / ba / bc / bd / bf / bg修正案，勘误表和勘误表。 |
| 802.3bj | 2014-06 | 定义一个4通道100 Gbit / s背板PHY，用于在“改进的FR-4”（由IEEE P802.3ap或由工作组定义的更好的材料定义）上与铜迹线一致的链路上操作，长度可达到至少1米和4通道100 Gbit / s PHY，用于与铜双轴电缆一致的链路，长度至少为5 m。 |
| 802.3bk | 2013-08 | IEEE Std 802.3的这一修订定义了支持PX30，PX40，PRX40和PR40 PMD的扩展功率预算等级的点对多点无源光网络上EPON操作的物理层规范和管理参数。 |
| 802.3bm | 2015-02 | 用于光纤的100G / 40G以太网 |
| 802.3bn | 2016-09 | 10G-EPON和10GPASS-XR，同轴电缆上的无源光网络 |
| 802.3bp | 2016-06 | 1000BASE-T1 - 通过单个双绞线，汽车和工业环境的千兆以太网 |
| 802.3bq | 2016-06 | 25G /40GBASE-T，用于4对平衡双绞线，2个连接器，距离超过30米 |
| 802.3br | 2016-06 | 散布快速交通的规范和管理参数 |
| 802.3bs | 2017-12 | 单模光纤上200GbE（200 Gbit / s）和光学物理介质上400GbE（400 Gbit / s） |
| 802.3bt | 2018-09 | 采用全部4对平衡双绞线（4PPoE）的第三代以太网供电，功率高达100 W，包括10GBASE-T，更低的待机功率和特定的增强功能，以支持物联网应用（如照明，传感器，楼宇自动化）。 |
| 802.3bu | 2016-12 | 用于单双绞线以太网（100BASE-T1）的数据线供电（PoDL） |
| 802.3bv | 2017-02 | 塑料光纤（POF）上的千兆以太网 |
| 802.3bw | 2015-10 | 100BASE-T1 - 单个双绞线上的100 Mbit / s以太网，适用于汽车应用 |
| 802.3-2015 | 2015-09 | 802.3bx - 802.3标准的新综合修订版，包括修订版802.3bk / bj / bm |
| 802.3by | 2016-06 | 光纤，双轴和背板25千兆以太网 |
| 802.3bz | 2016-09 | 2.5GBASE-T和5GBASE-T- 通过Cat-5/Cat-6双绞线的2.5千兆和5千兆以太网 |
| 802.3ca | （TBD） | 100G-EPON - 25,50和100 Gbit / s以太网无源光网络- 计划于2020年夏季推出 |
| 802.3cb | 2018-09 | 2.5 Gbit / s和5 Gbit / s背板操作 |
| 802.3cc | 2017-12 | 单模光纤25 Gbit / s |
| 802.3cd | 2018-12 | 50 Gbit / s和物理层的媒体访问控制参数以及50,100和200 Gbit / s操作的管理参数 |
| 802.3ce | 2017-03 | 多通道时间戳 |
| 802.3cf | 2019-03 | YANG数据模型定义 |
| 802.3cg | （TBD） | 10 Mbit / s单双绞线以太网 - 计划于2019年秋季推出 |
| 802.3ch | （TBD） | 超过15米的多千兆汽车以太网（2.5,5,10 Gbit / s）和可选的PoDL - 计划于2019年秋季推出 |
| 802.3-2018 | 2018-08 | 802.3cj - 802.3-2015维护，合并最近修订bn / bp / bq / br / bs / bw / bu / bv / by / bz / cc / ce |
| 802.3ck | （TBD） | 使用100 Gbit / s通道的100,200和400 Gbit / s以太网 - 计划于2021年春季推出 |
| 802.3厘米 | （TBD） | 多模光纤（4对8对，100米）400 Gbit / s - 预定2019年冬季 |
| 802.3cn | （TBD） | 50 Gbit / s（40 km），100 Gbit / s（80 km），200 Gbit / s（4λ，40 km）和400 Gbit / s（8λ，40 km和单λ，DWDM80 km）单模光纤和DWDM - 计划于2020年夏季推出 |
| 802.3cp | （TBD） | 10/25/50 Gbit / s单链光纤接入，至少10/20/40 km |
| 802.3cq | （TBD） | 以太网供电超过2对（维护） - 计划于2019年夏季推出 |
| 802.3cr | （TBD） | 隔离（维护） |
| 802.3cs | （TBD） | “Super-PON” - 增加范围，10 Gbit / s光纤接入，至少50 km覆盖范围和每波长对1:64分光比，16个波长对 - 预定于2021年夏季 |
| 802.3ct | （TBD） | 通过DWDM系统实现100 Gbit / s和400 Gbit / s - 计划于2021年秋季推出 |
| 802.3cu | （TBD） |   |

## 无线

### 802.11

IEEE 802.11，1997年，原始标准（2Mbps，播在2.4GHz）。
IEEE 802.11a，1999年，物理层补充（54Mbps，播在5GHz）。
IEEE 802.11b，1999年，物理层补充（11Mbps，播在2.4GHz）。
IEEE 802.11c，匹配802.1D的媒体接入控制层桥接（MAC Layer Bridging）。
IEEE 802.11d，根据各国无线电规定做的调整。
IEEE 802.11e，对服务等级（Quality of Service,QoS）的支持。
IEEE 802.11f，基站的互连性（IAPP，Inter-Access Point Protocol），2006年2月被IEEE批准撤销。
IEEE 802.11g，2003年，物理层补充（54Mbit/s，播在2.4GHz）。
IEEE 802.11h，2004年，无线覆盖半径的调整，室内（indoor）和室外（outdoor）信道（5GHz频段）。
IEEE 802.11i，2004年，无线网络的安全方面的补充。
IEEE 802.11j，2004年，根据日本规定做的升级。
IEEE 802.11k，该协议规范规定了无线局域网络频谱测量规范。该规范的制订体现了无线局域网络对频谱资源智能化使用的需求。
IEEE 802.11l，预留及准备不使用。
IEEE 802.11m，维护标准；互斥及极限。
IEEE 802.11n，更高传输速率的改善，基础速率提升到72.2Mbps，可以使用双倍带宽40MHz，此时速率提升到150Mbps。支持多输入多输出技术（Multi-Input Multi-Output，MIMO）。
IEEE 802.11o，针对VOWLAN（Voice over WLAN）而制订，更快速的无限跨区切换，以及读取语音（voice）比数据（Data）有更高的传输优先权。
IEEE 802.11p，这个通信协议主要用在车用电子的无线通信上。它设置上是从IEEE 802.11来扩展延伸，来匹配智能运输系统（Intelligent Transportation Systems，ITS）的相关应用。
IEEE 802.11q
IEEE 802.11r：快速BSS切换（FT）（2008）
IEEE 802.11s：Mesh Networking,Extended Service Set（ESS）（July 2011）
IEEE 802.11t：Wireless Performance Prediction (WPP)—test methods and metrics Recommendationcancelled
IEEE 802.11u：Improvements related to HotSpots and 3rd party authorization of clients, e.g. cellular network offload (February 2011)
IEEE 802.11v：Wirelessnetwork management（February 2011）
IEEE 802.11w：Protected Management Frames (September 2009)
IEEE 802.11x
IEEE 802.11y：3650–3700MHz Operation in the U.S.（2008）
IEEE 802.11z：Extensions to Direct Link Setup (DLS)（September 2010）
IEEE 802.11-2012：A new release of the standard that includes amendments k, n, p, r, s, u, v, w, y and z (March 2012)
IEEE 802.11aa：Robust streaming of Audio Video Transport Streams (June 2012)
IEEE 802.11ab
IEEE 802.11ac，802.11n的潜在继承者，更高传输速率的改善，当使用多基站时将无线速率提高到至少1Gbps，将单信道速率提高到至少500Mbps。使用更高的无线带宽（80MHz-160MHz，802.11n只有40MHz），更多的MIMO流（最多8条流），更好的调制方式（QAM256）。正式标准于2012年2月18日推出。Quantenna公司在2011年11月15日推出了世界上第一只采用802.11ac的无线路由器。Broadcom公司于2012年1月5日也发布了它的第一支支持802.11ac的芯片。
IEEE 802.11ad：Very High Throughput 60GHz (December 2012) - seeWiGig
IEEE 802.11ae：Prioritization of Management Frames（2012年3月）
IEEE 802.11af：运用过往电视白区（TV White Space，TVWS）的频段所订立标准，由于使用白区频段（VHS的54MHz～216MHz及UHF的470MHz～698MHz），有时IEEE 802.11af也称为White-Fi（取Wi-Fi一词的派生变化）。
IEEE 802.11ah：用来支持无线感测器网上（Wireless Sensor Network，WSN），以及支持物联网（Internet of Thing，IoT）、智能电网（Smart Grid）的智能电表（Smart Meter）等应用。
IEEE 802.11ai：为IEEE 802.11的修正案，新增部分机制，以及加速创建网上连线的等待时间。
IEEE 802.11aj：为IEEE 802.11ad的增补标准，开放45GHz的未授权带宽带使世界上部分地区可以使用。
IEEE 802.11aq：为IEEE 802.11的修正案，增加网上探索的效率，以加快网上传输速度。
IEEE 802.11ax：以现行的IEEE 802.11ac做为基底的草案，以提供比现行的传输速率加快4倍为目标。

## IEEE 802.1

IEEE 802.1是一组协议的集合，如生成树协议、VLAN协议等。为了将各个协议区别开来，IEEE在制定某一个协议时，就在IEEE 802.1后面加上不同的小写字母，如IEEE 802.1a定义局域网体系结构；IEEE 802.1b定义网际互连，网络管理及寻址；IEEE 802.1d定义生成树协议；IEEE 802.1p定义优先级队列；IEEE 802.1q定义VLAN标记协议；IEEE 802.1s定义多生成树协议；IEEE 802.1w定义快速生成树协议；IEEE 802.1x定义局域网安全认证等。

## 其他

1．00 Implement Layer 2 Technologies √
1．10 Implement Spanning Tree Protocol (STP)
(a) 802.1d
(b) 802.1w
(c) 801.1s
(d) Loop guard
(e) Root guard
(f) Bridge protocol data unit (BPDU) guard
(g) Storm control
(h) Unicast flooding
(i) Port roles, failure propagation, and loop guard operation
1．20 Implement VLAN and VLAN Trunking Protocol (VTP)
1．30 Implement trunk and trunk protocols, EtherChannel, and load-balance
1．40 Implement Ethernet technologies
(a) Speed and duplex
(b) Ethernet, Fast Ethernet, and Gigabit Ethernet
(c) PPP over Ethernet (PPPoE)
1．50 Implement Switched Port Analyzer (SPAN), Remote Switched Port Analyzer (RSPAN), and flow control
1．60 Implement Frame Relay
(a) Local Management Interface (LMI)
(b) Traffic shaping
(c) Full mesh
(d) Hub and spoke
(e) Discard eligible (DE)
1．70 Implement High-Level Data Link Control (HDLC) and PPP
2．00 Implement IPv4
2．10 Implement IP version4 (IPv4) addressing, subnetting, and variable-length subnet masking (VLSM)
2．20 Implement IPv4tunneling and Generic Routing Encapsulation (GRE)
2．30 Implement IPv4 RIP version 2 (RIPv2)
2．40 Implement IPv4 Open Shortest Path First (OSPF)
(a) Standard OSPF areas
(b) Stub area
(c) Totally stubby area
(d) Not-so-stubby-area (NSSA)
(e) Totally NSSA
(f) Link-state advertisement (LSA) types
(g) Adjacency on a point-to-point and on a multi-access network
(h) OSPF graceful restart
2．50 Implement IPv4 Enhanced Interior Gateway Routing Protocol (EIGRP)
(a) Best path
(b) Loop-free paths
(c) EIGRP operations when alternate loop-free paths are available, and when they are not available
(d) EIGRP queries
(e) Manual summarization and autosummarization
(f) EIGRP stubs
2．60 Implement IPv4 Border Gateway Protocol (BGP)
(a) Next hop
(b) Peering
(c) Internal Border Gateway Protocol (IBGP) and External Border Gateway Protocol (EBGP)
2．70 Implement policy routing
2．80 Implement Performance Routing (PfR) and Cisco Optimized Edge Routing (OER)
2．90 Implement filtering, route redistribution, summarization, synchronization, attributes, and other advanced features
3．00 Implement IPv6
3．10 Implement IP version 6 (IPv6) addressing and different addressing types
3．20 Implement IPv6 neighbor discovery
3．30 Implement basic IPv6 functionality protocols
3．40 Implement tunneling techniques
3．50 Implement OSPF version 3 (OSPFv3)
3．60 Implement EIGRP version 6 (EIGRPv6)
3．70 Implement filtering and route redistribution
4．00 Implement MPLS Layer 3 VPNs
4．10 Implement Multiprotocol Label Switching (MPLS)
4．20 Implement Layer 3 virtual private networks (VPNs) on provider edge (PE), provider (P), and customer edge (CE) routers
4．30 Implement virtual routing and forwarding (VRF) and Multi-VRF Customer Edge (VRF-Lite)
5．00 Implement IP Multicast
5．10 Implement Protocol Independent Multicast (PIM) sparse mode
5．20 Implement Multicast Source Discovery Protocol (MSDP)
5．30 Implement interdomain multicast routing
5．40 Implement PIM Auto-Rendezvous Point (Auto-RP), unicast rendezvous point (RP), and bootstrap router (BSR)
5．50 Implement multicast tools, features, and source-specific multicast
5．60 Implement IPv6 multicast, PIM, and related multicast protocols, such as Multicast Listener Discovery (MLD)
6．00 Implement Network Security
6．01 Implement access lists
6．02 Implement Zone Based Firewall
6．03 Implement Unicast Reverse Path Forwarding (uRPF)
6．04 Implement IP Source Guard
6．05 Implement authentication, authorization, and accounting (AAA) (configuring the AAA server is not required, only the client-side (IOS) is configured)
6．06 Implement Control Plane Policing (CoPP)
6．07 Implement Cisco IOS Firewall
6．08 Implement Cisco IOS Intrusion Prevention System (IPS)
6．09 Implement Secure Shell (SSH)
6．10 Implement 802.1x
6．11 Implement NAT
6.12 Implement routing protocol authentication
6．13 Implement device access control
6．14 Implement security features
7．00 Implement Network Services
7．10 Implement Hot Standby Router Protocol (HSRP)
7．20 Implement Gateway Load Balancing Protocol (GLBP)
7．30 Implement Virtual Router Redundancy Protocol (VRRP)
7．40 Implement Network Time Protocol (NTP)
7．50 Implement DHCP
7．60 Implement Web Cache Communication Protocol (WCCP)
8．00 Implement Quality ofService (QoS)
8．10 Implement Modular QoS CLI (MQC)
(a) Network-Based Application Recognition (NBAR)
(b) Class-based weighted fair queuing (CBWFQ),modified deficit round robin (MDRR), and low latency queuing (LLQ)
(c) Classification
(d) Policing
(e) Shaping
(f) Marking
(g) Weighted random early detection (WRED) and random early detection (RED)
(h) Compression
8．20 Implement Layer 2 QoS: weighted round robin (WRR), shaped round robin (SRR), and policies
8．30 Implement link fragmentation and interleaving (LFI) for Frame Relay
8．40 Implement generic traffic shaping
8．50 Implement Resource Reservation Protocol (RSVP)
8．60 Implement Cisco AutoQoS
9．00 Troubleshoot a Network
9．10 Troubleshoot complex Layer 2 network issues
9．20 Troubleshoot complex Layer 3 network issues
9．30 Troubleshoot a network in response to application problems
9．40 Troubleshoot network services
9．50 Troubleshoot network security
10．00 Optimize the Network
10．01 Implement syslog and local logging
10．02 Implement IP Service Level Agreement SLA
10．03 Implement NetFlow
10．04 Implement SPAN, RSPAN, and router IP traffic export (RITE)
10．05 Implement Simple Network Management Protocol (SNMP)
10．06 Implement Cisco IOS Embedded Event Manager (EEM)
10．07 Implement Remote Monitoring (RMON)
10．08 Implement FTP
10．09 Implement TFTP
10．10 Implement TFTP server on router
10．11 Implement Secure Copy Protocol (SCP)
10．12 Implement HTTP and HTTPS
10．13 Implement Telnet
安全CCIE认证内容
认证介绍：
安全领域的CCIE 认证表示网络人士在IP 和IP 路由，以及特定的安全协议和组件方面拥有专家级知识。获得安全CCIE，能够设计安全的网络。熟练使用ASA/PIX，IPS，VPN产品以及各种安全技术。
备考推荐资料：
CISCO VPN配置完全手册
路由器防火墙
安全原理与实践
……
课程设计内容：
Implement secure networks using Cisco ASA Firewalls
Perform basic firewall Initialization Configure device management Configure address translation (nat, global, static) Configure ACLs Configure IP routing Configure object groups Configure VLANs Configure filtering Configure failover Configure Layer 2 Transparent Firewall Configure security contexts (virtual firewall) Configure Modular Policy Framework Configure Application-Aware Inspection Configure high availability solutions Configure QoS policies
Implement secure networks using Cisco IOS FirewallsConfigure CBAC Configure Zone-Based Firewall Configure Audit Configure Auth Proxy Configure PAM Configure access control Configure performance tuning Configure advanced IOS Firewall features
Implement secure networks using Cisco VPN solutionsConfigure IPsec LAN-to-LAN (IOS/ASA) Configure SSL VPN (IOS/ASA) Configure Dynamic Multipoint VPN (DMVPN) Configure Group Encrypted Transport (GET) VPN Configure Easy VPN (IOS/ASA) Configure CA (PKI) Configure Remote Access VPN Configure Cisco Unity Client Configure Clientless WebVPN Configure AnyConnect VPN Configure XAuth, Split-Tunnel, RRI, NAT-T Configure High Availability Configure QoS for VPN Configure GRE, mGRE Configure L2TP Configure advanced Cisco VPN features
Configure Cisco IPS to mitigate network threatsConfigure IPS 4200 Series Sensor Appliance Initialize the Sensor Appliance Configure Sensor Appliance management Configure virtual Sensors on the Sensor Appliance Configure security policies Configure promiscuous and inline monitoring on the Sensor Appliance Configure and tune signatures on the Sensor Appliance Configure custom signatures on the Sensor Appliance Configure blocking on the Sensor Appliance Configure TCP resets on the Sensor Appliance Configure rate limiting on the Sensor Appliance Configure signature engines on the Sensor Appliance Use IDM to configure the Sensor Appliance Configure event action on the Sensor Appliance Configure event monitoring on the Sensor Appliance Configure advanced features on the Sensor Appliance Configure and tune Cisco IOS IPS Configure SPAN & RSPAN on Cisco switches
Implement Identity ManagementConfigure RADIUS and TACACS+ security protocols Configure LDAP Configure Cisco Secure ACS Configure certificate-based authentication Configure proxy authentication Configure 802.1x Configure advanced identity management features Configure Cisco NAC Framework
Implement Control Plane and Management Plane SecurityImplement routing plane security features (protocol authentication, route filtering) Configure Control Plane Policing Configure CP protection and management protection Configure broadcast control and switchport security Configure additional CPU protection mechanisms (options drop, logging interval) Disable unnecessary services Control device access (Telnet, HTTP, SSH, Privilege levels) Configure SNMP, Syslog, AAA, NTP Configure service authentication (FTP, Telnet, HTTP, other) Configure RADIUS and TACACS+ security protocols Configure device management and security
Configure Advanced SecurityConfigure mitigation techniques to respond to network attacks Configure packet marking techniques Implement security RFCs (RFC1918/3330, RFC2827/3704) Configure Black Hole and Sink Hole solutions Configure RTBH filtering (Remote Triggered Black Hole) Configure Traffic Filtering using Access-Lists Configure IOS NAT Configure TCP Intercept Configure uRPF Configure CAR Configure NBAR Configure NetFlow Configure Anti-Spoofing solutions Configure Policing Capture and utilize packet captures Configure Transit Traffic Control and Congestion Management Configure Cisco Catalyst advanced security features
Identify and Mitigate Network AttacksIdentify and protect against fragmentation attacks Identify and protect against malicious IP option usage Identify and protect against network reconnaissance attacks Identify and protect against IP spoofing attacks Identify and protect against MAC spoofing attacks Identify and protect against ARP spoofing attacks Identify and protect against Denial of Service (DoS) attacks Identify and protect against Distributed Denial of Service (DDoS) attacks Identify and protect against Man-in-the-Middle (MiM) attacks Identify and protect against port redirection attacks Identify and protect against DHCP attacks Identify and protect against DNS attacks Identify and protect against Smurf attacks Identify and protect against SYN attacks Identify and protect against MAC Flooding attacks Identify and protect against VLAN hopping attacks Identify and protect against various Layer2 and Layer3 attacks
认证内容
认证介绍：
电信运营商CCIE认证（以前被称为通信和服务）表示网络人士在IP原理和核心IP技术（例如单播IP路由、QoS、组播、MPLS、MPLS VPN、流量工程和多协议BGP）方面拥有专家级知识，并且在至少一项与电信运营商有关的网络领域具有专业知识。这些领域包括拨号、DSL、有线网络、光网、WAN交换、IP电话、内容网络和城域以太网。
备考用书：
MPLS VPN 体系结构卷一
MPLS VPN 体系结构卷二
MPLS 流量工程
高级MPLS VPN设计
域间多播技术
……
课程内容：
.
Bridging and SwitchingVTP, VLAN, Trunk, Spanning tree Frame Relay, DLCI, FR multilink ATM PVC, SVC, FR/ATM interworking PPPoE
IGP RoutingIS-IS, Level 1/2, Metric OSPF, LSA, Area Redistribution, Summarization, Filtering Policy routing
EGP RoutingIBGP, EBGP BGP attributes Confederation, Route reflector Synchronization, Aggregation, Stability Redistribution, Filtering Multipath
SP MulticastPIM-SM, PIM-DM, SSM, PIM-BIDIR, IGMP Auto RP, Static RP, BSR, Anycast RP MP-BGP for multicast, MSDP
MPLSLabel distribution, LDP/ TDP Label filtering, Label merging, Multipath MPLS COS MPLS Netflow MPLS over ATM MPLS Traffic Engineering
L3/L2 VPNMPLS VPN, MP-iBGP PE-CE routing, RIPv2, OSPF, EIGRP, Static, ISIS, EBGP BGP Extended Community Inter AS MPLS VPN Carrier Supporting Carrier VRF-Lite, VRF Select Multicast MPLS VPN GRE, multipoint GRE AToM, L2TPv3 802.QinQ
SP QoS and SecurityDSCP/EXP, TOS, NBAR Marking, Shaping, Policing CAR, FRTS WRQ, CBWFQ, LLQ, PQ, CQ RED, WRED LFI, cRTP RSVP ACL, RPF, Filtering Routing update security Common attacks
High AvailabilityNSF, GLBP Fast reroute, Link/Node protection HSRP, VRRP
ManagementSNMP, SYSLOG, RMON Accounting Netflow NTP

