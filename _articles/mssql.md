---
layout: post
title: Sql Server数据库
description: SQL Server数据库中锁涉及的TSQL知识以及管理优化等知识点。
date: 2022-10-01 09:01:01
updatedate: 2024-03-27 12:05:40
---
- [版本](#版本)
- [SQL Server 服务](#sql-server-服务)
- [T-SQL](#t-sql)
- [存储过程](#存储过程)
- [索引](#索引)
  - [聚集索引](#聚集索引)
  - [非聚集索引](#非聚集索引)
- [数据优化](#数据优化)
- [并发](#并发)
- [锁](#锁)
- [灾难恢复](#灾难恢复)
- [行列转换](#行列转换)
- [Sql Server事务隔离级别](#sql-server事务隔离级别)
- [数据库分页](#数据库分页)
- [执行计划](#执行计划)
- [镜像](#镜像)
- [log shipping（日志传送）](#log-shipping日志传送)
- [发布订阅](#发布订阅)
- [always on](#always-on)
- [主从同步 方案比较](#主从同步-方案比较)
- [CLR扩展](#clr扩展)
- [其他知识点](#其他知识点)

# 版本

1. SQL Server 2005 组件中的新功能。

Notification Services 增强功能

Notification Services 是一种新平台，用于生成发送并接收通知的高伸缩性应用程序。Notification Services 可以使用各种设备向大量订阅方及时发送个性化消息。

Reporting Services 增强功能

Reporting Services 是一种基于服务器的新型报表平台，它支持报表创作、分发、管理和最终用户访问。

新增的 Service Broker

Service Broker 是一种新技术，用于生成安全、可靠和可伸缩的数据库密集型应用程序。Service Broker 提供应用程序用以传递请求和响应的消息队列。

数据库引擎增强功能

数据库引擎引入了新的可编程性增强功能（如与 Microsoft .NET Framework 的集成和 Transact-SQL 的增强功能）、新 XML 功能和新数据类型。 它还包括对数据库的可伸缩性和可用性的改进。

数据访问接口方面的增强功能

SQL Server 2005 在用于访问 SQL Server 数据库中数据的编程接口方面进行了改进。 例如，SQL Native Client 是一种全新的数据访问技术，并且 .NET Framework Data Provider for SQL Server（也称为 SqlClient）也得到增强。

Analysis Services 的增强功能 (SSAS)

Analysis Services 引入了新管理工具、集成开发环境以及与 .NET Framework 的集成。 许多新功能扩展了 Analysis Services 的数据挖掘和分析功能。

Integration Services 的增强功能

Integration Services 引入了新的可扩展体系结构和新设计器，这种设计器将作业流从数据流中分离出来并且提供了一套丰富的控制流语义。Integration Services 还对包的管理和部署进行了改进，同时提供了多项新打包的任务和转换。

全文搜索增强功能

此部分介绍对全文搜索的可编程性进行的增强。 这些增强包括：用于全文搜索的数据定义语言、在查询中指定默认语言以外的其他语言的能力以及管理方面的一些增强（例如并行安装、恢复全文目录以及附加和分离全文目录）。

复制增强

复制在可管理性、可用性、可编程性、移动性、可伸缩性和性能方面提供了改进。

工具和实用工具增强功能

SQL Server 2005 引入了管理和开发工具的集成套件，改进了对大规模 SQL Server 系统的易用性、可管理性和操作支持。

* sql server 2008 新增功能

SQL Server 2008 是微软发布的一个数据库管理系统，它在原有功能基础上增加了许多新特性。以下是一些主要的新功能：

兼容性视图：SQL Server 2008 提供了向下兼容性视图，使得开发者可以使用 SQL Server 2000 和 2005 的 T-SQL 语法。

数据库压缩：通过使用 DBCC SHRINKDATABASE 和 DBCC SHRINKFILE 命令，可以对数据库文件进行压缩。

数据库复制：SQL Server 2008 引入了新的复制技术，提供了更高的可用性和可伸缩性。

故障转移群集：SQL Server 2008 引入了新的故障转移群集功能，提供了更高的可用性。

PowerPivot 和 Analysis Services：SQL Server 2008 引入了 PowerPivot，这是一个强大的数据挖掘和分析工具，可以进行在线分析处理 (OLAP)。

Service Broker：Service Broker 是 SQL Server 2008 中的一个新功能，提供了基于消息的通信，适用于企业应用开发。

Transact-SQL 改进：SQL Server 2008 对 T-SQL 进行了许多改进，包括新的日期和时间数据类型、对 XML 的改进以及对窗口函数的支持。

管理工具：SQL Server Management Studio (SSMS) 是新的管理界面，提供了更好的用户体验和管理功能。

* SQL Server 2008 R2 中的新增功能

SQL Server 2008 R2 是 SQL Server 2008 的一个递增版本，此版本引入了增强的特性和功能，例如支持超过 64 个逻辑处理器、应用程序和多服务器管理功能、Master Data Services (MDS) 以及对 Reporting Services 的改进。有关新功能的完整列表，请参见 SQL Server 联机丛书中的 What's New in SQL Server 2008 R2（SQL Server 2008 R2 中的新增功能）。从 .NET Framework 4 开始，适用于 SQL Server 的 .NET Framework 数据提供程序 (System.Data.SqlClient) 完全支持 SQL Server 2008 数据库引擎的所有新功能。

* SQL Server2012的新功能：

1.AlwaysOn。这个功能将数据库的镜像提到了一个新的高度。用户可以针对一组数据库做灾难恢复而不是一个单独是数据库。

2.Colimnstore。这是SQL Server2012独有的功能。它们是数据库查询设计的只读索引。数据被组织成扁平化的压缩形式进行存储，极大地减少了I/O和内存使用。

3.DBA自定义服务器权限。在以往的版本中，用户可以创建数据库的权限，但不能创建服务器的权限。

4.Windows Server Core 支持。Windows Server Core 是命令行界面的Windows，使用DOS和PowerShell来做用户交互。

5.Sequence Objects。使用Oracle的用户一直想要这个功能。一个序列就是根据触发器的自增值。SQL Server2012有一个类似的功能identity columns，但是现在用对象实现了。

6.PowerView。这是一个强大是自主BI工具，可以让用户创建BI报告。

7.增强审计功能。现在所有的SQL Server版本都支持审计。用户可以根据审计规则，记录一些自定义的时间和日志。

8.增强的PowerShell支持。

9.分布式回放（Distributed Replay）。这个功能类似Oracle的Real Application功能，可以实现记录生产环境的工作状态，然后在另一个环境重现这些工作状态。

10.SQL Azure 增强。这和SQL Server2012没有直接关系，但是微软确实对SQL Azure做了一些改进。

* SQL Server 2016 (13.x) 

全程加密技术(Always Encrypted)

全程加密技术(Always Encrypted)支持在SQL Server中保持数据加密，只有调用SQL Server的应用才能访问加密数据。该功能支持客户端应用所有者控制保密数据，指定哪些人有权限访问。SQL Server 2016通过验证加密密钥实现了对客户端应用的控制。该加密密钥永远不会传递给SQL Server。使用该功能，你可以避免数据库或者操作系统管理员接触客户应用程序敏感数据(包括静态数据和动态数据)。该功能现在支持敏感数据存储在云端管理数据库中，并且永远保持加密。即便是云供应商也看不到数据，你晚上可以睡安稳觉了。

动态数据屏蔽(Dynamic Data Masking)

如果你对保护数据感兴趣，希望一部分人可以看到加密数据，而另一些人只能看到加密数据混淆后的乱码，那么你一定会对动态数据屏蔽感兴趣。利用动态数据屏蔽功能，你可以将SQL Server数据库表中待加密数据列混淆，那些未授权用户看不到这部分数据。利用动态数据屏蔽功能，你还可以定义数据的混淆方式。例如，如果你在表中接收存储信用卡号，但是你希望只看到卡号后四位。使用动态数据屏蔽功能定义屏蔽规则就可以限制未授权用户只能看到信用卡号后四位，而有权限的用户可以看到完整信用卡信息。

JSON支持

JSON就是Java script Object Notation(轻量级数据交换格式)。在SQL Server 2016中，你现在可以在应用和SQL Server数据库引擎之间用JSON格式交互。微软公司在SQL Server中增加了对JSON的支持，可以解析JSON格式数据然后以关系格式存储。此外，利用对JSON的支持，还可以把关系型数据转换成JSON格式数据。微软公司还增加了一些函数提供对存储在SQL Server中的JSON数据执行查询。SQL Server有了这些内置增强支持JSON操作的函数，应用程序使用JSON数据与SQL Server交互就更容易了。

多TempDB数据库文件

如果你运行的是多核计算机，那么运行多个tempdb数据文件就是最佳实践做法。以前直到SQL Server 2014版本，你安装SQL Server之后总是不得不手工添加tempdb数据文件。在SQL Server 2016中，你现在可以在安装SQL Server的时候直接配置需要的tempdb文件数量。这样你就不再需要安装完成之后再手工添加tempdb文件了。

Polybase

Polybase支持查询分布式数据集。有了Polybase，你可以使用Transact SQL语句查询Hadoop或者SQL Azure blob存储。你现在可以使用Polybase写临时查询，实现SQL Server关系型数据与Hadoop或者SQL Azure blog存储中的半结构化数据之间的关联查询。此外，你还可以利用SQL Server的动态列存储索引针对半结构化数据来优化查询。如果组织跨多个分布式位置传递数据，Polybase就成了利用SQL Server技术访问这些位置的半结构化数据的便捷解决方案了。

Query Store

如果你经常使用执行计划，你就会喜欢新版的Query Store功能。在2016之前的版本中，你可以使用动态管理试图(DMV)来查看现有执行计划。但是，DMV只支持你查看计划缓存中当前活跃的计划。如果出了计划缓存，你看不到计划的历史情况。有了Query Store功能，SQL现在可以保存历史执行计划。不仅如此，该功能还可以保存那些历史计划的查询统计。这是一个很好的补充功能，你可以利用该功能随着时间推移跟踪执行计划的性能。

行级安全(Row Level Security)

SQL数据库引擎具备了行级安全特性以后，就可以根据SQL Server登录权限限制对行数据的访问。限制行是通过内联表值函数过滤谓词定义实现的。安全策略将确保过滤器谓词获取每次“SELECT”或者 “DELETE”操作的执行。在数据库层面实现行级安全意味着应用程序开发人员不再需要维护代码限制某些登录或者允许某些登录访问所有数据。有了这一功能，用户在查询包含行级安全设置的表时，他们甚至不知道他们查询的数据是已经过滤后的部分数据。

SQL SERVER支持R语言

微软公司收购Revolution Analytics公司之后，现在可以在SQL Server上针对大数据使用R语言做高级分析功能了。SQL Server支持R语言处理以后，数据科学家们可以直接利用现有的R代码并在SQL Server数据库引擎上运行。这样我们就不用为了执行R语言处理数据而把SQL Server数据导出来处理。该功能把R语言处理带给了数据。
(译注：Revolution Analytics公司是耶鲁大学的派生公司，成立于2007年，是一家基于开源项目R语言做计算机软件和服务的供应商。该公司去年被微软收购。)

Stretch Database

Stretch Database功能提供了把内部部署数据库扩展到Azure SQL 数据库的途径。有了Stretch Database功能，访问频率最高的数据会存储在内部数据库，而访问较少的数据会离线存储在Azure SQL 数据库中。当你设置数据库为“stretch“时，那些比较过时的数据就会在后台迁移到Azure SQL数据库。如果你需要运行查询同时访问活跃数据和stretched数据库中的历史信息，数据库引擎会将内部数据库和Azure SQL数据库无缝对接，查询会返回你要的结果，就像在同一个数据源一样。该功能使得DBA工作更容易了，他们可以归档历史信息转到更廉价的存储介质，无需修改当前实际应用代码。这样你就可以把常用的内部数据库查询保持最佳性能状态。

历史表(Temporal Table)

历史表会在基表中保存数据的旧版本信息。有了历史表功能，SQL Server会在每次基表有行更新时自动管理迁移旧的数据版本到历史表中。历史表在物理上是与基表独立的另一个表，但是与基表是有关联关系的。如果你已经构建或者计划构建自己的方法来管理行数据版本，那么你应该先看看SQL Server 2016中新提供的历史表功能，然后再决定是否需要自行构建解决方案。

* SQL Server 2017(14.x) 

机器学习服务（数据库内机器学习）：使用Python或R语言进行高级分析。

更新的Always On可用性组功能：包括同步次要数据库的更新，更快的故障转移和更好的读取缩放。

增强的数据库对象安全性：包括列级别加密和动态数据掩码。

查询优化器改进：例如，使用行程序统计信息进行更好的查询计划。

数据库内部的图形功能：用于复杂关系图形的存储和查询。

更新的全文搜索功能：改进了多语言支持和性能。

更好的Json支持：提供了Json数据的存储和查询功能。

内存中的OLTP：提供了业务关键型工作负载的存储功能。

更新的Extended Events和动态管理视图：提供了更多的诊断和性能数据。

数据库复制：增加了对Linux的复制支持。

* sql server 2019 (15.x) 

SQL Server 2019 在原有功能的基础上，增加了一些新的特性和功能，以下是一些主要的新增功能：

机器学习服务（数据库内机器学习）：使用R、Python等语言进行数据分析和机器学习。

区块链集成：可以将区块链技术集成到SQL Server中，用于安全交易记录。

数据库内部的AI功能：提供机器学习模型的训练和预测功能。

增强的数据保护功能：新的Always Encrypted功能增强了数据保护。

内存中OLTP和列存储索引：提高性能和数据处理效率。

智能查询处理：自动机器学习优化查询执行计划。

数据库内部的机器学习：使用SQL Server机器学习服务进行数据分析。

量子数据库同步：提供高效的数据复制和同步解决方案。

JSON支持：增强了JSON数据的处理和分析。

机器学习模型管理：提供模型的管理和部署功能。

* sql server 2022  (16.x)

开源数据库：微软正在与开源社区合作，将 SQL Server 与 Linux 操作系统和开源数据库技术相集成。

机器学习和人工智能：内置了机器学习服务，比如 R 语言、Python 和 Java 语言的支持，以及深度学习功能。

区块链集成：提供区块链集成功能，用于保护数据和确保交易的安全性。

列式计算：对列式计算进行了优化，提高了大数据分析的性能。

JSON 功能：增强了 JSON 的处理能力，包括索引、查询和数据类型转换等。

内存中 OLTP：提供了内存中的事务处理功能，用于需要高性能的应用场景。

安全性和合规性：提高了安全性和对法规遵从性的支持，例如通过 Azure Information Protection 和 Microsoft Information Protection 来保护数据。

自定义资源池：提供了自定义的资源管理功能，用于多租户环境中的资源隔离和管理。

# Docker

基于Ubuntu的Microsoft SQL Server官方镜像
mssql-server Docker hub：https://hub.docker.com/_/microsoft-mssql-server

拉取Microsoft SQL Server 2022容器镜像
sudo docker pull mcr.microsoft.com/mssql/server:2022-latest

检查镜像是否成功拉取到本地：

docker images

创建并运行一个mssql容器,使用以下命令启动容器（Docker 镜像启动后，将会自动启动 SQL Server），其中 Ysa123456789@ 为 SQL Server sa 用户的密码：这个命令的含义是在 Docker 中以后台模式 (-d) 运行 Microsoft SQL Server 2022 的最新版本 (mcr.microsoft.com/mssql/server:2022-latest) 镜像，并将容器命名为 mssql2022 (--name mssql2022)。同时，通过 -p 1433:1433 参数将容器的 1433 端口映射到主机的 1433 端口上，使得可以通过主机的 1433 端口访问 SQL Server。在容器启动过程中，需要设置两个环境变量：

ACCEPT_EULA=Y 表示接受使用条款。

MSSQL_SA_PASSWORD=Ysa123456789@ 表示设置 SA 用户的密码为 "Ysa123456789@"[一定要注意密码一点要严格设置不然有坑]。

docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Ysa123456789@" -e "MSSQL_PID=J4V48-P8MM4-9N3J9-HD97X-DYMRM" -p 1433:1433 --name mssql2022 -d mcr.microsoft.com/mssql/server:2022-latest

-e "MSSQL_PID=J4V48-P8MM4-9N3J9-HD97X-DYMRM" 序列号

SA_PASSWORD=Ysa123456789@ 为密码，要求是最少8位的强密码，要有大写字母，小写字母，数字以及特殊符号，不然服务会自动停止。

验证容器是否创建成功

docker ps

查看容器ID docker ps 

aac182938f7d 

进入容器

sudo docker exec -it aac182938f7d  sh 

如果使用docker ps查看不到在使用docker ps -a查看，如果docker ps -a可以查看到那就说明容器没有启动需要使用docker start name来启动容器！

设置 Docker 主机防火墙规则

默认情况下，Docker 带有一个内置的防火墙，需要开放 1433 端口才能让外部访问 SQL Server。使用以下命令开放 Docker 主机的 1433 端口：

sudo ufw allow 1433/tcp

重启防火墙，注意重启防火墙之后才会生效。

sudo ufw reload

服务器防火墙配置1433的开放端口

安装sqlcmd客户端工具：

安装客户端工具

curl https://packages.microsoft.com/keys/microsoft.asc | sudo tee /etc/apt/trusted.gpg.d/microsoft.asc

curl https://packages.microsoft.com/config/ubuntu/22.04/prod.list | sudo tee /etc/apt/sources.list.d/mssql-release.list

sudo apt-get update

sudo apt-get install mssql-tools18 unixodbc-dev

echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bash_profile

若要使 sqlcmd 和 bcp 能从交互式/非登录会话的 bash shell 进行访问，请使用下列命令修改 ~/.bashrc 文件中的 PATH：Bash复制

echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bashrc
source ~/.bashrc

sqlcmd -S localhost -U sa -P 'Ysa123456789@' TrustServerCertificate=true

sqlcmd -S 192.168.60.128 -N -C -U  sa -P 不要带密码，否则貌似会失败

Ysa123456789

sqlcmd -S 127.0.0.1 -U  sa -P Ysa123456789

# SQL Server 服务

* SQL Server(MSSQLSERVER)

SQL Server 数据库引擎SQL Server 数据库引擎包括数据引擎（用于存储、处理和保护数据的核心服务）、复制、全文搜索、管理关系数据和 XML 数据的工具（以数据分析集成和用于访问异类数据源的 PolyBase 集成的方式）以及使用关系数据运行 Python 和 R 脚本的机器学习服务。

* SQL Server代理(MSSQLSERVER)是代理服务，比如你有一些自动运行的，定时作业，或者是一些维护计划，比如定时备份数据库等操作，那么就要打开，否则，就不会备份数据库了。

* SQL Server Reporting Services (MSSQLSERVER)

Reporting Services 包括用于创建、管理和部署表格报表、矩阵报表、图形报表以及自由格式报表的服务器和客户端组件。 Reporting Services 还是一个可用于开发报表应用程序的可扩展平台。

* SQL Server Integration Services (SSIS)

Integration ServicesIntegration Services 是一组图形工具和可编程对象，用于移动、复制和转换数据。 它还包括用于 Integration Services 的“数据质量服务 (DQS)”组件。

* SQL Server Analysis Services (SSAS)

Analysis ServicesAnalysis Services 包括一些工具，可用于创建和管理联机分析处理 (OLAP) 以及数据挖掘应用程序。Reporting ServicesReporting Services 包括用于创建、管理和部署表格报表、矩阵报表、图形报表以及自由格式报表的服务器和客户端组件。 

* SQL Full-text Filter Daemon Launcher (MSSQLSERVER)是全文检索服务，如果你没有使用全文检索技术，那么也不需要开启。

* SQL Server VSS Writer MicrosoftSQLServer的SQL编写器服务，允许备份和还原应用程序以便在VolumeShadowCopyService(VSS)框架中进行操作。服务器上的所有SQL实例只有一个SQL编写器服务实例。影拷贝服务（VolumeShadowCopyService，VSS）是Microsoft在WindowsServer2003中开始引入的服务，它能让用户在没有IT专业人员协助的情况下，更轻松地恢复丢失的文件。这个让sql server应该是sqlwriter和windows交互，实现这个影拷贝服务的。不过关闭，也没什么影响，因为在sql server中，还是要通过常规的数据库备份、日志备份来保证数据的安全，这个vss只是个很虚的东西，没什么用出。

* Sql Browser 服务 一般你要进行远程访问，不需要开启sql browser开启sql browser，通过：服务器ip,端口 这种方式就可以访问远程的服务器。

* SQL Server Master Data Services(MDS)

Master Data ServicesMaster Data Services (MDS) 是针对主数据管理的 SQL Server 解决方案。 可以配置 MDS 来管理任何领域（产品、客户、帐户）；MDS 中可包括层次结构、各种级别的安全性、事务、数据版本控制和业务规则，以及可用于管理数据的 用于 Excel 的外接程序 。

* 机器学习服务

（数据库内）机器学习服务（数据库内）支持使用企业数据源的分布式、可缩放的机器学习解决方案。 SQL Server 2016 支持 R 语言。 SQL Server 2022 (16.x) 支持 R 和 Python。

* 通过 PolyBase 进行数据虚拟化

从 SQL Server 查询不同类型的数据源上的不同类型数据。

* Azure 连接服务

SQL Server 2022 (16.x) 扩展了 Azure 连接服务和功能，包括 Azure Synapse Link、Microsoft Purview 访问策略、SQL Server 的 Azure 扩展、即用即付计费，以及 SQL 托管实例的链接功能。
下表列出了 SQL Server 中可用的索引类型，并提供了指向其他信息的链接。

* SQL Server Management Studio (SSMS):数据库管理工具，2016版以后需要独立下载安装。

# T-SQL

# 存储过程

# 索引

## 聚集索引

## 非聚集索引

# 数据优化

# 并发

# 锁

这里锁分为两个部分，一个是锁的范围（行锁、页面锁、表锁），另一个是锁的粒度（共享锁、持有锁等）

在锁定数据的时候要配合锁的范围和粒度。

例如 select * from Table with（RowLock，XLock） where ID=1 就可以将Table的一行设置独占锁。一般情况下在事务的开始可以先使用Update操作一个表的行进行加独占锁。

还可以使用应用程序锁来防止多客户端同时执行某个操作。

创建应用程序锁 exec SP_GetAppLock @Resource=‘锁名',@LockMode='Exclusive',@LockOwner='Session',@LockTimeout=10000--十秒钟

释放应用程序锁 exec SP_ReleaseAppLock @Resource='锁名' @LockOwner='Session'

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

@@LOCK_TIMEOUT 返回当前会话的当前锁超时设置，单位为毫秒

SET LOCK_TIMEOUT 设置允许应用程序设置语句等待阻塞资源的最长时间。当语句等待的时间大于 LOCK_TIMEOUT 设置时，系统将自动取消阻塞的语句，并给应用程序返回"已超过了锁请求超时时段"的 1222 号错误信息

下例将锁超时期限设置为 1,800 毫秒。

SET LOCK_TIMEOUT 1800

3) 设置事务隔离级别。

4) 对 SELECT、INSERT、UPDATE 和 DELETE 语句使用表级锁定提示。

5) 配置索引的锁定粒度

可以使用 sp_indexoption 系统存储过程来设置用于索引的锁定粒度

六、查看锁的信息

1 执行 EXEC SP_LOCK 报告有关锁的信息\

2 查询分析器中按Ctrl+2可以看到锁的信息

八、几个有关锁的问题

1 如何锁一个表的某一行

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

SELECT * FROM table ROWLOCK WHERE id = 1

2 锁定数据库的一个表

SELECT * FROM table WITH (HOLDLOCK)

加锁语句：

sybase:

update 表 set col1=col1 where 1=0 ;\

MSSQL:

select col1 from 表 (tablockx) where 1=0 ;\

oracle:

LOCK TABLE 表 IN EXCLUSIVE MODE ；

加锁后其它人不可操作，直到加锁用户解锁，用commit或rollback解锁

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

select * from table1\

where B='b2'\

commit tran

若同时执行上述两个语句，则select查询必须等待update执行完毕才能执行即要等待30秒

2）共享锁\

在第一个连接中执行以下语句\

begin tran\

select * from table1 holdlock -holdlock人为加锁\

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

sp_getapplock 锁定应用程序资源

sp_releaseapplock 为应用程序资源解锁

注意: 锁定数据库的一个表的区别

SELECT * FROM table WITH (HOLDLOCK) 其他事务可以读取表，但不能更新删除

SELECT * FROM table WITH (TABLOCKX) 其他事务不能读取表,更新和删除

--查看锁信息

exec  sp_who

----------------------------------------------

create table #t(req_spid int,obj_name sysname)

declare @s nvarchar(4000)\

   ,@rid int,@dbname sysname,@id int,@objname sysname

declare tb cursor for select distinct req_spid,dbname=db_name(rsc_dbid),rsc_objidfrom master..syslockinfo where rsc_type in(4,5)\

open tb\

fetch next from tb into @rid,@dbname,@id\

while @@fetch_status=0\

beginset @s='select @objname=name from \['+\@dbname+']..sysobjects where id=@id'exec sp_executesql @s,N'@objname sysname out,@id int',@objname out,@idinsert into #t values(@rid,@objname)fetch next from tb into @rid,@dbname,@id\

end

close tb

deallocate tb

select 进程id=a.req_spid

   ,数据库=db_name(rsc_dbid)

   ,类型=case rsc_type when 1 then 'NULL 资源（未使用）'

   when 2 then '数据库'

   when 3 then '文件'

   when 4 then '索引'

   when 5 then '表'

   when 6 then '页'

   when 7 then '键'

   when 8 then '扩展盘区'

   when 9 then 'RID（行 ID）'

   when 10 then '应用程序'end

   ,对象id=rsc_objid

   ,对象名=b.obj_name

   ,rsc_indid

from master..syslockinfo a left join #t b on a.req_spid=b.req_spid

go

drop table #t

1 如何锁一个表的某一行\

/*

  测试环境：windows 2K server + Mssql 2000\

  所有功能都进行测试过，并有相应的结果集，如果有什么疑义在论坛跟帖\

  关于版权的说明：部分资料来自互联网，如有不当请联系版主，版主会在第一时间处理。\

  功能：sql遍历文件夹下的文本文件名,当然你修改部分代码后可以完成各种文件的列表。\

*/


A 连接中执行

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ

begin tran

select * from tablename with (rowlock) where id=3

waitfor delay '00:00:05'

commit tran

B连接中如果执行

update tablename set colname='10' where id=3 --则要等待5秒

update tablename set colname='10' where id<>3 --可立即执行

2 锁定数据库的一个表

SELECT * FROM table WITH (HOLDLOCK) 

注意: 锁定数据库的一个表的区别

SELECT * FROM table WITH (HOLDLOCK) 

其他事务可以读取表，但不能更新删除

SELECT * FROM table WITH (TABLOCKX) 

其他事务不能读取表,更新和删除

# 灾难恢复

# 行列转换

# Sql Server事务隔离级别

设置Sql Server事务隔离级别

查看 当前 Sql Server 事务隔离级别 的设置： DBCC Useroptions -> isolation level 这一项的 Value 既是当前的设置值

Transact-SQL 语句中的设置

就是在当前 SQL 语句中，设置的事务隔离级别只影响当前 sql 语句, 有两种方式：

-- the first method

select * from Table1 with(nolock)

-- the second method

SET TRANSACTION ISOLATION LEVEL Read UnCommitted;

select * from Table1

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

# 数据库分页

数据分页往往有三种常用方案。

第一种，把数据库中存放的相关数据，全部读入PHP/Java/C#代码/内存，再由代码对其进行分页操作（速度慢，简易性高）。

第二种，直接在数据库中对相关数据进行分页操作，再把分页后的数据输出给代码程序（速度中，简易性中）。

第三种，先把数据库中的相关数据全部读入“缓存”或第三方工具，再由代码程序对“缓存”或第三方工具中的数据进行读取+分页操作（速度快，简易性差）。

本文下面重点阐述上述【第二种】方案在SQL Server上的使用（其它种类数据库由于Sql语句略有差异，所以需要调整，但方案也类似）

1、ROW_NUMBER() OVER()方式（SQL2012以下推荐使用）

示例：

SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY menuId) AS RowId,* FROM sys_menu ) AS r WHERE RowId BETWEEN 1 AND 10

用子查询新增一列行号（ROW_NUMBER）RowId查询，比较高效的查询方式，只有在SQL Server2005或更高版本才支持。

BETWEEN 1 AND 10 是指查询第1到第10条数据（闭区间），在这里面需要注意的是OVER的括号里面可以写多个排序字段。

通用用法​​​​​​​

--pageIndex 表示指定页--pageSize 表示每页显示的条数SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY 排序字段) AS RowId,* FROM 表名 ) AS r WHERE RowId BETWEEN ((pageIndex-1)*pageSize + 1) AND (pageIndex * PageSize)

2、offset fetch next方式（SQL2012及以上的版本才支持：推荐使用 ）

示例：​​​​​​​

--offset fetch next方式查询，最高效的查询方式，只有在SQL Server2012或更高版本才支持SELECT * FROM sys_menu ORDER BY menuId offset 0 ROWS FETCH NEXT 10 ROWS ONLY

offset 是跳过多少行，

next是取接下来的多少行，

句式 offset...rows fetch nect ..rows only ，注意rows和末尾的only 不要写漏掉了，并且这种方式必须要接着Order by XX 使用，不然会报错。

通用用法​​​​​​​

--pageIndex 表示指定页--pageSize 表示每页显示的条数SELECT * FROM 表名 ORDER BY 排序字段 offset ((pageIndex - 1) * pageSize) ROWS FETCH NEXT pageSize ROWS ONLY

3、top not in方式 （不推荐）

示例：​​​​​​​

--查询第11-20条记录SELECT TOP 10 menuId, *FROM sys_menu WHERE menuId NOT IN (SELECT TOP 10 menuId FROM sys_menu)

这条语句的原理是先查询1-10条记录的ID，然后再查询ID不属于这1-10条记录的ID，并且只需要10条记录，因为每页大小就是10，

这就是获取到的第11-20条记录，这是非常简单的一种写法。

另外IN语句与NOT IN语句类似，这是NOT IN的写法，但是这种写法数据量大的话效率太低。

通用用法​​​​​​​

--pageIndex 表示指定页--pageSize 表示每页显示的条数SELECT TOP pageSize menuId, *FROM sys_menu WHERE menuId NOT IN (SELECT TOP ((pageSize-1)*pageIndex) menuId FROM sys_menu)

4、通过升序与降序方式进行查询分页（不推荐）

示例：​​​​​​​

--查询第11-20条记录SELECT * FROM( SELECT TOP 10 * FROM( SELECT TOP 20 * FROM sys_menu ORDER BY menuId ASC) AS TEMP1 ORDER BY menuId DESC) AS TEMP2 ORDER BY menuId ASC

这条语句首先查询前20条记录，然后在倒序查询前10条记录（即倒数10条记录），

这个时候就已经获取到了11-20条记录，但是他们的顺序是倒序，所以最后又进行升序排序。

通用方法​​​​​​​

--pageIndex 表示指定页--pageSize 表示每页显示的条数SELECT * FROM( SELECT TOP pageSize * FROM( SELECT TOP ((pageIndex - 1) * pageSize +(pageSize*2)) * FROM sys_menu ORDER BY menuId ASC) AS TEMP1 ORDER BY menuId DESC) AS TEMP2 ORDER BY menuId ASC

5、采用MAX(ID)或者MIN(ID)函数（不推荐）

示例：​​​​​​​

--查询第11-20条记录SELECT TOP 10 * FROM sys_menu WHERE menuId> (SELECT MAX(menuId) FROM(SELECT TOP 10 menuId FROM sys_menu ORDER BY menuId) AS TEMP1) --（第10条的id）

这个理解起来也简单，先把第10条记录的id找出来（当然这里面是直接使用MAX()进行查找，MIN()函数的用法也是类似的），

然后再对比取比第10条记录的id大的前10条记录即为我们需要的结果。

这里要注意开始时的边界值调整。

通用用法

--pageIndex 表示指定页--pageSize 表示每页显示的条数SELECT TOP pageSize * FROM sys_menu WHERE menuId> (SELECT MAX(menuId) FROM(SELECT TOP ((PageIndex-1)*PageSize) menuId FROM sys_menu ORDER BY menuId) AS TEMP1) --（第10条的id）

上述1~5方案，再配合存储过程，你就能制造出适合你自己的“分页”轮子，日后反复使用。

但它们有一定自身局限性：方案1、2、5都需要依赖一个排序Id（这个Id要么是个排序列，要么是个主键）。方案3、4则效率太低，完全不推荐。

7、不依赖排序/排序Id的终极方案

此方案在DeveloperSharp框架中有提供（基于.Net/.Net Core/.Net Framework），方案被广东省的多个公司/项目采用，得到了实战验证+稳定性。

【第一步】：从NuGet引用DeveloperSharp包。

【第二步】：创建一个用来与数据库进行通信的“数据源类”（文本示例为：TestData.cs），内容如下：​​​​​​​

using DeveloperSharp.Structure.Model;using DeveloperSharp.Framework.QueryEngine; namespace YZZ{ \[DataSource(DatabaseType.SQLServer, "Server=localhost;Database=Test;Uid=sa;Pwd=123")] public class TestData : DeveloperSharp.Structure.Model.DataLayer { //类中没有任何代码 }}

说 明 ：“数据源类”（文本示例为：TestData.cs）必 须 继 承 自 DeveloperSharp.Structure.Model.DataLayer 类 ， 并 且 在 其 上 设 置DataSource属 性 的 初 始 化 值 为“数据库类型”及其“链接字符串”。

【第三步】：添加通过“数据源类”（TestData）调用其PagePartition方法进行数据分页的代码。注 意：核心代码就一行而已！！

代码如下：​​​​​​​

using DeveloperSharp.Extension;//Table扩展所在的命名空间----------------------------- class Program { static void Main(string\[] args) { TestData td = new TestData(); //分页 var pp = td.PagePartition("select top 5000 * from t_Order where Id>10 order by Id desc", 20, 162); List\<Product> Products = pp.Table.ToList\<Product>(); foreach (var P in Products) { Console.WriteLine(P.Name); } Console.ReadLine(); } }

Product类代码如下：​​​​​​​

public class Product { public string Id { get; set; } public string Name { get; set; } public int Quantity { get; set; } }

此处的PagePartition方法有两个重载方法，其详细功能说明如下：​​​​​​​

PagePartition声明：public PagePiece PagePartition(string RecordSet, string Id, int PageSize, int PageIndex)用途：分页功能(有主键)参数：（1）string RecordSet --需要分页的记录集，可以是表、视图、或者SQL语句（2）string Id --主键（3）int PageSize --页面大小（4）int PageIndex --当前页码返回：PagePiece --页片实体PagePartition声明：public PagePiece PagePartition(string RecordSet, int PageSize, int PageIndex)用途：分页功能(无主键)参数：（1）string RecordSet -- 需要分页的记录集，可以是表、视图、或者SQL语句 （2）int PageSize --页面大小（3）int PageIndex --当前页码返回：PagePiece --页片实体

注意：

（1）    当你需要分页的数据表有“主键”字段时，使用“分页功能(有主键)”。反之，使用“分页功能(无主键)”。

（2）    RecordSet是你需要分页的“数据总集”的SQL语句。该SQL语句的形式丰富多样，可以带条件、排序、甚至还能是多表的联合查询、等。

（3）   此方法符合最开始的【第二种】方案，是在SQL Server内部进行的分页操作。而且可以不依赖于排序/排序Id。

# 执行计划

使用SQL执行计划

看SQL语句执行计划有三种方式：

①快捷键按Ctrl+L；

②选中要执行的SQL然后点击右键，弹出的菜单里面选“显示估计的执行计划”；

③按Ctrl+M打开显示执行计划窗口，选择每次执行SQL都会显示出相应的执行计划

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

字段解释：

【Rows】：表示在一个执行步骤中，所产生的记录条数。

【Executes】：表示某个执行步骤被执行的次数。

【Stmt Text】：表示要执行的步骤的描述。

【EstimateRows】：表示要预期返回多少行数据。

# hint 

提示是指定的强制选项或策略，由 SQL Server 查询处理器针对 SELECT、INSERT、UPDATE 或 DELETE 语句执行。 提示将覆盖查询优化器可能为查询选择的任何执行计划。

## 联接提示

<join_hint> ::=   
     { LOOP | HASH | MERGE | REMOTE }  


REMOTE 只可用于 INNER JOIN 操作。

A. 使用 HASH

SELECT p.Name, pr.ProductReviewID  
FROM Production.Product AS p  
LEFT OUTER HASH JOIN Production.ProductReview AS pr  
ON p.ProductID = pr.ProductID  
ORDER BY ProductReviewID DESC;  

B. 使用 LOOP

DELETE FROM Sales.SalesPersonQuotaHistory   
FROM Sales.SalesPersonQuotaHistory AS spqh  
    INNER LOOP JOIN Sales.SalesPerson AS sp  
    ON spqh.SalesPersonID = sp.SalesPersonID  
WHERE sp.SalesYTD > 2500000.00;  
GO  

C. 使用 MERGE

SELECT poh.PurchaseOrderID, poh.OrderDate, pod.ProductID, pod.DueDate, poh.VendorID   
FROM Purchasing.PurchaseOrderHeader AS poh  
INNER MERGE JOIN Purchasing.PurchaseOrderDetail AS pod   
    ON poh.PurchaseOrderID = pod.PurchaseOrderID;  
GO  

连接方式总结：
 
1）嵌套循环(nest loop):
 
对于被连接的数据子集较小的情况，嵌套循环连接是较好的选择。在嵌套循环中，外表驱动内表，外表返回的每一行都要在内表中检索找到它匹配的行，因此整个查询返回的结果集不能太大（大于10000不合适），要把返回子集较小的表作为外表（驱动表），而且在内表的连接字段上一定要有索引。
 
2）哈希连接(hash join):
 
哈希连接是大数据集连接时常用的方式，优化器使用两个表中较小的表，利用连接键在内存中建立散列表，然后扫描较大的表并探测散列表，找出与散列表匹配的行。
 
这种方式适用于较小的表完全可以放入内存的情况，这样成本就是访问两个表的成本之和。但是在表很大的情况下并不能完全放入内存，这时优化器将它分割成若干不同的分区，不能放入内存的部分就把该分区写入磁盘的临时段。哈希连接只能应用于等值连接(如WHERE A.COL3 = B.COL4)、非等值连接(WHERE A.COL3 > B.COL4)、外连接(WHERE A.COL3 = B.COL4(+))。
 
3）排序合并连接（Sort Merge Join ）
 
通常情况下哈希连接的效果都比排序合并连接要好。然而如果行源已经被排过序，在执行排序合并连接时不需要再排序了，这时排序归并连接的性能会忧于哈希连接。

## 查询提示

<query_hint> ::=
{ { HASH | ORDER } GROUP
  | { CONCAT | HASH | MERGE } UNION
  | { LOOP | MERGE | HASH } JOIN
  | DISABLE_OPTIMIZED_PLAN_FORCING
  | EXPAND VIEWS
  | FAST <integer_value>
  | FORCE ORDER
  | { FORCE | DISABLE } EXTERNALPUSHDOWN
  | { FORCE | DISABLE } SCALEOUTEXECUTION
  | IGNORE_NONCLUSTERED_COLUMNSTORE_INDEX
  | KEEP PLAN
  | KEEPFIXED PLAN
  | MAX_GRANT_PERCENT = <numeric_value>
  | MIN_GRANT_PERCENT = <numeric_value>
  | MAXDOP <integer_value>
  | MAXRECURSION <integer_value>
  | NO_PERFORMANCE_SPOOL
  | OPTIMIZE FOR ( @variable_name { UNKNOWN | = <literal_constant> } [ , ...n ] )
  | OPTIMIZE FOR UNKNOWN
  | PARAMETERIZATION { SIMPLE | FORCED }
  | QUERYTRACEON <integer_value>
  | RECOMPILE
  | ROBUST PLAN
  | USE HINT ( <use_hint_name> [ , ...n ] )
  | USE PLAN N'<xml_plan>'
  | TABLE HINT ( <exposed_object_name> [ , <table_hint> [ [ , ] ...n ] ] )
}

<table_hint> ::=
{ NOEXPAND [ , INDEX ( <index_value> [ , ...n ] ) | INDEX = ( <index_value> ) ]
  | INDEX ( <index_value> [ , ...n ] ) | INDEX = ( <index_value> )
  | FORCESEEK [ ( <index_value> ( <index_column_name> [ , ... ] ) ) ]
  | FORCESCAN
  | HOLDLOCK
  | NOLOCK
  | NOWAIT
  | PAGLOCK
  | READCOMMITTED
  | READCOMMITTEDLOCK
  | READPAST
  | READUNCOMMITTED
  | REPEATABLEREAD
  | ROWLOCK
  | SERIALIZABLE
  | SNAPSHOT
  | SPATIAL_WINDOW_MAX_CELLS = <integer_value>
  | TABLOCK
  | TABLOCKX
  | UPDLOCK
  | XLOCK
}

<use_hint_name> ::=
{ 'ASSUME_JOIN_PREDICATE_DEPENDS_ON_FILTERS'
  | 'ASSUME_MIN_SELECTIVITY_FOR_FILTER_ESTIMATES'
  | 'ASSUME_FULL_INDEPENDENCE_FOR_FILTER_ESTIMATES'
  | 'ASSUME_PARTIAL_CORRELATION_FOR_FILTER_ESTIMATES'
  | 'DISABLE_BATCH_MODE_ADAPTIVE_JOINS'
  | 'DISABLE_BATCH_MODE_MEMORY_GRANT_FEEDBACK'
  | 'DISABLE_DEFERRED_COMPILATION_TV'
  | 'DISABLE_INTERLEAVED_EXECUTION_TVF'
  | 'DISABLE_OPTIMIZED_NESTED_LOOP'
  | 'DISABLE_OPTIMIZER_ROWGOAL'
  | 'DISABLE_PARAMETER_SNIFFING'
  | 'DISABLE_ROW_MODE_MEMORY_GRANT_FEEDBACK'
  | 'DISABLE_TSQL_SCALAR_UDF_INLINING'
  | 'DISALLOW_BATCH_MODE'
  | 'ENABLE_HIST_AMENDMENT_FOR_ASC_KEYS'
  | 'ENABLE_QUERY_OPTIMIZER_HOTFIXES'
  | 'FORCE_DEFAULT_CARDINALITY_ESTIMATION'
  | 'FORCE_LEGACY_CARDINALITY_ESTIMATION'
  | 'QUERY_OPTIMIZER_COMPATIBILITY_LEVEL_n'
  | 'QUERY_PLAN_PROFILE'
}

https://learn.microsoft.com/zh-cn/sql/t-sql/queries/hints-transact-sql-query?view=sql-server-ver16

## 表提示

WITH  ( <table_hint> [ [ , ] ...n ] )

<table_hint> ::=
{ NOEXPAND
  | INDEX ( <index_value> [ , ...n ] ) | INDEX = ( <index_value> )
  | FORCESEEK [ ( <index_value> ( <index_column_name> [ , ... ] ) ) ]
  | FORCESCAN
  | HOLDLOCK
  | NOLOCK
  | NOWAIT
  | PAGLOCK
  | READCOMMITTED
  | READCOMMITTEDLOCK
  | READPAST
  | READUNCOMMITTED
  | REPEATABLEREAD
  | ROWLOCK
  | SERIALIZABLE
  | SNAPSHOT
  | SPATIAL_WINDOW_MAX_CELLS = <integer_value>
  | TABLOCK
  | TABLOCKX
  | UPDLOCK
  | XLOCK
}

<table_hint_limited> ::=
{
    KEEPIDENTITY
  | KEEPDEFAULTS
  | HOLDLOCK
  | IGNORE_CONSTRAINTS
  | IGNORE_TRIGGERS
  | NOLOCK
  | NOWAIT
  | PAGLOCK
  | READCOMMITTED
  | READCOMMITTEDLOCK
  | READPAST
  | REPEATABLEREAD
  | ROWLOCK
  | SERIALIZABLE
  | SNAPSHOT
  | TABLOCK
  | TABLOCKX
  | UPDLOCK
  | XLOCK
}

https://learn.microsoft.com/zh-cn/sql/t-sql/queries/hints-transact-sql-table?view=sql-server-ver16

## 并行

并行Hint提示 （MAXDOP N Hint）

在当前多核超线程的今天，并行运算已经不算什么稀罕了，所以在SQL Server中也有它自己的并行运算符，来充分的利用现有硬件资源，最大限度的提升运行效率。

在本系列中有两篇文章专门介绍关于SQL Server的并行运算，可以点击查看：SQL Server并行运算总结、SQL Server并行运算总结篇二

所以，在Hint中也给出了关于并行运算的提示：MAXDOP N Hint，这个Hint还是经常用的，尤其索引操作的时候，为了缩短操作时间，我们常常会最大限度的利用并行运算。

另外，此Hint会优先于数据库级别的配置选项。也就说尽管在数据库中设置了MAXDOP 1(强制顺序运行)，如果使用了此Hint也会忽略数据库设置的。

当然，并行运算虽然大部分情况能提升运行效率，但是也非绝对，我们知道多线程的操作是需要维护线程之间的数据交换和执行顺序等，所有有时候多线程的执行并不一定会单线程效率高。

SELECT MIN(B1.[KEY]+B2.[KEY]) 
FROM BigTable B1 CROSS JOIN BigTable2 B2
OPTION(MAXDOP 1) 

索引Hint提示 （INDEX  Hint）

所谓的索引Hint提示，就是强制查询优化器为一个查询语句执行扫描或者使用一个指定的索引。

# 镜像

# log shipping（日志传送）

# 发布订阅

# always on

# 主从同步 方案比较

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

# CLR扩展

# 其他知识点
