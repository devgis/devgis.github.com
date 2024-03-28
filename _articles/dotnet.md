---
layout: post
title: Dotnet相关编程总结
description: Dotnet相关编程知识的总结
date: 2022-10-01 09:01:01
updatedate: 2024-03-26 11:06:26
---
- [Donet6 ubuntu下的安装](#donet6-ubuntu下的安装)
- [发布项目](#发布项目)
- [Dotnet版本](#dotnet版本)
- [C#历史版本](#c历史版本)
- [C# .Net Base](#c-net-base)
  - [CLR基础 CLR的执行模型](#clr基础-clr的执行模型)
  - [生成、打包、部署和管理应用程序及类型](#生成打包部署和管理应用程序及类型)
  - [共享程序集和强命名程序集](#共享程序集和强命名程序集)
  - [类型基础](#类型基础)
    - [可空值类型](#可空值类型)
    - [元组 Tuple](#元组-tuple)
    - [字符、字符串和文本处理](#字符字符串和文本处理)
    - [枚举类型和位标志](#枚举类型和位标志)
    - [数组](#数组)
    - [集合类型](#集合类型)
  - [类](#类)
    - [常量和字段属性](#常量和字段属性)
    - [属性](#属性)
    - [方法](#方法)
    - [扩展方法](#扩展方法)
  - [new](#new)
  - [异步编程](#异步编程)
  - [Lambda表达式](#lambda表达式)
  - [Fluent API(流式接口)](#fluent-api流式接口)
  - [委托](#委托)
  - [事件](#事件)
    - [委托与事件比较](#委托与事件比较)
  - [泛型](#泛型)
  - [接口](#接口)
  - [Marshal](#marshal)
  - [多线程](#多线程)
    - [线程同步](#线程同步)
    - [volatile](#volatile)
    - [阻塞](#阻塞)
    - [临界值](#临界值)
    - [锁](#锁)
    - [互斥锁（Mutex）](#互斥锁mutex)
    - [信号量 (Semaphore)](#信号量-semaphore)
    - [信号和句柄（EventWaitHandle,ManualResetEvent，AutoResetEvent）](#信号和句柄eventwaithandlemanualreseteventautoresetevent)
    - [Interlocked](#interlocked)
    - [ReaderWriterLock](#readerwriterlock)
    - [Task,Task\<T\>](#tasktaskt)
    - [ThreadPool](#threadpool)
    - [CancellationTokenSource  取消线程任务](#cancellationtokensource--取消线程任务)
  - [定制特性](#定制特性)
  - [异常和状态管理](#异常和状态管理)
  - [CLR寄宿和AppDomain](#clr寄宿和appdomain)
  - [程序集加载和反射](#程序集加载和反射)
  - [运行时序列化](#运行时序列化)
  - [与WinRT组件互操作](#与winrt组件互操作)
  - [I/O的异步操作](#io的异步操作)
  - [GC垃圾回收](#gc垃圾回收)
    - [何时收集大型对象？](#何时收集大型对象)
- [.NetCore](#netcore)
- [ .NetCore核心](#-netcore核心)
- [Winform](#winform)
- [WPF](#wpf)
  - [WPF 体系结构](#wpf-体系结构)
    - [milcore](#milcore)
    - [WindowsCodes.dll](#windowscodesdll)
    - [Direct3D是图形渲染](#direct3d是图形渲染)
    - [User32](#user32)
  - [WPF控件主要基类](#wpf控件主要基类)
    - [System.Object](#systemobject)
    - [Dispatcher](#dispatcher)
    - [DispatcherObject](#dispatcherobject)
    - [DependencyObject](#dependencyobject)
    - [Visual](#visual)
    - [UIElement](#uielement)
    - [FrameworkElement](#frameworkelement)
      - [Page](#page)
      - [Control](#control)
      - [Image](#image)
      - [Panel](#panel)
    - [VisualStateManager](#visualstatemanager)
    - [逻辑树生成树](#逻辑树生成树)
  - [WPF属性](#wpf属性)
    - [普通属性Get Set封装的Field](#普通属性get-set封装的field)
    - [依赖项属性Dependency property](#依赖项属性dependency-property)
    - [附加属性](#附加属性)
  - [WPF事件](#wpf事件)
    - [普通事件](#普通事件)
      - [生命周期事件](#生命周期事件)
      - [鼠标事件](#鼠标事件)
      - [键盘事件](#键盘事件)
      - [手写笔事件](#手写笔事件)
      - [多点触控事件，继承自UIElement。](#多点触控事件继承自uielement)
    - [路由事件](#路由事件)
    - [附加事件](#附加事件)
  - [资源](#资源)
    - [样式](#样式)
    - [触发器](#触发器)
    - [模板](#模板)
    - [使用资源的优势：](#使用资源的优势)
    - [资源的范围（层级）：](#资源的范围层级)
  - [ 模板](#-模板)
  - [Convertor](#convertor)
  - [Behavior](#behavior)
  - [Command](#command)
    - [命令(Command)](#命令command)
    - [命令源(Command Source)](#命令源command-source)
    - [命令目标(Command Target)](#命令目标command-target)
    - [命令关联(Command Binding)](#命令关联command-binding)
  - [MVVM](#mvvm)
    - [Model](#model)
    - [View](#view)
    - [ViewModel](#viewmodel)
  - [Application類](#application類)
    - [应用程序事件](#应用程序事件)
  - [Prism](#prism)
    - [重要的概念](#重要的概念)
      - [Modules](#modules)
      - [Module Catalog：](#module-catalog)
      - [Shell](#shell)
      - [Views：](#views)
      - [View Model和Presenters](#view-model和presenters)
        - [Model](#model-1)
        - [Commands](#commands)
        - [Regions：](#regions)
      - [Navigation](#navigation)
      - [EventAggregator](#eventaggregator)
      - [Dependency Injection container](#dependency-injection-container)
      - [Services：](#services)
      - [Controllers](#controllers)
      - [Bootstrapper：](#bootstrapper)
    - [Prism.Core、Prism.Wpf 和 Prism.Unity#](#prismcoreprismwpf-和-prismunity)
    - [Prism.Core#](#prismcore)
    - [BindableBase 和 ErrorsContainer#](#bindablebase-和-errorscontainer)
    - [Commanding](#commanding)
    - [Event Aggregator](#event-aggregator)
    - [PrismApplication#](#prismapplication)
    - [RegisterTypes](#registertypes)
    - [XAML ContainerProvider#](#xaml-containerprovider)
    - [ViewModelLocator](#viewmodellocator)
    - [Dialog Service](#dialog-service)
    - [Prism框架 如何在主程序中合理的弹出子窗体](#prism框架-如何在主程序中合理的弹出子窗体)
  - [拖拽](#拖拽)
  - [XAML](#xaml)
    - [合并XAMLS命名空间 到 http://url](#合并xamls命名空间-到-httpurl)
  - [布局](#布局)
      - [控制位置](#控制位置)
        - [1. Alignment](#1-alignment)
        - [2. Content Alignment](#2-content-alignment)
        - [3. FlowDirection](#3-flowdirection)
      - [Panel（面板）](#panel面板)
        - [1. 常用面板](#1-常用面板)
        - [2. TabPanel](#2-tabpanel)
        - [3. ToolBarOverflowPanel](#3-toolbaroverflowpanel)
        - [4. ToolBarTray](#4-toolbartray)
        - [5. UniformGrid](#5-uniformgrid)
        - [6. VirtualizingStackPanel](#6-virtualizingstackpanel)
  - [绑定（Binding ）](#绑定binding)
    - [绑定表达式](#绑定表达式)
    - [绑定错误](#绑定错误)
    - [绑定模式](#绑定模式)
    - [代码创建绑定](#代码创建绑定)
  - [第三方控件库](#第三方控件库)
    - [工具](#工具)
    - [自动化测试的协助工具](#自动化测试的协助工具)
  - [VisualStateManager](#visualstatemanager-1)
    - [VisualState](#visualstate)
    - [VisualStateGroup](#visualstategroup)
    - [VisualTransition](#visualtransition)
    - [VisualStateManager](#visualstatemanager-2)
  - [图形](#图形)
    - [基本图形](#基本图形)
    - [笔刷 Brush](#笔刷-brush)
    - [图形的效果与滤镜](#图形的效果与滤镜)
  - [变换](#变换)
    - [图形的变形](#图形的变形)
    - [Transform 抽象类](#transform-抽象类)
    - [变换（Transform）](#变换transform)
  - [动画](#动画)
    - [动画基类](#动画基类)
    - [关键帧动画 ：](#关键帧动画-)
      - [LinearDoubleKeyFrame](#lineardoublekeyframe)
      - [DiscreteDoubleKeyFrame](#discretedoublekeyframe)
      - [SplineDoubleKeyFrame](#splinedoublekeyframe)
      - [EasingDoubleKeyFrame](#easingdoublekeyframe)
    - [场景（Storyborad）](#场景storyborad)
  - [WPF 需要学习](#wpf-需要学习)
- [ASP.NET](#aspnet)
  - [ASHX 处理请求](#ashx-处理请求)
- [MVC](#mvc)
- [WebapiA](#webapia)
- [WCF WebService](#wcf-webservice)
  - [WCF简介](#wcf简介)
  - [地址](#地址)
  - [绑定](#绑定)
  - [契约](#契约)
  - [序列化](#序列化)
  - [消息](#消息)
  - [服务寄宿 SelfHost](#服务寄宿-selfhost)
  - [客户端](#客户端)
  - [实例化与会话](#实例化与会话)
  - [REST服务](#rest服务)
  - [异常处理](#异常处理)
  - [元数据](#元数据)
  - [事务](#事务)
  - [并发与限流](#并发与限流)
  - [可靠会话](#可靠会话)
  - [队列服务](#队列服务)
  - [传输安全](#传输安全)
  - [扩展](#扩展)
- [.Net Core](#net-core)
  - [Router](#router)
    - [property router](#property-router)
    - [设置路由中间件](#设置路由中间件)
    - [多路由](#多路由)
    - [高级路由](#高级路由)
  - [Session](#session)
  - [DI](#di)
  - [Filters](#filters)
    - [授权过滤器 AuthorizeAttribute](#授权过滤器-authorizeattribute)
    - [资源过滤器 IResourceFilter](#资源过滤器-iresourcefilter)
    - [异常过滤器 IExceptionFilter](#异常过滤器-iexceptionfilter)
    - [操作过滤器 ActionFilterAttribute](#操作过滤器-actionfilterattribute)
    - [结果过滤器 ResultFilterAttribute](#结果过滤器-resultfilterattribute)
    - [结果过滤器 IFilterDiagnostics](#结果过滤器-ifilterdiagnostics)
    - [IAsyncResultFilter](#iasyncresultfilter)
  - [Controllers](#controllers-1)
    - [WebAPI](#webapi)
    - [Controller](#controller)
    - [Rezor View](#rezor-view)
  - [ViewComponent](#viewcomponent)
  - [Taghelper](#taghelper)
  - [SignalR](#signalr)
  - [consul](#consul)
- [Entity Framework](#entity-framework)
  - [EDM](#edm)
- [DI（IoC）](#diioc)
  - [Unity](#unity)
  - [MEF](#mef)
  - [Spring.NET](#springnet)
  - [Autofac](#autofac)
  - [Ninject](#ninject)
- [单元测试](#单元测试)
- [AOP框架](#aop框架)
- [认证授权](#认证授权)
  - [认证 Authentication](#认证-authentication)
    - [Session-Cookie认证](#session-cookie认证)
    - [Token认证](#token认证)
      - [SAML](#saml)
      - [JWT](#jwt)
    - [SSO 与CAS 单点登录。](#sso-与cas-单点登录)
    - [多重身份验证](#多重身份验证)
    - [.NET CORE身份验证方案](#net-core身份验证方案)
      - [Identity](#identity)
  - [授权](#授权)
    - [授权  Authorize](#授权--authorize)
    - [WCF三种授权模式](#wcf三种授权模式)
    - [OAuth 授权](#oauth-授权)


# Donet6 ubuntu下的安装

Dotnet6 完整卸载，如果未安装可以不用执行

> sudo apt remove dotnet\* sudo apt remove netstandard\* using gedit 生成99microsoft-dotnet.pref sudo gedit /etc/apt/preferences.d/99microsoft-dotnet.pref /etc/apt/preferences.d/99microsoft-dotnet.pref Package: \* Pin: origin "packages.microsoft.com" Pin-Priority: 1001 sudo apt install apt-transport-https sudo apt update sudo apt install dotnet-sdk-6.0 dotnet --version dotnet --help Dotnet 8 类似 发布到ubuntu

# 发布项目

# Dotnet版本

.NET 是一款广泛使用的软件开发框架，它经历了多个版本的演进和改进。其中有的特性对.NET起到划时代的意义，对我们开发效率和程序的运行效率得到本质提升。本文将介绍.NET历史版本中比较优秀的10个新特征： 1、 .NET Framework 2.0： 引入了泛型类型和方法。通过使用泛型，开发人员可以编写更灵活、可扩展和类型安全的代码，减少了冗余代码的编写，并提高了应用程序的性能和可维护性。泛型在.NET框架中被广泛应用，例如在集合类（如List、Dictionary）、LINQ查询、委托和事件等方面。 2、.NET Framework 3.5： 引入了 LINQ（Language Integrated Query）查询语言，LINQ（Language Integrated Query）是.NET框架中的一项功能，它提供了一种统一的查询语法和操作符，用于在.NET应用程序中对各种数据源进行查询和操作。LINQ使得在.NET中执行查询操作变得更加简洁、直观和易于理解。同时可以使用Lambda表达式，它是一种简洁的匿名函数表示法，LINQ与lambda表达式密切相关。 3、 .NET Framework 4.5： 异步编程模型（async/await）是.NET框架中的一项重要特性，用于简化和改进异步编程。它使开发人员能够以一种更直观、可读性更高的方式编写异步代码，避免了传统的回调式编程模式带来的复杂性和困扰。 public async Task DownloadDataAsync(string url){ HttpClient client = new HttpClient(); string data = await client.GetStringAsync(url); return data;}//DownloadDataAsync方法被标记为异步方法，//并使用await关键字等待HttpClient的GetStringAsync方法的完成。//在等待期间，线程可以执行其他任务，而不会被阻塞。当异步操作完成后，//方法会返回结果。 ![0](https://note.youdao.com/yws/res/27000/WEBRESOURCE30e6d4f01758815f80a8b55fc6506da8 "0") 4、.NET Core 1.0： 从2016年6月开始发布.NET Core 1.0 ，.NET Core已经经历过了8年，加上今年发布的.NET7 已经有7个版本了，几乎是一年一个版本。其中长期支持的版本是.NET Core 3.1和.NET 6，大家注意选择。下面是[思维导图](https://so.csdn.net/so/search?q=%E6%80%9D%E7%BB%B4%E5%AF%BC%E5%9B%BE\&spm=1001.2101.3001.7020)描述了他们的发展历程。 .NET Core 1.0是.NET的首个跨平台版本，为开发人员带来了一场革命。它突破了操作系统的限制，可以在Windows、Linux和macOS等多个平台上运行，打开了.NET的全新时代。 新特性：

* URL 重写中间件
* 响应缓存中间件
* 查看组件 标记帮助程序
* MVC 型中间件筛选器
* 基于 Cookie 的 TempData 提供程序
* Azure App Service 日志记录提供程序
* Azure Key Vault 配置提供程序
* Azure 和 Redis 存储数据保护密钥存储库
* 适用于 Windows 的 WebListener 服务器（注：指 HTTP.sys 服务器）
* WebSockets 支持 5、 .NET Core 2.0： 增加了对 Razor Pages 的支持， Razor Pages采用了一种类似于传统Web Forms的方式，即将前端页面和后端代码逻辑紧密集成在一个文件中。每个Razor Pages文件（.cshtml）都包含了HTML标记和C#代码，使开发人员能够在同一个文件中处理页面布局、数据绑定和事件处理等操作。 Razor Pages使用了Razor语法，这是一种简洁、直观的模板语言，可以轻松地将C#代码嵌入到HTML中。开发人员可以在Razor Pages中使用Razor语法来处理数据显示、条件逻辑、循环结构等。Razor Pages还支持部分视图（Partial Views），这允许开发人员将页面的某些部分作为可重用的组件进行封装。 6、.NET Core 2.1： .NET Core 2.0引入了高性能的Span类型，以更有效地处理内存和数据。Span是一个结构体，用于表示连续的内存区域，并提供了一组安全且高效的方法来访问和操作这些内存区域。 通过使用Span，开发人员可以直接操作内存，而无需进行不必要的内存分配和复制操作。这对于处理大型数据集合或高性能计算任务非常有用。Span提供了多种方法来访问和修改内存，如索引访问、切片操作、复制和填充等。 新特性包含2.0、2.1， 新特性如下：
* Razor Pages
* ASP.NET Core 元包（注：即Microsoft.AspNetCore.All ，我喜欢称作全家桶，作用就是一把梭给你全部引用了相关的包，不用你发现没有的时候自己去找，方便是方便，就是把一堆没用到的也给引用了，项目加载速度也会受到影响）
* .NET Standard 2.0
* SPA 模板
* Kestrel 改进（添加大量服务器约束配置选项）
* WebListener 重命名为 HTTP.sys
* 默认启用防跨站请求攻击（CSRF）
* SignalR（已针对 ASP.NET Core 2.1 重新编写 SignalR：新 JavaScript 客户端不具有 jQuery 依赖项，新紧凑型二进制协议基于 MessagePack等）
* Razor 类库（Razor Class Library）
* Identity UI 库
* HTTPS
* GDPR（注：刚出来时，很多人发现Cookie写入不了就是因为开启了它）
* 集成测试
* \[ApiController], ActionResult
* 端点路由（Endpoint Routing）
* 健康检查（HealthCheck）
* HTTP/2
* IIS 进程内承载
* SignalR Java 客户端
* CORS 改进
* 响应压缩（ASP.NET Core 2.2 可以使用 Brotli 压缩格式来压缩响应。）
* 提升 HttpClient 性能（通过改善连接池锁的冲突） 7、 .NET Core 3.0： .NET Core 3.0引入了System.Text.Json，它是.NET平台中用于JSON序列化和反序列化的官方库。它具有高性能、简化的API和可定制性等特点，使开发人员能够方便地处理JSON数据。随着.NET Core的发展，System.Text.Json已成为.NET开发中的首选JSON处理库。 { // 创建一个对象 Person person = new Person {Name = "caochao", Age = 30, Email = "<caochao@example.com>" }; // 对象序列化为JSON字符串 string json = JsonSerializer.Serialize(person); // JSON字符串反序列化为对象 Person deserializedPerson = JsonSerializer.Deserialize(json); } class Person { public string Name { get; set; } public int Age { get; set; } public string Email { get; set; } }//欢迎关注公众号：DOTNET开发跳槽，领取海量面试题。加微信号xbhpnet入群交流 新特性包含3.0 新特性如下：
* Blazor Server
* Blazor WebAssembly
* Razor 组件
* gRPC
* ASP.NET Core 和 SignalR 默认使用 System.Text.Json 来进行序列化
* ASP.NET Core 默认不再使用 WebHostBuilder ，而是使用 HostBuilder（可以更好地将 ASP.NET Core 应用与非 Web 特定的其他服务器方案集成）
* Startup 类构造方法注入类型更改，只支持：IHostEnvironment，IWebHostEnvironment，IConfiguration
* 默认情况下启用 HTTP/2
* Kestrel：默认情况下禁用  8、.NET 5: .NET 5引入了AOT，.NET Native是一个AOT编译器，通过预先将.NET应用程序编译为本地机器代码，加快了应用程序的启动时间和执行效率。它适用于那些不需要动态生成代码的应用程序，可以提供更快的加载和执行速度。需要注意的是AOT不支持动态生成的应用程序。 新特性：
* ASP.NET Core MVC 和 Razor 改进
* OpenAPI 规范默认开启
* Blazor 性能改进、增加组件
* gRPC 性能改进
* SignalR 增加 Hub Filter，类似于 MVC Filter。支持并行调用，允许客户端一次调用多个Hub方法
* 自定义处理授权失败，使用由
* 授权中间件调用的新 IAuthorizationMiddlewareResultHandler 接口可以更轻松地自定义处理授权失败
* 使用端点路由时的授权
* Linux 上的 Kerberos 身份验证和 LDAP 的基于角色的访问控制
* 对 ASP.NET Core 项目运行
*  dotnet watch 将启动默认浏览器，并在对代码进行更改时自动刷新浏览器
* 控制台记录器格式化程序
* JSON Console Logger 9、 .NET 6： .NET MAUI是.NET 6中的重要新特性，它是一种新的跨平台应用程序开发框架，允许开发人员使用单一代码库构建移动、桌面和Web应用程序。它继承了Xamarin.Forms的优点，并进一步扩展和改进了跨平台开发体验。 .NET 6 (长期支持版本) 新特性：
* 性能大幅提升
* 支持 [热更新](https://so.csdn.net/so/search?q=%E7%83%AD%E6%9B%B4%E6%96%B0\&spm=1001.2101.3001.7020) Visual Studio 2022 和 .NET CLI 中支持，适用于 C# 和 Visual Basic
* 支持C#10版本 ,例如记录结构、隐式使用和新的 lambda 功能
* 具有原生设备功能的 [Blazor](https://so.csdn.net/so/search?q=Blazor\&spm=1001.2101.3001.7020) 桌面Web应用
* 添加了 HTTP3支持
* System.Text.Json APIs
* 新的 LINQ API
* 支持Arm64
* 最小化 Web APIs(Mini API) 10、 .NET 7： 内置容器化支持是.NET 7引入的重要新特征。之前我们更熟悉使用 Dockerfile 的形式构建镜像，而现在，可以在 .NET 项目中，配置 MSBuild 属性来做同样的事情，指定基础镜像，标签等等。.NET7的新特性小编比较难找，不知道“内置容器化支持”具体如何？ .NET 7 优化主要集中在： 统一的基类库（Base Class Library - BCL）、新的 TFM、对 ARM64 的原生支持、Linux 上增强的 .NET 支持。 ![0](https://note.youdao.com/yws/res/27938/WEBRESOURCE648a639fc7b432befdd4e358e020fcfc "0") 简单来说，如果使用 .NET 7，开发人员只需学习一次即可通过一个 SDK、一个运行时、一组基础库重复构建多种类型的应用程序（云、Web、桌面、移动、游戏、IoT 和 AI）。 ![0](https://note.youdao.com/yws/res/27939/WEBRESOURCE0a132573396519c807f8548c8d1af385 "0") 此外，微软还优化了在 Arm 机器上的性能，包括估算 L3 缓存大小、引入了 LSE 原子指令、优化使用内在函数的库。 11、 .NET 8： .NET 8 是微软于2021年8月24日宣布的下一代编程语言和框架，它是 .NET 宇宙的一部分，与 C# (Common Language Infrastructure) 紧密集成。.NET 8 引入了许多新功能，如原生编译、值类型 (Value Types)、结构化并发 (structured concurrency) 和快速数组 (RapidArray)。.NET 8 还支持本机 (native) AOT (Ahead-Of-Time) 编译，以提高性能和启动速度。 .NET 8 是 Microsoft 发布的最新一代 .NET 框架，它引入了许多新功能和改进，旨在提高性能、可扩展性和开发效率。 以下是一些 .NET 8 的主要亮点： 1.性能提升：.NET 8 引入了名为“性能计数器”的新功能，可帮助开发人员了解应用程序的性能瓶颈，并采取相应的优化措施。此外，.NET 8 还对许多现有的组件和库进行了优化，以提高应用程序的整体性能。 2.新的异步编程模型：.NET 8 引入了名为“协程”的新的异步编程模型，它可以更自然地处理异步操作和长时间运行的任务。协程可以在同一个线程上执行多个异步操作，从而避免了线程切换和上下文切换的开销。 3.云原生支持：.NET 8 提供了更好的云原生支持，可以更轻松地将应用程序部署到 Kubernetes 等容器化平台中。.NET 8 还支持使用 Docker 等容器化工具打包和分发应用程序。 4.新的开发工具：.NET 8 引入了新的开发工具，如 R#”、Visual Studio Code“ 和 Visual Studio IDE 等，这些工具可以帮助开发人员更高效地编写、调试和测试代码。 5.跨平台支持：.NET 8 可以在多个平台上运行，包括 Windows、macOS 和 Linux 等操作系统。此外，.NET 8 还支持在移动设备、Web 应用程序和游戏开发等领域中使用。 6.人工智能和机器学习：.NET 8 内置了对人工智能和机器学习的支持，可以更轻松地使用这些技术来构建智能应用程序。 7.安全性改进：.NET 8 对安全性进行了改进，包括更好的代码签名和加密技术、对 .NET 反射的限制、对代码访问控制的改进等。 总的来说，.NET 8 为开发人员提供了许多新功能和改进，可以帮助他们更高效地编写高质量的应用程序。 以下是 .NET 8 中引入的一些主要功能和改进： 1.性能优化：.NET 8 引入了名为“JIT-Chains”的全新技术，它可以将多个热点方法组合在一起，以减少 JIT 编译的开销。此外，.NET 8 还优化了垃圾回收器的性能，提高了堆内存的压缩速度和效率。 2.容器化：.NET 8 支持容器化应用，可以将应用打包成 Docker 镜像并在任何支持 Docker 的平台上运行。这使得应用更容易部署和扩展，并且可以与其他容器化应用集成。 3.多平台支持：.NET 8 可以在 Linux、macOS 和 Windows 平台上运行，并且支持 ARM64 和 ARMv7 架构，这意味着可以在各种设备和应用程序中使用 .NET 8。 4.新增语言功能：.NET 8 支持 C# 10 和 VB.NET 16，这些语言版本引入了许多新功能和改进，如记录模式、switch表达式、模式匹配、记录类型、可变性和局部类型参数等。 5.云原生应用支持：.NET 8 支持 Kubernetes 和云原生应用的其他组件，如服务网格、StatefulSet 等，这使得 .NET 8 更适合构建云原生应用。 6.数据库连接：.NET 8 引入了新的数据库连接 API，可以更轻松地连接各种数据库，如 MySQL、PostgreSQL 和 SQL Server 等。 7.Web API 改进：.NET 8 对 Web API 进行了改进，可以更轻松地创建 RESTful API，并且支持异步和同步请求处理。 总之，.NET 8 引入了许多新功能和改进，旨在提高性能、可扩展性和开发效率，使其成为构建现代应用程序的一个强大框架。 .NET 8 与.NET 7 相比，主要区别在于性能优化、容器化、多平台支持、语言功能、云原生应用支持、数据库连接和 Web API 改进等方面。.NET 8 在这些方面进行了升级和改进，旨在提高性能、可扩展性和开发效率。 .NET8对比.NET 性能优化：.NET 8 引入了 JIT-Chains 技术，将多个热点方法组合在一起，以减少 JIT 编译的开销。此外，.NET 8 还优化了垃圾回收器的性能，提高了堆内存的压缩速度和效率。 容器化：.NET 8 支持容器化应用，可以将应用打包成 Docker 镜像并在任何支持 Docker 的平台上运行。这使得应用更容易部署和扩展，并且可以与其他容器化应用集成。 多平台支持：.NET 8 可以在 Linux、macOS 和 Windows 平台上运行，并且支持 ARM64 和 ARMv7 架构，这意味着可以在各种设备和应用程序中使用 .NET 8。 语言功能：.NET 8 支持 C# 10 和 VB.NET 16，这些语言版本引入了许多新功能和改进，如记录模式、switch 表达式、模式匹配、记录类型、可变性和局部类型参数等。 云原生应用支持：.NET 8 支持 Kubernetes 和云原生应用的其他组件，如服务网格、StatefulSet 等，这使得 .NET 8 更适合构建云原生应用。 数据库连接：.NET 8 引入了新的数据库连接 API，可以更轻松地连接各种数据库，如 MySQL、PostgreSQL 和 SQL Server 等。 Web API 改进：.NET 8 对 Web API 进行 12、 .NET 9预览版：

# C#历史版本

C# 1.0 发布日期：2002 年 1 月 一切的开始，由于我是从 2.0 开始接触 C# 的，在此不赘述该版本了，只能说 C# 的起点不低，从 Java 转过来上手很快，兼具 C 语族的语法特点，同时又很有 Delphi 味，简直梦幻开局。 C# 1.2 发布日期：2003 年 4 月 从此版本开始，当 IEnumerator 实现 IDisposable 时，foreach 循环中生成的代码会在 IEnumerator 上调用 Dispose。【刚刚知道还有这特性】 C# 2.0 发布日期：2005 年 11 月 和 Visual Studio 2005 一起发布。看看这些金光闪闪的特性吧：

* 泛型
* 分部类型【partial 关键字】
* 匿名方法【利用 delegate 运算符】
* 可为空的值类型【Nullable 或 T? 】
* 迭代器【yield return 语句】
* 协变和逆变【这时候还不支持泛型接口和委托】
* getter/setter 单独可访问性
* 静态类 C# 3.0 发布日期：2007 年 11 月 C# 3.0 和 Visual Studio 2008 一起发布于 2007 年下半年，但完整的语言功能是在 .NET Framework 3.5 版中发布的。如果说 2.0 时期是分庭抗礼，那么到了 3.0 就真的是一骑绝尘，诸多特性完美地结合 在一起。尽管我习惯用 Lambda 表达式与链式调用来写 LINQ ，但是查询表达式写法的 LINQ 实在 是太惊艳了。
* 自动实现的属性【{ get; set; } 写法】
* 匿名类型【new { Foo = 108, Bar = "Hello" } 写法】
* 查询表达式【from foo select bar where baz 写法】
* Lambda 表达式
* 表达式树
* 扩展方法
* 隐式类型本地变量【var 关键字】
* 分部方法【partial 关键字可以作用在方法上，没用过该特性】
* 对象和集合初始值设定项【Foo foo = new Foo { Bar = "Hello" } 写法】
* WPF、WCF、WF C# 4.0 发布日期：2010 年 4 月 C# 版本 4.0 随 Visual Studio 2010 一起发布，引入了一些小改进。
* 动态绑定【dynamic 关键字，不在编译时检查类型，而是在运行时评估。】
* 命名实参和可选实参【可以少些一些方法重载了】
* 泛型协变和逆变【完全体，但一般只有底层类库设计者需要考虑这玩意】
* 嵌入的互操作类型【没什么存在感】
* System.Threading.Tasks 命名空间【更方便的线程操作及并行处理】
* System.Tuple 类
* 现有类的新方法【例如 String.IsNullOrWhiteSpace、Stopwatch.Restart、StringBuilder.Clear 等等】
* 现有方法的新重载【例如 String.Join 方法添加了可以连接 IEnumerable 集合的成员的新重载。 】
* Managed Extensibility Framework (MEF)【动态加载，实现插件系统的好帮手】
* ASP.NET MVC C# 5.0 发布日期：2012 年 8 月 C# 版本 5.0 随 Visual Studio 2012 一起发布。.NET Framework 4.5、4.5.1、4.5.2 基本上就是一系列更新和优化，新东西很少。
* 异步成员【async 和 await，版本之子。】
* 调用方信息特性【CallerMemberName 等，方便确定调用方信息。】 C# 6.0 发布日期：2015 年 7 月 版本 6.0 随 Visual Studio 2015 一起发布，发布了很多使得 C# 编程更有效率的小功能。对应 .NET Framework 4.6、4.6.1、4.6.2。.NET Core 出现了，好消息是 .NET 开放源码了，坏消息是微软开始折腾，从这开始语法糖多得齁嗓子。得益于诸多新特性，代码变得简短了，但是引入了很多新符号，心智负 担加重了。“Null 条件运算符”、“字符串内插”、“nameof 表达式”是我比较喜欢的特性。
* 静态导入【using static 指令命名了一种类型，无需指定类型名称即可访问其静态成员和嵌套类型。】可以using static非静态类型，但是只能使用它的静态方法。 using static System.Console; namespace csharp6 { internal class Program { private static void Main(string\[] args) { WriteLine("blackheart"); } } }
* 异常筛选器【catch (ExceptionType \[e]) when (expr)】 using System; using System.Net.Http; using System.Threading.Tasks; class Program { static void Main() { Console.WriteLine(MakeRequest().Result); } public static async Task\<string> MakeRequest() { var client = new HttpClient(); var streamTask = client.GetStringAsync("<https://localHost:10000>"); try { var responseText = await streamTask; return responseText; } catch (HttpRequestException e) when (e.Message.Contains("301")) { return "Site Moved"; } catch (HttpRequestException e) when (e.Message.Contains("404")) { return "Page Not Found"; } catch (HttpRequestException e) { return e.Message; } } }
* 自动属性初始化表达式【public string Foo { get; set; } = string.Empty;】
* 表达式主体定义【例如：public override string ToString() => \$"{foo} {bar}";】
* Null 条件运算符【成员访问?. 或元素访问?\[]】 namespace csharp6 { internal class Person { public string Name { get; set; } } internal class Program { private static void Main() { Person person = null; string name = person?.Name; } } }
* 字符串内插【\$"{foo} {bar}"】
* nameof 表达式【nameof(Foo)】 C# 7.0 发布日期：2017 年 3 月 C# 7.0 版已与 Visual Studio 2017 一起发布。 对应 .NET Framework 4.7、4.7.1、4.7.2。后续还有 C# 7.1、7.2、7.3 。
* out 变量【if (Int32.TryParse(foo, out int bar)) Console.WriteLine(\$"Converted '{foo}' to {bar}");】
* 元组【(double Foo, int Bar) t2 = (4.5, 3);】
* 模式匹配 **模式匹配**也许能算的上C#本次更新最重量级的升级，也是最受关注的特性（也许没有之一），通过模式匹配，我们可以简化大量的条件代码。   **Switch语句** 大家也许遇到过这样的情景，假设你的代码中，有一个**Nullable\<int>的值，需要对其在**正整数，**非正整数**，**Null**三种情况下分别作不同的逻辑处理。大多数童鞋直接想到是类似于下面的逻辑： 1 void Foo(int? num) 2 { 3     if (!num.HasValue) 4      /\* null logic */ 5     else if (num.Value > 0) 6      /* positive int logic */ 7     else 8      /* negative int & zero logic \*/ 9 请大家思考一下，这个逻辑是否可以用switch-case语句来做，在VB及很多**非C系**的语言中，答案是肯定的，比如**VB.NET中**可以这样写： 1 Sub Foo(Num As Integer?) 2     Select Case Num 3         Case Not Num.HasValue 4         'null logic 5         Case Num > 0 6         'positive Int logic 7         Case Num <= 0 8             'negative Int() & zero logic 9         Case Else 10 11     End Select 12 End Sub 说到这里，在具体讨论**模式匹配**在switch-case中的应用之前，先淡淡的吐槽一下C#，本来理所应当的一个简单的小语法，到了C#7.0才加入。 看看C#7.0加入的类型模式（Type Pattern）：

    1 void Foo(int? num) 2 { 3     switch (num) 4     { 5         case null: 6             //null logic 7             break; 8         case int n when n > 0: 9             //positive Int logic 10             break; 11         case int n when n <= 0: 12             //negative Int() & zero logic 13             break; 14     } 15 } 这个不多说了，大家自己体会，单纯的在**Nullable\<int>下，可能体现的不是很清晰，个人认为这个小变动其实意义并不是很大，同样场景下，或许**if-if else-else会让代码更清晰易读些。   如果说模式匹配仅仅是完善了一下switch-case，那可真是太大才小用了，下面我们看一个好玩的。  **Match表达式** 虽然把match带到C#中看起来并不是什么大事，但是会引起的代码简化还是非常爽的。 就像很多人说三元表达式（**\<condition>？\<true result> : \<false result>** ）将**if-else**简化一样。match表达式，是**将switch-case结构简化**到了一个新限度。 看match表达式代码前，我们先来看一行略坑的三元表达式。 var reuslt = x == null ? default(int) : (x is Func\<int> ? (x as Func\<int>)() : (x is int ? Convert.ToInt32(x) : default(int))); 好吧，我承认我是故意让你们抓狂的。^\_^， 为了能稳住大家看完上面这行代码后的情绪，来一副match表达式消消火。 var result = x match( case Func\<int> f: f(), case int i: i, case \*: default(int) ); 这两种写法效果上是等效的，有没有非常干净清爽的感觉？写过match表达式的码农，应该再也不想回去嵌套 **<\*>?<\*>:<\*>** 了。 （*注：目前这种写法还未确认，C#7.0发布后可能会有略微变动*）   **Is表达式** 如果说上面两个变化是“语法糖”，那么**is表达式**可是要玩真的了。 说点题外话，其实对**正则表达式**熟悉的童鞋可能知道，本质上\*\*\[模式匹配]**和正则表达式要解决的问题**逻辑**类似，以一个确定的模式，来判断或查找一个确定的实例**。只不过在正则表达式中，这里说的"模式"是正则表达式，"实例"指字符串。而\[模式匹配]下，所针对的"实例"是对象，那么"模式"，就可以理解成is表达式\*\*了。 举个例子，比如你要查找并列出 一组电子设备中，所有iPhone的IMEI串号，我们在C#6.0中，会这样做： [![复制代码](https://common.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码") 1 class Device 2 { 3     public ProductLineOption ProductLine { get; set; } 4 } 5 6 class MobiePhone : Device 7 { 8     public string IMEICode { get; set; } 9 } 10 11 IEnumerable\<Device> GetAllDevices() { /\* 获取并返回所有设备 \*/ }; 12 13 IEnumerable\<string> GetAlliPhoneIMEI() 14 { 15     var deviceList = this.GetAllDevices(); 16     foreach (Device device in deviceList) 17     { 18         MobiePhone phone = device as MobiePhone; 19         if (phone == null) continue; 20 21         if (phone.ProductLine == ProductLineOption.IPhone) 22         { 23             yield return phone.IMEICode; 24         } 25     } 26 } [![复制代码](https://common.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码") 一个非常典型的传统方法，没什么好说的。我们直接来看C#7.0 中\*\* is表达式\*\*怎么等效的实现这段逻辑： [![复制代码](https://common.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码") 1 IEnumerable\<string> GetAlliPhoneIMEI() 2 { 3     List\<Device> deviceList = this.GetAllDevices(); 4     foreach (Device device in deviceList) 5     { 6         if (device is MobiePhone { IMEICode is var imei, ProductLine is ProductLineOption.IPhone}) 7         { 8             yield return imei; 9         } 10     } 11 } [![复制代码](https://common.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码") 如果你还是觉得这没什么，那么，其实这个例子中，仅仅体现出模式匹配中的**属性模式**。 根据Doc:#[patterns](https://github.com/dotnet/roslyn/blob/future/docs/features/patterns.md) C#7.0会提供一下几种匹配方式：

    * 类型模式
    * 常量模式
    * 变量模式
    * 通配符模式
    * 位置模式
    * 属性模式 我们可以想象，如果模式匹配组合起来使用，会给现有的C#代码带来多大的便利和清静。 Okay，说了这么多，下面给大家一个相对完整的案例，自行体会。   **案例**  [![复制代码](https://common.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码") 1 abstract class Animal 2 { 3     public string Name { get; set; } 4 } 5 6 class Dog : Animal 7 { 8     public string BarkLikeCrazy() => "WOOF WOOF WOOF"; 9 } 10 11 class Cat : Animal { } 12 class Swan : Animal { } 13 14 class Program 15 { 16     static void Main(string\[] args) 17     { 18         var animals = new Animal\[] { 19             new Dog { Name = "hola" }, 20             new Cat { Name = "tom" }, 21             new Swan { Name = "hacienda" } 22         }; 23 24         var organizedAnimals = from animal in animals 25                                let sound = animal match( //Match语句 26                                    case Dog d: "woof... " + d.BarkLikeCrazy(), //类型匹配 27                                    case Cat c: "meow", 28                                    case \* : "I'm mute.." //通配符匹配 29                                ) 30                                select new { Type = animal, Sound = sound }; 31 32         foreach (var animal in organizedAnimals) 33         { 34             Console.WriteLine(`$"{animal.Type.ToString()} - {animal.Sound}");
        35         }
        36 
        37         foreach (var a in animals)
        38         {
        39             if (a is Cat { Name is var name }) //类型及属性匹配，is表达式
        40             {
        41                 Console.WriteLine($`"Name of {nameof(Cat)} is {name}"); 42             } 43 44             string sound = ""; 45             switch (a) //匹配switch语句 46             { 47                 case Dog d when d.Name == "hola": 48                     sound = "woof... hola" + d.BarkLikeCrazy(); 49                     break; 50                 case Dog d: 51                     sound = "woof..." + d.BarkLikeCrazy(); 52                     break; 53                 case Cat c: 54                     sound = "meow"; 55                     break; 56                 case IEnumerable\<Animal> l when l.Any(): 57                     //TODO: any logic; 58                     break; 59                 case null: 60                     sound = "no animal"; 61                     break; 62                 default: 63                     sound = "I'm mute.."; 64                     break; 65             } 66             Console.WriteLine(\$"{a.ToString()} - {sound}"); 67         } 68     } 69 } [![复制代码](https://common.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码")   
* 本地函数【内部函数，让我想起了 Delphi】 public class C { public void M() { int result = add(100, 200); // 本地函数 add int add(int a, int b) { return a + b; } } }
* ref 局部变量【指针既视感】 而ref参数的行为与此不同。使用ref参数，不会创建开辟新的空间，而是调用放提供一个现有的包含初始值的空间。可以理解为一个空间同时被两个地址指向：一个是调用方使用的该变量的表示，另一个是形参的名称。
* 弃元【(\_, \_, foo) = bar.baz();，配合元组，你可以给，但我可以不要。】 弃元相当于未赋值的变量；它们没有值。 因为只有一个弃元变量，甚至不为该变量分配存储空间，所以弃元可减少内存分配。 因为它们使代码的意图清楚，增强了其可读性和可维护性。 using System; using System.Collections.Generic; public class Example { public static void Main() { var (\_, \_, \_, pop1, \_, pop2) = QueryCityDataForYears("New York City", 1960, 2010);

                Console.WriteLine($"Population change, 1960 to 2010: {pop2 - pop1:N0}");
            }
         
            private static (string, double, int, int, int, int) QueryCityDataForYears(string name, int year1, int year2)
            {
                int population1 = 0, population2 = 0;
                double area = 0;
         
                if (name == "New York City")
                {
                    area = 468.48;
                    if (year1 == 1960)
                    {
                        population1 = 7781984;
                    }
                    if (year2 == 2010)
                    {
                        population2 = 8175133;
                    }
                    return (name, area, year1, population1, year2, population2);
                }
         
                return ("", 0, 0, 0, 0, 0);
            }
        }

C# 8.0 发布日期：2019 年 9 月 C# 8.0 版是专门面向 .NET C# Core 的第一个主要 C# 版本。特性列了一大篇，实在是没法看了，下面就没有一一列举，脚本语言味儿越来越重，各种操作符、关键字更是玩出花来，心智负担越发沉重了。除了 模式匹配，别的特性完全不想碰。

* 默认接口方法【抽象也能顺便带点儿实现，脑抽特性】
* 模式匹配增强功能【来嘛，有点学不过来了啊】
* Null 合并赋值【??=】
* 后面懒得列了…… C# 9 发布日期：2020 年 11 月 C# 9 随 .NET 5 一起发布。 它是面向 .NET 5 版本的任何程序集的默认语言版本。对于既存特性进行了 梳理与调整，然后引入了一大堆新特性，这是有 KPI 压力吗？老特性千万别给我搞没了，新特性我也保证不碰，咱们心照不宣吧。
* 记录【record 关键字，只读数据类语法糖】
* 仅限 Init 的资源库【public int Foo { get; init; } ，只读数据类语法糖之二】
* 顶级语句【为了少写点代码微软也是拼了】
* 模式匹配增强功能【继续增强……】
* 函数指针【图穷匕见，高性能计算这一块与我似乎没有交集】
* 后面懒得列了…… C# 10 发布日期：2021 年 11 月 C# 10 向 C# 语言添加了以下功能和增强功能： 记录结构 结构类型的改进 内插字符串处理程序 global using 指令 文件范围的命名空间声明 扩展属性模式 对 Lambda 表达式的改进 可使用 const 内插字符串 记录类型可密封 ToString() 改进型明确赋值 在同一析构中可同时进行赋值和声明 可在方法上使用 AsyncMethodBuilder 属性 CallerArgumentExpression 属性 增强的 #line pragma 警告波 6 C# 11 .NET 7 支援 C# 11 C# 11 已新增下列功能： 原始字串常值 泛型數學支援 泛型屬性 UTF-8 字串常值 字串插補運算式中的分行符號 清單模式 檔案本機類型 必要成員 自動預設結構 常數上的模式比 Span 對 string nameof擴充範圍 Numeric IntPtr ref 欄位和 scoped ref 已改善方法群組轉換至委派 警告波 7 C# 12 最新的 [Visual Studio 2022](https://visualstudio.microsoft.com/vs/preview/) 版本或 [.NET 8 SDK](https://dotnet.microsoft.com/download/dotnet)  C# 12 包括以下新增功能。 可以使用最新的 [Visual Studio 2022](https://visualstudio.microsoft.com/vs/preview/) 版本或 [.NET 8 SDK](https://dotnet.microsoft.com/download/dotnet) 尝试这些功能。
* 主构造函数  - 在 Visual Studio 2022 版本 17.6 预览版 2 中引入。
* 集合表达式  - 在 Visual Studio 2022 版本 17.7 预览版 5 中引入。
* 内联数组  - 在 Visual Studio 2022 版本 17.7 预览版 3 中引入。
* Lambda 表达式中的可选参数  - 在 Visual Studio 2022 版本 17.5 预览版 2 中引入。
* ref readonly [ 参数](https://learn.microsoft.com/zh-cn/dotnet/csharp/whats-new/csharp-12#ref-readonly-parameters) - 在 Visual Studio 2022 版本 17.8 预览版 2 中引入。
* 任何类型的别名  - 在 Visual Studio 2022 版本 17.6 预览版 3 中引入。
* 实验属性  - 已在 Visual Studio 2022 版本 17.7 预览版 3 中引入。
* 拦截器  - 预览功能 在 Visual Studio 2022 版本 17.7 预览版 3 中引入。

# C# .Net Base

## CLR基础 CLR的执行模型

## 生成、打包、部署和管理应用程序及类型

## 共享程序集和强命名程序集

## 类型基础

> 值类型（value type）：byte，short，int，long，float，double，decimal，char，bool 和 struct 统称为值类型。值类型变量声明后，不管是否已经赋值，编译器为其分配内存。 .NET 中，编译器直接支持的数据类型称为基元类型primitive type.基元类型和.NET框架类型FCL中的类型有直接的映射关系，例如：在C#中，int直接映射为System.Int32类型。 结构体是值类型数据结构。它使得一个单一变量可以存储各种数据类型的相关数据。struct 关键字用于创建结构体。 引用类型（reference type）：string 和 class统称为引用类型。当声明一个类时，只在栈中分配一小片内存用于容纳一个地址，而此时并没有为其分配堆上的内存空间。当使用 new 创建一个类的实例时，分配堆上的空间，并把堆上空间的地址保存到栈上分配的小片空间中。

### 可空值类型

### 元组 Tuple

> C# 7.0 及更高版本中可用，它提供了简洁的语法，用于将多个数据元素分组成一个轻型数据结构。 (double, int) t1 = (4.5, 3); (string, bool, int) t1 = ("test",true, 3);

### 字符、字符串和文本处理

### 枚举类型和位标志

### 数组

### 集合类型

> ArrayList ArrayList是List接口的可变数组非同步实现，并允许包括null在内的所有元素，相当于List < object> List < T > 泛型的List 类是一个不限长度的集合类型，它内部实际就是一个数组，初始长度是4，每次数组到达限制，就会把现有容量翻倍，它提供用于对集合进行搜索、排序和操作等方法 List是数组链表，数组链表访问快,复杂度O(1),但是添加删除复杂度O(n) LinkedList LinkedList是List接口的双向链表非同步实现，并允许包括null在内的所有元素。底层的数据结构是基于双向链表的，LinkedList是指针链表，指针链表访问复杂度是O(n),但是添加删除很快O(1),如果对这个集合在中间的添加删除操作非常频繁的话，就建议使用LinkedList。 Dictionary < K, V> 存储键值对的关联性集合，查询等操作速度很快,因为它的时间复杂度是O(1)，单线程中推荐使用Dictionary,有泛型优势,且读取速度较快,容量利用更充分. Hashtable Hashtable是System.Collections命名空间提供的一个容器，用于处理和表现类似key/value的键值对 Hashtable使用了闭散列法来解决冲突，它通过一个结构体bucket来表示哈希表中的单个元素，这个结构体中有三个成员： （1） key ：表示键，即哈希表中的关键字。 （2） val ：表示值，即跟关键字所对应值。 （3） hash\_coll ：它是一个int类型，用于表示键所对应的哈希码。 哈希表的所有元素存放于一个名称为buckets（又称为数据桶） 的bucket数组之中 优点： （1）在使用哈希表保存集合元素（一种键/值对）时，首先要根据键自动计算哈希代码，以确定该元素的保存位置，再把元素的值放入相应位置所指向的存储桶中。在查找时，再次通过键所对应的哈希代码到特定存储桶中搜索，这样将大大减少为查找一个元素进行比较的次数 （2）多线程程序中推荐使用Hashtable，对Hashtable进一步调用Synchronized()方法可以获得完全线程安全的类型 Dictionary< TKey, TValue> 是 Hashtable 的泛型版本，它们之间实现上区别不大，运行效率上有一些差别 Hashtable由于键值类型都object，所以涉及装箱拆箱操作，在添加数据的效率上要差一些，但是频繁使用数据时效率更高，HashTable的优点就在于其索引的方式，速度非常快。如果以任意类型键值访问其中元素会快于其他集合，特别是当数据量特别大的时候，效率差别尤其大。 SortedList 表示基于相关的 IComparer 实现按键进行排序的键/值对的集合,与哈希表类似，区别在于SortedList中的Key数组排好序的 堆栈（Stack） 表示对象的简单的后进先出非泛型集合。Push方法入栈，Pop方法出栈 队列（Queue） 队列先进先出,enqueue方法入队列，dequeue方法出队列 SortedList< TKey,TValue> SortedList< TKey,TValue>是支持排序的关联性集合，将数据存储在数组中的。也就是说添加和移除操作都是线性的，时间复杂度是O(n)，因为操作其中的元素可能导致所有的数据移动。但是因为在查找的时候利用了二分搜索，所以查找的性能会好一些，时间复杂度是O(log n)。所以推荐使用场景是这样地：如果你想要快速查找，又想集合按照key的顺序排列，最后这个集合的操作（添加和移除）比较少的话，就是SortedList了。集合中的数据是有序的。可以通过key来匹配数据，也可以通过int下标来获取数据。 添加操作比ArrayList，Hashtable略慢；查找、删除操作比ArrayList快，比Hashtable慢 10）SortedDictioanry< TKey,TValue> SortedDictionary< TKey,TValue>和Dictionary< TKey,TValue>大致上是类似的，但是在实现方式上有一点点区别SortedDictionary< TKey,TValue>用二叉树作为存储结构的。并且按key的顺序排列　　SortedDictionary< TKey,TValue>相比于SortedList< TKey,TValue>其性能优化了 SortedList< TKey,TValue>其内部维护的是数组而SortedDictionary< TKey,TValue>内部维护的是\*\*红黑树(平衡二叉树)\*\*的一种，因此其占用的内存，性能都好于SortedDictionary< TKey,TValue>　唯一差在不能用下标取值。 HashSet< T> HashSet是一个无序的能够保持唯一性的集合,不支持下标访问。 SortedSet< T> SortedSet内部也是一个二叉树，用来支持按顺序的排列元素。算法，存储结构都与哈希表相同，主要是设计用来做高性能集运算的，例如对两个集合求交集、并集、差集等。集合中包含一组不重复出现且无特定顺序的元素。 BitArray BitArray用于二进制运算，“或”、“非”、“与”、"异或非"等这种操作，只能存true或false； ListDictionary 单向链表，每次添加数据时都要遍历链表，数据量大时效率较低，数据量较大且插入频繁的情况下，不宜选用 HybridDictionary HybridDictionary的类，充分利用了Hashtable查询效率高和ListDictionary占用内存空间少的优点，内置了Hashtable和ListDictionary两个容器，添加数据时内部逻辑如下： 当数据量小于8时，Hashtable为null，用ListDictionary保存数据。 当数据量大于8时，实例化Hashtable，数据转移到Hashtable中，然后将　　ListDictionary置为null。

## 类

### 常量和字段属性

字段（field），是一种表示与对象类型（类与结构体）关联的变量是为一个对象类型存储数据的,字段是类型的成员，以前称为“成员变量” 使用了readonly的属性，只能在定义时，或者构造函数中初始化，其他的地方都不能再修改其值 使用 const 关键字来声明某个常量字段或局部变量。 常量字段和常量局部变量不是变量并且不能修改。 常量可以为数字、布尔值、字符串或 null 引用。 不要创建常量来表示你需要随时更改的信息。 分为两种：实例字段：与对象关联的字段 静态字段：由static修饰，与类型关联的字段 定义：属性（property）是一种用于访问对象或类型的特征的成员，特征反应了状态,属性是字段的自然扩展 字段（field），偏向于实例对象在内存中的布局属性（property），偏向于反映现实世界对象的特征（面向对象）

### 属性

### 方法

> 参数 形参 实参 方法是包含一系列语句的代码块。 程序通过调用该方法并指定任何所需的方法参数使语句得以执行。 在 C# 中，每个执行的指令均在方法的上下文中执行。 该方法定义指定任何所需参数的名称和类型。 调用代码调用该方法时，它为每个参数提供了称为参数的具体值。 参数必须与参数类型兼容，但调用代码中使用的参数名（如果有）不需要与方法中定义的参数名相同。 默认情况下，将值类型的实例传递给方法时，传递的是其副本而不是实例本身。 因此，对参数的更改不会影响调用方法中的原始实例。 若要按引用传递值类型实例，请使用 ref 关键字。

### 扩展方法

扩展方法使你能够向现有类型“添加”方法，而无需创建新的派生类型、重新编译或以其他方式修改原始类型。 扩展方法是一种静态方法，但可以像扩展类型上的实例方法一样进行调用。以下就是个string类添加名为WordCount的扩展方法。

    namespace ExtensionMethods
    {
        public static class MyExtensions
        {
            public static int WordCount(this string str)
            {
                return str.Split(new char[] { ' ', '.', '?' },
                                 StringSplitOptions.RemoveEmptyEntries).Length;
            }
        }
    }

## new

**1.new 运算符**

　　1).用于创建对象和调用构造函数

    示例：Class_Test MyClass = new Class_Test();

　　2).也用于为值类型调用默认的构造函数

    示例：int myInt = new int();

　　myInt 初始化为 0，它是 int 类型的默认值。该语句的效果等同于：int myInt = 0;

　　3).不能重载 new 运算符。

　　4).如果 new 运算符分配内存失败，则它将引发 OutOfMemoryException 异常。

**2.new 修饰符**

　　使用 new 修饰符显式隐藏从基类继承的成员。若要隐藏继承的成员，请使用相同名称在派生类中声明该成员，并用 new 修饰符修饰它。

    public class MyDerivedC : MyClass 
    　　{ 
    　　
    　　    new public void Invoke() {} 
    　
    　　} 

## 异步编程

async和await的概念 async：将方法标记为异步方法，表示该方法包含异步操作。 await：用于等待一个异步操作完成，然后继续执行下面的代码。await只能在async方法内部使用。 Task和Task 在异步编程中，经常使用Task和Task\<T>来表示异步操作的结果。Task表示一个异步操作，而Task\<T>表示一个异步操作的结果。 异步和多线程的区别 异步编程和多线程是不同的概念。异步编程不一定涉及多线程，而是利用异步任务的等待和非阻塞特性来提高程序的并发性。多线程是通过创建多个线程来实现并发执行。&#x20;

    class Program
    {
        static async Task Main(string\[] args)
        {
            await DownloadWebsiteAsync();
            Console.WriteLine("下载完成！");
        }
        static async Task DownloadWebsiteAsync()
        {
            using (HttpClient client = new HttpClient())
            {
                string website = "<https://www.example.com>";
                string content = await client.GetStringAsync(website);
                Console.WriteLine("下载内容长度：" + content.Length);
            }
        }
    }

在异步方法中，异常的处理方式与同步方法类似。您可以使用try-catch块捕获异常。另外，async方法内部的异常不会立即抛出，而是会被包装到Task对象中，您可以通过Task.Exception属性来访问异常。

## Lambda表达式

> Lambda表达式是对.NET2.0中匿名方法在语法形式上的进一步改进，仍然以代码说明： var inString = list.FindAll(delegate(string s) { return s.Indexof("YJingLee") >= 0; }); 使用Lambda表达式代码将更自然易懂。 var inString = list.FindAll(s => s.Indexof("YJingLee") >= 0);

## Fluent API(流式接口)

> 是软件工程中面向对象API的一种实现方式,以提供更为可读的源码。从表现上来看,接口调用呈现链式调用(瀑布式调用),看起来非常流畅,荡气回肠 StringBuilder sb = new StringBuilder() .append(1) .append("2") .append(1.1); modelBuilder.Entity\<Person>().Property(p => p.RowVersion).IsRowVersion();

## 委托

委托是C#中的一种引用类型,委托的本质是一个类,定义了方法的类型,是将方法作为参数传递到另一个方法的特殊类。 匿名函数 匿名函数是一个“内联”语句或表达式，可在需要委托类型的任何地方使用。 可以使用匿名函数来初始化命名委托，或传递命名委托（而不是命名委托类型）作为方法参数。 C#中有两种匿名函数：Lambda 表达式 和 匿名方法。 委托的使用 声明委托 private delegate void Delegate1(string parm1); 实例化委托 Delegate1 d1 = new Delegate1(OnDelegate1); 调用委托 d("teststr"); C#内置了许多泛型委托，可以直接使用 Action Action是无返回值的泛型委托。Action 表示无参，无返回值的委托 Action\<int,string> 表示有传入参数int,string无返回值的委托 Action\<int,string,bool> 表示有传入参数int,string,bool无返回值的委托 Action\<int,int,int,int> 表示有传入4个int型参数，无返回值的委托 Action至少0个参数，至多16个参数，无返回值。 使用比较简单 Action\<string> action1 = new Action\<string>(OnAction1);直接 action1("action1")就可以调用。 Func委托 Func是有返回值的泛型委托，<>中，最后一个类型为返回值类型。 Func\<int> 表示无参，返回值为int的委托 Func\<object,string,int> 表示传入参数为object, string 返回值为int的委托 Func至少0个参数，至多16个参数，根据返回值泛型返回。必须有返回值，不可void 实例化 Func\<string, string, int> func2 = new Func\<string, string, int>(OnFunc2); 调用 func2("name1", "name2")。 Predicate委托 表示一种方法，该方法定义一组条件并确定指定对象是否符合这些条件。 其实就是类似t=>t.GameID==gameInfo.GameID public delegate bool Predicate\<in T>(T obj); Predicate 是返回bool型的泛型委托 Predicate有且只有一个参数，返回值固定为bool 关于委托的总结 委托类似于 C++ 函数指针，但它们是类型安全的。 委托允许将方法作为参数进行传递。 委托可用于定义回调方法。 委托可以链接在一起；例如，可以对一个事件调用多个方法。 Delegate至少0个参数，至多32个参数，可以无返回值，也可以指定返回值类型 Func可以接受0个至16个传入参数，必须具有返回值 Action可以接受0个至16个传入参数，无返回值 Predicate只能接受一个传入参数，返回值为bool类型

## 事件

事件event是一种特殊的委托，他不能被初始化，event 后边的EventHandler其实就是在初始化事件的委托类型，所以事件只能被订阅取消订阅。 异步的事件处理没有阻塞进程，很好的起到了异步方法的作用。 以下只是一个简单实例，实际中用while true 这种方式肯定是不可取的。

```
class MyEvent //声明事件
{
    public event EventHandler&lt;EventArgs&gt; OnInput; //定义一个委托类型的事件\
    public void WaitInput()
    {
        while (true)
        {
        if (Console.ReadLine() == "x")
        OnInput(this, new EventArgs()); //触发事件
        }
    }
}
class Program
{
    static void Main(string\[] args)
    {
        MyEvent Evt = new MyEvent();//实例化
        Evt.OnInput += On_Input; //绑定事件到方法\
        Evt.WaitInput();
    }
    //事件处理方法
    private static void On_Input(object sender, EventArgs e)
    {
        Console.WriteLine("你触发了‘X’！");
    }		
}

```

### 委托与事件比较

1、委托的本质就是一个密封类，这个类继承了MulticastDelegate（多播委托）。 2、委托的构造函数，有两个参数，一个类型是IntPtr，用来接收方法的。 1、保护委托字段，对外不开放，所以外部对象没法直接操作委托。提供了Add和Remove方法，供外部对象订阅事件和取消事 2、事件的处理方法在对象外部定义，而事件的执行是在对象的内部，至于事件的触发，何时何地无所谓。 委托是一种类型 委托是一种类型与返回值相同函数的链表 委托使用+=，=，-=三个符号操作链表里的函数 调用委托就会依次调用委托链表里的所有函数 委托返回值默认是最后一个添加的函数返回值 和委托类似，事件是后期绑定机制。 实际上，事件是建立在对委托的语言支持之上的。 事件是对象用于（向系统中的所有相关组件）广播已发生事情的一种方式。 任何其他组件都可以订阅事件，并在事件引发时得到通知。 你可能已在某些编程中使用过事件。 许多图形系统都具有用于报告用户交互的事件模型。 这些事件会报告鼠标移动、按钮点击和类似的交互。 这是使用事件的最常见情景之一，但并非唯一的情景。 可以定义应针对类引发的事件。 使用事件时，需要注意的一点是特定事件可能没有任何注册的对象。 必须编写代码，以确保在未配置侦听器时不会引发事件。 通过订阅事件，还可在两个对象（事件源和事件接收器）之间创建耦合。 需要确保当不再对事件感兴趣时，事件接收器将从事件源取消订阅。

1.同样是定义，我们可以看到委托它可以定义在类的外面，而事件只能定义在类的里面，并且微软很明确的提示你“ 命名空间不能直接包含字段或方法之类的成员 ”，其实这也说明了我将要说的，委托是一种类型，事件是一种成员。

2.声明，我们可以在上面的图中看到，事件的声明用到的关键字“event”，但他在这个关键字后紧跟着的就是“EventHandler”，这个EventHandler是.NET BCL使用的，并被指定为事件使用标准的预定义委托类型。

实际上事件是一种特殊的对象，通过委托机制进行消息的传递。

## 泛型

## 接口

## Marshal

Marshal提供了一个方法集合，这些方法用于分配非托管内存、复制非托管内存块、将托管类型转换为非托管类型，此外还提供了在与非托管代码交互时使用的其他杂项方法。包括Intptr等类型都需要Marshal来转换，另外Marshal可以实现从内存直接转换为struct。 C# byte\[]、struct、intptr之间的相互转换 1.struct与byte\[]互相转换 //struct转换为byte\[] public static byte\[] StructToBytes(object structObj) { int size = Marshal.SizeOf(structObj); IntPtr buffer = Marshal.AllocHGlobal(size); try { Marshal.StructureToPtr(structObj, buffer, false); byte\[] bytes = new byte\[size]; Marshal.Copy(buffer, bytes, 0, size); return bytes; } finally { Marshal.FreeHGlobal(buffer); } } //byte\[]转换为struct public static object BytesToStruct(byte\[] bytes, Type type) { int size = Marshal.SizeOf(type); IntPtr buffer = Marshal.AllocHGlobal(size); try { Marshal.Copy(bytes, 0, buffer, size); return Marshal.PtrToStructure(buffer, type); } finally { Marshal.FreeHGlobal(buffer); } } 2.Intptr与byte\[]互相转换 //IntPtr转byte\[] byte\[] ys = new byte\[yLength]; Marshal.Copy(y, ys, 0, yLength); //byte\[]转换为Intptr (方法一) public static Intptr BytesToIntptr(byte\[] bytes) { int size = bytes.Length; IntPtr buffer = Marshal.AllocHGlobal(size); try { Marshal.Copy(bytes, 0, buffer, size); return buffer; } finally { Marshal.FreeHGlobal(buffer); } } //byte\[]转换为Intptr (方法二) byte\[] ys = new byte\[yLength]; IntPtr buffer= Marshal.UnsafeAddrOfPinnedArrayElement(ys, 0); 3.struct与Intptr互相转换 以下是MSDN的示例，创建一个托管结构，使用 StructureToPtr 方法将它传输到非托管内存，然后使用 PtrToStructure 方法将它传输回托管内存中：\*\* using System; using System.Runtime.InteropServices; public struct Point { public int x; public int y; } class Example { static void Main() { // Create a point struct. Point p; p.x = 1; p.y = 1; Console.WriteLine("The value of first point is " + p.x + " and " + p.y + ".");  // Initialize unmanged memory to hold the struct. IntPtr pnt = Marshal.AllocHGlobal(Marshal.SizeOf(p)); try { // Copy the struct to unmanaged memory. Marshal.StructureToPtr(p, pnt, false); // Create another point. Point anotherP; // Set this Point to the value of the // Point in unmanaged memory. anotherP = (Point)Marshal.PtrToStructure(pnt, typeof(Point)); Console.WriteLine("The value of new point is " + anotherP.x + " and " + anotherP.y + "."); } finally { // Free the unmanaged memory. Marshal.FreeHGlobal(pnt); } } }

## 多线程

### 线程同步

### volatile

> volatile关键字指示一个字段可以由多个同时执行的线程修改。出于性能原因，编译器，运行时系统甚至硬件都可能重新排列对存储器位置的读取和写入。声明为 volatile 的字段将从某些类型的优化中排除。不确保从所有执行线程整体来看时所有易失性写入操作均按执行顺序排序。” volatile并不能用来做线程同步，它的主要作用时为了让多个线程之间能看到被修改过后最新的值。

### 阻塞

> 当线程调用Sleep，Join，EndInvoke，线程就处于阻塞状态（Sleep使调用线程阻塞，Join、EndInvoke使另外一个线程阻塞），会立即从cpu退出。（阻塞状态的线程不消耗cpu）

### 临界值

> 加锁（lock）使用引用类型，值类型加锁时会装箱，产生一个新的对象。使用private修饰，使用public时易产生死锁。（使用lock（this），lock(typeof(实例))时，该类也应该是private）。string不能作为锁对象。不能在lock中使用await关键字 Monitors lock本质上就是 Monitors.Enter/Monitors.Exit();

### 锁

> 自旋锁 SpinLock因为自旋锁本质上不会让线程休眠，而是一直循环尝试对资源访问，直到可用。所以自旋锁线程被阻塞时，不进行线程上下文切换，而是空转等待。对于多核CPU而言，减少了切换线程上下文的开销，从而提高了性能。

### 互斥锁（Mutex）

Mutex可以实现进程同步，互斥锁的带有三个参数的构造函数

> initiallyOwned: 如果initiallyOwned为true，互斥锁的初始状态就是被所实例化的线程所获取，否则实例化的线程处于未获取状态。name:该互斥锁的名字，在操作系统中只有一个命名为name的互斥锁mutex，如果一个线程得到这个name的互斥锁，其他线程就无法得到这个互斥锁了，必须等待那个线程对这个线程释放。createNew:如果指定名称的互斥体已经存在就返回false，否则返回true。 Thread test = new Thread(MutexMethod);

### 信号量 (Semaphore)

> Semaphore,Semaphore,是负责协调各个线程, 以保证它们能够正确、合理的使用公共资源。也是操作系统中用于控制进程同步互斥的量。Semaphore常用的方法有两个WaitOne()和Release()，Release()的作用是退出信号量并返回前一个计数，而WaitOne()则是阻止当前线程，直到当前线程的WaitHandle 收到信号。这里我举一个例子让大家更容易理解：当我们这样实例化Semaphore时候

### 信号和句柄（EventWaitHandle,ManualResetEvent，AutoResetEvent）

> CountdownEvent,CountdownEvent的使用和ManualEvent正好相反，是多个线程共同唤醒一个线程。 EventWaitHandle的构造方法允许创建一个命名的EventWaitHandle，来实现跨进程的信号量操作。名字只是一个简单的字符串，只要保证不会跟其它进程的锁冲突即可。

### Interlocked

> 提供对数的原子操作

### ReaderWriterLock

> 该锁确保在对资源获取赋值或更新时，只有它自己可以访问这些资源，其他线程都不可以访问。即排它锁。 readerwritelock.AcquireWriterLock(t); readerwritelock.ReleaseWriterLock();

### Task,Task\<T>

public class Task : IAsyncResult, IDisposable&#x20;

> 属性&#x20;

AsyncState获取在创建 Task 时提供的状态对象，如果未提供，则为 null。 CompletedTask获取一个已成功完成的任务。 CreationOptions 获取用于创建此任务的 TaskCreationOptions。 CurrentId返回当前正在执行 Task 的 ID。 Exception获取导致 AggregateException 提前结束的 Task。 如果 Task 成功完成或尚未引发任何异常，这将返回 null。 Factory提供对用于创建和配置 Task 和 Task\<TResult实例的工厂方法的访问。 Id获取此 Task 实例的 ID。 IsCanceled获取此 Task 实例是否由于被取消的原因而已完成执行。 IsCompleted获取一个值，它表示是否已完成任务。 IsCompletedSuccessfully 了解任务是否运行到完成。 IsFaulted 获取 Task 是否由于未经处理异常的原因而完成。 Status获取此任务的 TaskStatus。

> 方法

ConfigureAwait(Boolean) 配置用于等待此 Task的 awaiter。 ContinueWith创建一个在目标 Task 完成时接收调用方提供的状态信息并执行的延续任务。 Delay创建一个在指定的毫秒数后完成的任务。 Dispose释放 Task 类的当前实例所使用的所有资源。 FromCanceled\<TResult>(CancellationToken)创建 Task\<TResult>，它因指定的取消标记进行的取消操作而完成。 FromException(Exception)创建 Task，它在完成后出现指定的异常。 FromException\<TResult>(Exception)创建 Task\<TResult>，它在完成后出现指定的异常。 FromResult\<TResult>(TResult)创建指定结果的、成功完成的 Task\<TResult>。 GetAwaiter()获取用于等待此 Task 的 awaiter。 Run将在线程池上运行的指定工作排队，并返回代表该工作的 Task 对象。 可使用取消标记来取消工作（如果尚未启动）。 RunSynchronously对当前的 Task 同步运行 TaskScheduler。 Start启动 Task，并将它安排到当前的 TaskScheduler 中执行。 Wait等待 Task 完成执行过程。 如果在任务完成之前取消标记已取消，等待将终止。 WaitAll等待提供的所有 Task 对象完成执行过程。 WaitAny等待提供的任一 Task 对象完成执行过程。 WaitAsync获取一个 ， Task 它将在完成此操作 Task 或指定的 CancellationToken 请求取消时完成。 WhenAll创建一个任务，该任务将在可枚举集合中的所有 Task 对象都已完成时完成。 WhenAny任何提供的任务已完成时，创建将完成的任务。 Yield()创建异步产生当前上下文的等待任务。

    Task.Run(() =>
        {
            Thread.Sleep(3000);
            Console.WriteLine("oh my god");
            source.Token.ThrowIfCancellationRequested();
        }, source.Token);

### ThreadPool

> QueueUserWorkItem(WaitCallback)	 将方法排入队列以便执行。 此方法在有线程池线程变得可用时执行。 WaitCallback的原型是public delegate void WaitCallback(object? state); QueueUserWorkItem(WaitCallback, Object)	 将方法排入队列以便执行，并指定包含该方法所用数据的对象。 此方法在有线程池线程变得可用时执行。 QueueUserWorkItem\<TState>(Action\<TState>, TState, Boolean) 将 Action\<T> 委托指定的方法排入队列以便执行，并提供该方法使用的数据。 此方法在有线程池线程变得可用时执行。 属性 CompletedWorkItemCount 获取迄今为止已处理的工作项数。 PendingWorkItemCount 获取当前已加入处理队列的工作项数。 ThreadCount 获取当前存在的线程池线程数。 方法 BindHandle(IntPtr) 已过时。 将操作系统句柄绑定到 ThreadPool。 BindHandle(SafeHandle) 将操作系统句柄绑定到 ThreadPool。 GetAvailableThreads(Int32, Int32) 检索由 GetMaxThreads(Int32, Int32) 方法返回的最大线程池线程数和当前活动线程数之间的差值。 GetMaxThreads(Int32, Int32) 检索可以同时处于活动状态的线程池请求的数目。 所有大于此数目的请求将保持排队状态，直到线程池线程变为可用。 GetMinThreads(Int32, Int32) 发出新的请求时，在切换到管理线程创建和销毁的算法之前检索线程池按需创建的线程的最小数量。 QueueUserWorkItem(WaitCallback) 将方法排入队列以便执行。 此方法在有线程池线程变得可用时执行。 QueueUserWorkItem(WaitCallback, Object) 将方法排入队列以便执行，并指定包含该方法所用数据的对象。 此方法在有线程池线程变得可用时执行。 QueueUserWorkItem\<TState>(Action\<TState>, TState, Boolean) 将 Action\<T> 委托指定的方法排入队列以便执行，并提供该方法使用的数据。 此方法在有线程池线程变得可用时执行。 RegisterWaitForSingleObject(WaitHandle, WaitOrTimerCallback, Object, Int32, Boolean) 注册一个等待 WaitHandle 的委托，并指定一个 32 位有符号整数来表示超时值（以毫秒为单位）。 RegisterWaitForSingleObject(WaitHandle, WaitOrTimerCallback, Object, Int64, Boolean) 注册一个等待 WaitHandle 的委托，并指定一个 64 位有符号整数来表示超时值（以毫秒为单位）。 RegisterWaitForSingleObject(WaitHandle, WaitOrTimerCallback, Object, TimeSpan, Boolean) 注册一个等待 WaitHandle 的委托，并指定一个 TimeSpan 值来表示超时时间。 RegisterWaitForSingleObject(WaitHandle, WaitOrTimerCallback, Object, UInt32, Boolean) 指定表示超时（以毫秒为单位）的 32 位无符号整数，注册一个委托等待 WaitHandle。 SetMaxThreads(Int32, Int32) 设置可以同时处于活动状态的线程池的请求数目。 所有大于此数目的请求将保持排队状态，直到线程池线程变为可用。 SetMinThreads(Int32, Int32) 发出新的请求时，在切换到管理线程创建和销毁的算法之前设置线程池按需创建的线程的最小数量。 UnsafeQueueNativeOverlapped(NativeOverlapped\*) 将重叠的 I/O 操作排队以便执行。 UnsafeQueueUserWorkItem(IThreadPoolWorkItem, Boolean) 将指定的工作项对象排队到线程池。 UnsafeQueueUserWorkItem(WaitCallback, Object) 将指定的委托排队到线程池，但不会将调用堆栈传播到辅助线程。 UnsafeQueueUserWorkItem\<TState>(Action\<TState>, TState, Boolean) 将 Action\<T> 委托指定的方法排入队列以便执行，并指定包含该方法使用的数据的对象。 此方法在有线程池线程变得可用时执行。 UnsafeRegisterWaitForSingleObject(WaitHandle, WaitOrTimerCallback, Object, Int32, Boolean) 注册一个等待 WaitHandle 的委托，并使用一个 32 位带符号整数来表示超时时间（以毫秒为单位）。 此方法不将调用堆栈传播到辅助线程。 UnsafeRegisterWaitForSingleObject(WaitHandle, WaitOrTimerCallback, Object, Int64, Boolean) 注册一个等待 WaitHandle 的委托，并指定一个 64 位有符号整数来表示超时值（以毫秒为单位）。 此方法不将调用堆栈传播到辅助线程。 UnsafeRegisterWaitForSingleObject(WaitHandle, WaitOrTimerCallback, Object, TimeSpan, Boolean) 注册一个等待 WaitHandle 的委托，并指定一个 TimeSpan 值来表示超时时间。此方法不将调用堆栈传播到辅助线程。 UnsafeRegisterWaitForSingleObject(WaitHandle, WaitOrTimerCallback, Object, UInt32, Boolean) 指定表示超时（以毫秒为单位）的 32 位无符号整数，注册一个委托等待 WaitHandle。 此方法不将调用堆栈传播到辅助 ThreadPool.QueueUserWorkItem(o => { }, source);

### CancellationTokenSource  取消线程任务

> CancellationTokenSource cancellationTokenSource = new CancellationTokenSource(3000); 实现定时3000ms取消任务。 关联取消,多个任务中的一个取消则其他也取消

    //声明几个CancellationTokenSource
    CancellationTokenSource tokenSource = new CancellationTokenSource();
    CancellationTokenSource tokenSource2 = new CancellationTokenSource();
    CancellationTokenSource tokenSource3 = new CancellationTokenSource();
    tokenSource2.Token.Register(() => System.Console.WriteLine("tokenSource2被取消了"));
    //创建一个关联的CancellationTokenSource
    CancellationTokenSource tokenSourceNew = CancellationTokenSource.CreateLinkedTokenSource(tokenSource.Token, tokenSource2.Token, tokenSource3.Token);
    tokenSourceNew.Token.Register(() => System.Console.WriteLine("tokenSourceNew被取消了"));
    //取消tokenSource2
    tokenSource2.Cancel();



    static CancellationTokenSource source = new CancellationTokenSource();
    static void Main(string[] args)
    {
        Task.Run(() =>
        {
            Thread.Sleep(3000);
            Console.WriteLine("oh my god");
            source.Token.ThrowIfCancellationRequested();
        }, source.Token);
        Thread.Sleep(1000);
        Console.WriteLine("取消任务");
        source.Cancel();
        Console.ReadKey();
    }

> TaskPool 也和其他任务也可以采用类似方法，但是涉及判断，其实并不智能，并且设计打断流水。 ThreadPool.QueueUserWorkItem(o => { for (int i = 0; i < 10000; i++) { if (!source.Token.IsCancellationRequested) { Thread.Sleep(100); Console.WriteLine(i); } else { Console.WriteLine("要求退出"); break; } } }, source);

## 定制特性

## 异常和状态管理

## CLR寄宿和AppDomain

## 程序集加载和反射

> （1）Assembly：定义和加载程序集，加载在程序集中的所有模块以及从此程序集中查找类型并创建该类型的实例。 创建带参数对象 Assembly assembly = Assembly.Load("TestClass");//加载程序集 Type type = assembly.GetType("TestClass.Person");//获取类名称（要带上命名空间） object o = Activator.CreateInstance(type, new object\[] {"a",666 });//创建Person实体,有参构造 Person person = o as Person; return person; （2）Module：获取包含模块的程序集以及模块中的类等，还可以获取在模块上定义的所有全局方法或其他特定的非全局方法。 （3）ConstructorInfo：获取构造函数的名称、参数、访问修饰符（如pulic 或private）和实现详细信息（如abstract或virtual）等。 （4）MethodInfo(GetMethod/GetMethods)：获取方法的名称、返回类型、参数、访问修饰符（如pulic 或private）和实现详细信息（如abstract或virtual）等。 调用方法 Assembly assembly= Assembly.Load("TestClass"); Type type = assembly.GetType("TestClass.Person"); object o = Activator.CreateInstance(type); MethodInfo methodInfo = type.GetMethod("getName1"); string result=methodInfo.Invoke(o, new object\[] { "这是传入参数" }).ToString(); return result; （5）FiedInfo(GetField/GetFields)：获取字段的名称、访问修饰符（如public或private）和实现详细信息（如static）等，并获取或设置字段值。 （6）EventInfo(GetEvent/GetEvents)：获取事件的名称、事件处理程序数据类型、自定义属性、声明类型和反射类型等，添加或移除事件处理程序。 （7）PropertyInfo(GetProperty/GetProperties)：获取属性的名称、数据类型、声明类型、反射类型和只读或可写状态等，获取或设置属性值。 （8）ParameterInfo：获取参数的名称、数据类型、是输入参数还是输出参数，以及参数在方法签名中的位置等。 （9）MemberInfo(GetMember/GetMembers):获取字段、事件、属性等各种信息 对于 Web 性能优化，您有哪些了解和经验吗？ 前端优化 （1）减少 HTTP 请求的次数。 （2）启用浏览器缓存。 （3）css文件放 在里面，js文件尽量放在页面的底部。因为请求js文件是很花费时间，如果放在里面，就会导致页面的 DOM树呈现需要等待js文件加载完成。这也就是为什么很多网站的源码里面看到引用的文件放在最后的原因。 （4）使用压缩的css和js文件。这个不用多说，网络流量小。 （5）如果条件允许，尽量使用CDN的方式引用文件，这样就能减少网络流量。 （6）在写js和css的语法时，尽量避免重复的css，尽量减少js里面循环的次数，诸如此类。 2、后端优化： （1）程序的优化：减少代码的层级结构、避免循环嵌套、避免循环CURD数据库、优化算法等等。 （2）数据库的优化：启用数据库缓存、常用的字段建索引、尽量避免大事务操作、避免select \* 的写法、尽量不用in和not in 这种耗性能的用法等等。 （3）服务器优化：负载均衡、Web服务器和数据库分离、UI和Service分离等等。 MVC理解 MVC，顾名思义，Model、View、Controller。所有的 界面代码放在View里面，所有涉及和界面交互以及URL路由相关的逻辑都在Controller里面，Model提供数据模型。MVC的架构方式会让系 统的可维护性更高，使得每一部分更加专注自己的职责，并且MVC提供了强大的路由机制，方便了页面切换和界面交互。然后可以结合和WebForm的比较， 谈谈MVC如何解决复杂的控件树生成、如何避免了复杂的页面生命周期。 路由： 1、首先我们要理解MVC中路由的作用：url Routing的作用是将浏览器的URL请求映射到特定的MVC控制器动作。 2、当我们访问<http://localhost:8080/Home/Index> 这个地址的时候，请求首先被UrlRoutingModule截获，截获请求后，从Routes中得到与当前请求URL相符合的RouteData对象， 将RouteData对象和当前URL封装成一个RequestContext对象，然后从Requestcontext封装的RouteData中得到 Controller名字，根据Controller的名字，通过反射创建控制器对象，这个时候控制器才真正被激活，最后去执行控制器里面对应的 action。 谈谈你觉得做的不错系统，大概介绍下用到了哪些技术 这是一道非常开放的面试题,是想通过这个问题快速了解面试者的技术水平。此题只要结合你最近项目用到的技术谈谈就好了。 说说你最擅长的技术？并说说你是如何使用的？ 简单谈谈MEF在我们项目里面的使用吧。 在谈MEF之前，我们必须要先谈谈DIP、IOC、DI 依赖倒置原则（DIP）：一种软件架构设计的原则（抽象概念） 控制反转（IoC）：一种反转流、依赖和接口的方式（DIP的具体实现方式）。 依赖注入（DI）：IoC的一种实现方式，用来反转依赖（IoC的具体实现方式）。   IIS的工作原理 1、当客户端发送HTTP Request时，服务端的HTTP.sys（可以理解为IIS的一个监听组件） 拦截到这个请求； 2、HTTP.sys 联系 WAS 向配置存储中心请求配置信息。 3、然后将请求传入IIS的应用程序池。 4、检查请求的后缀，启动aspnet\_isapi.dll这个dll，这个dll是.net framework里面的，也就是说到这一步，请求进入了.net framework的管辖范围。 5、这个时候如果是WebForm，开始执行复杂的页面生命周期（HttpRuntime→ProcessRequest→HttpContext→HttpHandler）；如果是MVC，则启动mvc的路由机制，根据路由规则为URL来指定HttpHandler。 6、httpHandler处理请求后，请求结束，给出Response，客户端处理响应，整个过程结束。 Http协议 1、http协议是浏览器和服务器双方共同遵循的规范，是一种基于TCP/IP应用层协议。 2、http是一种典型的请求/响应协议。客户端发送请求，请求的内容以及参数存放到请求报文里面，服务端收到请求后，做出响应，返回响应的结果放到响应报文里面。通过F12可以查看请求报文和响应报文。 3、http协议是”无状态”的，当客户端向服务端发送一次http请求后，服务端收到请求然后返回给客户端相应的结果，服务器会立即断开连接并释放资源。在实际开发过程中，我们有时需要“保持”这种状态，所以衍生出了Session/Cookie这些技术。 4、http请求的方式主要有get/post。 5、http状态码最好记几个，博主有一次面试就被问到了。200（请求成功）、404（请求的资源不存在）、403（禁止访问）、5xx（服务端错误） 关于代码优化你怎么理解？你会考虑去代码重构吗？ 1、对于代码优化，之前的公司每周会做代码审核，审核的主要作用就是保证代码的正确性和执行效率，比如减少代码的层级结构、避免循环嵌套、避免循环CURD数据库、尽量避免一次取出大量数据放在内存中（容易内存溢出）、优化算法等。 2、对于陈旧代码，可能很多地方有调用，并且开发和维护人员很有可能不是同一个人，所以重构时要格外小心，如果没有十足的把握，不要轻易重构。如果必须要重构，必须做好充分的单元测试和全局测试。 谈谈你的优点和缺点？ 这个问题仁者见仁智者见智。 网站运行慢，如何定位问题？发现问题如何解决？ 浏览器F12→网络→查看http请求数以及每个请求的耗时，找到问题的根源，然后依次解决，解决方案可以参考问题一里面的Web优化方案。 可以使用Fiddler等嗅探工具查看网络请求长度和数据包大小等，然后更具相应数据推断出现问题的点，并进行重点优化。 线程与进程的区别 进程是一个可拥有资源的独立单位 线程是可独立调度和分派的基本单位 ASP.NET 页面之间传递值的几种方式。  使用Querystring 方法：QueryString 也叫查询字符串， 这种方法将要传递的数据附加在网页地址(URL)后面进行传递。如页面A.aspx 跳转到页面B.aspx，可以用Request.Redirect("B.aspx?参数名称=参数值")方法，也可以用超链接：，页面跳转后，在目标页面中可用Ruquest\["参数名称"]来接收参数。使用QuerySting 方法的优点是实现简单， 不使用服务器资源；缺点是传递的值会显示在浏览器的地址栏上，有被篡改的风险，不能传递对象，只有在通过URL 请求页时查询字符串才是可行的。 利用隐藏域：隐藏域不会显示在用户的浏览器中， 一般是在页面中加入一个隐藏控件， 与服务器进行交互时把值赋给隐藏控件并提交给下一页面。隐藏域可以是任何存储在网页中的与网页有关的信息的存储库。使用隐藏域存入数值时用：hidden 控件.value=数值，取出接收数值时用：变量=hidden 控件.value。使用隐藏域的优点是实现简单， 隐藏域是标准的HTML 控件，不需要复杂的编程逻辑。隐藏域在页上存储和读取，不需要任何服务器资源，几乎所有浏览器和客户端设备都支持具有隐藏域的窗体。缺点是存储结构少，仅仅支持简单的数据结构，存储量少，因为它被存储在页面本身，所以无法存储较大的值，而且大的数据量会受到防火墙和代理的阻止。 ViewState：ViewState 是由ASP.NET 页面框架管理的一个隐藏的窗体字段。当ASP.NET 执行某个页面时，该页面上的ViewState 值和所有控件将被收集并格式化成一个编码字符串， 然后被分配给隐藏窗体字段的值属性。使用ViewState 传递数据时可用：ViewState \[" 变量名"]=数值，在取出数据时用：变量=ViewState\["变量名"]。使用ViewState 的优点是：在对同一页的多个请求间自动保留值，不用服务器端资源，实现简单，视图状态中的值经过哈希计算和压缩，并且针对Unicode 实现进行编码，其安全性要高于使用隐藏域；缺点是因为ViewState 存储在页面本身，因此如果存储较大的值，用户显示页和发送页时的速度可能会减慢。虽然视图状态以哈希格式存储数据，但它仍可以被篡改。 在MVC中则有ViewData,ViewBag,TempData。 使用Cookie：Cookie 可以在页面之间传递少量信息， 可以存储在客户端的文本文件中，也可存储在客户端的内存中。Cookie 方法适用于存储少量页面中经常改动的信息， 如为登陆过的网站保存登陆用户名，为用户输入提供方便，还有在一些用户自定义项目上保存用户的个性化设置。使用Cookie传递数据时可用：Response.Cookies\["键名"]=键值；取出数据用：变量名=Request.Cookies\["键名"]。使用Cookie 优点是：Cookie 存储在客户端， 不使用服务器资源，实现简单，可配置到期时间。缺点是：可以存储的数据量比较少，由于Cookie 并不被所有的浏览器支持，而且还可能被用户禁止或删除，所以不能用于保存关键数据。另外，Cookie 保存的形式是简单的明文文本，在它里面不宜保存敏感的、未加密的数据。 使用Application 变量：使用Application 变量也可以实现页面间的传值，Application变量是全局性的，所有用户共享一个Application 变量，一旦定义，它将影响到程序的所有部分。如果想在整个应用程序范围使用某个变量值Application 对象将是最佳的选择。存入数据时， 把值添加到Application 变量里：Application\["变量名"]=数值；取出数据用：变量=Application\["变量名"]；在不需要使用该Application 时，要显式清除它：Application\["量名"]=null。Application 优点：易于使用，全局范围。可供应用程序中的所有页来访问。缺点：若保存数据的服务器端进程被损坏（如因服务器崩溃、升级或关闭而损坏），那么数据就会丢失，所以利用Application 一定要有保底的策略；占用服务器端的内存，这可能会影响服务器的性能以及应用程序的可伸缩性。 使用Session 变量 ：Session 对象可以用来存储需要维护的指定对话的信息，不同的客户端生成不同的Session 对象。Session 用于存储特定于单独会话的短期信息。Session 的使用方法和格式与Application 相同。 优点：易于实现，并且提供较高的安全性和持久性，可以应对IIS 重启和辅助进程重启，可在多进程中使用。缺点是耗用服务器端的内存。所以不要存储大量的信息。Session 最常见的用途是与Cookie 一起向Web 应用程序提供用户标识功能，Session也可用于不支持Cookie 的浏览器。但是，使用无Cookie 的Session 需要将会话标识符放置在查询字符串中，同样会遇到本文在查询字符串一节中陈述的安全问题。 使用类的静态属性：这种方法是利用类的静态属性实现两个页面间的值传。定义一个包含静态属性的类；将要传送的值赋给静态属性；目标页面中可以通过静态属性获得源页面中要传的值。优点是可以方便传送多个数据，缺点是需要额外编程，增加程序设计的工作量，占用服务器内存。 使用Server.Transfer :通过Server.Transfer 方法把执行流程从当前的ASPX 文件转到同一服务器上的另一个ASPX 页面的同时,可保留表单数据或查询字符串，做法是把该方法的第二个参数设置成True，在第一个页面用Server.Transfer("目标页面名.aspx"，true)；目标页面取出数据用：Ruquest.Form\["控件名称"]或Ruquest.QueryString\["控件名称"]。Asp.net2.0 中还可以这样来用,代码如下：PreviousPage pg1；pg1=(PreviousPage）Context.Handler；Response.Write(pg1.Name)；说明： 此段代码用在目标页面中取出传递的值，Previous- Page 是原页面的类名，Name 是在原页面定义的属性， 需要传递 的数据存入到此属性中。使用这种方法， 需要写一些代码以创建一些属性以便可以 在另一个页面访问它， 可以在另一个页面以对象属性的方式来 存取数值，这个方法在页面间值传递中是特别有用的，这种方法 不但简洁，同时又是面向对象的。 Cache\:Cache 具有强大的数据操作功能， 以键值对集合的形式存 储数据，可以通过指定关键字来插入和检索数据项。它的基于依 赖性的终止功能， 使它能够精确控制如何并及时更新和消除缓 存中的数据。它可以内部进行锁定管理，不需要象Application 对象那样使用Lock()和Unlock()方法进行串行化管理。缺点是使用 方法较复杂，使用不当反而降低性能.  不同页面跳转情况下可采用的传值方法 2.1 情况一：源页面可以跳转到目标页面，源页面传递数据给目标页面:使用查询字符串， 将少量信息从一页传输到另一页以及不 存在安全性问题时，是一个简单常用的方法；使用Server.Transfer方法，可传递表单数据或查询字符串到另一个页面，还可以 保存初始页的HttpContext， 当目标页和源页面在同一个服务器 时，可以用此方法。 2.2 情况二：页面传递数值给自身页面即在对同一页的多个请求间保留值， ViewState 属性可提供具有基本安全性的功能。也可用隐藏域，存储少量回发到自身或另一页的页信息时使用，不考虑安全性问题时使用。 2.3 情况三：源页面传递数值给目标页面，而源页面不能直接连接到目标页面。有多个方法，具体用哪个要看具体情况。Application： 存储由多个用户使用且更改不频繁的全局信息，此时安全性不成为问题。不要存储大量的信息。Session：存储特定于单独会话的短期信息，并且需要较高的安全性。不要在会话状态中存储大量的信息。需要注意，将为应用程序中每一会话的生存期创建并维护会话状态对象。在支持许多用户的应用程序中， 这可能会占用大量服务器资源并影响可缩放性。Cookie： 当您需要在客户端存储少量信息以及不存在安全性问题时使用。类的静态属性，方便传送多个数据。Cache ：对象用于单个用户、一组用户或所有的用户。可以为多个请求长时间、高效率的保存数据。上述几个方法， 不仅用于情况三， 前面两种情况都可以使用，只是没有必要时尽量少用，否则会造成资源浪费或增加程序的复杂性。
>
> 反射 [System.Reflection](https://learn.microsoft.com/zh-cn/dotnet/api/system.reflection) 命名空间中的类与 [System.Type](https://learn.microsoft.com/zh-cn/dotnet/api/system.type) 使你能够获取有关加载的[程序集](https://learn.microsoft.com/zh-cn/dotnet/standard/assembly/)和其中定义的类型的信息，如[类](https://learn.microsoft.com/zh-cn/dotnet/standard/base-types/common-type-system#classes)、[接口](https://learn.microsoft.com/zh-cn/dotnet/standard/base-types/common-type-system#interfaces)和值类型（即[结构](https://learn.microsoft.com/zh-cn/dotnet/standard/base-types/common-type-system#structures)和[枚举](https://learn.microsoft.com/zh-cn/dotnet/standard/base-types/common-type-system#enumerations)）。 可以使用反射在运行时创建、调用和访问类型实例。 [公共语言运行时](https://learn.microsoft.com/zh-cn/dotnet/standard/clr)加载程序管理[应用程序域](https://learn.microsoft.com/zh-cn/dotnet/framework/app-domains/application-domains)，应用程序域构成具有相同应用程序范围的对象周围定义的边界。 此管理包括将每个程序集加载到相应的应用程序域中和控制每个程序集内的类型层次结构的内存布局。 [程序集](https://learn.microsoft.com/zh-cn/dotnet/framework/app-domains/)包含模块、模块包含类型，而类型包含成员。 反射提供封装程序集、模块和类型的对象。 可以使用反射动态地创建类型的实例，将类型绑定到现有对象，或从现有对象中获取类型。 然后，可以调用类型的方法或访问其字段和属性。 反射的典型用法如下所示： [Assembly](https://learn.microsoft.com/zh-cn/dotnet/api/system.reflection.assembly) 来定义和加载程序集，加载程序集清单中列出的模块，以及在此程序集中定位一个类型并创建一个它的实例。 [Module](https://learn.microsoft.com/zh-cn/dotnet/api/system.reflection.module) 发现信息，如包含模块的程序集和模块中的类。 还可以获取所有全局方法或模块上定义的其它特定的非全局方法。 [ConstructorInfo](https://learn.microsoft.com/zh-cn/dotnet/api/system.reflection.constructorinfo) 发现信息，如名称、参数、访问修饰符（如 public 或 private）和构造函数的实现详细信息（如 abstract 或 virtual）。 使用 [Type](https://learn.microsoft.com/zh-cn/dotnet/api/system.type) 的 [GetConstructors](https://learn.microsoft.com/zh-cn/dotnet/api/system.type.getconstructors) 或 [GetConstructor](https://learn.microsoft.com/zh-cn/dotnet/api/system.type.getconstructor) 方法来调用特定构造函数。 [MethodInfo](https://learn.microsoft.com/zh-cn/dotnet/api/system.reflection.methodinfo) 发现信息，如名称、返回类型、参数、访问修饰符（如 public 或 private）和方法的实现详细信息（如 abstract 或 virtual）。 使用 [Type](https://learn.microsoft.com/zh-cn/dotnet/api/system.type) 的 [GetMethods](https://learn.microsoft.com/zh-cn/dotnet/api/system.type.getmethods) 或 [GetMethod](https://learn.microsoft.com/zh-cn/dotnet/api/system.type.getmethod) 方法来调用特定方法。 [FieldInfo](https://learn.microsoft.com/zh-cn/dotnet/api/system.reflection.fieldinfo) 发现信息，如名称、访问修饰符（如 public 或 private）和一个字段的实现详细信息 （如 static）；并获取或设置字段值。 [EventInfo](https://learn.microsoft.com/zh-cn/dotnet/api/system.reflection.eventinfo) 发现信息（如名称、事件处理程序的数据类型、自定义特性、声明类型以及事件的反射的类型），并添加或删除事件处理程序。 [PropertyInfo](https://learn.microsoft.com/zh-cn/dotnet/api/system.reflection.propertyinfo) 发现信息（如名称、数据类型、声明类型，反射的类型和属性的只读或可写状态），并获取或设置属性值。 [ParameterInfo](https://learn.microsoft.com/zh-cn/dotnet/api/system.reflection.parameterinfo) 发现信息，如参数的名称、数据类型、参数是输入参数还是输出参数以及参数在方法签名中的位置。 [CustomAttributeData](https://learn.microsoft.com/zh-cn/dotnet/api/system.reflection.customattributedata) 在于应用程序域的仅反射上下文中工作时发现有关自定义特性的信息。 [CustomAttributeData](https://learn.microsoft.com/zh-cn/dotnet/api/system.reflection.customattributedata) 使你能够检查特性，而无需创建它们的实例。 [System.Reflection.Emit](https://learn.microsoft.com/zh-cn/dotnet/api/system.reflection.emit) 命名空间的类提供一种专用形式的反射，使你能够在运行时生成类型。 泛型 泛型在 .NET Framework 2.0 中首次引入，它本质上是一个“代码模板”，可让开发者定义[类型安全](https://learn.microsoft.com/zh-cn/previous-versions/dotnet/netframework-4.0/hbzz1a9a\(v=vs.100\))数据结构，无需处理实际数据类型。 例如，[List](https://learn.microsoft.com/zh-cn/dotnet/api/system.collections.generic.list-1) 是一个可以声明的[泛型集合](https://learn.microsoft.com/zh-cn/dotnet/api/system.collections.generic)，可与 List、List 或 List 等任何类型结合使用。 ArrayList 元素属于 [Object](https://learn.microsoft.com/zh-cn/dotnet/api/system.object) 类型。 添加到集合的任何元素都会以静默方式转换为 Object。 从列表读取元素时，会发生相同的情况。 此过程称为[装箱和取消装箱](https://learn.microsoft.com/zh-cn/dotnet/csharp/programming-guide/types/boxing-and-unboxing)，它会影响性能。 但除了性能之外，在编译时无法确定列表中的数据的类型，这会形成一些脆弱的代码。 泛型解决了此问题，它可以定义每个列表实例将要包含的数据类型。 例如，只能将整数添加到 List，只能将人员添加到 List。泛型还可以在运行时使用。 运行时知道你要使用的数据结构类型，并可以更高效地将数据结构存储在内存中。 ADO.NET 对ADO改进：ADO.NET不依赖于ole db提供程序,而是使用.net托管提供的程序,不使用com,可以断开connection而保留当前数据集可用，强类型转换，xml支持。 五大对象：Connection连接对象，Command执行命令和存储过程，DataReader向前只读的数据流，DataAdapter适配器，支持增删查询，DataSet数据结果存储在内存中离线访问。 override与重载 重载是方法的名称相同。参数或参数类型不同，进行多次重载以适应不同的需要。 Override是子类对基类中函数的重写。为了适应需要。 29.装箱和拆箱的概念和原理 值类型：继承自struct,引用类型继承自Object 引用类型的变量存储对其数据（对象）的引用，而值类型的变量直接包含其数据。 对于引用类型，两种变量可引用同一对象；因此，对一个变量执行的操作会影响另一个变量所引用的对象。 对于值类型，每个变量都具有其自己的数据副本，对一个变量执行的操作不会影响另一个变量（in、ref 和 out 参数变量除外）。 装箱是将值类型转化为引用类型的过程；拆箱是将引用类型转化为值类型的过程。ArrayList 元素属于 [Object](https://learn.microsoft.com/zh-cn/dotnet/api/system.object) 类型。 添加到集合的任何元素都会以静默方式转换为 Object。 从列表读取元素时，会发生相同的情况。 此过程称为[装箱和取消装箱](https://learn.microsoft.com/zh-cn/dotnet/csharp/programming-guide/types/boxing-and-unboxing)，它会影响性能。 多线程&异步编程 Thread: Threadpool Task: 异步编程：async 和 await 线程同步： volatile 阻塞 临界值 锁 互斥锁（Mutex） 信号量 (Semaphore) 信号和句柄（EventWaitHandle,ManualResetEvent，AutoResetEvent） Interlocked ReaderWriterLock 5.用.net做B/S结构的系统，您是用几层结构来开发，每一层之间的关系以及为什么要这样分层？ 答：一般为3层：数据访问层，业务层，表示层。 数据访问层对数据库进行增删查改。 业务层一般分为二层，业务表观层实现与表示层的沟通，业务规则层实现用户密码的安全等。 表示层为了与用户交互例如用户添加表单。 优点： 分工明确，条理清晰，易于调试，而且具有可扩展性。 缺点： 增加成本。 6.能用foreach遍历访问的对象需要实现 \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_接口或声明\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_方法的类型。 答：IEnumerable 、 GetEnumerator。 10.session喜欢丢值且占内存，Cookis不安全，请问用什么办法代替这两种原始的方法 答：redis 或者 memcache。当然，微软也提供了解决方案。iis中由于有进程回收机制，系统繁忙的话Session会丢失，可以用Sate server或SQL Server数据库的方式。 14.WebApi概述 Web API是在.NET Framework之上构建的Web的API的框架，Web API是一个编程接口，用于操作可通过标准HTTP方法和标头访问的系统，Web API需要基于.NET 3.5或更高版本才可以进行开发 15.什么是WebService webservice是一种跨平台，跨语言的规范，用于不同平台，不同语言开发的应用之间的交互，是基于网络的、分布式的模块化组件，它执行特定的任务，遵守具体的技术规范。 21 .NET的错误处理机制是什么？ .net错误处理机制采用try->catch->finally结构，发生错误时，层层上抛，直到找到匹配的Catch为止。 26.简要谈一下您对微软.NET架构下remoting和webservice两项技术的理解以及实际中的应用。 WS主要是可利用HTTP，穿透防火墙。而Remoting可以利用TCP/IP，二进制传送提高效率。 remoting是.net中用来跨越machine,process, appdomain进行方法调用的技术,对于三成结构的程序，就可以使用remoting技术来构建．它是分布应用的基础技术.相当于以前的DCOM。 Web Service是一种构建应用程序的普通模型，并能在所有支持internet网通讯的操作系统上实施。Web Service令基于组件的开发和web的结合达到最佳，基于组件的对象模型。 30.Session有什么重大BUG，微软提出了什么方法加以解决？ 是iis中由于有进程回收机制，系统繁忙的话Session会丢失，可以用Sate server或SQL Server数据库的方式存储Session不过这种方式比较慢，而且无法捕获Session的END事件。

## 运行时序列化

## 与WinRT组件互操作

## I/O的异步操作

## GC垃圾回收

.NET 的垃圾回收器管理应用程序的内存分配和释放。 每当有对象新建时，公共语言运行时都会从托管堆为对象分配内存。 只要托管堆中有地址空间，运行时就会继续为新对象分配空间。 不过，内存并不是无限的。 垃圾回收器最终必须执行垃圾回收来释放一些内存。 垃圾回收器的优化引擎会根据所执行的分配来确定执行回收的最佳时机。 执行回收时，垃圾回收器会在托管堆中检查应用程序不再使用的对象，然后执行必要的操作来回收其内存。 CLR的内存管理机制: CLR的GC使用的是引用跟踪算法（不是引用计数！），每次GC开始时会从一个根开始沿着对象引用的链路去查找链路上所有对象的引用，找到该对象的引用，则将该对象的内存标志字段设为1。遍历结束，会将所有标记字段为0的对象清除，并将幸存对象压缩，清除内存碎片化。 垃圾回收器是分代回收器。 它包含三代：第 0 代、第 1 代和第 2 代。 包含 3 代的原因是，在优化良好的应用中，大部分对象都在第 0 代就清除了。 例如，在服务器应用中，与每个请求相关的分配应在请求完成后清除。 仍存在的分配请求将转到第 1 代，并在那里进行清除。 从本质上讲，第 1 代是新对象区域与生存期较长的对象区域之间的缓冲区。 用户代码只能在第 0 代（小型对象）或 LOH（大型对象）中分配。 只有 GC 可以在第 1 代（通过提升第 0 代回收未处理的对象）和第 2 代（通过提升第 1 代回收未处理的对象）中“分配”对象。 触发垃圾回收后，GC 将寻找存在的对象并将它们压缩。 但是由于压缩费用很高，GC 会扫过 LOH，列出没有被清除的对象列表以供以后重新使用，从而满足大型对象的分配请求。 相邻的被清除对象将组成一个自由对象。 新分配的对象构成新一代对象，并隐式地成为第 0 代集合。 但是，如果它们是大型对象(对象的大小大于或等于 85,000 字节)，它们将延续到大型对象堆 (LOH)，这有时称为第 3 代。 第 3 代是在第 2 代中逻辑收集的物理生成。 大型对象属于第 2 代，因为只有在第 2 代回收期间才能回收它们。 回收一代时，同时也会回收它前面的所有代。 例如，执行第 1 代 GC 时，将同时回收第 1 代和第 0 代。 执行第 2 代 GC 时，将回收整个堆。 因此，第 2 代 GC 还可称为“完整 GC”。 本文引用第 2 代 GC 而不是完整 GC，但这两个术语是可以互换的。

### 何时收集大型对象？

通常情况下，出现以下三种情形中的任一情况，都会执行 GC：

* 分配超出第 0 代或大型对象阈值。 阈值是某代的属性。 垃圾回收器在其中分配对象时，会为代设置阈值。 超出阈值后，会在该代上触发 GC。 因此，分配小型或大型对象时，需要分别使用第 0 代和 LOH 的阈值。 当垃圾回收器分配到第 1 代和第 2 代中时，将使用它们的阈值。 运行此程序时，会动态调整这些阈值。 这是典型情况，大部分 GC 执行都因为托管堆上的分配。
* 调用 [GC.Collect](https://learn.microsoft.com/zh-cn/dotnet/api/system.gc.collect) 方法。 如果调用无参数 [GC.Collect()](https://learn.microsoft.com/zh-cn/dotnet/api/system.gc.collect#system-gc-collect) 方法，或另一个重载作为参数传递到 [GC.MaxGeneration](https://learn.microsoft.com/zh-cn/dotnet/api/system.gc.maxgeneration#system-gc-maxgeneration)，将会一起收集 LOH 和剩余的托管堆。
* 系统处于内存不足的状况。 要请求垃圾收集，可以调用下面的方法之一：System.GC // Perform a collection of generation 0 only.GC.Collect(0); 　　另外，可以触发GC的几种情况： 　　（1）主动调用GC.Clloect()方法，并不推荐这种主动调用的方式。 　　（2）系统报告低内存。 　　（3）CLR卸载AppDomain 　　（4）CLR正在关闭，应用程序退出。

# .NetCore

.NET Core是Microsoft最新的通用开发平台。它可以在不同的平台上工作，并且已经被重新设计，使.NET变得快速，灵活和现代。这是微软的主要贡献之一。 开发人员现在可以使用.NET构建Android，iOS，Linux，Mac和Windows应用程序，全部使用开放源代码。 在本教程中，我们将介绍.NET Core和一些新的创新，包括.NET Framework更新，.NET标准和通用Windows平台更新等。 .NET Core的特性 以下是.NET Core的主要特性 - 1. 开源

* .NET Core是一个开源实现，使用MIT和Apache 2许可证发布。
* .NET Core是一个.NET基础项目，可在GitHub上找到。
* 作为一个开放源代码项目，它促进了一个更加透明的开发过程，并促进一个积极和参与社区。 2. 跨平台
* 在.NET Core中实现的应用程序可以运行，其代码可以重复使用，而不需要管平台目标是什么。
* 它目前支持三种主要的操作系统(OS)：
    * Windows
    * Linux
    * MacOS
* 受支持的操作系统(OS)，CPU和应用程序方案将随着时间的推移而增长，由微软，其他公司和个人提供。 3. 灵活的部署
* .NET Core应用程序有两种类型的部署 -
    * 依赖于框架的部署
    * 自包含的部署
* 在依赖于框架的部署中，应用程序依赖于安装了应用程序和第三方依赖项的.NET Core的系统范围版本。
* 通过自包含的部署，用于构建应用程序的.NET Core版本也与应用程序和第三方依赖项一起部署，并且可以与其他版本并行运行。 4. 命令行工具
* 所有的产品方案都可以在命令行中执行。 5. 兼容
* .NET Core通过.NET标准库与.NET Framework，Xamarin和Mono兼容 6. 模块化
* .NET Core通过NuGet以较小的组装包发布。
* .NET Framework是一个包含大多数核心功能的大型程序集。
* .NET Core可作为更小的以功能为中心的软件包提供。
* 这种模块化方法使开发人员能够通过在应用程序中包含他们需要的那些NuGet包来优化他们的应用程序。
* 较小的应用程序表面积的好处包括更紧密的安全性，更少的服务，更高的性能以及降低付费使用模式的成本。 7. .NET Core平台 .NET核心平台包含以下主要部分 -
* .NET运行时  - 它提供了一个类型系统，程序集加载，垃圾回收器，本地互操作和其他基本服务。
* 基础库  - 一组框架库，提供原始数据类型，应用程序组合类型和基本工具。
* SDK和编译器  - 一套SDK工具和语言编译器，支持.NET Core SDK中的基本开发人员体验。
* .NET应用程序主机  - 用于启动.NET Core应用程序。 它选择运行时间并承载运行时间，提供程序集加载策略并启动应用程序。同样的主机也用于以相同的方式启动SDK工具。

# &#x20;.NetCore核心

Net Core 重要的技术点 1、中间件概念 Asp.Net Core作为控制台应用程序启动，在Program的Main方法是入口，通过调用CreateWebHostBuilder或者（CreateDefaultBuilder）创建WebHost的，WebHost会利用WebHostBuilder提供的服务器和中间件构建一个请求处理管道；这就是ASP.NET Core框架的核心（一个服务器和若干中间件构成的管道）。 // 向应用程序的请求管道中添加一个Func委托，这个委托其实就是所谓的中间件。 // context参数是HttpContext，表示HTTP请求的上下文对象 // next参数表示管道中的下一个中间件委托,如果不调用next，则会使管道短路 // 用Use可以将多个中间件链接在一起 app.Use(async (context, next) => { await context.Response.WriteAsync(text: "hello Use1\r\n"); // 调用下一个委托 await next(); }); app.Use(async (context, next) => { await context.Response.WriteAsync(text: "hello Use2\r\n"); // 调用下一个委托 await next(); }); 那么中间件就应用程序管道里面的一个组件，也是AOP的一种实现,用来拦截请求进行其他处理和响应，每一个组件都可以对管道中的请求进行拦截，也可以选择是否将请求传递给下一个中间件。  中间件通过RequestDelegate进行构建和处理，最后一个管道或者中断管道的中间件被称为终端中间件。  在中间件中：  HttpContext表示Http请求上下文，可以获取请求信息  是处理Http请求和响应的组件（代码段，一段处理逻辑），  每个组件选择是否将请求传递给管道中的下一个组件。  可以在调用管道中的下一个组件之前和之后执行一些逻辑。  这样的机制使得HTTP请求能够很好的被层层处理和控制，并且层次清晰处理起来甚是方便。  最后一个管道或者中断管道的中间件叫终端中间件； 请求委托（Request delegate）用于构建请求管道，处理每个HTTP请求 管道就是http请求抵达服务器到响应结果返回的中间的一系列的处理过程 2、中间件常用的方法 中间件中定义了Run、Use、Map、MapWhen几种方法，我们下面一一讲解这几种方法。 1、Run() Run()方法中只有一个RequestDelegate委托类型的参数，没有Next参数，所以Run()方法也叫终端中间件，不会将请求传递给下一个中间件，也就是发生了“短路” // Run方法向应用程序的请求管道中添加一个RequestDelegate委托 // 放在管道最后面，终端中间件 // Run方法向应用程序的请求管道中添加一个RequestDelegate委托 // 放在管道最后面，终端中间件 app.Run(handler: async context => { await context.Response.WriteAsync(text: "Hello World1\r\n"); }); app.Run(handler: async context => { await context.Response.WriteAsync(text: "Hello World2\r\n"); }); 2、Use()方法 Use方法的参数是一个Func委托，输入参数是一个RequestDelegate类型的委托，返回参数也是一个RequestDelegate类型的委托，这里表示调用下一个中间件 RequestDelegate是一个委托，有一个HttpContext类型的参数，HttPContext表示Http请求上下文，可以获取请求信息，返回值是Task类型  定义为：Public delegate Task RequestDelegate(HttpContext context) // 向应用程序的请求管道中添加一个Func委托，这个委托其实就是所谓的中间件。 // context参数是HttpContext，表示HTTP请求的上下文对象 // next参数表示管道中的下一个中间件委托,如果不调用next，则会使管道短路 // 用Use可以将多个中间件链接在一起 app.Use(async (context, next) => { await context.Response.WriteAsync(text: "hello Use1\r\n"); // 调用下一个委托 await next(); }); app.Use(async (context, next) => { await context.Response.WriteAsync(text: "hello Use2\r\n"); // 调用下一个委托 await next(); }); 3、自定义中间件 中间件遵循显示依赖原则，并在其构造函数中暴露所有依赖项。  中间件能够利用UseMiddleware扩展方法的优势，直接通过它们的构造函数注入服务。  依赖注入服务是自动完成填充的。 ASP.NET Core约定中间件类必须包括以下内容：

* 具有类型为RequestDelegate参数的公共构造函数，
* 必须有名为Invoke或InvokeAsync的公共方法，此方法必须满足两个条件：方法返回类型是Task、方法的第一个参数必须是HttpContext类型。 如下代码自定义了一个记录IP的中间件，新建一个类RequestIPMiddleware，代码如下： // 向应用程序的请求管道中添加一个Func委托，这个委托其实就是所谓的中间件。 // context参数是HttpContext，表示HTTP请求的上下文对象 // next参数表示管道中的下一个中间件委托,如果不调用next，则会使管道短路 // 用Use可以将多个中间件链接在一起 app.Use(async (context, next) => { await context.Response.WriteAsync(text: "hello Use1\r\n"); // 调用下一个委托 await next(); }); app.Use(async (context, next) => { await context.Response.WriteAsync(text: "hello Use2\r\n"); // 调用下一个委托 await next(); }); 然后创建一个扩展方法，对IApplicationBuilder进行扩展： using Microsoft.AspNetCore.Builder; namespace MiddlewareDemo.Middleware { public static class RequestIPExtensions { /// <summary> /// 扩展方法，对IApplicationBuilder进行扩展 /// </summary> /// \<param name="builder">\</param> /// \<returns>\</returns> public static IApplicationBuilder UseRequestIP(this IApplicationBuilder builder) { // UseMiddleware\<T> return builder.UseMiddleware\<RequestIPMiddleware>(); } } } 最后在Startup类的Configure方法中使用自定义中间件： app.UseRequestIP(); 4、中间件和过滤器的区别 中间件和过滤器都是一种AOP的思想，功能类似，那么他们有什么区别呢？
* 过滤器更加贴合业务，它关注于应用程序本身，关注的是如何实现业务，比如对输出结果进行格式化，对请求的ViewModel进行数据校验，这时就肯定要使用过滤器了。过滤器是MVC的一部分，它可以拦截到你Action上下文的一些信息，而中间件是没有这个能力的。可以认为过滤器是附加性的一种功能，它只是中间件附带表现出来的特征。
* 中间件是管道模型里重要的组成部分，不可或缺，而过滤器可以没有。 5、Asp.Net Core异常处理
* 使用开发人员异常页面（The developer exception page）
* 配置HTTP错误代码页 Configuring status code pages
* 使用MVC过滤器 ExceptionFilter
* 自定义异常捕获中间件 Middleware 1、使用开发人员异常页面（The developer exception page） public void Configure(IApplicationBuilder app, IHostingEnvironment env) { //判断是否是开发环境 if (env.IsDevelopment()) { app.UseDeveloperExceptionPage(); } else { app.UseExceptionHandler("/error"); } } 2、配置HTTP错误代码页 Configuring status code pages public void Configure(IApplicationBuilder app, IHostingEnvironment env) { if (env.IsDevelopment()) { //开发环境异常处理 app.UseBrowserLink(); app.UseDeveloperExceptionPage(); } else { //生产环境异常处理 app.UseExceptionHandler("/Home/Error"); } app.UseStatusCodePages();//使用HTTP错误代码页 } app.UseStatusCodePages支持多种扩展方法。其中一个方法接受一个lambda表达式: app.UseStatusCodePages(async context => { context.HttpContext.Response.ContentType = "text/plain"; await context.HttpContext.Response.WriteAsync( "Status code page, status code: " + context.HttpContext.Response.StatusCode); }); 还可以跳转到指定页面，并附加Response.StatusCode app.UseStatusCodePagesWithReExecute("/Home/Error/{0}"); 3、使用MVC过滤器 /// <summary> /// 自定义全局异常过滤器 /// </summary> public class GlobalExceptionFilter : IExceptionFilter {

            readonly ILoggerFactory _loggerFactory;//采用内置日志记录
            readonly IHostingEnvironment _env;//环境变量
            public GlobalExceptionFilter(ILoggerFactory loggerFactory, IHostingEnvironment env)
            {
                _loggerFactory = loggerFactory;
                _env = env;
            }
            public void OnException(ExceptionContext context)
            {
                var controller = context.ActionDescriptor;          
                ILog log = LogManager.GetLogger(Startup.Repository.Name, controller.ToString());//初始化Log4net日志
                #region 记录到内置日志
                //var logger = _loggerFactory.CreateLogger(context.Exception.TargetSite.ReflectedType);
                //logger.LogError(new EventId(context.Exception.HResult),
                //context.Exception,
                //context.Exception.Message);
                #endregion
                if (_env.IsDevelopment())
                {
                    log.Error(context.Exception.ToString());
                    //var JsonMessage = new ErrorResponse("未知错误,请重试");
                    //JsonMessage.DeveloperMessage = context.Exception;
                    //context.Result = new ApplicationErrorResult(JsonMessage);
                    //context.HttpContext.Response.StatusCode = (int)HttpStatusCode.InternalServerError;
                    //context.ExceptionHandled = true;
                }
                else
                {
                    log.Error(context.Exception.ToString());
                    context.ExceptionHandled = true;
                    context.Result=new RedirectResult("/home/Error");
                }
            }
            public class ApplicationErrorResult : ObjectResult
            {
                public ApplicationErrorResult(object value) : base(value)
                {
                    StatusCode = (int)HttpStatusCode.InternalServerError;
                }
            }
            public class ErrorResponse
            {
                public ErrorResponse(string msg)
                {
                    Message = msg;
                }
                public string Message { get; set; }
                public object DeveloperMessage { get; set; }
            }
        }

    } 4、四自定义异常捕获中间件 Middleware /// <summary> /// 自定义异常处理中间件 /// </summary> public class ExceptionHandlingMiddleware { private readonly RequestDelegate \_next; public ExceptionHandlingMiddleware(RequestDelegate next) { \_next = next; } public async Task Invoke(HttpContext context) { try { await \_next(context); } catch (Exception ex) { var statusCode = context.Response.StatusCode; await HandleExceptionAsync(context, ex.ToString());\
    }\
    } private Task HandleExceptionAsync(HttpContext context,  string msg) {\
    HandleExceptionHelper hannd = new HandleExceptionHelper(); hannd.log.Error(msg);//记录到日志文件 return context.Response.WriteAsync("ERROR"); } } 6、依赖注入 ASP.NET Core的核心是通过一个Server和若干注册的Middleware（中间件）构成的管道，不论是管道自身的构建，还是Server和Middleware自身的实现，以及构建在这个管道的应用，都需要相应的服务提供支持，ASP.NET Core自身提供了一个DI容器来实现针对服务的注册和消费。 DI框架具有两个核心的功能，即服务的注册和提供，这两个功能分别由对应的对象来承载, 它们分别是ServiceCollection和ServiceProvider 1、依赖注入的三种方式  在ASP.Net Core 依赖注入有三种： Transient ：每次请求时都会创建，并且永远不会被共享。  Scoped ： 在同一个Scope内只初始化一个实例 ，可以理解为（ 每一个request级别只创建一个实例，同一个http request会在一个 scope内）  Singleton ：只会创建一个实例。该实例在需要它的所有组件之间共享。因此总是使用相同的实例。 DI容器跟踪所有已解析的组件， 组件在其生命周期结束时被释放和处理： 如果组件具有依赖关系，则它们也会自动释放和处理。  如果组件实现IDisposable接口，则在组件释放时自动调用Dispose方法。  重要的是要理解，如果将组件A注册为单例，则它不能依赖于使用Scoped或Transient生命周期注册的组件。更一般地说： 服务不能依赖于生命周期小于其自身的服务。 通常你希望将应用范围的配置注册为单例，数据库访问类，比如Entity Framework上下文被推荐以Scoped方式注入，以便可以重用连接。如果要并行运行的话，请记住Entity Framework上下文不能由两个线程共享，如果需要，最好将上下文注册为Transient，然后每个服务都获得自己的上下文实例，并且可以并行运行。 建议的做法： 尽可能将您的服务注册为瞬态服务。 因为设计瞬态服务很简单。 您通常不用关心多线程和内存泄漏，并且您知道该服务的寿命很短。  1、请谨慎使用Scoped，因为如果您创建子服务作用域或从非Web应用程序使用这些服务，则可能会非常棘手。  2、谨慎使用singleton ，因为您需要处理多线程和潜在的内存泄漏问题。  3、在singleton 服务中不要依赖transient 或者scoped 服务，因为如果当一个singleton 服务注入transient服务，这个 transient服务就会变成一个singleton服务，并且如果transient服务不是为支持这种情况而设计的，则可能导致问题。 在这种情况下，ASP.NET Core的默认DI容器已经抛出异常。 2、DI在ASP.NET Core中的应用  在Startup类中初始化  ASP.NET Core可以在Startup.cs的 ConfigureService中配置DI，大家看到 IServiceCollection这个参数应该就比较熟悉了。 public void ConfigureServices(IServiceCollection services) { services.AddTransient\<ILoginService\<ApplicationUser>, EFLoginService>(); services.AddMvc(); ) ASP.NET Core的一些组件已经提供了一些实例的绑定，像AddMvc就是Mvc Middleware在 IServiceCollection上添加的扩展方法。 public static IMvcBuilder AddMvc(this IServiceCollection services) { if (services == null) { throw new ArgumentNullException(nameof(services)); }

        var builder = services.AddMvcCore();

        builder.AddApiExplorer();
        builder.AddAuthorization();
        AddDefaultFrameworkParts(builder.PartManager);
        ...

    } 2 Controller中使用  一般可以通过构造函数或者属性来实现注入，但是官方推荐是通过构造函数。这也是所谓的显式依赖。 private ILoginService\<ApplicationUser> \_loginService; public AccountController( ILoginService\<ApplicationUser> loginService) { \_loginService = loginService; } 我们只要在控制器的构造函数里面写了这个参数，ServiceProvider就会帮我们注入进来。这一步是在Mvc初始化控制器的时候完成的，我们后面再介绍到Mvc的时候会往细里讲。 3 View中使用  在View中需要用@inject 再声明一下，起一个别名。 @using MilkStone.Services; @model MilkStone.Models.AccountViewModel.LoginViewModel @inject ILoginService\<ApplicationUser>  loginService

    \<!DOCTYPE html>

    <html>
    &lt;head&gt;&lt;/head&gt;
    &lt;body&gt;
      @loginService.GetUserName()
    &lt;/body&gt;
    </html>

4 通过 HttpContext来获取实例  HttpContext下有一个RequestedService同样可以用来获取实例对象，不过这种方法一般不推荐。同时要注意GetService<>这是个范型方法，默认如果没有添加Microsoft.Extension.DependencyInjection的using，是不用调用这个方法的。

    HttpContext.RequestServices.GetService<ILoginService<ApplicationUser>>();

3、替换其它的Ioc容器  此处概念在实际开发中并未应用过，这里先做一下记录。 使用Autofac可实现批量注入，Autofac 原来的一个生命周期InstancePerRequest，将不再有效。正如我们前面所说的，整个request的生命周期被ASP.NET Core管理了，所以Autofac的这个将不再有效。我们可以使用 InstancePerLifetimeScope ，同样是有用的，对应了我们ASP.NET Core DI 里面的Scoped 这会给我们的初始化带来一些便利性，我们来看看如何替换Autofac到ASP.NET Core。我们只需要把Startup类里面的 ConfigureService的 返回值从 void改为 IServiceProvider即可。而返回的则是一个AutoServiceProvider。 public IServiceProvider ConfigureServices( IServiceCollection services){ services.AddMvc(); // Add other framework services

        // Add Autofac
        var containerBuilder = new ContainerBuilder();
        containerBuilder.RegisterModule<DefaultModule>();
        containerBuilder.Populate(services);
        var container = containerBuilder.Build();
        return new AutofacServiceProvider(container);
    }
    Autofac 批量注入
    //自动注册接口
    builder.RegisterAssemblyTypes(assemblies).Where(b => b.GetInterfaces().
    Any(c => c == baseType && b != baseType)).AsImplementedInterfaces(). InstancePerLifetimeScope();
    //定义可批量注入的接口  需要继承
    public interface IAutoInject { }
    protected void Application_Start()
            {
                var builder = new ContainerBuilder();
                //获取IAutoInject的Type
                var baseType = typeof(IAutoInject);
                //获取所有程序集
                var assemblies = System.Web.Compilation.BuildManager.GetReferencedAssemblies().Cast<Assembly>().ToArray();
                //自动注册接口
                builder.RegisterAssemblyTypes(assemblies).Where(b => b.GetInterfaces().
                Any(c => c == baseType && b != baseType)).AsImplementedInterfaces(). InstancePerLifetimeScope();
                //自动注册控制器
                builder.RegisterControllers(assemblies);
                var container = builder.Build();
                DependencyResolver.SetResolver(new AutofacDependencyResolver(container));
                AreaRegistration.RegisterAllAreas();
                FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
                RouteConfig.RegisterRoutes(RouteTable.Routes);
                BundleConfig.RegisterBundles(BundleTable.Bundles);
            }

7、提高ASP.NET Web应用性能 　大型动态应用系统又可分为几个子系统：

> Web前端系统
>
> 负载均衡系统
>
> 数据库集群系统
>
> 缓存系统
>
> 分布式存储系统
>
> 分布式服务器管理系统
>
> 代码分发系统 1、运行环境优化 做负载均衡和服务器加成 服务器配置升级 CPU 处理器 磁盘阵列  横向扩展 使用负载均衡、反向代理服务实现服务器集群 2、缓存应用  缓存是一种用空间换取时间的技术，通俗点也就是说把你得到的数据存放在内存 中一段时间，在这短时间内服务器不去读取数据库、或是真实的数据源，而是读取你存放在内存中的数据。 缓存是网站性能优化不可缺少的一种数据处理机制，他能有效的缓解数据库压力。 ASP.NET 中的缓存主要分为： 页面缓存  数据源缓存  自定义数据缓存  redis分布式缓存  增加缓存命中率  全文搜索使用ES 缓存系统  　　缓存分为文件缓存、内存缓存、数据库缓存。在大型Web应用中使用最多且效率最高的是内存缓存。最常用的内存缓存工具是Memcachd。使用正确的缓存系统可以达到实现以下目标： ![0](https://note.youdao.com/yws/res/30727/WEBRESOURCE29d18b16ed477cdcc816fdb68b31e2f8 "0")

* 使用缓存系统可以提高访问效率，提高服务器吞吐能力，改善用户体验。
* 减轻对数据库及存储集服务器的访问压力。
* Memcached服务器有多台，避免单点故障，提供高可靠性和可扩展性，提高性能。 3、数据库优化  搭建数据库集群 使用主从策略、读写分离
* 读写分离 主从策略 主从库，主负责写，从是只读的；
* 搭建集群
* 分库分表
* 合理使用索引，避免使用全表扫描
* 搜索引擎ES（文档和索引结合，快的原因是分词 like “%word%”，es只需要查"word"这个词包含的文档id ） ELK
* 使用ETL工具（Kettle） 由于Web前端采用了负载均衡集群结构提高了服务的有效性和扩展性，因此数据库必须也是高可靠的才能保证整个服务体系的高可靠性，如何构建一个高可靠的、可以提供大规模并发处理的数据库体系?
* 使用SQL数据库，考虑到Web应用的数据库读多写少的特点，我们主要对读数据库做了优化，提供专用的读数据库和写数据库，在应用程序中实现读操作和写操作分别访问不同的数据库
* 使用同步机制实现快速将主库(写库)的数据库复制到从库(读库)。一个主库对应多个从库，主库数据实时同步到从库
* 写数据库有多台，每台都可以提供多个应用共同使用，这样可以解决写库的性能瓶颈问题和单点故障问题
* 读数据库有多台，通过负载均衡设备实现负载均衡，从而达到读数据库的高性能、高可靠和高可扩展性
* 数据库服务器和应用服务器分离。
* 资源合理利用，合理释放资源数据库连接 的关闭 使用using()
* 避免抛出异常最小化异常 尽量不要抛出异常 异常应极少。相对于其他代码流模式，引发和捕获异常的速度很慢。 因此，不应使用异常来控制正常的程序流
* 使用异步 async/await 多个请求过来时，线程池分配足够的线程来处理多个请求，提高线程池的利用率
* 返回多个数据源进行读取，减少数据库的连接 比方分页中返回，所有当前页数据 和数据总条数 一条sql 返回多个数据源 进行读取
* 较少装箱拆箱操作，使用泛型，string和stringbuilder 8、Redis分布式缓存 主从模式：读写分离  哨兵模式：  心跳机制（每隔几分钟发送一个固定信息给服务端，服务端收到后回复一个固定信息如果服务端几分钟内没有收到客户端信息则视客户端断开）+哨兵裁决。主从切换，故障转移。 Cluster集群模式：无中心架构 面试题：redis内存操作速度快，缺点是受物理内存限制。持久化：RDB（定时，二进制，适合备份），AOF（日志方式，写，删，没有查询），缓存命中率，通过缓存取到数据，不需要去数据库查询，预热可以提高。 9、IIS经典模式和集成模式的区别 经典模式 兼容IIS 6，服务器通过 ISAPI 托管代码请求，在经典模式中，IIS拥有自身的管道，ASP.NET作为一个ISAPI扩展运行，只是IIS管道中的一项组成部分。 集成模式 将使用 IIS 和 ASP.NET 的集成请求处理管道来处理请求，可以通过Module自定义扩展。 10、MySql 引擎 Innodb 支持事务；支持行级锁和外键约束 ；高并发时可降低内存，全变扫描也会锁表；表空间大；没有保存行数 count() 扫描全表；没有全文索引  支持事务，对数据完整性要求高，中大型项目使用  MyISAM 不支持事务和行级锁和外键约束，操作时会锁表；表空间小；存储了标的行数，count(）不会扫描全表；有全文索引  关注效率空间和内存使用比较低，非事务安全的，在小型项目上可以使用 11、NET core 如何实现 动态扩展 如何 承载 高并发 1、动态扩展
* 使用AOP思想的中间件和过滤器
* 使用依赖注入 2、承载高并发 缓存 存储 负载
* 缓解web服务器压力，使用多台服务器负载均衡，页面缓存技术
* 缓解数据库读取压力，使用缓存机制 内存缓存、redis缓存、增加缓存命中率（粒度、缓存预热、有效期、更新缓存、多级缓存 服务器内存和nosql缓存配合）
* 缓解数据库压力
* 数据库分库分表、读写分离、数据库集群 4、使用消息队列，建立多个消费端，进行流量削峰

# Winform

BeginInvoke 和 Invoke 有什么区别 如果从另外一个线程操作windows窗体上的控件，就会和主线程产生竞争，造成不可预料的结果，甚至死锁。因此windows GUI编程有一个规则，就是只能通过创建控件的线程来操作控件的数据，否则就可能产生不可预料的结果。为了方便地解决这些问题，Control类实现了ISynchronizeInvoke接口，提供了Invoke和BeginInvoke方法来提供让其它线程更新GUI界面控件的机制。 SendMessage是windows api，用来把一个消息发送到一个窗口的消息队列。这个方法是个阻塞方法，也就是操作系统会确保消息的确发送到目的消息队列，并且该消息被处理完毕以后，该函数才返回。返回之前，调用者将会被暂时阻塞。 PostMessage也是一个用来发送消息到窗口消息队列的api函数，但这个方法是非阻塞的。也就是它会马上返回，而不管消息是否真的发送到目的地，也就是调用者不会被阻塞。 使用Invoke完成一个委托方法的封送，就类似于使用SendMessage方法来给界面线程发送消息，是一个同步方法。也就是说在Invoke封送的方法被执行完毕前，Invoke方法不会返回，从而调用者线程将被阻塞。 使用BeginInvoke方法封送一个委托方法，类似于使用PostMessage进行通信，这是一个异步方法。也就是该方法封送完毕后马上返回，不会等待委托方法的执行结束，调用者线程将不会被阻塞。但是调用者也可以使用EndInvoke方法或者其它类似WaitHandle机制等待异步操作的完成。 但是在内部实现上，Invoke和BeginInvoke都是用了PostMessage方法，从而避免了SendMessage带来的问题。而Invoke方法的同步阻塞是靠WaitHandle机制来完成的。 Windows消息机制和Postmessage 和 Sendmessage 如果从另外一个线程操作windows窗体上的控件，就会和主线程产生竞争，造成不可预料的结果，甚至死锁。因此windows GUI编程有一个规则，就是只能通过创建控件的线程来操作控件的数据，否则就可能产生不可预料的结果。为了方便地解决这些问题，Control类实现了ISynchronizeInvoke接口，提供了Invoke和BeginInvoke方法来提供让其它线程更新GUI界面控件的机制。 SendMessage是windows api，用来把一个消息发送到一个窗口的消息队列。这个方法是个阻塞方法，也就是操作系统会确保消息的确发送到目的消息队列，并且该消息被处理完毕以后，该函数才返回。返回之前，调用者将会被暂时阻塞。 PostMessage也是一个用来发送消息到窗口消息队列的api函数，但这个方法是非阻塞的。也就是它会马上返回，而不管消息是否真的发送到目的地，也就是调用者不会被阻塞。 使用Invoke完成一个委托方法的封送，就类似于使用SendMessage方法来给界面线程发送消息，是一个同步方法。也就是说在Invoke封送的方法被执行完毕前，Invoke方法不会返回，从而调用者线程将被阻塞。 使用BeginInvoke方法封送一个委托方法，类似于使用PostMessage进行通信，这是一个异步方法。也就是该方法封送完毕后马上返回，不会等待委托方法的执行结束，调用者线程将不会被阻塞。但是调用者也可以使用EndInvoke方法或者其它类似WaitHandle机制等待异步操作的完成。 但是在内部实现上，Invoke和BeginInvoke都是用了PostMessage方法，从而避免了SendMessage带来的问题。而Invoke方法的同步阻塞是靠WaitHandle机制来完成的。 SendMessage和PostMessage的区别 答：PostMessage 是异步的，SendMessage 是同步的。PostMessage 只把消息放入队列，不管消息是否被处理就返回，消息可能不被处理；而SendMessage 等待消息被处理完了之后才回，如果消息不被处理，发送消息的线程将一直被阻塞。 控件与组件的区别 组件（Component）比控件（Control）涵盖的范围要广，控件是组件的一种。 什么是组件？可以把它理解成一个可以反反复复使用的模块。就是说只要一个模块能够重用，它就可以称当上一个组件，而不用在乎这个模块有没有“外型”。 控件不仅是可以“重用”的模块，而且还有“外型”。平常看到的除了UI对象之外的程序子窗体，都算得上控件。UI对象有3种：菜单、工具栏、快捷键，除开它们其它可以看得到的子窗体都是控件，比如按钮、标签、单选框、复选框、列表、树型选单等。实际上最能体现“控件”本意的就是按钮了。可以把整个程序当作一台收音机，按钮用来控制这台收音机的一些功能。 总结一下：（1）控件是组件的一种，全称叫“控制组件”；（2）控件一定有UI外型，一定看得到。 最后，顺便提一提Windows窗口消息与控件的联系。Windows的窗口消息用宏WM\_XX来表示，比如WM\_PAINT，WM\_CREATE等。它可以分为三大类：标准消息、命令消息、控件通知消息。所谓标准消息，就是除去WM\_COMMAND之外，所有WM\_XX消息的统称；命令消息也就是WM\_COMMAND消息；控件通知消息外型伪装成WM\_COMMAND，是控件向自己的父窗口通知某种情况。 这三类消息的“来源”是不相同的，标准消息来源最广，但不太方便归类。命令消息来自于UI对象，正如上面所说，也就是来自菜单、工具栏、快捷键。命令消息的作用，就是发出命令让程序做什么，这个过程点点鼠标或者按按快捷键就能搞定。控件通知消息（Control Notification）顾名思义就是控件向父窗体报告某种情况。除开UI对象和控件发出的消息之外，剩下的消息全部都是标准消息。

操作界面卡顿如何解决 为了让程序执行中不出现界面卡死的现像，最好的方法就是多线程来解决，一个主线程来创建界面，使用一个子线程来执行程序并更新主界面，这样就不会出现卡死的现像了。 使用BeginInvoke方法来调用这个委托：详细例子见[C#多线程解决界面卡死问题的完美解决方案 (clicksun.net)](http://www.clicksun.net/mis/bbs/showapp.asp?id=14664) 也可以通过异步实现：详细例子见[(11条消息) C#用异步操作解决界面卡顿问题\_c# 按钮点击多次卡死\_星河队长的博客-CSDN博客](https://blog.csdn.net/gy0124/article/details/120778146) winform中获取html网页信息有哪几种控件？ webbrowser、webrequest、webclient、socket。 答：第一种在vs中引用dll即a.dll,然后在类中引用命名空间using test，,然后在实例化对象，A testa = new A(); MessageBox.Show(testa.say()); 第二种方式导入dll即\[DllImport("mydll.dll")]; ,然后声明方法static extern string say(); 然后直接调用即可MessageBox.Show(say());。 有什么区别，第一种只能调用c#生成的dll，而第二种则可以调用第三方软件生成的dll。 8、webbrowser能应用在多线程方式下使用么？能在子线程创建吗？一般怎么解决？ 答：能在多线程中使用；不能在子线程创建；一般采用委托来解决，比如MethodInvoker mi = new MethodInvoker(this.WebNevergate); "form实例".BeginInvoke(mi); private void WebNevergate(){"form实"."Webbrowser".Navigate(web\_url);}

# WPF

WPF英文全称是Windows Presentation Foundation

* 七 ResourceDictionary    提供包含元素和WPF 应用程序的其他元素使用的WPF 资源的一个哈希表/字典实现。    有利于项目中资源共享。&#x20;

## WPF 体系结构

### milcore

> 是以非托管代码编写的，实现与 DirectX 的紧密集成。milcore.dll是WPF渲染系统的核心，也是媒体集成层的基础。

### WindowsCodes.dll

> 提供图像支持的低级API(处理、显示以及缩放位图与JPEG图像)

### Direct3D是图形渲染

### User32

> 决定实际占有桌面部分。不管拖动，缩放，milcore负责绘制程序恰当部分。

## WPF控件主要基类

![](https://img2024.cnblogs.com/blog/965851/202401/965851-20240128131845714-26958805.png)

1 Visual主要作用是为WPF提供2D呈现支持，主要包括输出显示，坐标转换，区域剪切等。  

2 UIElement的主要作用是构建WPF元素和基本呈现特征的基类。例如其中定义很多与输入和焦点有关的特性，例如键盘事件，鼠标，还有一些与WPF事件模型有关的API

3 FrameworkElement的主要作用是为定义的WPF元素添加一些功能。例如，布局定义逻辑树对象生命周期事件 支持数据绑定和动态资源引用支持样式和动画。  

4 Control的主要作用是为自定义应用程序控件提供基础。因为它是创建自定义应用程序控件的基类,作用就是可以重写Control类所提供的属性，方法，事件等，为自定义控件添加自定义逻辑。构建WPF应用程序页面的Window类也派生自它。      

### System.Object

> Equals(Object)	 确定指定对象是否等于当前对象。 Equals(Object, Object)	确定指定的对象实例是否被视为相等。 Finalize()	在垃圾回收将某一对象回收前允许该对象尝试释放资源并执行其他清理操作。 GetHashCode()	作为默认哈希函数。 GetType()	获取当前实例的 Type。 MemberwiseClone()	创建当前 Object 的浅表副本。 ReferenceEquals(Object, Object)	确定指定的 Object 实例是否是相同的实例。 Equals和ReferenceEquals方法一样均先对obj1、 obj2进行了装箱（IL代码如图2所示），Equals方法用于值类型比较时，比较的是值类型的比特值，即按位相等性. ToString()	返回表示当前对象的字符串。

### Dispatcher

(Object->Dispatcher) 命名空间\:System.Windows.Threading 程序集\:WindowsBase.dll 属性

> CurrentDispatcher 获取当前正在执行的线程的 Dispatcher，并在该线程没有关联的调度程序时创建一个新的 Dispatcher。 HasShutdownFinished 确定 Dispatcher 是否已经完成关闭。 HasShutdownStarted 确定 Dispatcher 是否正在关闭。 Hooks 获取提供有关 Dispatcher 的其他事件信息的挂钩集合。 Thread 获取与此 Dispatcher 关联的线程。 方法 BeginInvoke 用在其上创建了 Dispatcher 的线程上的指定参数，按指定优先级异步执行指定委托。 BeginInvokeShutdown 异步启动 Dispatcher 的关闭。 CheckAccess() 确定调用线程是否为与此 Dispatcher 关联的线程。 DisableProcessing() 禁用对 Dispatcher 队列的处理。 ExitAllFrames()	 请求退出所有帧，包括嵌套的帧。 FromThread(Thread)	 获取指定线程的 Dispatcher。 Invoke 在与 Action 关联的线程上同步执行指定的 Dispatcher。 Invoke\<TResult> 在与 Func\<TResult> 关联的线程上同步执行指定的 Dispatcher。 InvokeAsync 在与 Action 关联的线程上异步执行指定的 Dispatcher。 InvokeAsync\<TResult> 在与 Func\<TResult> 关联的线程上异步执行指定的 Dispatcher。 InvokeShutdown()	 同步启动 Dispatcher 的关闭过程。 PushFrame(DispatcherFrame)	 进入执行循环。 Run()	 将主执行帧推送到 Dispatcher 的事件队列中。 ValidatePriority(DispatcherPriority, String)	 确定指定的 DispatcherPriority 是否为有效的优先级。 VerifyAccess()	 确定调用线程是否可以访问此 Dispatcher。 Yield() Yield(DispatcherPriority)	 创建异步产生控制权交还给当前计划程序并为该计划程序提供机会处理其他事件的可等待对象。 事件 ShutdownFinished	当 Dispatcher 完成关闭时发生。 ShutdownStarted	当 Dispatcher 开始关闭时发生。 UnhandledException	在通过 Invoke 或 BeginInvoke 执行委托的过程中，如果引发线程异常且未能捕获该异常，则发生此事件。 UnhandledExceptionFilter	当在筛选阶段通过 Invoke 或 BeginInvoke 执行委托的过程中，如果引发线程异常且未能捕获该异常，则发生此事件。 扩展方法 BeginInvoke 用正常优先级在依据其创建指定 Dispatcher 的线程上异步执行指定的委托。 Invoke 用正常优先级在依据其创建指定 Dispatcher 的线程上同步执行指定的委托。

### DispatcherObject

(Object->DispatcherObject) 命名空间\:System.Windows.Threading 程序集\:WindowsBase.dll WPF/Silverlight 中有许多类继承自DispatcherObject，DispatcherObject提供了处理同步和并发的基本构造。 属性:

> Dispatcher	Gets the Dispatcher this DispatcherObject is associated with. 方法: CheckAccess()	Determines whether the calling thread has access to this DispatcherObject. VerifyAccess() Enforces that the calling thread has access to this DispatcherObject.

### DependencyObject

(Object->DispatcherObject->DependencyObject) 命名空间\:System.Windows 程序集\:WindowsBase.dll 构建WPF/Silverlight的一个主要思想是属性优先于方法和事件。WPF/Silverlight 提供了丰富的属性系统，其核心是DependencyObject。 方法\:METHODS

> ClearValu Clears the local value of a property. The property to be cleared is specified by a DependencyProperty identifier. CoerceValue(DependencyProperty) Coerces the value of the specified dependency property. This is accomplished by invoking any CoerceValueCallback function specified in property metadata for the dependency property as it exists on the calling DependencyObject. GetLocalValueEnumerator() Creates a specialized enumerator for determining which dependency properties have locally set values on this DependencyObject. GetValue(DependencyProperty) Returns the current effective value of a dependency property on this instance of a DependencyObject. InvalidateProperty(DependencyProperty) Re-evaluates the effective value for the specified dependency property. OnPropertyChanged(DependencyPropertyChangedEventArgs) Invoked whenever the effective value of any dependency property on this DependencyObject has been updated. The specific dependency property that changed is reported in the event data. ReadLocalValue(DependencyProperty) Returns the local value of a dependency property, if it exists. SetCurrentValue(DependencyProperty, Object) Sets the value of a dependency property without changing its value source. SetValue Sets the local value of a dependency property, specified by its dependency property identifier. ShouldSerializeProperty(DependencyProperty) Returns a value that indicates whether serialization processes should serialize the value for the provided dependency property. 属性\:PROPERTIES DependencyObjectType Gets the DependencyObjectType that wraps the CLR type of this instance. IsSealed Gets a value that indicates whether this instance is currently sealed (read-only). 主要作用是为WPF/Silverlight 提供２D呈现支持，主要包括输出显示，坐标转换，区域剪切等。

### Visual

(Object->DispatcherObject->DependencyObject->Visual) 命名空间\:System.Windows.Media 程序集\:PresentationFramework.dll 方法\:METHODS

> AddVisualChild(Visual) Defines the parent-child relationship between two visuals. GetValue(DependencyProperty) Returns the current effective value of a dependency property on this instance of a DependencyObject. HitTestCore(GeometryHitTestParameters) Determines whether a geometry value is within the bounds of the visual object. HitTestCore(PointHitTestParameters) Determines whether a point coordinate value is within the bounds of the visual object. InvalidateProperty(DependencyProperty) Re-evaluates the effective value for the specified dependency property. IsDescendantOf(DependencyObject) Determines whether the visual object is a descendant of the ancestor visual object. OnDpiChanged(DpiScale, DpiScale) Called when the DPI at which this View is rendered changes. OnPropertyChanged(DependencyPropertyChangedEventArgs) Invoked whenever the effective value of any dependency property on this DependencyObject has been updated. The specific dependency property that changed is reported in the event data. OnVisualParentChanged(DependencyObject) Called when the parent of the visual object is changed. PointFromScreen(Point) Converts a Point in screen coordinates into a Point that represents the current coordinate system of the Visual. PointToScreen(Point) Converts a Point that represents the current coordinate system of the Visual into a Point in screen coordinates. ReadLocalValue(DependencyProperty) Returns the local value of a dependency property, if it exists. SetCurrentValue(DependencyProperty, Object) Sets the value of a dependency property without changing its value source. TransformToAncestor(Visual) Returns a transform that can be used to transform coordinates from the Visual to the specified Visual ancestor of the visual object. TransformToAncestor(Visual3D) Returns a transform that can be used to transform coordinates from the Visual to the specified Visual3D ancestor of the visual object. TransformToDescendant(Visual) Returns a transform that can be used to transform coordinates from the Visual to the specified visual object descendant. TransformToVisual(Visual) Returns a transform that can be used to transform coordinates from the Visual to the specified visual object. 属性: DependencyObjectType Gets the DependencyObjectType that wraps the CLR type of this instance. IsSealed Gets a value that indicates whether this instance is currently sealed (read-only). VisualBitmapEffectInput Gets or sets the BitmapEffectInput value for the Visual. VisualBitmapScalingMode Gets or sets the BitmapScalingMode for the Visual. VisualCacheMode Gets or sets a cached representation of the Visual. VisualChildrenCount Gets the number of child elements for the Visual. VisualClearTypeHint Gets or sets the ClearTypeHint that determines how ClearType is rendered in the Visual. VisualClip Gets or sets the clip region of the Visual as a Geometry value. VisualEdgeMode Gets or sets the edge mode of the Visual as an EdgeMode value. VisualEffect Gets or sets the bitmap effect to apply to the Visual. VisualOffset Gets or sets the offset value of the visual object. VisualOpacity Gets or sets the opacity of the Visual. VisualOpacityMask Gets or sets the Brush value that represents the opacity mask of the Visual. VisualParent Gets the visual tree parent of the visual object. VisualScrollableAreaClip Gets or sets a clipped scrollable area for the Visual. VisualTextHintingMode Gets or sets the TextHintingMode of the Visual. VisualTextRenderingMode Gets or sets the TextRenderingMode of the Visual. VisualTransform Gets or sets the Transform value for the Visual. VisualXSnappingGuidelines Gets or sets the x-coordinate (vertical) guideline collection. VisualYSnappingGuidelines Gets or sets the y-coordinate (horizontal) guideline collection. System.Windows.Markup.UidProperty("Uid") 方法: METHODS ApplyTemplate() Builds the current template's visual tree if necessary, and returns a value that indicates whether the visual tree was rebuilt by this call. ArrangeCore(Rect) Implements ArrangeCore(Rect) (defined as virtual in UIElement) and seals the implementation. ArrangeOverride(Size) When overridden in a derived class, positions child elements and determines a size for a FrameworkElement derived class. BeginInit() Starts the initialization process for this element. BeginStoryboard(Storyboard) Begins the sequence of actions that are contained in the provided storyboard. BeginStoryboard(Storyboard, HandoffBehavior) Begins the sequence of actions contained in the provided storyboard, with options specified for what should happen if the property is already animated. BeginStoryboard(Storyboard, HandoffBehavior, Boolean) Begins the sequence of actions contained in the provided storyboard, with specified state for control of the animation after it is started. BringIntoView() Attempts to bring this element into view, within any scrollable regions it is contained within. BringIntoView(Rect) Attempts to bring the provided region size of this element into view, within any scrollable regions it is contained within. ClearValue(DependencyProperty) Clears the local value of a property. The property to be cleared is specified by a DependencyProperty identifier. FindResource(Object) Searches for a resource with the specified key, and throws an exception if the requested resource is not found. GetBindingExpression(DependencyProperty) Returns the BindingExpression that represents the binding on the specified property. GetFlowDirection(DependencyObject) Gets the value of the FlowDirection attached property for the specified DependencyObject. GetLocalValueEnumerator() Creates a specialized enumerator for determining which dependency properties have locally set values on this DependencyObject. GetUIParentCore() Returns an alternative logical parent for this element if there is no visual parent. GetValue(DependencyProperty) Returns the current effective value of a dependency property on this instance of a DependencyObject. InvalidateProperty(DependencyProperty) Re-evaluates the effective value for the specified dependency property. IsAncestorOf(DependencyObject) Determines whether the visual object is an ancestor of the descendant visual object. MeasureCore(Size) Implements basic measure-pass layout system behavior for FrameworkElement. MeasureOverride(Size) When overridden in a derived class, measures the size in layout required for child elements and determines a size for the FrameworkElement-derived class. MoveFocus(TraversalRequest) Moves the keyboard focus away from this element and to another element in a provided traversal direction. OnApplyTemplate() When overridden in a derived class, is invoked whenever application code or internal processes call ApplyTemplate(). OnContextMenuClosing(ContextMenuEventArgs) Invoked whenever an unhandled ContextMenuClosing routed event reaches this class in its route. Implement this method to add class handling for this event. OnContextMenuOpening(ContextMenuEventArgs) Invoked whenever an unhandled ContextMenuOpening routed event reaches this class in its route. Implement this method to add class handling for this event. OnDpiChanged(DpiScale, DpiScale) Called when the DPI at which this View is rendered changes. OnGotFocus(RoutedEventArgs) Invoked whenever an unhandled GotFocus event reaches this element in its route. OnInitialized(EventArgs) Raises the Initialized event. This method is invoked whenever IsInitialized is set to true internally. OnPropertyChanged(DependencyPropertyChangedEventArgs) Invoked whenever the effective value of any dependency property on this FrameworkElement has been updated. The specific dependency property that changed is reported in the arguments parameter. Overrides OnPropertyChanged(DependencyPropertyChangedEventArgs). OnRenderSizeChanged(SizeChangedInfo) Raises the SizeChanged event, using the specified information as part of the eventual event data. OnStyleChanged(Style, Style) Invoked when the style in use on this element changes, which will invalidate the layout. OnToolTipClosing(ToolTipEventArgs) Invoked whenever an unhandled ToolTipClosing routed event reaches this class in its route. Implement this method to add class handling for this event. OnToolTipOpening(ToolTipEventArgs) Invoked whenever the ToolTipOpening routed event reaches this class in its route. Implement this method to add class handling for this event. ParentLayoutInvalidated(UIElement) Supports incremental layout implementations in specialized subclasses of FrameworkElement. ParentLayoutInvalidated(UIElement) is invoked when a child element has invalidated a property that is marked in metadata as affecting the parent's measure or arrange passes during layout. PointFromScreen(Point) Converts a Point in screen coordinates into a Point that represents the current coordinate system of the Visual. RaiseEvent(RoutedEventArgs) Raises a specific routed event. The RoutedEvent to be raised is identified within the RoutedEventArgs instance that is provided (as the RoutedEvent property of that event data). ReleaseAllTouchCaptures() Releases all captured touch devices from this element. RemoveVisualChild(Visual) Removes the parent-child relationship between two visuals. SetBinding(DependencyProperty, String) Attaches a binding to this element, based on the provided source property name as a path qualification to the data source. SetCurrentValue(DependencyProperty, Object) Sets the value of a dependency property without changing its value source. SetResourceReference(DependencyProperty, Object) Searches for a resource with the specified name and sets up a resource reference to it for the specified property. SetValue(DependencyProperty, Object) Sets the local value of a dependency property, specified by its dependency property identifier. ShouldSerializeStyle() Returns whether serialization processes should serialize the contents of the Style property. ShouldSerializeTriggers() Returns whether serialization processes should serialize the contents of the Triggers property. TransformToAncestor(Visual) Returns a transform that can be used to transform coordinates from the Visual to the specified Visual ancestor of the visual object. UnregisterName(String) Simplifies access to the NameScope de-registration method. UpdateDefaultStyle() Reapplies the default style to the current FrameworkElement. Events ContextMenuClosing	ContextMenuOpening DataContextChanged Initialized	 FrameworkElement is initialized. Loaded	 element is laid out, rendered, and ready for interaction. RequestBringIntoView	Occurs when BringIntoView(Rect) is called on this element. SizeChanged when either the ActualHeight or the ActualWidth properties change value on this element. SourceUpdated	Occurs when the source value changes for any existing property binding on this element. TargetUpdated	Occurs when the target value changes for any property binding on this element. ToolTipClosing/ToolTipOpening	 when any tooltip on the element is closed or opened. Unloaded	when the element is removed from within an element tree of loaded elements.

### UIElement

(Object->DispatcherObject->DependencyObject->Visual->UIElement) 命名空间\:System.Windows 程序集\:PresentationFramework.dll 其中定义很多与输入和焦点有关的特性，例如键盘事件，鼠标，还包括一些与WPF事件模型有关的API。 方法: METHODS

> AddHandler Adds a routed event handler for a specified routed event, adding the handler to the handler collection on the current element. AddToEventRoute(EventRoute, RoutedEventArgs) Adds handlers to the specified EventRoute for the current UIElement event handler collection. AddVisualChild(Visual) Defines the parent-child relationship between two visuals. ApplyAnimationClock(DependencyProperty, AnimationClock, HandoffBehavior) Applies an animation to a specified dependency property on this element, with the ability to specify what happens if the property already has a running animation. Arrange(Rect) Positions child elements and determines a size for a UIElement. Parent elements call this method from their ArrangeCore(Rect) implementation (or a WPF framework-level equivalent) to form a recursive layout update. This method constitutes the second pass of a layout update. ArrangeCore(Rect) Defines the template for WPF core-level arrange layout definition. BeginAnimation Starts a specific animation for a specified animated property on this element, with the option of specifying what happens if the property already has a running animation. CaptureMouse() Attempts to force capture of the mouse to this element. CaptureStylus() Attempts to force capture of the stylus to this element. CaptureTouch(TouchDevice) Attempts to force capture of a touch to this element. ClearValue(DependencyProperty) Clears the local value of a property. The prope rty to be cleared is specified by a DependencyProperty identifier. GetAnimationBaseValue(DependencyProperty) Returns the base property value for the specified property on this element, disregarding any possible animated value from a running or stopped animation. GetLocalValueEnumerator() Creates a specialized enumerator for determining which dependency properties have locally set values on this DependencyObject. GetUIParentCore() When overridden in a derived class, returns an alternative user interface (UI) parent for this element if no visual parent exists. GetValue(DependencyProperty) Returns the current effective value of a dependency property on this instance of a DependencyObject. HitTestCore(PointHitTestParameters) Implements HitTestCore(PointHitTestParameters) to supply base element hit testing behavior (returning HitTestResult). InputHitTest(Point) Returns the input element within the current element that is at the specified coordinates, relative to the current element's origin. InvalidateArrange() Invalidates the arrange state (layout) for the element. After the invalidation, the element will have its layout updated, which will occur asynchronously unless subsequently forced by UpdateLayout(). InvalidateMeasure() Invalidates the measurement state (layout) for the element. InvalidateProperty(DependencyProperty) Re-evaluates the effective value for the specified dependency property. IsAncestorOf(DependencyObject) Determines whether the visual object is an ancestor of the descendant visual object. MeasureCore(Size) When overridden in a derived class, provides measurement logic for sizing this element properly, with consideration of the size of any child element content. MoveFocus(TraversalRequest) Attempts to move focus from this element to another element. The direction to move focus is specified by a guidance direction, which is interpreted within the organization of the visual parent for this element. OnAccessKey(AccessKeyEventArgs) Provides class handling for when an access key that is meaningful for this element is invoked. OnChildDesiredSizeChanged(UIElement) Supports layout behavior when a child element is resized. OnCreateAutomationPeer() Returns class-specific AutomationPeer implementations for the Windows Presentation Foundation (WPF) infrastructure. OnDpiChanged(DpiScale, DpiScale) Called when the DPI at which this View is rendered changes. OnDragLeave(DragEventArgs) Invoked when an unhandled DragLeave attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnDragOver(DragEventArgs) Invoked when an unhandled DragOver attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnDrop(DragEventArgs) Invoked when an unhandled DragEnter attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnGiveFeedback(GiveFeedbackEventArgs) Invoked when an unhandled GiveFeedback attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnGotFocus(RoutedEventArgs) Raises the GotFocus routed event by using the event data provided. OnGotKeyboardFocus(KeyboardFocusChangedEventArgs) Invoked when an unhandled GotKeyboardFocus attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnGotMouseCapture(MouseEventArgs) Invoked when an unhandled GotMouseCapture attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnGotStylusCapture(StylusEventArgs) Invoked when an unhandled GotStylusCapture attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnGotTouchCapture(TouchEventArgs) Provides class handling for the GotTouchCapture routed event that occurs when a touch is captured to this element. OnIsKeyboardFocusedChanged(DependencyPropertyChangedEventArgs) Invoked when an unhandled IsKeyboardFocusedChanged event is raised on this element. Implement this method to add class handling for this event. OnIsKeyboardFocusWithinChanged(DependencyPropertyChangedEventArgs) Invoked just before the IsKeyboardFocusWithinChanged event is raised by this element. Implement this method to add class handling for this event. OnIsMouseCapturedChanged(DependencyPropertyChangedEventArgs) Invoked when an unhandled IsMouseCapturedChanged event is raised on this element. Implement this method to add class handling for this event. OnIsMouseCaptureWithinChanged(DependencyPropertyChangedEventArgs) Invoked when an unhandled IsMouseCaptureWithinChanged event is raised on this element. Implement this method to add class handling for this event. OnIsMouseDirectlyOverChanged(DependencyPropertyChangedEventArgs) Invoked when an unhandled IsMouseDirectlyOverChanged event is raised on this element. Implement this method to add class handling for this event. OnIsStylusCapturedChanged(DependencyPropertyChangedEventArgs) Invoked when an unhandled IsStylusCapturedChanged event is raised on this element. Implement this method to add class handling for this event. OnIsStylusCaptureWithinChanged(DependencyPropertyChangedEventArgs) Invoked when an unhandled IsStylusCaptureWithinChanged event is raised on this element. Implement this method to add class handling for this event. OnIsStylusDirectlyOverChanged(DependencyPropertyChangedEventArgs) Invoked when an unhandled IsStylusDirectlyOverChanged event is raised on this element. Implement this method to add class handling for this event. OnKeyDown(KeyEventArgs) Invoked when an unhandled KeyDown attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnKeyUp(KeyEventArgs) Invoked when an unhandled KeyUp attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnLostFocus(RoutedEventArgs) Raises the LostFocus routed event by using the event data that is provided. OnLostKeyboardFocus(KeyboardFocusChangedEventArgs) Invoked when an unhandled LostKeyboardFocus attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnLostMouseCapture(MouseEventArgs) Invoked when an unhandled LostMouseCapture attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnLostStylusCapture(StylusEventArgs) Invoked when an unhandled LostStylusCapture attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnLostTouchCapture(TouchEventArgs) Provides class handling for the LostTouchCapture routed event that occurs when this element loses a touch capture. OnManipulationBoundaryFeedback(ManipulationBoundaryFeedbackEventArgs) Called when the ManipulationBoundaryFeedback event occurs. OnManipulationCompleted(ManipulationCompletedEventArgs) Called when the ManipulationCompleted event occurs. OnManipulationDelta(ManipulationDeltaEventArgs) Called when the ManipulationDelta event occurs. OnManipulationInertiaStarting(ManipulationInertiaStartingEventArgs) Called when the ManipulationInertiaStarting event occurs. OnManipulationStarted(ManipulationStartedEventArgs) Called when the ManipulationStarted event occurs. OnManipulationStarting(ManipulationStartingEventArgs) Provides class handling for the ManipulationStarting routed event that occurs when the manipulation processor is first created. OnMouseDown/OnMouseEnter/OnMouseLeave/OnMouseLeftButtonDown/OnMouseLeftButtonUp/OnMouseMove/OnMouseRightButtonDown/OnMouseRightButtonUp/OnMouseUp/OnMouseWheel(MouseWheelEventArgs)	 鼠标相关事件 OnPreviewDragEnter/OnPreviewDragLeave/OnPreviewDragOver/OnPreviewDrop 路由中进入派生自此类的拖拽事件 OnPreviewGiveFeedback(GiveFeedbackEventArgs) Invoked when an unhandled PreviewGiveFeedback attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnPreviewGotKeyboardFocus/OnPreviewKeyDown/OnPreviewKeyUp/OnPreviewLostKeyboardFocus(KeyboardFocusChangedEventArgs) Invoked when an unhandled PreviewKeyDown attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnPreviewMouseDown/OnPreviewMouseLeftButtonDown/OnPreviewMouseLeftButtonUp/OnPreviewMouseMove/OnPreviewMouseRightButtonDown/OnPreviewMouseRightButtonUp/OnPreviewMouseUp/OnPreviewMouseWheel 路由鼠标事件 OnPreviewQueryContinueDrag(QueryContinueDragEventArgs) Invoked when an unhandled PreviewQueryContinueDrag attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnPreviewStylusButtonDown/OnPreviewStylusButtonUp/OnPreviewStylusDown/OnPreviewStylusInAirMove/OnPreviewStylusInRange/OnPreviewStylusMove/OnPreviewStylusOutOfRange/OnPreviewStylusSystemGesture/OnPreviewStylusUp 路由触控笔事件 OnPreviewTextInput(TextCompositionEventArgs) Invoked when an unhandled PreviewTextInput attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnPreviewTouchDown/OnPreviewTouchMove/OnPreviewTouchUp 路由触控事件 OnPropertyChanged(DependencyPropertyChangedEventArgs) Invoked whenever the effective value of any dependency property on this DependencyObject has been updated. The specific dependency property that changed is reported in the event data. OnQueryCursor(QueryCursorEventArgs) Invoked when an unhandled QueryCursor attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnRender(DrawingContext) When overridden in a derived class, participates in rendering operations that are directed by the layout system. The rendering instructions for this element are not used directly when this method is invoked, and are instead preserved for later asynchronous use by layout and drawing. OnRenderSizeChanged(SizeChangedInfo) When overridden in a derived class, participates in rendering operations that are directed by the layout system. This method is invoked after layout update, and before rendering, if the element's RenderSize has changed as a result of layout update. OnStylusButtonDown/OnStylusButtonUp/OnStylusDown/OnStylusEnter/OnStylusInAirMove/OnStylusInRange/OnStylusLeave/OnStylusMove/OnStylusOutOfRange/OnStylusSystemGesture/OnStylusUp 触控笔事件 OnTextInput(TextCompositionEventArgs) Invoked when an unhandled TextInput attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event. OnTouchDown/OnTouchEnter/OnTouchLeave/OnTouchMove/OnTouchUp 触摸屏输入事件 OnVisualChildrenChanged(DependencyObject, DependencyObject) Called when the VisualCollection of the visual object is modified. PointFromScreen(Point) Converts a Point in screen coordinates into a Point that represents the current coordinate system of the Visual. RaiseEvent(RoutedEventArgs) Raises a specific routed event. The RoutedEvent to be raised is identified within the RoutedEventArgs instance that is provided (as the RoutedEvent property of that event data). ReadLocalValue(DependencyProperty) Returns the local value of a dependency property, if it exists. ReleaseMouseCapture() Releases the mouse capture, if this element held the capture. ReleaseStylusCapture() Releases the stylus device capture, if this element held the capture. ReleaseTouchCapture(TouchDevice) Attempts to release the specified touch device from this element. RemoveHandler(RoutedEvent, Delegate) Removes the specified routed event handler from this element. RemoveVisualChild(Visual) Removes the parent-child relationship between two visuals. ShouldSerializeInputBindings() Returns whether serialization processes should serialize the contents of the InputBindings property on instances of this class. ShouldSerializeProperty(DependencyProperty) Returns a value that indicates whether serialization processes should serialize the value for the provided dependency property. TransformToAncestor(Visual) Returns a transform that can be used to transform coordinates from the Visual to the specified Visual ancestor of the visual object. UpdateLayout() Ensures that all visual child elements of this element are properly updated for layout. Events DragEnter/DragLeave	/DragOver	/Drop	拖拽事件 FocusableChanged Occurs when the value of the Focusable property changes. GiveFeedback Occurs when the input system reports an underlying drag-and-drop event that involves this element. GotFocus Occurs when this element gets logical focus. GotKeyboardFocus Occurs when the keyboard is focused on this element. GotMouseCapture Occurs when this element captures the mouse. GotStylusCapture Occurs when this element captures the stylus. GotTouchCapture Occurs when a touch is captured to this element. IsEnabledChanged Occurs when the value of the IsEnabled property on this element changes. IsHitTestVisibleChanged Occurs when the value of the IsHitTestVisible dependency property changes on this element. IsKeyboardFocusedChanged Occurs when the value of the IsKeyboardFocused property changes on this element. IsKeyboardFocusWithinChanged Occurs when the value of the IsKeyboardFocusWithin property changes on this element. IsMouseCapturedChanged Occurs when the value of the IsMouseCaptured property changes on this element. IsMouseCaptureWithinChanged Occurs when the value of the IsMouseCaptureWithinProperty changes on this element. IsMouseDirectlyOverChanged Occurs when the value of the IsMouseDirectlyOver property changes on this element. IsStylusCapturedChanged Occurs when the value of the IsStylusCaptured property changes on this element. IsStylusCaptureWithinChanged Occurs when the value of the IsStylusCaptureWithin property changes on this element. IsStylusDirectlyOverChanged Occurs when the value of the IsStylusDirectlyOver property changes on this element. IsVisibleChanged Occurs when the value of the IsVisible property changes on this element. KeyDown/KeyUp 键盘按键事件 LayoutUpdated Occurs when the layout of the various visual elements associated with the current Dispatcher changes. LostFocus Occurs when this element loses logical focus. LostKeyboardFocus Occurs when the keyboard is no longer focused on this element. LostMouseCapture Occurs when this element loses mouse capture. LostStylusCapture Occurs when this element loses stylus capture. LostTouchCapture Occurs when this element loses a touch capture. ManipulationBoundaryFeedback Occurs when the manipulation encounters a boundary. ManipulationCompleted Occurs when a manipulation and inertia on the UIElement object is complete. ManipulationDelta Occurs when the input device changes position during a manipulation. ManipulationInertiaStarting Occurs when the input device loses contact with the UIElement object during a manipulation and inertia begins. ManipulationStarted Occurs when an input device begins a manipulation on the UIElement object. ManipulationStarting Occurs when the manipulation processor is first created. MouseDown/MouseEnter/MouseLeave/MouseLeftButtonDown/MouseLeftButtonUp/MouseMove/MouseRightButtonDown/MouseRightButtonUp/MouseUp/MouseWheel	鼠标事件 Occurs when the user rotates the mouse wheel while the mouse pointer is over this element. PreviewDragEnter/PreviewDragLeave/PreviewDragOver/PreviewDrop	路由拖拽事件 PreviewGiveFeedback Occurs when a drag-and-drop operation is started. PreviewGotKeyboardFocus Occurs when the keyboard is focused on this element. PreviewKeyDown/PreviewKeyUp	路由键盘按键事件 PreviewLostKeyboardFocus Occurs when the keyboard is no longer focused on this element. PreviewMouseDown/PreviewMouseLeftButtonDown/PreviewMouseLeftButtonUp/PreviewMouseMove/PreviewMouseRightButtonDown/PreviewMouseRightButtonUp/PreviewMouseUp/PreviewMouseWheel/PreviewQueryContinueDrag 路由鼠标事件 PreviewStylusButtonDown/PreviewStylusButtonUp/PreviewStylusDown/PreviewStylusInAirMove/PreviewStylusInRange/PreviewStylusMove/PreviewStylusOutOfRange	/PreviewStylusSystemGesture	/PreviewStylusUp	路由触控笔事件 PreviewTextInput Occurs when this element gets text in a device-independent manner. PreviewTouchDown/PreviewTouchMove	/PreviewTouchUp 路由屏幕触控事件 QueryContinueDrag Occurs when there is a change in the keyboard or mouse button state during a drag-and-drop operation. QueryCursor Occurs when the cursor is requested to display. This event is raised on an element each time that the mouse pointer moves to a new location, which means the cursor object might need to be changed based on its new position. StylusButtonDown/StylusButtonUp	/StylusDown	/StylusEnter/StylusInAirMove/StylusInRange	/StylusLeave/StylusMove	/StylusOutOfRange/StylusSystemGesture/StylusUp	触控笔事件 TextInput Occurs when this element gets text in a device-independent manner. TouchDown/TouchEnter/TouchLeave/TouchMove/TouchUp	屏幕触控事件 属性: AllowDrop Gets or sets a value indicating whether this element can be used as the target of a drag-and-drop operation. This is a dependency property. AreAnyTouchesCaptured Gets a value that indicates whether at least one touch is captured to this element. AreAnyTouchesCapturedWithin Gets a value that indicates whether at least one touch is captured to this element or to any child elements in its visual tree. AreAnyTouchesDirectlyOver Gets a value that indicates whether at least one touch is pressed over this element. AreAnyTouchesOver Gets a value that indicates whether at least one touch is pressed over this element or any child elements in its visual tree. BitmapEffect Gets or sets a bitmap effect that applies directly to the rendered content for this element. This is a dependency property. BitmapEffectInput Gets or sets an input source for the bitmap effect that applies directly to the rendered content for this element. This is a dependency property. CacheMode Gets or sets a cached representation of the UIElement. Clip Gets or sets the geometry used to define the outline of the contents of an element. This is a dependency property. ClipToBounds Gets or sets a value indicating whether to clip the content of this element (or content coming from the child elements of this element) to fit into the size of the containing element. This is a dependency property. CommandBindings Gets a collection of CommandBinding objects associated with this element. A CommandBinding enables command handling for this element, and declares the linkage between a command, its events, and the handlers attached by this element. DependencyObjectType Gets the DependencyObjectType that wraps the CLR type of this instance. Effect Gets or sets the bitmap effect to apply to the UIElement. This is a dependency property. Focusable Gets or sets a value that indicates whether the element can receive focus. This is a dependency property. HasAnimatedProperties Gets a value indicating whether this element has any animated properties. HasEffectiveKeyboardFocus Gets a value that indicates whether the UIElement has focus. InputBindings Gets the collection of input bindings associated with this element. IsArrangeValid Gets a value indicating whether the computed size and position of child elements in this element's layout are valid. IsEnabled Gets or sets a value indicating whether this element is enabled in the user interface (UI). This is a dependency property. IsEnabledCore Gets a value that becomes the return value of IsEnabled in derived classes. IsFocused Gets a value that determines whether this element has logical focus. This is a dependency property. IsHitTestVisible Gets or sets a value that declares whether this element can possibly be returned as a hit test result from some portion of its rendered content. This is a dependency property. IsInputMethodEnabled Gets a value indicating whether an input method system, such as an Input Method Editor (IME), is enabled for processing the input to this element. IsKeyboardFocused Gets a value indicating whether this element has keyboard focus. This is a dependency property. IsKeyboardFocusWithin Gets a value indicating whether keyboard focus is anywhere within the element or its visual tree child elements. This is a dependency property. IsManipulationEnabled Gets or sets a value that indicates whether manipulation events are enabled on this UIElement. IsMeasureValid Gets a value indicating whether the current size returned by layout measure is valid. IsMouseCaptured Gets a value indicating whether the mouse is captured to this element. This is a dependency property. IsMouseCaptureWithin Gets a value that determines whether mouse capture is held by this element or by child elements in its visual tree. This is a dependency property. IsMouseDirectlyOver Gets a value that indicates whether the position of the mouse pointer corresponds to hit test results, which take element compositing into account. This is a dependency property. IsMouseOver Gets a value indicating whether the mouse pointer is located over this element (including child elements in the visual tree). This is a dependency property. IsSealed Gets a value that indicates whether this instance is currently sealed (read-only). IsStylusCaptureWithin Gets a value that determines whether stylus capture is held by this element, or an element within the element bounds and its visual tree. This is a dependency property. IsStylusDirectlyOver Gets a value that indicates whether the stylus position corresponds to hit test results, which take element compositing into account. This is a dependency property. IsStylusOver Gets a value indicating whether the stylus cursor is located over this element (including visual child elements). This is a dependency property. IsVisible Gets a value indicating whether this element is visible in the user interface (UI). This is a dependency property. Opacity Gets or sets the opacity factor applied to the entire UIElement when it is rendered in the user interface (UI). This is a dependency property. OpacityMask Gets or sets an opacity mask, as a Brush implementation that is applied to any alpha-channel masking for the rendered content of this element. This is a dependency property. PersistId Gets a value that uniquely identifies this element. RenderSize Gets (or sets) the final render size of this element. RenderTransform Gets or sets transform information that affects the rendering position of this element. This is a dependency property. RenderTransformOrigin Gets or sets the center point of any possible render transform declared by RenderTransform, relative to the bounds of the element. This is a dependency property. SnapsToDevicePixels Gets or sets a value that determines whether rendering for this element should use device-specific pixel settings during rendering. This is a dependency property. StylusPlugIns Gets a collection of all stylus plug-in (customization) objects associated with this element. TouchesCaptured Gets all touch devices that are captured to this element. TouchesCapturedWithin Gets all touch devices that are captured to this element or any child elements in its visual tree. TouchesDirectlyOver Gets all touch devices that are over this element. TouchesOver Gets all touch devices that are over this element or any child elements in its visual tree. Uid Gets or sets the unique identifier (for localization) for this element. This is a dependency property. Visibility Gets or sets the user interface (UI) visibility of this element. This is a dependency property. VisualBitmapEffect Gets or sets the BitmapEffect value for the Visual. Fileds\:FIELDS: AllowDropProperty Identifies the AllowDrop dependency property. AreAnyTouchesCapturedProperty Identifies the AreAnyTouchesCaptured dependency property. AreAnyTouchesCapturedWithinProperty Identifies the AreAnyTouchesCapturedWithin dependency property. AreAnyTouchesDirectlyOverProperty Identifies the AreAnyTouchesDirectlyOver dependency property. AreAnyTouchesOverProperty Identifies the AreAnyTouchesOver dependency property. BitmapEffectInputProperty Identifies the BitmapEffectInput dependency property. BitmapEffectProperty Identifies the BitmapEffect dependency property. CacheModeProperty Identifies the CacheMode dependency property. ClipProperty Identifies the Clip dependency property. ClipToBoundsProperty Identifies the ClipToBounds dependency property. DragEnterEvent Identifies the DragEnter routed event. DragLeaveEvent Identifies the DragLeave routed event. DragOverEvent Identifies the DragOver routed event. DropEvent Identifies the Drop routed event. EffectProperty Identifies the Effect dependency property. FocusableProperty Identifies the Focusable dependency property. GiveFeedbackEvent Identifies the GiveFeedback routed event. GotFocusEvent Identifies the GotFocus routed event. GotKeyboardFocusEvent Identifies the GotKeyboardFocus routed event. GotMouseCaptureEvent Identifies the GotMouseCapture routed event. GotStylusCaptureEvent Identifies the GotStylusCapture routed event. GotTouchCaptureEvent Identifies the GotTouchCapture routed event. IsEnabledProperty Identifies the IsEnabled dependency property. IsFocusedProperty Identifies the IsFocused dependency property. IsHitTestVisibleProperty Identifies the IsHitTestVisible dependency property. IsKeyboardFocusedProperty Identifies the IsKeyboardFocused dependency property. IsKeyboardFocusWithinProperty Identifies the IsKeyboardFocusWithin dependency property. IsManipulationEnabledProperty Identifies the IsManipulationEnabled dependency property. IsMouseCapturedProperty Identifies the IsMouseCaptured dependency property. IsMouseCaptureWithinProperty Identifies the IsMouseCaptureWithin dependency property. IsMouseDirectlyOverProperty Identifies the IsMouseDirectlyOver dependency property. IsMouseOverProperty Identifies the IsMouseOver dependency property. IsStylusCapturedProperty Identifies the IsStylusCaptured dependency property. IsStylusCaptureWithinProperty Identifies the IsStylusCaptureWithin dependency property. IsStylusDirectlyOverProperty Identifies the IsStylusDirectlyOver dependency property. IsStylusOverProperty Identifies the IsStylusOver dependency property. IsVisibleProperty Identifies the IsVisible dependency property. KeyDownEvent Identifies the KeyDown routed event. KeyUpEvent Identifies the KeyUp routed event. LostFocusEvent Identifies the LostFocus routed event. LostKeyboardFocusEvent Identifies the LostKeyboardFocus routed event. LostMouseCaptureEvent Identifies the LostMouseCapture routed event. LostStylusCaptureEvent Identifies the LostStylusCapture routed event. LostTouchCaptureEvent Identifies the LostTouchCapture routed event. ManipulationBoundaryFeedbackEvent Identifies the ManipulationBoundaryFeedback event. ManipulationCompletedEvent Identifies the ManipulationCompleted routed event. ManipulationDeltaEvent Identifies the ManipulationDelta routed event. ManipulationInertiaStartingEvent Identifies the ManipulationInertiaStarting routed event. ManipulationStartedEvent Identifies the ManipulationStarted routed event. ManipulationStartingEvent Identifies the ManipulationStarting routed event. MouseDownEvent Identifies the MouseDown routed event. MouseEnterEvent Identifies the MouseEnter routed event. MouseLeaveEvent Identifies the MouseLeave routed event. MouseLeftButtonDownEvent Identifies the MouseLeftButtonDown routed event. MouseLeftButtonUpEvent Identifies the MouseLeftButtonUp routed event. MouseMoveEvent Identifies the MouseMove routed event. MouseRightButtonDownEvent Identifies the MouseRightButtonDown routed event. MouseRightButtonUpEvent Identifies the MouseRightButtonUp routed event. MouseUpEvent Identifies the MouseUp routed event. MouseWheelEvent Identifies the MouseWheel routed event. OpacityMaskProperty Identifies the OpacityMask dependency property. OpacityProperty Identifies the Opacity dependency property. PreviewDragEnterEvent Identifies the PreviewDragEnter routed event. PreviewDragLeaveEvent Identifies the PreviewDragLeave routed event. PreviewDragOverEvent Identifies the PreviewDragOver routed event. PreviewDropEvent Identifies the PreviewDrop routed event. PreviewGiveFeedbackEvent Identifies the PreviewGiveFeedback routed event. PreviewGotKeyboardFocusEvent Identifies the PreviewGotKeyboardFocus routed event. PreviewKeyDownEvent Identifies the PreviewKeyDown routed event. PreviewKeyUpEvent Identifies the PreviewKeyUp routed event. PreviewLostKeyboardFocusEvent Identifies the PreviewLostKeyboardFocus routed event. PreviewMouseDownEvent Identifies the PreviewMouseDown routed event. PreviewMouseLeftButtonDownEvent Identifies the PreviewMouseLeftButtonDown routed event. PreviewMouseLeftButtonUpEvent Identifies the PreviewMouseLeftButtonUp routed event. PreviewMouseMoveEvent Identifies the PreviewMouseMove routed event. PreviewMouseRightButtonDownEvent Identifies the PreviewMouseRightButtonDown routed event. PreviewMouseRightButtonUpEvent Identifies the PreviewMouseRightButtonUp routed event. PreviewMouseUpEvent Identifies the PreviewMouseUp routed event. PreviewMouseWheelEvent Identifies the PreviewMouseWheel routed event. PreviewQueryContinueDragEvent Identifies the PreviewQueryContinueDrag routed event. PreviewStylusButtonDownEvent Identifies the PreviewStylusButtonDown routed event. PreviewStylusButtonUpEvent Identifies the PreviewStylusButtonUp routed event. PreviewStylusDownEvent Identifies the PreviewStylusDown routed event. PreviewStylusInAirMoveEvent Identifies the PreviewStylusInAirMove routed event. PreviewStylusInRangeEvent Identifies the PreviewStylusInRange routed event. PreviewStylusMoveEvent Identifies the PreviewStylusMove routed event. PreviewStylusOutOfRangeEvent Identifies the PreviewStylusOutOfRange routed event. PreviewStylusSystemGestureEvent Identifies the PreviewStylusSystemGesture routed event. PreviewStylusUpEvent Identifies the PreviewStylusUp routed event. PreviewTextInputEvent Identifies the PreviewTextInput routed event. PreviewTouchDownEvent Identifies the PreviewTouchDown routed event. PreviewTouchMoveEvent Identifies the PreviewTouchMove routed event. PreviewTouchUpEvent Identifies the PreviewTouchUp routed event. QueryContinueDragEvent Identifies the QueryContinueDrag routed event. QueryCursorEvent Identifies the QueryCursor routed event. RenderTransformOriginProperty Identifies the RenderTransformOrigin dependency property. RenderTransformProperty Identifies the RenderTransform dependency property. SnapsToDevicePixelsProperty Identifies the SnapsToDevicePixels dependency property. StylusButtonDownEvent Identifies the StylusButtonDown routed event. StylusButtonUpEvent Identifies the StylusButtonUp routed event. StylusDownEvent Identifies the StylusDown routed event. StylusEnterEvent Identifies the StylusEnter routed event. StylusInAirMoveEvent Identifies the StylusInAirMove routed event. StylusInRangeEvent Identifies the StylusInRange routed event. StylusLeaveEvent Identifies the StylusLeave routed event. StylusMoveEvent Identifies the StylusMove routed event. StylusOutOfRangeEvent Identifies the StylusOutOfRange routed event. StylusSystemGestureEvent Identifies the StylusSystemGesture routed event. StylusUpEvent Identifies the StylusUp routed event. TextInputEvent Identifies the TextInput routed event. TouchDownEvent Identifies the TouchDown routed event. TouchEnterEvent Identifies the TouchEnter routed event. TouchLeaveEvent Identifies the TouchLeave routed event. TouchMoveEvent Identifies the TouchMove routed event. TouchUpEvent Identifies the TouchUp routed event. UidProperty Identifies the Uid dependency property. VisibilityProperty Identifies the Visibility dependency property. EXPLICIT INTERFACE IMPLEMENTATIONS IQueryAmbient.IsAmbientPropertyAvailable(String) For a description of this member, see the IsAmbientPropertyAvailable(String) method.

### FrameworkElement

(Object->DispatcherObject->DependencyObject->Visual->UIElement->FrameworkElement) 命名空间\:System.Windows 程序集\:PresentationFramework.dll

#### Page

#### Control

#### Image

#### Panel

而且还添加了一些功能，例如，布局定义、逻辑树、对象生命周期事件、支持数据绑定和动态资源引用、支持样式和动画。 属性:

> ActualHeight	ActualWidth	实际渲染的高和宽 AllowDrop Gets or sets a value indicating whether this element can be used as the target of a drag-and-drop operation. This is a dependency property. BitmapEffect Gets or sets a bitmap effect that applies directly to the rendered content for this element. This is a dependency property. Cursor Gets or sets the cursor that displays when the mouse pointer is over this element. DataContext Gets or sets the data context for an element when it participates in data binding. DefaultStyleKey Gets or sets the key to use to reference the style for this control, when theme styles are used or defined. DependencyObjectType Gets the DependencyObjectType that wraps the CLR type of this instance. Effect Gets or sets the bitmap effect to apply to the UIElement. This is a dependency property. ForceCursor Gets or sets a value that indicates whether this FrameworkElement should force the user interface (UI) to render the cursor as declared by the Cursor property. HorizontalAlignment Gets or sets the horizontal alignment characteristics applied to this element when it is composed within a parent element, such as a panel or items control. InheritanceBehavior Gets or sets the scope limits for property value inheritance, resource key lookup, and RelativeSource FindAncestor lookup. LayoutTransform Gets or sets a graphics transformation that should apply to this element when layout is performed. LogicalChildren Gets an enumerator for logical child elements of this element. Margin Gets or sets the outer margin of an element. MaxHeight	 MaxWidth	最大高宽 MinHeight	MinWidth	最小高宽 Name Gets or sets the identifying name of the element. The name provides a reference so that code-behind, such as event handler code, can refer to a markup element after it is constructed during processing by a XAML processor. Parent Gets the logical parent element of this element. TemplatedParent Gets a reference to the template parent of this element. This property is not relevant if the element was not created through a template. ToolTip Gets or sets the tool-tip object that is displayed for this element in the user interface (UI). VerticalAlignment Gets or sets the vertical alignment characteristics applied to this element when it is composed within a parent element such as a panel or items control. VisualClearTypeHint Gets or sets the ClearTypeHint that determines how ClearType is rendered in the Visual. VisualTextHintingMode Gets or sets the TextHintingMode of the Visual. Fielsds: ActualHeightProperty Identifies the ActualHeight dependency property. ActualWidthProperty Identifies the ActualWidth dependency property. BindingGroupProperty Identifies the BindingGroup dependency property. ContextMenuClosingEvent Identifies the ContextMenuClosing routed event. ContextMenuOpeningEvent Identifies the ContextMenuOpening routed event. ContextMenuProperty Identifies the ContextMenu dependency property. CursorProperty Identifies the Cursor dependency property. DataContextProperty Identifies the DataContext dependency property. DefaultStyleKeyProperty Identifies the DefaultStyleKey dependency property. FlowDirectionProperty Identifies the FlowDirection dependency property. FocusVisualStyleProperty Identifies the FocusVisualStyle dependency property. ForceCursorProperty Identifies the ForceCursor dependency property. HeightProperty Identifies the Height dependency property. HorizontalAlignmentProperty Identifies the HorizontalAlignment dependency property. InputScopeProperty Identifies the InputScope dependency property. LanguageProperty Identifies the Language dependency property. LayoutTransformProperty Identifies the LayoutTransform dependency property. LoadedEvent Identifies the Loaded routed event. MarginProperty Identifies the Margin dependency property. MaxHeightProperty Identifies the MaxHeight dependency property. MaxWidthProperty Identifies the MaxWidth dependency property. MinHeightProperty Identifies the MinHeight dependency property. MinWidthProperty Identifies the MinWidth dependency property. NameProperty Identifies the Name dependency property. OverridesDefaultStyleProperty Identifies the OverridesDefaultStyle dependency property. RequestBringIntoViewEvent Identifies the RequestBringIntoView routed event. SizeChangedEvent Identifies the SizeChanged routed event. StyleProperty Identifies the Style dependency property. TagProperty Identifies the Tag dependency property. ToolTipClosingEvent Identifies the ToolTipClosing routed event. ToolTipOpeningEvent Identifies the ToolTipOpening routed event. ToolTipProperty Identifies the ToolTip dependency property. UnloadedEvent Identifies the Unloaded routed event. UseLayoutRoundingProperty Identifies the UseLayoutRounding dependency property. VerticalAlignmentProperty Identifies the VerticalAlignment dependency property. WidthProperty Identifies the Width dependency property.

### VisualStateManager

(Object->DispatcherObject->DependencyObject->VisualStateManager) 命名空间\:System.Windows 程序集\:PresentationFramework.dll 管理控件的状态以及用于状态过渡的逻辑。 构造函数

> VisualStateManager() 初始化 VisualStateManager 类的新实例。 字段 CustomVisualStateManagerProperty 标识 CustomVisualStateManager 依赖项属性。 VisualStateGroupsProperty 标识 VisualStateGroups 依赖项属性。 属性 CustomVisualStateManager 获取或设置在控件的状态间转换的 VisualStateManager 对象。 VisualStateGroups 获取或设置 VisualStateGroup 对象的集合。 方法 GetCustomVisualStateManager(FrameworkElement) 获取 CustomVisualStateManager 附加属性。 GetVisualStateGroups(FrameworkElement) 获取 VisualStateGroups 附加属性。 GoToElementState(FrameworkElement, String, Boolean) 使元素在两个状态间转换。 使用此方法转换由应用程序（而非控件）定义的状态。 GoToState(FrameworkElement, String, Boolean) 在控件的两种状态之间转换。 使用此方法转换具有 ControlTemplate 的控件的状态。 GoToStateCore(FrameworkElement, FrameworkElement, String, VisualStateGroup, VisualState, Boolean) 使控件在状态间过渡。 RaiseCurrentStateChanged(VisualStateGroup, VisualState, VisualState, FrameworkElement, FrameworkElement) 在指定的 CurrentStateChanging 对象上引发 VisualStateGroup 事件。 RaiseCurrentStateChanging(VisualStateGroup, VisualState, VisualState, FrameworkElement, FrameworkElement) 在指定的 CurrentStateChanging 对象上引发 VisualStateGroup 事件。 SetCustomVisualStateManager(FrameworkElement, VisualStateManager) 设置 CustomVisualStateManager 附加属性。

### 逻辑树生成树

1 逻辑树是视觉树的子集，也就是视觉树基本上是逻辑树的一种扩展。  &#x20;

2  WPF通过逻辑树来解决依赖项属性继承和资源的问题，使用视觉树来处理渲染，事件路由，资源定位等问题。&#x20;

3  逻辑树可以认为是XAML所见的，而视觉树包含了XAML元素内部的结构。  &#x20;

4  逻辑树的查找可以通过LogicalTreeHelper辅助类，视觉树的查找可以通过VisualTreeHelper辅助类，其中需要注意的是对ContentElement元素的查找，无法直接通过VisualTreeHelper进行查找，ContentElement元素并不继承Visual，而ContentElement元素的使用时需要一个ContentElement载体FrameworkContentElement。       &#x20;

VisualTreeHelper

> 1、FindElementsInHostCoordinates 检索一组对象，这些对象位于某一对象的坐标空间的指定点或 Rect 内。&#x20;
>
> 2、GetChild 使用提供的索引，通过检查可视化树获取所提供对象的特定子对象。&#x20;
>
> 3、GetChildrenCount 返回在可视化树中在某一对象的子集合中存在的子级的数目。&#x20;
>
> 4、GetParent 返回可视化树中某一对象的父对象。

LogicalTreeHelper

> 借助逻辑树，内容模型可以方便地循环访问其可能的子对象。 此外，逻辑树还为某些通知提供框架，&#x20;
>
> BringIntoView(DependencyObject)	尝试使所请求的 UI 元素可见，并在目标上引发 RequestBringIntoView 事件以报告结果。&#x20;
>
> FindLogicalNode(DependencyObject, String)	尝试查找并返回具有指定名称的对象。 搜索从指定对象开始，并持续到逻辑树的子节点中。 GetChildren(DependencyObject)	通过处理逻辑树返回指定的对象的即时子对象集合。&#x20;
>
> GetChildren(FrameworkContentElement) 通过处理逻辑树，返回指定 FrameworkContentElement 的直接子对象的集合。&#x20;
>
> GetChildren(FrameworkElement)	通过处理逻辑树，返回指定 FrameworkElement 的直接子对象的集合。&#x20;
>
> GetParent(DependencyObject)	通过处理逻辑树，返回指定对象的父对象。

## WPF属性

### 普通属性Get Set封装的Field

### 依赖项属性Dependency property

wpf中的动态绑定就必须依赖依赖项属性来实现，除此之外wpf中最重要的动画Animation也必须基于依赖项属性。

> 使用效率更高的保存机制 附加功能 更改通知 属性值继承 使用 注册依赖项属性 添加属性包装器 特征 依赖属性提供用来扩展属性功能的功能，这与字段支持的属性相反。 通常，此类功能代表或支持以下特定功能之一： 资源 数据绑定 样式 动画 元数据重写 在从最初注册依赖属性的类派生时，可以通过重写依赖属性的元数据来更改该属性的某些行为。 重写元数据依赖于 DependencyProperty 标识符。 重写元数据不需要重新实现属性。 元数据的更改由属性系统在本机处理；对于所有从基类继承的属性，每个类都有可能基于每个类型保留元数据。以下示例重写依赖属性 DefaultStyleKey 的元数据。 重写此特定依赖属性的元数据是某个实现模式的一部分，该模式创建可以使用主题中的默认样式的控件。 public class SpinnerControl : ItemsControl { static SpinnerControl() { DefaultStyleKeyProperty.OverrideMetadata( typeof(SpinnerControl), new FrameworkPropertyMetadata(typeof(SpinnerControl)) ); } } 属性值继承 下面的示例演示一个绑定，并设置指定绑定（在前面的绑定示例中未显示出来）的源的 DataContext 属性。 子对象中的任何后续绑定都无需指定源，它们可以使用父对象 StackPanel 中 DataContext 的继承值。 （或者，子对象可以选择直接在 Binding 中指定自己的 DataContext 或 Source，并且有意不将继承值用于其绑定的数据上下文。） \<StackPanel Canvas.Top="50" DataContext="{Binding Source={StaticResource XmlTeamsSource}}"> \<Button Content="{Binding XPath=Team/@TeamName}"/> \</StackPanel> 如何自定义依赖属性 1、声明依赖属性变量。 2、在属性系统中进行注册。 3、使用.NET属性包装依赖属性 public static DependencyProperty  = DependencyProperty.Register("Text", //属性名称 typeof(string), //属性类型 typeof(TestDependencyPropertyWindow), //该属性所有者，即将该属性注册到那个类上 new PropertyMetadata("")); //属性默认值 public string Text { get { return (string)GetValue(TextProperty); } set { SetValue(TextProperty, value); } } 依赖属性的特点 1、属性变更通知 无论什么时候，只要依赖属性的值发生改变，wpf就会自动根据属性的元数据触发一系列的动作，这些动作可以重新呈现UI元素，也可以更新当前的布局，刷新数据绑定等等，这种变更的通知最有趣的特点之一就是属性触发器，它可以在属性值改变的时候，执行一系列自定义的动作，而不需要更改任何其他的代码来实现。通过下面的示例来演示属性变更通知 2、属性值继承 是指属性值自顶向下沿着元素树进行传递。 3、节省内存空间 依赖属性和CLR属性在内存的使用上是截然不同的，每个CLR属性都包含一个非static的字段，因此当我们实例化一个类型的时候，就会创建该类型所拥有的所有CLR属性，也就是说一个对象所占用的内存在调用new操作进行实例化的时候就已经决定了、而wpf允许对象在创建的时候并不包含用于存储数据的空间，只保留在需要用到数据的时候能够获得该默认值，即用其他对象数据或者实时分配空间的能力。 共享依赖项属性

### 附加属性

> 与依赖项属性区别 一。附加属性使用的RegisterAttached方法，而依赖属性使用的是Register方法 二。附加属性使用两个方法进行包装，依赖属性使用CLR属性对GetValue和SetValue两个方法进行包装 主要用途，附加项属性值修改时可以获取到被修改对象， 然后去修改该对象的属性， 例如可以绑定附加项属性去修改被附加对象的非依赖项属性等 public static readonly DependencyProperty AngleProperty = DependencyProperty.RegisterAttached("Angle", typeof(double), typeof(RotationManager), new PropertyMetadata(0.0,OnAngleChanged)); private static void OnAngleChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e) { var element = obj as UIElement; //可以获取到被修改对象 if (element != null) { element.RenderTransformOrigin = new Point(0.5, 0.5); element.RenderTransform = new RotateTransform((double)e.NewValue); } }

## WPF事件

### 普通事件

以下事件也有路由事件实现。

#### 生命周期事件

在元素被初始化，加载或卸载时发生。

> a.Initialized 元素被实例化，但是窗口的其他部分可能还没有初始化。还没有应用样式和数据绑定。 b.Loaded 事件 ，应用了样式和数据绑定时， c.Unloaded 当元素被释放时，窗口被关闭或特定的元素被从窗口中删除 FrameworkElement类实现了ISuppertInitialize接口，调用BeginInit()方法，XAML解析器设置所有元素的属性。调用EndInit（），引发Initalized事件。 包含其他所有元素的窗口首先引发Loaded事件，都引发了Loaded事件之后，窗口就变的可见了。

#### 鼠标事件

鼠标动作的结果。

#### 键盘事件

键盘动作的结果，继承自UIElement。

> PreviewKeyDown事件：隧道事件，按键触发 KeyDown事件：冒泡事件，按键触发 PreviewTextInput事件：隧道事件，按键完成接受文本输入触发。 TextInput事件：冒泡事件，按键完成接受文本输入触发。 PreviewKeyUp事件：隧道事件，释放键触发 KeyUp事件：冒泡事件，释放键触发

#### 手写笔事件

类似铅笔的手写笔的结果，继承自UIElement。

> StylusButtonDown/StylusButtonUp	/StylusDown	/StylusEnter/StylusInAirMove/StylusInRange	/StylusLeave/StylusMove	/StylusOutOfRange/StylusSystemGesture/StylusUp	触控笔事件

#### 多点触控事件，继承自UIElement。

> TouchDown/TouchEnter/TouchLeave/TouchMove/TouchUp	屏幕触控事件

### 路由事件

（向上冒泡或者向下隧道传播（Preview开始的事件））

> 定义 注册 封装路由事件（RoutedEvent） 共享  引发 处理路由事件 分类 冒泡：由事件源向上传递一直到根元素 直接：只有事件源才有机会响应事件 隧道：从元素树的根部调用事件处理程序并依次向下深入直到事件源

### 附加事件

> Microsoft官方：附加事件可用于在非元素类中定义新的 路由事件 ，并在树中的任何元素上引发该事件。 为此，必须将附加事件注册为路由事件，并提供支持附加事件功能的特定 支持代码 。 由于附加事件注册为路由事件，因此在元素树中引发时，它们会传播到元素树中。 附加事件是路由事件的一种用法。路由事件的宿主都是拥有可视化实体的界面元素，而附加事件的宿主则不具备显示再用户界面上的能力。 定义 WPF 附加事件 public static readonly RoutedEvent CleanEvent = EventManager.RegisterRoutedEvent("Clean", RoutingStrategy.Bubble, typeof(RoutedEventHandler), typeof(AquariumFilter)); 如果在一个非UIElement派生类中注册了路由事件，那么这个类的实例既不能自己激发此路由事件，也不能自己侦听此路由事件，只能把事件的激发附加在具备RaiseEvent方法的对象上，把事件的侦听也交给别的对象去做。 引发 WPF 附加事件 使用 UIElement.RaiseEvent 方法在任何 或 ContentElement上UIElement引发附加事件。 引发路由事件时，无论是否附加，都需要将元素树中的元素指定为事件源。 然后，该源将报告为调用方 RaiseEvent 。 例如，若要在 AquariumFilter.Clean 上 aquarium1引发附加的路由事件， aquarium1.RaiseEvent(new RoutedEventArgs(AquariumFilter.CleanEvent)); 拥有附加事件的类有： Binding类：SourceUpdate事件、TargetUpdated事件 Mouse类：MouseEnter事件、MoouseLeave事件、MouseUp事件、MouseDown事件等 Keyboard类：KeyDown事件、KeyUp事件等

## 资源

### 样式

> WPF样式的优先级： 标签内样式(最高) > Windows/UserControl/Page  >  Application.xaml(最低) \<Window> \<Grid> \<Grid.Resources> \<Style TargetType="{x\:Type Button}" x\:Key="ButtonStyle"> \<Setter Property="Height" Value="22"/> \<Setter Property="Width" Value="60"/> \</Style> \</Grid.Resources> \<Button Content="Button" Style="{StaticResource ButtonStyle}"/> \<Button Content="Button" Style="{StaticResource ButtonStyle}" Margin="156,144,286,145" /> \</Grid> \</Window> 样式基础 样式(Style)是组织和重用格式化选项的重要工具。不是使用重复的标记填充XAML,以便设置外边距、内边距、颜色以及字体等细节，而是创建一系列封装所有这些细节的样式，然后再需要之处通过属性来应用样式。样式是可应用于元素的属性值集合。使用资源的最常见原因之一就是保存样式。使按钮具有统一格式的实现方式一：资源 设置属性

    <Setter Property="FontFamily" Value="Times New Roman"/>

> 创建只应用按钮的样式

    <Style x:Key="BigFontButtonStyle" TargetType="Button">
      <Setter Property="FontFamily" Value="Times New Roman"/>
      <Setter Property="FontSize" Value="18"/>
      <Setter Property="FontWeight" Value="Bold"/>
    </Style>

> 关联事件处理程序

     <Window.Resources>
        <Style x:Key="MouseOverHighlightStyle">
          <EventSetter Event="TextBlock.MouseEnter" Handler="element_MouseEnter"></EventSetter>
          <EventSetter Event="TextBlock.MouseLeave" Handler="element_MouseLeave"></EventSetter>
        </Style>
      </Window.Resources>
      <Grid Name="gird1" ShowGridLines="True">
        <TextBlock Style="{StaticResource MouseOverHighlightStyle}"></TextBlock>
      </Grid>

> 多层样式

     <Window.Resources>
        <Style x:Key="BigFontButtonStyle">
          <Setter Property="Control.FontFamily" Value="Times New Roman"/>
          <Setter Property="Control.FontSize" Value="18"/>
          <Setter Property="Control.FontWeight" Value="Bold"/>
        </Style>
        <Style x:Key="NewBigButtonBigFontStyle" BasedOn="{StaticResource BigFontButtonStyle}">
          <Setter Property="Control.Foreground" Value="Red"/>
          <Setter Property="Control.Background" Value="DarkBlue"/>
        </Style>
      </Window.Resources>
      <Grid Name="gird1" ShowGridLines="True">
        <TextBlock Style="{StaticResource NewBigButtonBigFontStyle}">test</TextBlock>
      </Grid>

> 通过类型自动应用样式

     <Window.Resources>
        <Style TargetType="Button">
          <Setter Property="Control.FontFamily" Value="Times New Roman"/>
          <Setter Property="Control.FontSize" Value="18"/>
          <Setter Property="Control.FontWeight" Value="Bold"/>
        </Style>
      </Window.Resources>
      <Grid Name="gird1" ShowGridLines="True">
        <Button>one</Button>
        <Button Style="{x:Null}">two</Button>
        <Button>three</Button>
      </Grid>

### 触发器

> Trigger	这是一种最简单的触发器。可以监测依赖项属性的变化，然后设置器改变样式。
>
> trigger（4种，属性触发器，数据触发器，事件触发器，多条件触发器）

      <Window.Resources>
        <Style x:Key="BigFontButton">
          <Style.Setters>
            <Setter Property="Control.FontFamily" Value="Times New Roman"/>
            <Setter Property="Control.FontSize" Value="18"/>
            <Setter Property="Control.FontWeight" Value="Bold"/>
          </Style.Setters>
          <Style.Triggers>
            <Trigger Property="Control.IsFocused" Value="True">
              <Setter Property="Control.Foreground" Value="DarkRed"/>
            </Trigger>
          </Style.Triggers>
        </Style>
      </Window.Resources>

> MultiTrigger	与Trigger类似，但这种触发器联合了多个条件。只有满足了所有这些条件，才会启动触发器。 \<Style.Triggers> \<MultiDataTrigger> \<MultiDataTrigger.Conditions> \<Condition Property="Control.IsFocused" Value="true"/> \<Condition Property="Control.IsMouseOver" Value="true"/> \</MultiDataTrigger.Conditions> \<MultiDataTrigger.Setters> \<Setter Property="Control.Foreground" Value="DarkRed"/> \</MultiDataTrigger.Setters> \</MultiDataTrigger> \</Style.Triggers> DataTrigger	这种触发器使用数据绑定，与Trigger类似，只不过监视的是任意绑定数据的变化。

     <Window.Resources>
        <Style x:Key="BigFontButton">
          <Style.Setters>
            <Setter Property="Control.FontFamily" Value="Times New Roman"/>
            <Setter Property="Control.FontSize" Value="18"/>
            <Setter Property="Control.FontWeight" Value="Bold"/>
          </Style.Setters>
          <Style.Triggers>
            <EventTrigger RoutedEvent="Mouse.MouseEnter">
              <EventTrigger.Actions>
                <BeginStoryboard>
                  <Storyboard>
                    <DoubleAnimation Duration="0:0:3" Storyboard.TargetProperty="FontSize"
                             To="50"/>
                  </Storyboard>
                </BeginStoryboard>
              </EventTrigger.Actions>
            </EventTrigger>
            <EventTrigger RoutedEvent="Mouse.MouseLeave">
              <EventTrigger.Actions>
                <BeginStoryboard>
                  <Storyboard>
                    <DoubleAnimation Duration="0:0:3" Storyboard.TargetProperty="FontSize"/>
                  </Storyboard>
                </BeginStoryboard>
              </EventTrigger.Actions>
            </EventTrigger>
          </Style.Triggers>
        </Style>
      </Window.Resources>
      <Grid Name="gird1" ShowGridLines="True">
        <Button HorizontalAlignment="Center" VerticalAlignment="Center" Style="{StaticResource BigFontButton}">onesfsfsfsfsdfsdf</Button>
      </Grid>

> MultiDataTrigger	联合多个数据触发器。 EventTrigger	这是最复杂的触发器。当事件发生时，这种触发器应用动画。

### 模板

> 资源是保存在可执行文件中的一种不可执行数据。在WPF的资源中，几乎可以包含图像、字符串等所有的任意CLR对象，只要对象有一个默认的构造函数和独立的属性。也就是说，应用程序中非程序代码的内容，比如点阵图、颜色、字型、动画/影片档以及字符串常量值，可将它们从程序中独立出来，单独包装成"资源(Resource)"。

### 使用资源的优势：

> 1.  由于不用写在程序代码中，方便管理：便于更新。
> 2.  优化资源，节省空间。资源一旦定义，便可重复利用。还记得FLASH中的将物体转换为元件吗？一旦将物体转换为元件，就可以重复利用了。在WPF中，似乎与之有共通之处。所不同的是，WPF将资源保存在XAML中，对我们而言是“可见的”。

### 资源的范围（层级）：

> WPF提供一个封装和存取资源(resource)的机制，我们可将资源建立在应用程序的不同范围上。WPF中，资源定义的位置决定了该资源的可用范围。资源可以定义在如下范围中： (1)物件级：此时，资源只能套用在这个Object物件，或套用至该物件的子物件。 (2)文件级：如果将资源定义在Window或Page层级的XAML档中，那么可以套用到这个文件中的所有物件。 (3)应用程序级：如果我们将资源定义在App.xaml 中，那么，就可以将资源套用到应用程序内的任何地方。 (4)字典级：当我们把资源封装成一个资源字典, 定义到一个ResourceDictionary的XAML文件时,就可以在另一个应用程序中重复使用。

## &#x20;模板

WPF中什么是模板？   WPF中模板是用于定义或重定义控件结构，或者说对象的外观。   WPF中模板有两类，一个是控件模板（ControlTemplate) 另一个是数据模板（DataTemplate），它们都派生自FrameworkTemplate抽象类。   总共有三大模板ControlTemplate，ItemsPanelTemplate，DataTemplate。   1 ControlTemplate 主要用途是更改控件的外观。它有两个重要属性：VisualTree（视觉树）内容属性和Triggers触发器，对于触发器可以不用过多考虑，触发器可有可无。VisualTree就是呈现我们所画的控件。Triggers可以对我们的视觉树上的元素进行一些变化。   2 ItemsPanelTemplate 是个特殊的空间模板，主要用来标明多条目控件如何显示它所包含的多项数据。也可以说是指定用于项的额布局的面板。多用于多个内容控件的目标。多为Panel属性或者Panel结尾的属性。   3 DataTemplate 主要用于数据的呈现。也被称为显示绑定数据对象的模板。      

## Convertor

作用：可以将源数据和目标数据之间进行特定的转化。比如说实现0与1转换成false和true

    public class IDisplayConverter : IValueConverter
        {
            /// <summary>
            /// 后台转换往前端传值
            /// </summary>
            public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
            {
                if (value != null&&"1".Equals(value.ToString()))
                {
                    return true;
                }
                return false;
            }
            /// <summary>
            /// 反向转换
            /// </summary>
            public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
            {
                throw new NotImplementedException();
            }
        }

xaml：

        <UserControl.Resources>
            <!--引入转换器资源-->
            <local:IDisplayConverter x:Key="converter"></local:IDisplayConverter>
        </UserControl.Resources>
        <Grid>
            <StackPanel>
                <TextBlock x:Name="t3" FontSize="50" 
                     Text="{Binding Path=Text,ElementName=t1,Converter={StaticResource ResourceKey=converter}}"></TextBlock>
                <TextBlock x:Name="t4"  FontSize="50" 
                     Text="{Binding Path=Text,ElementName=t2,Converter={StaticResource ResourceKey=converter}}"></TextBlock>

            </StackPanel>
        </Grid>

## Behavior

> 其实就是对通用的事件作一些封装成为行为Behavior 使之通用减少代码量，大多是业务无关的，比如触发一些鼠标移动的动态效果等。 老版引用System.Windows.Interactivity.dll 新版.net 引用 Microsoft.Xaml.Behaviors; 重写Behavior里面的两个函数OnAttached（附加后）与OnDetaching（分离时）

    using Microsoft.Xaml.Behaviors;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;
    using System.Windows;
    using System.Windows.Media;
    using System.Windows.Media.Effects;
    namespace DEVGIS.WPFAPP.OutTest.Behaviors
    {
      public class EffectBehavior : Behavior<FrameworkElement>
      {
        //使用 Behavior 必须重写以下两个虚方法
        protected override void OnAttached()
        {
          base.OnAttached();
          //AssociatedObject为关联对象， 是Behavior<T>中的T
          AssociatedObject.MouseMove += AssociatedObject_MouseMove;
          AssociatedObject.MouseLeave += AssociatedObject_MouseLeave;
        }
        private void AssociatedObject_MouseLeave(object sender, System.Windows.Input.MouseEventArgs e)
        {
          var element = sender as FrameworkElement;
          element.Effect = (Effect)new DropShadowEffect() { Color = Colors.Transparent, ShadowDepth = 0 };
        }
        private void AssociatedObject_MouseMove(object sender, System.Windows.Input.MouseEventArgs e)
        {
          var element = sender as FrameworkElement;
          element.Effect = (Effect)new DropShadowEffect() { Color = Colors.Red, ShadowDepth = 0 };
        }
        protected override void OnDetaching()
        {
          base.OnDetaching();
          AssociatedObject.MouseMove -= AssociatedObject_MouseMove;
          AssociatedObject.MouseLeave -= AssociatedObject_MouseLeave;
        }
      }
    }

## Command

> WPF的命令系统由几个基本要素构成，它们是：

### 命令(Command)

> WPF的命令实际上就是实现了ICommand接口的类，平时使用最多的就是RoutedCommand类。我们还会学习使用自定义命令。 ICommand接口与RoutedCommand WPF中的命令是实现了ICommand接口的类。ICommand接口非常简单，只包含两个方法和一个事件： Execute方法：命令执行，或者说命令执行于命令目标之上。需要注意的是，现实世界中的命令是不会自己执行的，而这里，执行变成了命令的方法，有点拟人化的味道。 CanExecute方法：在执行之前探知命令是否可以执行。 CanExecuteChanged事件：当命令的可执行状态改变的时候，可激发此事件通知其它对象。 RoutedCommand就是一个实现了ICommand接口的类。RoutedCommand在实现ICommand接口时，并未向Execute和CanExecute方法中添加任何逻辑，也就是说，它是通用的、与具体的业务逻辑无关的。怎么理解“与具体的业务逻辑无关这句话呢”？我们从外部和内部两部分来理解。

### 命令源(Command Source)

> 即命令的发送者，是实现了ICommandSource接口的类。很多界面元素都实现了这个接口，其中包括Button,ListBoxItem,MenuItem等。

### 命令目标(Command Target)

> 即命令发送给谁，或者说命令作用在谁的身上。命令目标必须是实现了IInputElement接口的类。

### 命令关联(Command Binding)

> 负责把一些外围逻辑和命令关联起来，比如执行之前对命令是否可以执行进行判断、命令执行之后还有哪些后续工作等。

## MVVM

### Model

### View

### ViewModel

> INotifyPropertyChanged ViwModel

    public abstract class ViewModel : INotifyPropertyChanged
      {
        public ILogger Logger { get; set; }
        public IMessageBox MessageBox { get; set; }
        public ViewModel()
        {
          Logger = StaticData.Container.GetExportedValue<ILogger>();
          MessageBox = StaticData.Container.GetExportedValue<IMessageBox>();
        }
        public string Name
        {
          get
          {
            return this.GetType().Name;
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
        public bool SetProperty<T>(ref T Source, T NewValue, [CallerMemberName] string? propertyName = null) where T : IComparable
        {
          if (EqualityComparer<T>.Default.Equals(Source, NewValue))
          {
            return false;
          }
          else
          {
            Source = NewValue;
            RaisePropertyChanged(propertyName);
          }
          return true;
        }
      }

> 屬性就可以簡寫成為一下方法：

    public List<DataNode> projectNodes;
            public List<DataNode> ProjectNodes{
          get => projectNodes;
          set => SetProperty(ref projectNodes, value);
        }

## Application類

### 应用程序事件

> Startup：该事件在调用Application.Run()方法之后，并且在主窗口显示之前执行。 （1）、处理命令行参数。 （2）、打开主窗口。 （3）、初始化应用程序范围的资源。 （4）、初始化应用程序范围的属性。 Exit：该事件在应用程序关闭时(不管什么原因) SessionEnding：该事件在Windows对话结束时发生 Activated：当激活应用程序中的窗口时发生该事件，当切换到另外一个window程序时也会触发。 1、 应用程序打开第一个窗口。 2、 用户使用Alt+Tab组合件或者使用任务管理器切换到该应用程序。 3、 用户单击应用程序中一个窗口的任务栏按钮。 Deactivated：当取消激活应用程序中的窗口时发生该事件，当切换到另外一个window程序时也会触发。 DispatcherUnhandledException：应用程序只要发生未处理的异常，都会进入该事件。还可将Handled属性设置为true，继续运行应用程序。

## Prism

> Prism 是一个用于构建松耦合、可维护和可测试的 XAML 应用的框架，它支持所有还活着的基于 XAML 的平台，包括 WPF、Xamarin Forms、WinUI 和 Uwp Uno。Prism 提供了一组设计模式的实现，这些模式有助于编写结构良好且可维护的 XAML 应用程序，包括 MVVM、依赖项注入、命令、事件聚合器等。

### 重要的概念

#### Modules

> Modules是能够独立开发、测试、部署的功能单元， Modules可以被设计成实现特定业务逻辑的模块（如Profile Management），也可以被设计成实现通用基础设施或服务的模块 　（如Logging、Exception Management）。

#### Module Catalog：

> 在Prism中，Module Catalog指明了要Load哪些Module，和用什么样的顺序去Load这些Module。

#### Shell

> Shell是宿主应用程序（host application），modules将会被load到Shell中。 Shell定义了应用程序的整体布局和结构，而不关心寄宿其中的Module，Shell通常实现通用的application service和infrastructure，而应用的逻辑则实现在具体的Module中，同时，Shell也提供了应用程序的顶层窗口。

#### Views：

> Views是应用中展现特定功能的视图，它展现UI、定义交互行为，并且通过数据绑定的方式与ViewModel进行交互。

#### View Model和Presenters

> View Model用来封装应用程序的UI逻辑及其状态。

##### Model

> Model被用来封装数据和相应的验证，以及相关的业务规则来保证数据的一致性和正确性。

##### Commands

> Command被用来封装应用程序功能，Prism提供了Delegate Command和CompositeCommand两个类。

##### Regions：

> Regions是应用程序UI的逻辑区域，它很像一个PlaceHolder，Views在Regions中展现，很多种控件可以被用作Region：ContentControl、ItemsControl、ListBox、TabControl。Views能在Regions编程或者自动呈现，Prism也提供了Region导航的支持。

#### Navigation

> Prism支持两种导航：state-based导航和view-switching导航。

#### EventAggregator

> 组件通常要和其它的组件或者服务进行通信。为此，Prism提供了EventAggregator组件，这个组件实现pub-sub事件机制，允许一些组件发布事件，另一些组件去订阅事件而无需两个组件之间的引用。

#### Dependency Injection container

> Prism使用依赖注入模式来管理组件之间的依赖，Prism被设计使用Unity、Mef等依赖注入容器。

#### Services：

> Services是用来实现非UI相关功能的逻辑，例如logging、exception management、data access。Services可以被定义在应用程序中或者是Module中，Services通常被注册在依赖注入容器中，使得其它的组件可以很容易的定位这个服务。

#### Controllers

> Controller被用来控制在Region中哪个View将会被呈现，同时控制这个View的创建和初始化。

#### Bootstrapper：

> Bootstrapper用来初始化应用程序级别的组件和服务， 它也被用来配置和初始化module catalog和Shell 的View和View Model。

### Prism.Core、Prism.Wpf 和 Prism.Unity\#

> 现在 Prism 只支持 DryIoc 和 Unity 两种 IOC 容器。 以 WPF 为例，核心的项目是 Prism.Core，它提供实现 MVVM 模式的核心功能以及部分各平台公用的类。然后是 Prism.Wpf，它提供针对 Wpf 平台的功能，包括导航、弹框等。最后由 Prism.Unity 指定 Unity 作为 IOC 容器。

### Prism.Core\#

> BindableBase 和 ErrorsContainer Commanding Event Aggregator 这些功能已经覆盖了 MVVM 的核心功能。

### BindableBase 和 ErrorsContainer\#

> 数据绑定是 MVVM 的核心元素之一，为了使绑定的数据可以和 UI 交互，数据类型必须继承 INotifyPropertyChanged。 BindableBase 实现了 INotifyPropertyChanged 最简单的封装，它的使用如下：

    public class MockViewModel : BindableBase
    {
      private string _myProperty;
      public string MyProperty
      {
        get { return _myProperty; }
        set { SetProperty(ref _myProperty, value); }
      }
    }

> 其中 SetProperty 判断 \_myProperty 和 value 是否相等，如果不相等就为 \_myProperty 赋值并触发 OnPropertyChanged 事件。 除了 INotifyPropertyChanged，绑定机制中另一个十分有用的接口是 INotifyDataErrorInfo，它用于公开数据验证的结果。Prism 提供了 ErrorsContainer 以便管理及通知数据验证的错误信息。要使用 ErrorsContainer，可以先写一个类似这样的基类：

    public class DomainObject : BindableBase, INotifyDataErrorInfo
    {
      public ErrorsContainer<string> _errorsContainer;
      protected ErrorsContainer<string> ErrorsContainer
      {
        get
        {
          if (_errorsContainer == null)
            _errorsContainer = new ErrorsContainer<string>(s => OnErrorsChanged(s));
          return _errorsContainer;
        }
      }
      public event EventHandler<DataErrorsChangedEventArgs> ErrorsChanged;
      public void OnErrorsChanged(string propertyName)
      {
        ErrorsChanged?.Invoke(this, new DataErrorsChangedEventArgs(propertyName));
      }
      public IEnumerable GetErrors(string propertyName)
      {
        return ErrorsContainer.GetErrors(propertyName);
      }
      public bool HasErrors
      {
        get { return ErrorsContainer.HasErrors; }
      }
    }

> 然后就可以在派生类中通过 ErrorsContainer.SetErrors 和 ErrorsContainer.ClearErrors 管理数据验证的错误信息： public class MockValidatingViewModel : DomainObject { private int mockProperty; public int MockProperty { get { return mockProperty; } set { SetProperty(ref mockProperty, value); if (mockProperty < 0) ErrorsContainer.SetErrors(() => MockProperty, new string\[] { "value cannot be less than 0" }); else ErrorsContainer.ClearErrors(() => MockProperty); } } }

### Commanding

> ICommand 同样是 MVVM 模式的核心元素，DelegateCommand 实现了 ICommand 接口，它最基本的使用形式如下，其中 DelegateCommand 构造函数中的第二个参数 canExecuteMethod 是可选的：

    public DelegateCommand SubmitCommand { get; private set; }
    public CheckUserViewModel()
    {
      SubmitCommand = new DelegateCommand(Submit, CanSubmit);
    }
    private void Submit()
    {
      //implement logic
    }
    private bool CanSubmit()
    {
      return true;
    }

> 另外它还有泛型的版本：

    public DelegateCommand<string> SubmitCommand { get; private set; }
    public CheckUserViewModel()
    {
      SubmitCommand = new DelegateCommand<string>(Submit, CanSubmit);
    }
    private void Submit(string parameter)
    {
      //implement logic
    }
    private bool CanSubmit(string parameter)
    {
      return true;
    }

> 通常 UI 会根据 ICommand 的 CanExecute 函数的返回值来判断触发此 Command 的 UI 元素是否可用。CanExecute 返回 DelegateCommand 构造函数中的第二个参数 canExecuteMethod 的返回值。如果不传入这个参数，则 CanExecute 一直返回 True。 如果 CanExecute 的返回值有变化，可以调用 RaiseCanExecuteChanged 函数，它会触发 CanExecuteChanged 事件并通知 UI 元素重新判断绑定的 ICommand 是否可用。除了主动调用 RaiseCanExecuteChanged，DelegateCommand 还可以用 ObservesProperty 和 ObservesCanExecute 两种形式监视属性，定于属性的 PropertyChanged 事件并改变 CanExecute：

    private bool _isEnabled;
    public bool IsEnabled
    {
      get { return _isEnabled; }
      set { SetProperty(ref _isEnabled, value); }
    }
    private bool _canSave;
    public bool CanSave
    {
      get { return _canSave; }
      set { SetProperty(ref _canSave, value); }
    }
    public CheckUserViewModel()
    {
      SubmitCommand = new DelegateCommand(Submit, CanSubmit).ObservesProperty(() => IsEnabled);
      //也可以写成串联方式
      SubmitCommand = new DelegateCommand(Submit, CanSubmit).ObservesProperty(() => IsEnabled).ObservesProperty<bool>(() => CanSave);
      SubmitCommand = new DelegateCommand(Submit).ObservesCanExecute(() => IsEnabled);
    }

### Event Aggregator

> 本来Event Aggregator（事件聚合器）或 Messenger 之类的组件本来并不是 MVVM 的一部分，不过现在也成了 MVVM 框架的一个重要元素。解耦是 MVVM 的一个重要目标，'EventAggregator' 则是实现解耦的重要工具。在 MVVM 中，对于 View 和与他匹配的 ViewModel 之间的交互，可以使用 INotifyProperty 和 Icommand；而对于必须通信的不同 ViewModel 或模块，为了使它们之间实现低耦合，可以使用 Prism 中的 EventAggregator。如下图所示，Publisher 和 Scbscriber 之间没有直接关联，它们通过 Event Aggregator 获取 PubSubEvent 并发送及接收消息： 要使用 EventAggregator，首先需要定义 PubSubEvent： public class TickerSymbolSelectedEvent : PubSubEvent\<string>{} 发布方和订阅方都通过 EventAggregator 索取 PubSubEvent，在 ViewModel中通常都是通过依赖注入获取一个 IEventAggregator：

    public class MainPageViewModel
    {
      IEventAggregator _eventAggregator;
      public MainPageViewModel(IEventAggregator ea)
      {
        _eventAggregator = ea;
      }
    }

> 发送方的操作很简单，只需要 通过 GetEvent 拿到 PubSubEvent，把消息发布出去，然后拍拍屁股走人，其它的责任都不用管： eventAggregator.GetEvent\<TickerSymbolSelectedEvent>().Publish("STOCK0"); 订阅方是真正使用这些消息并负责任的人，下面是最简单的通过 Subscribe 订阅事件的代码：

    public class MainPageViewModel
    {
      public MainPageViewModel(IEventAggregator ea)
      {
        ea.GetEvent<TickerSymbolSelectedEvent>().Subscribe(ShowNews);
      }
      void ShowNews(string companySymbol)
      {
        //implement logic
      }
    }

> 除了基本的调用方式，Subscribe 函数还有其它可选的参数： public virtual SubscriptionToken Subscribe(Action action, ThreadOption threadOption, bool keepSubscriberReferenceAlive) 其中 threadOption 指示收到消息后在哪个线程上执行第一个参数定义的 action，它有三个选项： PublisherThread，和发布者保持在同一个线程上执行。 UIThread，在 UI 线程上执行。 BackgroundThread，在后台线程上执行。 第三个参数 keepSubscriberReferenceAlive 默认为 false，它指示该订阅是否为强引用。 设置为 false 时，引用为弱引用，用完可以不用管。 设置为 true 时，引用为强引用，用完需要使用 Unsubscribe 取消订阅。 下面代码是一段订阅及取消订阅的示例：

    public class MainPageViewModel
    {
      TickerSymbolSelectedEvent _event;
      public MainPageViewModel(IEventAggregator ea)
      {
        _event = ea.GetEvent<TickerSymbolSelectedEvent>();
        _event.Subscribe(ShowNews);
      }
      void Unsubscribe()
      {
        _event.Unsubscribe(ShowNews);
      }
      void ShowNews(string companySymbol)
      {
        //implement logic
      }
    }

### PrismApplication\#

> 安装好 Prism.Wpf 和 Prism.Unity 后，下一步要做的是将 App.xaml 的类型替换为 PrismApplication。 \<prism\:PrismApplication x\:Class="PrismTest.App" xmlns="<http://schemas.microsoft.com/winfx/2006/xaml/presentation>" xmlns\:x="<http://schemas.microsoft.com/winfx/2006/xaml>" xmlns\:prism="[http://prismlibrary.com/">](http://prismlibrary.com/">) \<Application.Resources> \</Application.Resources> \</prism\:PrismApplication> 上面是修改过的 App.xaml，将 Application 改为 prism\:PrismApplication，并且移除了 StartupUri="MainWindow\.xaml"。 修改 App.xaml.cs： public partial class App : PrismApplication { public App() { } protected override Window CreateShell() => Container.Resolve\<ShellWindow>(); } PrismApplication 不使用 StartupUri ，而是使用 CreateShell 方法创建主窗口。

### RegisterTypes

> 向IOC容器中注册类型 protected override void RegisterTypes(IContainerRegistry containerRegistry) { containerRegistry.RegisterForNavigation\<BlankPage, BlankViewModel>(PageKeys.Blank); containerRegistry.RegisterForNavigation\<MainPage, MainViewModel>(PageKeys.Main); containerRegistry.RegisterForNavigation\<ShellWindow, ShellViewModel>(); // Configuration var configuration = BuildConfiguration(); // Register configurations to IoC containerRegistry.RegisterInstance\<IConfiguration>(configuration); }

### XAML ContainerProvider\#

在 XAML 中直接实例化 ViewModel 并设置 DataContext 是 View 和 ViewModel 之间建立关联的最基本的方法： Copy \<UserControl.DataContext> <viewmodels:MainViewModel/> \</UserControl.DataContext> 但现实中很难这样做，因为相当一部分 ViewModel 都会在构造函数中注入依赖，而 XAML 只能实例化具有无参数构造函数的类型。为了解决这个问题，Prism 提供了 ContainerProvider 这个工具，通过设置 Type 或 Name 从 Container 中解析请求的类型，它的用法如下： Copy \<TextBlock Text="{Binding Path=Foo, Converter={prism\:ContainerProvider {x\:Type local\:MyConverter}}}" /> \<Window> \<Window\.DataContext> \<prism\:ContainerProvider Type="{x\:Type local\:MyViewModel}" /> \</Window\.DataContext> \</Window>

### ViewModelLocator

Prism 还提供了 ViewModelLocator，用于将 View 的 DataContext 设置为对应的 ViewModel： Copy \<Window x\:Class="Demo.Views.MainWindow" ... xmlns\:prism="<http://prismlibrary.com/>" prism\:ViewModelLocator.AutoWireViewModel="True"> 在将 View 的 ViewModelLocator.AutoWireViewModel 附加属性设置为 True 的同时，Prism 会为查找这个 View 对应的 ViewModel 类型，然后从 Container 中解析这个类型并设置为 View 的 DataContext。它首先查找 ViewModelLocationProvider 中已经使用 Register 注册的类型，Register 函数的使用方式如下： Copy ViewModelLocationProvider.Register\<MainWindow, CustomViewModel>(); 如果类型未在 ViewModelLocationProvider 中注册，则根据约定好的命名方式找到 ViewModel 的类型，这是默认的查找逻辑的源码： Copy var viewName = viewType.FullName; viewName = viewName.Replace(".Views.", ".ViewModels."); var viewAssemblyName = viewType.GetTypeInfo().Assembly.FullName; var suffix = viewName.EndsWith("View") ? "Model" : "ViewModel"; var viewModelName = String.Format(CultureInfo.InvariantCulture, "{0}{1}, {2}", viewName, suffix, viewAssemblyName); return Type.GetType(viewModelName); 例如 PrismTest.Views.MainView 这个类，对应的 ViewModel 类型就是 PrismTest.ViewModels.MainViewModel。 当然很多项目都不符合这个命名规则，那么可以在 App.xaml.cs 中重写 ConfigureViewModelLocator 并调用 ViewModelLocationProvider.SetDefaultViewTypeToViewModelTypeResolver 改变这个查找规则： Copy protected override void ConfigureViewModelLocator() { base.ConfigureViewModelLocator(); ViewModelLocationProvider.SetDefaultViewTypeToViewModelTypeResolver((viewType) => { var viewName = viewType.FullName.Replace(".ViewModels.", ".CustomNamespace."); var viewAssemblyName = viewType.GetTypeInfo().Assembly.FullName; var viewModelName = \$"{viewName}ViewModel, {viewAssemblyName}"; return Type.GetType(viewModelName); }); }

### Dialog Service

Prism 7 和 8 相对于以往的版本最大的改变在于 View 和 ViewModel 的交互，现在的处理方式变得更加易于使用，这篇文章以其中的 DialogService 作为代表讲解 Prism 如何实现 View 和 ViewModel 之间的交互。 DialogService 内部会调用 ViewModelLocator.AutoWireViewModel，所以使用 DialogService 调用的 View 无需添加这个附加属性。 以往在 WPF 中需要弹出一个窗口，首先新建一个 Window，然后调用 ShowDialog，ShowDialog 阻塞当前线程，直到弹出的 Window 关闭，这时候还可以拿到一个返回值，具体代码差不多是这样： Copy var window = new CreateUserWindow { Owner = this }; var dialogResult = window\.ShowDialog(); if (dialogResult == true) { var user = window\.User; //other code; } 简单直接有用。但在 MVVM 模式中，开发者要假装自己不知道要调用的 View，甚至不知道要调用的 ViewModel。开发者只知道要执行的这个操作的名字，要传什么参数，拿到什么结果，至于具体由谁去执行，开发者要假装不知道（虽然很可能都是自己写的）。为了做到这种效果，Prism 提供了 IDialogService 接口。这个接口的具体实现已经在 PrismApplication 里注册了，用户通常只需要从构造函数里注入这个服务： Copy public MainWindowViewModel(IDialogService dialogService) { \_dialogService = dialogService; } IDialogService 提供两组函数，分别是 Show 和 ShowDialog，对应非模态和模态窗口。它们的参数都一样：弹出的对话框的名称、传入的参数、对话框关闭时调用的回调函数： Copy void ShowDialog(string name, IDialogParameters parameters, Action\<IDialogResult> callback); 其中 IDialogResult 类型包含 ButtonResult 类型的 Result 属性和 IDialogParameters 类型的 Parameters 属性，前者用于标识关闭对话框的动作（Yes、No、Cancel等），后者可以传入任何类型的参数作为具体的返回结果。下面代码展示了一个基本的 ShowDialog 函数调用方式： Copy var parameters = new DialogParameters { { "UserName", "Admin" } }; \_dialogService.ShowDialog("CreateUser", parameters, dialogResult => { if (dialogResult.Result == ButtonResult.OK) { var user = dialogResult.Parameters.GetValue\<User>("User"); //other code } }); 为了让 IDialogService 知道上面代码中 “CreateUser” 对应的 View，需要在 'App,xaml.cs' 中的 RegisterTypes 函数中注册它对应的 Dialog： Copy containerRegistry.RegisterDialog\<CreateUserView>("CreateUser"); 上面这种注册方式需要依赖 ViewModelLocator 找到对应的 ViewModel，也可以直接注册 View 和对应的 ViewModel： Copy containerRegistry.RegisterDialog\<CreateUserView, CreateUserViewModel>("CreateUser"); 有没有发现上面的 CreateUserWindow 变成了 CreateUserView？因为使用 DialogService 的时候，View 必须是一个 UserControl，DialogService 自己创建一个 Window 将 View 放进去。这样做的好处是 View 可以不清楚自己是一个弹框或者导航的页面，或者要用在拥有不同 Window 样式的其它项目中，反正只要实现逻辑就好了。由于 View 是一个 UserControl，它不能直接控制拥有它的 Window，只能通过在 View 中添加附加属性定义 Window 的样式： Copy <prism:Dialog.WindowStyle> \<Style TargetType="Window"> \<Setter Property="prism\:Dialog.WindowStartupLocation" Value="CenterScreen" /> \<Setter Property="ResizeMode" Value="NoResize"/> \<Setter Property="ShowInTaskbar" Value="False"/> \<Setter Property="SizeToContent" Value="WidthAndHeight"/> \</Style> \</prism\:Dialog.WindowStyle> 最后一步是实现 ViewModel。对话框的 ViewModel 必须实现 IDialogAware 接口，它的定义如下： Copy public interface IDialogAware { /// <summary> /// 确定是否可以关闭对话框。 /// </summary> bool CanCloseDialog(); /// <summary> /// 关闭对话框时调用。 /// </summary> void OnDialogClosed(); /// <summary> /// 在对话框打开时调用。 /// </summary> void OnDialogOpened(IDialogParameters parameters); /// <summary> /// 将显示在窗口标题栏中的对话框的标题。 /// </summary> string Title { get; } /// <summary> /// 指示 IDialogWindow 关闭对话框。 /// </summary> event Action\<IDialogResult> RequestClose; } 一个简单的实现如下： Copy public class CreateUserViewModel : BindableBase, IDialogAware { public string Title => "Create User"; public event Action\<IDialogResult> RequestClose; private DelegateCommand \_createCommand; public DelegateCommand CreateCommand => \_createCommand ??= new DelegateCommand(Create); private string \_userName; public string UserName { get { return \_userName; } set { SetProperty(ref \_userName, value); } } public virtual void RaiseRequestClose(IDialogResult dialogResult) { RequestClose?.Invoke(dialogResult); } public virtual bool CanCloseDialog() { return true; } public virtual void OnDialogClosed() { } public virtual void OnDialogOpened(IDialogParameters parameters) { UserName = parameters.GetValue\<string>("UserName"); } protected virtual void Create() { var parameters = new DialogParameters { { "User", new User{Name=UserName} } }; RaiseRequestClose(new DialogResult(ButtonResult.OK, parameters)); } } 上面的代码在 OnDialogOpened 中读取传入的参数，在 RaiseRequestClose 关闭对话框并传递结果。至此就完成了弹出对话框并获取结果的整个流程。 自定义 Window 样式在 WPF 程序中很流行，DialogService 也支持自定义 Window 样式。假设 MyWindow 是一个自定义样式的 Window，自定义一个继承它的 MyPrismWindow 类型，并实现接口 IDialogWindow： Copy public partial class MyPrismWindow: MyWindow, IDialogWindow { public IDialogResult Result { get; set; } } 然后调用 RegisterDialogWindow 注册这个 Window 类型。 Copy protected override void RegisterTypes(IContainerRegistry containerRegistry) { containerRegistry.RegisterDialogWindow\<MyPrismWindow>(); } 这样 DialogService 将会使用这个自定义的 Window 类型作为 View 的窗口。

### Prism框架 如何在主程序中合理的弹出子窗体

> 最常见的实现方法就是在ViewModel中，直接New ChildWindow，然后直接Show。这样的方法也达到的要求。但是它不符合MVVM分层思想，再就是代码不美观，难以维护，今天我就给大家介绍一种美观又实用的方法。通过Prism中提供的InteractionRequestTrigger事件触发器，实现点击按钮或者用户的某种操作弹出对话框的效果。另外，不要忘了引用此命名空间：

    using Microsoft.Practices.Prism.Interactivity.InteractionRequest;
    <Window x:Class="ChildWindowDemo.ChildWindow.ChildWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:i="http://schemas.microsoft.com/expression/2010/interactivity" 
        xmlns:ei="http://schemas.microsoft.com/expression/2010/interactions"
        Width="300" Height="150" 
        Title="{Binding Title}"
        x:Name="confirmationWindow" Topmost="True" WindowStyle="ToolWindow" WindowStartupLocation="CenterScreen">
      <Grid x:Name="LayoutRoot" Margin="2">
        <Grid.RowDefinitions>
          <RowDefinition />
          <RowDefinition Height="Auto" />
        </Grid.RowDefinitions>
        <ContentControl HorizontalAlignment="Stretch" VerticalAlignment="Stretch" Grid.Row="0" Content="{Binding Content}"/>
        <Button Content="Cancel" Width="75" Height="23" HorizontalAlignment="Right" Margin="0,12,0,0" Grid.Row="1">
          <i:Interaction.Triggers>
            <i:EventTrigger EventName="Click">
              <ei:CallMethodAction TargetObject="{Binding ElementName=confirmationWindow}" MethodName="Close"/>
            </i:EventTrigger>
          </i:Interaction.Triggers>
        </Button>
        <Button Content="OK" Width="75" Height="23" HorizontalAlignment="Right" Margin="0,12,79,0" Grid.Row="1">
          <i:Interaction.Triggers>
            <i:EventTrigger EventName="Click">
              <ei:ChangePropertyAction PropertyName="Confirmed" TargetObject="{Binding}" Value="True"/>
              <ei:CallMethodAction TargetObject="{Binding ElementName=confirmationWindow}" MethodName="Close"/>
            </i:EventTrigger>
          </i:Interaction.Triggers>
        </Button>
      </Grid>
    </Window>

> 创建ChildWindow的基类：ChildWindowActionBase 并从TriggerAction\<T>派生，代码如下： public class ChildWindowActionBase : TriggerAction\<FrameworkElement> { protected override void Invoke(object parameter) { var arg = parameter as InteractionRequestedEventArgs; if (arg == null) return; var windows = this.GetChildWindow(arg.Context); var callback = arg.Callback; EventHandler handler = null; handler = (o, e) => { windows.Closed -= handler; callback(); }; windows.Closed += handler; windows.ShowDialog(); } Window GetChildWindow(Notification notification) { var childWindow = this.CreateDefaultWindow(notification); childWindow\.DataContext = notification; return childWindow; } Window CreateDefaultWindow(Notification notification) { return (Window)new ChildWindow\.ChildWindow(); } } 到此子窗体已经完成

    <Window x:Class="ChildWindowDemo.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:prism="http://www.codeplex.com/prism"
        xmlns:i="http://schemas.microsoft.com/expression/2010/interactivity"
        xmlns:local="clr-namespace:ChildWindowDemo"
        Title="MainWindow" Height="200" Width="300">
      <i:Interaction.Triggers>
        <prism:InteractionRequestTrigger SourceObject="{Binding ConfirmationRequest, Mode=OneWay}">
          <local:ChildWindowActionBase/>
        </prism:InteractionRequestTrigger>
      </i:Interaction.Triggers>
      <Grid>
        <Button Command="{Binding RaiseConfirmation}" Content="Click Me !" HorizontalAlignment="Left" Margin="29,31,0,0" VerticalAlignment="Top" Width="217" Height="55"/>
        <TextBlock HorizontalAlignment="Left" Margin="29,106,0,0" TextWrapping="Wrap" Text="{Binding ConfirmationResult}" VerticalAlignment="Top"/>
      </Grid>
    </Window>

> 对之对应的ViewModel：

    public class MainWindowViewModel : NotificationObject
      {
        public MainWindowViewModel()
        {
          this.RaiseConfirmation = new DelegateCommand(this.OnRaiseConfirmation);
          this.ConfirmationRequest = new InteractionRequest<Confirmation>();
        }
        public InteractionRequest<Confirmation> ConfirmationRequest { get; private set; }
        public DelegateCommand RaiseConfirmation { get; private set; }
        private string result;
        public string ConfirmationResult
        {
          get { return result; }
          set
          {
            result = value;
            this.RaisePropertyChanged(() => this.ConfirmationResult);
          }
        }
        private void OnRaiseConfirmation()
        {
          this.ConfirmationRequest.Raise(
            new Confirmation { Content = "是否确认", Title = "子窗体" },
            (cb) => { ConfirmationResult = cb.Confirmed ? "确认" : "取消"; });
        }   
      }

## 拖拽

> <https://github.com/punker76/gong-wpf-dragdrop>

## XAML

> x: 前缀：用于映射 XAML xmlns <http://schemas.microsoft.com/winfx/2006/xaml。> x\:Class属性（Attribute）：编译成C#代码后对应的类名，如果手动把该属性改成其他后台代码中不包含的类名称，编译后会自动生成该类。如果与后台代码的类名称相同则进行合并（后台代码中的类要用partial修饰）。 x\:Key：为 ResourceDictionary 中的每个资源设置一个唯一的键。 x\:Name：为运行时代码中存在的实例指定运行时对象名称。 x\:Static：启用一个获取静态值的值引用，该静态值只能是一个 XAML 可设置属性。 x\:Type：根据类型名称构造Type 引用。指定采用 Type 的属性 XAML的树形结构： XAML都是一个树，有唯一根节点，通常为Window或Page。 提供VisualTreeHelper和LogicTreeHelper两个帮助类用来查找或操作树。

### 合并XAMLS命名空间 到 <http://url>

> 注意看程序集的信息，里面有一堆这样的代码： \[assembly: XmlnsDefinition("<http://schemas.microsoft.com/winfx/2006/xaml/presentation>", "System.Windows.Controls")] \[assembly: XmlnsDefinition("<http://schemas.microsoft.com/winfx/2006/xaml/presentation>", "System.Windows.Documents")] \[assembly: XmlnsDefinition("<http://schemas.microsoft.com/winfx/2006/xaml/presentation>", "System.Windows.Shapes")] \[assembly: XmlnsDefinition("<http://schemas.microsoft.com/winfx/2006/xaml/presentation>", "System.Windows.Shell")] \[assembly: XmlnsDefinition("<http://schemas.microsoft.com/winfx/2006/xaml/presentation>", "System.Windows.Navigation")] \[assembly: XmlnsDefinition("<http://schemas.microsoft.com/winfx/2006/xaml/presentation>", "System.Windows.Data")] \[assembly: XmlnsDefinition("<http://schemas.microsoft.com/winfx/2006/xaml/presentation>", "System.Windows")] \*\*\*\*\*\*\*\*\*\*\*\* 这些代码的作用就是把那些命名空间合并到一个统一的命名空间里，方便调用。我们在自己的程序集里也可以这样用，只要修改AssemblyInfo.cs就可以了。然后我们在XAML里添加命名空间，就会看到自己定义的命名空间了。

## 布局

> StackPanel 在纵向上或横向上排列元素，注意默认会自动充满横向空间和纵向空间，不会自动换行，通过Orientation控制排列方向。 WrapPanel 采用流式布局，通过Orientation控制流的方向，当到达行尾或列尾时可以实现自动换行。 DockPanel 可以设置内部元素的停靠方向，通过设置DockPanel.Dock设置子控件的停靠方向。 Canvas 可以进行绝对定位布局，通过设置Canvas.Left和Canvas.Top等定位元素，除非确定布局不会改变，否则尽量少使用Canvas布局。 Grid 以网格的形式对元素进行布局 通用设置 控制尺寸

1.  高度和宽度 FrameworkElement元素会根据内容大小调整尺寸（这里有一个例外，如果Window不设置SizeToContent的话，会根据屏幕分辨率设置自己的大小），它同时有Width（默认值Double.NaN，XAML里可以指定为Auto，意思就是和内容一样大）、Height（默认值同Width）、MinWidth（默认值0）、MinHeight（默认值0）、MaxWidth（默认值Double.PositiveInfinity，XAML里面可以写Infinity）、MaxHeight（默认值同MaxWidth）控制宽高，显然如果Width和Height在Min*和Max*范围内的时候，它们的优先级要比Min*以及Max*高 FrameworkElement还有一些与尺寸有关的只读属性：DesiredSize、ActualWidth和ActualHeight、RenderSize；DesiredSize是基于以上属性计算出来的，由父元素（Panel）在布局过程中使用的；RenderSize则是布局结束后元素的尺寸，ActualWidth和ActualHeight与之相同。由于布局操作是异步的，RenderSize的值会晚于Height、Width等基本属性的值，所以依赖RenderSize是不可靠的；UIElement中有一个强制完成布局的方法UpdateLayout()，但由于它会影响性能，而且不能保证正在使用的元素会被正常渲染，所以一般不用
2.  Margin和Padding FrameworkElement.Margin：控制元素边界外的空间 Control.Padding：控制元素边界内的空间
3.  Visibility Collapsed：元素不可见并且不参与布局 Visible：元素可见，并参与布局 Hidden：元素不可见但是参与布局

#### 控制位置

> 不同父元素（Panel）有不同的方法确定子元素的位置，但是有一些方法是子元素共有的

##### 1. Alignment

\###### 比如Canvas就没有给它的子元素分配多余的空间，所以设置HorizontalAlignment和VerticalAlignment不起作用 ###### 子元素（FrameworkElement）可以通过设置Alignment（默认值Stretch）控制怎样使用父元素分配给它的多余的空间；“多余的空间”很重要，因为如果父元素按照子元素的大小给它分配空间的话，这两个属性就不起作用了 ###### 再比如StackPanel（Orientation属性值这里默认是Vertical，表示子元素垂直排列）只为子元素在水平方向上分配了多余空间，垂直方向上根据尺寸分配，所以设置HorizontalAlignment可以起作用，而设置VerticalAlignment不起作用

##### 2. Content Alignment

\###### Control元素还可以通过设置HorizontalContentAlignment和VerticalContentAlignment控制自己的内容元素怎样对齐

##### 3. FlowDirection

\###### FrameworkElement可以通过设置此属性改变此元素的内容流动的方向（LeftToRight和RightToLeft），可以作用在面板（Panel）或者拥有子元素的控件上

#### Panel（面板）

> Panel有一个ZIndex附加属性，ZIndex值大的元素会呈现在ZIndex值小的元素上方 WPF内置的常用面板有：Canvas、StackPanel、WrapPanel、DockPanel、Grid，还有一些大多数时候在控件内部使用的轻量级面板

##### 1. 常用面板

> 常用面板里只记录一下GridSplitter（实际不是Panel类），Grid中可以通过GridSplitter交互改变行列尺寸，哪个单元格尺寸会被影响取决于GridSplitter的对齐值HorizontalAlignment（默认是Right）和VerticalAlignment（默认是Stretch），《WPF揭秘》里有张图，贴在这里，另外ResizeDirection和ResizeBehavior属性也会影响GridSplitter改变单元格尺寸的行为

##### 2. TabPanel

> TabControl的默认样式用它来处理TabItem的布局；TabPanel仅支持从左往右的排列，从上往下的换行，当换行发生时它会平均拉伸元素，使所有的行占据面板的全部宽度

##### 3. ToolBarOverflowPanel

> 仅支持从左往右的排列、从上往下的换行，默认样式的ToolBar就是用它来显示无法在主区域显示的元素，有一个WrapWidth属性

##### 4. ToolBarTray

> 仅支持ToolBar子元素，它会以水平的方式排列ToolBar，并且可以拖动ToolBar生成其他行，或者压缩或扩展相邻的ToolBar

##### 5. UniformGrid

> 子元素按先行后列的顺序添加，并且行列的大小都是\*（平均大小）

##### 6. VirtualizingStackPanel

不同于以上的轻量级面板，当绑定大量数据的时候，VirtualizingStackPanel是首选，因为它会临时抛弃显示范围之外的元素以提高性能，ListBox的默认样式使用的就是这个面板 处理内容溢出 当父元素不能满足子元素尺寸需求的时候，子元素可能会拒绝在过小的空间呈现，这种情况下就会发生内容溢出 父元素（Panel）在处理内容溢出的时候，有以下几种策略：

> 1.  Clipping（剪辑） UIElement用ClipToBounds属性控制自己是否剪辑超出边界的内容，但是WPF内置面板中只有Canvas支持这个属性，其他诸如Grid等面板设置这个属性也没有用 另外Grid等面板中的子元素通过变换（Transform）超出边界的部分也会被剪辑
> 2.  Scrolling（滚屏） 把需要滚屏的元素作为ScrollViewer的子元素即可实现滚屏，但是不要为该元素设置宽度或高度，因为ScollViewer需要根据子元素的内容大小设置合适的水平和垂直滚动范围
> 3.  Scaling（缩放） 为了在给定空间中缩放任意元素（ScaleTransform搞不定），可以使用Viewbox，有两个重要属性：Stretch（控制子元素怎样在Viewbox的边界内缩放）、StretchDirection（控制是需要缩小还是放大子元素）。需要注意的是，Viewbox的缩放是在布局之后发生的
> 4.  其他 还有两种策略是换行（Wrapping）和截断（Trimming），换行是WrapPanel用的策略，截断则是TextBlock和AccessText中内联文本使用的策略

## 绑定（Binding ）

&#x20;WPF 里分三种：Binding,PriorityBinding,MultiBinding,这三种Binding的基类都是BindingBase，而BindingBase又继承于MarkupExtension。

常见的使用Binding方法是：   1 针对于继承于FrameworkElement控件。 SetBinding(DependencyProperty dp,String path),SetBinding(DependencyProperty dp,BindingBase binding),其中FrameworkElement中SetBinding只对DependencyProperty有效。  &#x20;

2 另一种是BindingOperations.SetBinding(currentFolder,TextBlock.TextProperty,binding);   BindingOperations.SetBinding的原型是   public static BindingExpressionBase SetBinding(DependencyObject target,DependencyProperty dp,BindingBase binding)  &#x20;

3 清除Binding:   BindingOperations.ClearBinding(currentFolder,TextBlock.TextProperty);//删除currentFolder上的TextBlock.TextProperty绑定   BindingOperations.ClearAllBindings(currentFolder);//删除currentFolder上的所有绑定。   直接对Dependency Property赋值也可以解除binding，不过只对单向binding有效。  &#x20;

> 数据绑定是种关系，告诉WPF从源对象提取信息设置目标对象的属性 源对象是WPF元素并且源属性是依赖项属性的数据绑定，这是最简单的数据绑定。

### 绑定表达式

> 数据绑定表达式使用XAML扩展标记，以Binding开头，实际上是创建了System.Windows.Data.Binding类实例，且设置两个属性：ElementName属性（源元素）和Path属性（源元素中的属性）。

### 绑定错误

> WPF不会引发异常带来通知与数据绑定相关的问题。指定的元素或属性不存在，只是在目标属性中不能显示数据。WPF输出了绑定失败细节的跟踪信息。当调试应用程序时，该信息显示在Visual Studio的输出窗口中。

### 绑定模式

> 数据绑定的特性是目标会被自动更新，而不管源是被如何修改的。Binding.Mode的所有枚举值：
> OneWay：当源属性变化时更新目标属性
> TwoWay：当源属性变化时更新目标属性，并且当目标属性变化时更新源属性
> OneTime：最初根据源属性设置目标属性。然而，在此之后的所有改变都会被忽略
> OneWayToSource：当目标属性变化时更新源属性
> Default：此类绑定依赖于目标属性，他既可以是双向的，也可以是单向的。

### 代码创建绑定

> 实例化Binding对象，指定Source，Path，Mode
> 移除：BindingOperation类的ClearBinding()，ClearAllBindings(),都使用DependencyObject的ClearValue()
> 创建动态绑定——根据其他运行时信息修改绑定，或者根据环境创建不同的绑定
> 删除绑定——借助ClearBinding()或ClearAllBindings()方法。
> 创建自定义控件——更容易的修改控件的外观，将特定的细节从标记移到代码中。
> 检索绑定：1 BindingOperations.GetBinding() 2 BindingOperations.GetBingingExpression()
> 多绑定\:Mode允许改变绑定方向，（双向绑定），创建多个设置同一属性的绑定表达式。例如TextBox.Text属性创建表达式以链接到TextBlock.FontSize属性，而TextBlock.FontSize又链接到Slider.Value属性的绑定表达式。
> 绑定更新:源的变化会立即影响目标，然而反向的传递从目标到源未必会立即发生。他们的行为由Binding.UpdateSourceTrigger属性控制。
> PropertyChanged:当目标属性变化时立即更新源。
> LostFocus:当目标属性变化并且目标属性失去焦点时跟新源。
> Explicit:除非调用BindingExpression.UpdateSource()方法，否则无法更新源。
> Default:根据目标属性的元素确定更新行为。大多数属性的默认行为是PropertyChanged,但TextBox.Text属性的默认行为是LostFocus
> 绑定延迟: Binding的Delay,毫秒
> 绑定到非元素对象：
> Source:指向源对象的引用，提供数据的对象。
> RelativeSource：这是引用，使用RelativeSource对象指向源对象。有了这个附加层，在在当前元素的基础上构建引用。这似乎增加了复杂程度，当编写控件模板以及数据模板时很方便。
> DataContext：如果没有使用Source或RelativeSource属性指定源，WPF就从当前元素开始在元素树中向上查找。检查每个属性的DataContext属性，并使用第一个非空的DataContext属性。
> Source：静态资源x\:Static
> RelativeSource：还要创建嵌套的RelativeSource对象，更常用是使用Binding和RelativeSource标记扩展，将其合并到一个字符串中。{RelativeSource FindAncestor, AncestorType ={x\:Type Window}}
> Self：表达式绑定到同一元素的另一个属性上
> FindAncestor：表达式绑定到父元素
> PreviousData：表达式绑定到数据绑定列表中的前一个数据项。在
> TemplateParent：表达式绑定到应用模板的元素
> DataContext属性：将大量元素绑定到同一对象。设置Binding.Source属性相同的方法设置元素的DataContext属性。
> 省略源信息时，为null，继续向上在元素树中查找第一个不为null的数据。Binding Path=Source

## 第三方控件库

> Telerik RadControrls WPF
> DEVExpress
> GrapCity ComponentOne

### 工具

> Visual Studio  & Blend&#x20;
>
> ILSpy&#x20;
>
> Snoop是一个开源的WPF UI探索工具，它可以浏览正在运行的WPF程序的可视树、改变它的属性、查看Triggers、设置断点等。虽然现在Visual Studio也可以做到差不多的功能，但Snoop依然是我最喜欢使用的WPF工具之一。&#x20;
>
> DebugView是一个很古老但依然实用的工具，它可以查看应用程序或驱动程序输出的调试信息，而且不仅能查看本地机器，还可以查看远程机器的调试信息。总而言之有了它可以方便查看程序的调试信息，对调试应用很有帮助。&#x20;
>
> ReSharper XAML的错误提示 增强的XAML智能感知 导航和查找XAML元素 XAML代码重构 Visual UI Automation Verify

### 自动化测试的协助工具

> 1、ResXManager
> ResXManager是用于管理resx资源文件的Visual Studio扩展，它提供了在Visual Studio中统一管理所有资源文件的用户界面。小规模的程序用不上，但一旦资源和资源文件达到一定数量管理这些资源将十分痛苦，这时候ResXManager就必不可少。
> 2、dnSpy
> dnSpy 是用于 .NET 调试的最有用的工具之一。它是一个很好的反编译器。但是它的主要用途是作为调试器。dnSpy允许你调试任何 .NET程序你，而无需考虑符号或者源代码。
> 该工具的外观和感觉类似于Visual Studio。当你开始调试没有符号或者源代码的.NET进程时，dnSpy将向你显示反编译的代码。现在，这里有个魔术：你可以在反编译的代码本上中放置断点。遇到这些断点时，你将看到局部变量，线程，调用堆栈，并具有完整的调试经验。这使dnSpy成为调试第三方代码和调试生产环境的首选工具。
> 如果你使用dnSpy启动进程，那么一切将正常运行。但是，如果你附加到正在运行的进程时，则已加载的模块将保持优化状态。优化代码后，将不会遇到某些断点，也不会显示某些局部变量。
> 3、dotPeek
> dotPeek是JetBrains的免费.NET反编译器。它们的许多工具实际上进入了该列表。与两个反编译器（如ILSpy或JustDecompile）相比，我更喜欢dotPeek，这有两个原因：
> dotPeek可以从任何程序集中创建符号服务区，即使没有符号或源代码也是如此。它像dnSpy一样，它或反编译代码并从中创建符号。借助dotPeek，Visual Studio就像dnSpy一样调试任何第三方代码。要查看准确程度，请参阅我的文章：在Visual Studio中调试没有符号的第三方.NET代码，后续会进行翻译。
> 4、dotTrace
> dotTrace是JetBrains的另一个出色工具。这是我最喜欢的性能分析工具。dotTrance允许你“记录”应用程序的运行，然后分析记录的性能。你将能够看到每种调用方法花费了多长时间，数据库条用，HTTP请求以及垃圾回收期间花费的时间等等。
> 上图显示了对Visual Studio的简短记录分析。你可以看到ShowWindow花费了155毫秒，其中包括HwndSourceHook（42ms），Convert（16ms）等方法用时。此方法的执行包括42%的WPF调用，20%的用户代码，12%的GC等待，10%的Collections代码，10%的反射和5%的系统代码。太好了吧？
> 5、SciTech's .NET Memory Profiler
> 内存分析器是解决内存问题必不可少的另一类工具。这些可能是由于GC（GC压力）引起的内存泄露或性能影响。如果你有足够大的应用程序，那么迟早会遇到内存问题。我希望为你以后着想，因为这些类型的问题可能是毁灭性的。
> 内存探查器可以拍摄“内存快照”，并让你对器进行调查。你将看到哪些对象占用最多的内存，谁引用了它们，以及为什么未进行垃圾回收。通过比较两个快照，可以发现内存泄露。
> 6、OzCode
> OzCode是独特的Visual Studio扩展。其唯一目的是帮助你在Visual Studio中进行交互式调试。OzCode具有很多功能，可以分为4部分：
> 1.上方显示 - OzCode在调试期间添加了一些有用的可视化功能。这包括红色/绿色突出显示并显示对象的选定属性：还有其他内容，例如将表达式分解成各个部分:
> 2.LINQ调试 - LINQ在编写代码时很棒，但是很难调试。OzCode允许在调试过程中以几乎完美的方式研究LINQ表达式。
> 要了解有关使用或不使用OzCode调试LINQ的更多信息，请查看我的文章：如何在C#中调试LINQ查询。
> 3.数据提示 - 数据提示是将鼠标悬停在Visual Studio中的变量上时看到的弹出窗口。OzCode用自己的更好的数据提示替换了该窗口。它允许“收藏夹”属性，搜索，导出为JSON和其他功能。
> 4.时间穿梭 - OzCode 4 添加了新的革命性调试功能。它可以预测未来而无需移动断点。也就是说，你将能够看到当前调试位置之后发生的代码行中发生的情况。不过，此功能并非在所有情况下都有效。例如，OzCode无法预测HTTP请求结果或SQL请求之类的事情，因为它必须为此执行它们。
> 7、SysInternals Suite
> SysInternals是一套用于对Windows软件进行故障排除和监视的实用程序。它包括一些我们调试所需的最重要的工具。我建议下载整个套件并将其保存在易于命令行键入的位置，例如：C:\Sysinternals。有很多工具，其中一些比其他工具更有用。让我们列出一些.NET最重要的。
> Process Explorer
> Process Explorer就像类固醇上的Windows Task Manager。它具有许多对调试有用的功能，这里是其中的一些：
> 查看加载的模块
> 查看句柄
> 创建Dump
> 查看进程树
> 查看性能计数器
> Process Monitor
> Process Monitor 也称为ProcMon，允许你监视流程活动事件。具体的说，你可以弹道注册表事件，文件事件，网络事件，线程活动和性能分析事件。如果你想找出你的过程涉及哪些文件或注册表，那么ProcMon可以为你提供帮助。
> ProcDump
> ProcDump是用于保存转储文件的命令行工具。它可以立即或在触发器上生成转储。例如，在崩溃或挂起时创建转储。这是我推荐的用于捕获转储的工具。以下是它的一些功能：
> 立即创建转储
> 创建具有特定间隔的多个转储（例如3个转储，相隔5秒）
> 一旦超过CPU阈值，就创建转储
> 如果进程挂起，则创建转储
> 崩溃时创建转储
> 若要查找有关ProcDump和Dump的更多信息，请参阅我的文章：2019年如果创建、使用和调试.NET 应用程序崩溃转储。
> 8、Performance Monitor (PerfMon)
> Windows中有一种称为“性能计数器”的内置机制。这些计数器可让你根据计算机上发生的事情跟踪大量有用的指标。这些可能是系统范围内的指标，也可能是针对特定过程的指标。以下是一些可以使用性能计数器衡量的事情的示例：
> CPU使用率
> 内存使用率
> 进程中引发的异常数
> I/O字节的读写
> 对你的asp.net应用程序的请求数
> 在asp.net应用程序中请求响应时间
> 你可能会监视成千上万种不同的计数器，它们会尽可能的具体。例如，如果你想了解进程的内存使用情况，则有以下计数器：私有字节，虚拟字节，工作集，私有工作集，Gen X 集合，GC时间百分比，大对象堆大小 等等。
> 性能监视器是使你可以直观地看到这些计数器的工具（尽管也有其他工具）。它以在Windows设备预安装上了。要运行它，只需要在开始菜单中键入“Performance Monitor”，或在命令提示符下键入perfmon。
> 9、PerfView
> PerfView是一个开源通用分析工具。它可以做很多事情，以下是其中一些：
> 性能分析
> 内存分析
> 分析ETW事件
> 从Linux导入性能快照
> 有关应用程序行为的各种报告，包括JIT编译时间，垃圾回收时间等
> 它的分析是基于Windows事件跟踪（ETW）事件。这是一个内置的日志记录系统，运行速度非常快，Windows的每个部分都可以使用它。一切都将事件记录到ETW，包括内核，Windows操作系统，CLR运行时，IIS，ASP.NEt框架，WPF等。
> PerfView很容易成为此列表中最复杂的工具。但是它也非常强大。要开始使用PerfView，我建议在第九频道观看Vance Morrison的视频课程系统。
> 10、Fiddler
> Fiddler是Progress Telerik的免费工具。这是我最喜欢的网络请求调试工具之一。它被称为HTTP代理服务器，仅此而已。它捕获所有HTTP请求，记录数据，并按其方式发送请求。
> 对于每一个请求，你都可以查看流程，Headers，payload，response，status等所有的内容。
> 对于调试，Fiddler具有两个有用功能：
> 重新请求 - 你可以右键单击任何请求，然后单击“Replay”，这将再次发送完全相同的请求。在调试服务器端问题时非常有用。如果你要重现有问题的请求，Fiddler可以避免在客户端上重新运行方案以再次发送相同请求的麻烦。它还有助于处理难以重现的请求。
> 编辑并重新请求 - 除了重新请求外，Fiddler允许我们修改请求。你可以更改标题，正文，甚至URL本身。你可以使用它来查看服务器端如何处理极端情况。或重现特定请求上发生的问题。

## VisualStateManager

> 要使用 VisualStateManager，需要定义 VisualState；在 VisualState 中定义控件的不同的状态以及每种状态下的样式，然后，在代码中合适的地方，我们可以使用 VisusalStateManager 类的 GoToState 来切换到对应的状态，从而实现样式的切换。
> 所以，总括地说，这里涉及了以下四个方面：

### VisualState

视图状态(Visual States)表示控件在一个特殊的逻辑状态下的样式、外观；用于保存动画状态等。常常会根据不同的状态来显示不同的内容，比如消息的未读和已读是两种状态，这两种状态下View的表现形式会有所差别。

### VisualStateGroup

状态组由相互排斥的状态组成，状态组与状态组并不互斥；

### VisualTransition

视图转变 (Visual Transitions) 代表控件从一个视图状态向另一个状态转换时的过渡；

### VisualStateManager

由它负责在代码中来切换到不同的状态；

> 每个 VisualState 都属于一个状态组 (VisualStateGroup)，也即一个 VisualStateGroup 中可以定义多个 VisualState；并且，我们也可以定义多个 VisualStateGroup；需要再次强调的是：同一个 VisualStateGroup 中 VisualState 是互斥的，而不同的 VisualStateGroup 中的 VisualState 是在同一时刻是可以共存的。以 Button 为例：
> 我们看到，在它里面，定义了三个 VisualStateGroup，分别是 CommonStates（正常状态）、FocusStates（焦点状态）、ValidationStates（验证状态），而每个 VisualStateGroup 下又有若干个 VisualState。在 CommonStates 中，按钮可以是 Normal 、MouseOver 或 Pressed（只能是三者之一），但它却可以结合其它 VisualStateGroup 中的 VisualState 来显示，如按钮具有焦点时且鼠标移动到其上，这就结合了 MouseOver 与 Focused 两种状态。以下它的部分代码：

## 图形

### 基本图形

> Line 直线段
> Rectangle 矩形
> Ellipse 椭圆
> Polygon 多边形
> Polyline 折线，不闭合
> Path 路径

### 笔刷 Brush

> · SolidColorBrush：使用纯 Color 绘制区域。
> · LinearGradientBrush：使用线性渐变绘制区域。 其中有个GradientStop属性，径向渐变也有可以查看msdn，我觉得上面说的还是比较清楚的。
> · RadialGradientBrush：使用径向渐变绘制区域。
> · ImageBrush：使用图像（由 ImageSource 对象表示）绘制区域。
> · DrawingBrush：使用 Drawing 绘制区域。 绘图可能包含向量和位图对象。
> · VisualBrush：使用 Visual 对象绘制区域。 使用 VisualBrush 可以将内容从应用程序的一个部分复制到另一个区域，这在创建反射效果和放大局部屏幕时会非常有用。

### 图形的效果与滤镜

> BevelBitmapEffect：斜角效果。
> BitmapEffectGroup：符合效果。
> BlurBitmapEffect:模糊效果。
> DropShadowBitmapEffect：投影效果。
> EmbossBitmapEffect：浮雕效果。
> OuterGlowBitmapEffect: 外发光效果。

## 变换

### 图形的变形

> RenderTransform：呈现变形，定义在UIElement类中。
> LayoutTransform：布局变形，定义在FrameworkElement类中。

### Transform 抽象类

> MatrixTransform：矩阵变形
> RotateTransform：旋转变形
> ScaleTransform：坐标变形
> SkewTransform：拉伸变形
> TranslateTransform：偏移变形
> TransformGroup：变形组

     <TextBlock.RenderTransform> 
      <RotateTransform Angle="0" x:Name="rt1"></RotateTransform> 
    </TextBlock.RenderTransform> 

### 变换（Transform）

> WPF元素还可以通过变换来改变尺寸和位置，有两种变换，RenderTransform和LayoutTransform
> RenderTransform（继承自UIElement）：在布局结束之后应用
> LayoutTransform：在布局前应用
> UIElement还有一个属性RenderTransformOrigin表示变换的原点，使用相对定位，（0,0）表示左上角，（1,1）表示右下角，显然RenderTransformOrigin只用于RenderTransform；LayoutTransform没有原点的概念是因为它要参与布局，被变换元素的位置由父元素的布局规则控制
>
> 1.  RotateTransform
>     控制变换的属性：Angle（旋转角度）、CenterX和CenterY（旋转中心点）；CenterX和CenterY使用的是绝对定位（像素无关单位），可以与RenderTransformOrigin组合起来使用，在缩放变换（ScaleTransform）和倾斜变换（SkewTransform）中都是这样
> 2.  ScaleTransform
>     控制变换的属性：ScaleX（水平方向的缩放因子）、ScaleY（垂直方向的缩放因子）、CenterX和CenterY（缩放的中心点）
> 3.  SkewTransform
>     控制变换的属性：AngleX（水平倾斜的角度）、AngleY（垂直倾斜的角度）、CenterX和CenterY（倾斜的中心点）
> 4.  TranslateTransform
>     控制变换的属性：X（水平偏移量）、Y（垂直偏移量）；与上面三种变换不同的是，TranslateTransform作为LayoutTransform应用时不起作用
> 5.  MatrixTransform
>     控制变换的属性：Matrix（3×3仿射变换矩阵），上面的4种变换都可以通过定义Matrix实现，并且可以直接在XAML里用一个字符串设置，比如下图的变换实现的是水平和垂直方向上放大两倍的效果
> 6.  TransformGroup
>     可以组合多个变换

## 动画

### 动画基类

    System.Windows.Media.Animation.*
    BooleanAnimationBase
    ByteAnimationBase
    CharAnimationBase
    ColorAnimationBase
    DecimalAnimationBase
    DoubleAnimationBase
    Int16AnimationBase
    Int32AnimationBase
    Int64AnimationBase
    MatrixAnimationBase
    ObjectAnimationBase
    Point3DAnimationBase
    PointAnimationBase
    QuaternionAnimationBase
    RectAnimationBase
    Rotation3DAnimationBase
    SingleAnimationBase
    SizeAnimationBase
    StringAnimationBase
    ThicknessAnimationBase
    Vector3DAnimationBase
    VectorAnimationBase

> 以DoubleAnimationBase为基类展开，其他的再慢慢去了解和摸索。
> 一种就是点到点的的动画DoubleAnimation，一种是可以分为帧的动画DoubleAnimationUsingKeyFrames，还有一种是按照路径来执行的DoubleAnimationUsingPath的动画。
> 简单动作由以下几个部分构成：变化起点（From属性），变化终点（To属性），变化幅度（By属性），变化时间（Duration属性）。
> 如果指定的有终点那么幅度就被忽略了，如果没有起点，就以当前元素所在位置为起点。
> 还是看个例子来的更易理解。下面演示一个按钮如果被点击了，在0.3s里，按钮朝着x，y轴上300个单位随机移动。下面给出代码

```

<Grid>
<Button x:Name="btn" Content="Move!" HorizontalAlignment="Left" VerticalAlignment="top" Width="60" Height="60" Click="Button_Click">
    <Button.RenderTransform>
      <TranslateTransform x:Name="tt" X="0" Y="0"/>
    </Button.RenderTransform>
  </Button>
</Grid>



    private void Button_Click(object sender, RoutedEventArgs e)
    {
      //定义简单动画的实例
       DoubleAnimation daX = new DoubleAnimation();
      DoubleAnimation daY = new DoubleAnimation();
      //指定起点
       daX.From = 0D;
      daY.From = 0D;
      //指定终点
      Random r = new Random();
      daX.To = r.NextDouble() * 300;
      daY.To = r.NextDouble() * 300;
      //daX.By = 100D;
      //daY.By = 100D;
      //指定时长300ms
      Duration duration=new Duration(TimeSpan.FromMilliseconds(300));
      daY.Duration = duration;
      daX.Duration = duration;
      //将动画添加到偏移变形的实例上面 和Binding的格式有点像
      //this.textBox.SetBinding（TextBox.TextProperty,binding）
      
      //让按钮发生改变作为动画
      //btn.BeginAnimation(Button.WidthProperty, daX);
      //btn.BeginAnimation(Button.HeightProperty, daY);
      
      //让 位置发生改变作为动画
      this.tt.BeginAnimation(TranslateTransform.XProperty, daX);
      this.tt.BeginAnimation(TranslateTransform.YProperty, daY);
    }
```

### 关键帧动画 ：

> 先理解一下帧的概念，帧也就每次属性改变都会产生一个新画面，新画面就是一个帧。帧的连续播放产生了动画。
> DoubleAnimationUsingKeyFrames的实例中通常是含有多个DoubleKeyFrame类的帧，具体的有下面四种：　

#### LinearDoubleKeyFrame

> 线性帧，目标属性值的变化是直线型的，匀速的。

#### DiscreteDoubleKeyFrame

> 不连续变化的帧，目标属性值是跳跃的。

#### SplineDoubleKeyFrame

> 样条函数变化帧，目标属性值的速率是一条贝赛尔曲线。

#### EasingDoubleKeyFrame

> 缓冲式帧，目标属性值以某种缓冲形式变化。

    //定义两个DoubleAnimationUsingKeyFrames类型的实例，来控制呈现变形的横纵坐标
    DoubleAnimationUsingKeyFrames dakX = new DoubleAnimationUsingKeyFrames();
    DoubleAnimationUsingKeyFrames dakY = new DoubleAnimationUsingKeyFrames();
    //指定时长
    dakX.Duration = new Duration(TimeSpan.FromMilliseconds(900));
    dakY.Duration = new Duration(TimeSpan.FromMilliseconds(900));
    //纵坐标====================================================
    //动画分成三段，所以有三个线性关键帧
    LinearDoubleKeyFrame x_kf_1 = new LinearDoubleKeyFrame();
    LinearDoubleKeyFrame x_kf_2 = new LinearDoubleKeyFrame();
    LinearDoubleKeyFrame x_kf_3 = new LinearDoubleKeyFrame();
    //为三段关键帧赋值（时间和属性的值），并添加到动画中
    x_kf_1.KeyTime = KeyTime.FromTimeSpan(TimeSpan.FromMilliseconds(300));
    x_kf_1.Value = 200;
    x_kf_2.KeyTime = KeyTime.FromTimeSpan(TimeSpan.FromMilliseconds(600));
    x_kf_2.Value = 0;
    x_kf_3.KeyTime = KeyTime.FromTimeSpan(TimeSpan.FromMilliseconds(900));
    x_kf_3.Value = 200;
    dakX.KeyFrames.Add(x_kf_1);
    dakX.KeyFrames.Add(x_kf_2);
    dakX.KeyFrames.Add(x_kf_3);
    //纵坐标====================================================
    LinearDoubleKeyFrame y_kf_1 = new LinearDoubleKeyFrame();
    LinearDoubleKeyFrame y_kf_2 = new LinearDoubleKeyFrame();
    LinearDoubleKeyFrame y_kf_3 = new LinearDoubleKeyFrame();
    y_kf_1.KeyTime = KeyTime.FromTimeSpan(TimeSpan.FromMilliseconds(300));
    y_kf_1.Value = 0;
    y_kf_2.KeyTime = KeyTime.FromTimeSpan(TimeSpan.FromMilliseconds(600));
    y_kf_2.Value = 180;
    y_kf_3.KeyTime = KeyTime.FromTimeSpan(TimeSpan.FromMilliseconds(900));
    y_kf_3.Value = 180;
    dakY.KeyFrames.Add(y_kf_1);
    dakY.KeyFrames.Add(y_kf_2);
    dakY.KeyFrames.Add(y_kf_3);
    //把动画寄托在呈现变形中
    this.tt.BeginAnimation(TranslateTransform.XProperty, dakX);
    this.tt.BeginAnimation(TranslateTransform.YProperty, dakY);

> 前面已经介绍了路径绘图时的强大，那么我们能不能让我的动画按照我们制定的路径去表演呢，答案是可以的。
> 这就是我们要记录的DoubleAnimationUsingPath类。
> 注意它有三个属性很关键，其中Duration是每个动画必须有的，另外两个是Source属性和PathGeometry分别用来指定向那个方向移动和路径。
> 下面给出一个按钮沿路径移动的动画，构思如下：

    <Window.Resources>
    <PathGeometry x:Key="movingPath" Figures="M 40,110 A 50,50 0 1 1 100,60 A110,95 0 0 1 200,60 A 50,50 0 1 1 250 100 A 110,95 0 1 1 55,100 Z"/>
    </Window.Resources>
    <Grid x:Name="grid" HorizontalAlignment="Left" VerticalAlignment="Top">
    <Path x:Name="movingPath" Data="M 40,110 A 50,50 0 1 1 100,60 A110,95 0 0 1 200,60 A 50,50 0 1 1 250 100 A 110,95 0 1 1 55,100 Z" Stroke="Red"
    　　　　　　　　　　 StrokeThickness="2" Visibility="Visible"/>
    <Button x:Name="btn" Height="30" Width="80" Content="路径动画" Click="btn_Click" Margin="0,0,219,210">
    <Button.RenderTransform>
    <TranslateTransform x:Name="tt" X="0" Y="0"/>
    </Button.RenderTransform>
    <Button.Effect>
    <DropShadowEffect BlurRadius="45" Color="Red" />
    </Button.Effect>
    </Button>
    </Grid>

    PathGeometry pg =this.FindResource("movingPath") as PathGeometry;
    Duration duration = new Duration(TimeSpan.FromMilliseconds(600));
    DoubleAnimationUsingPath dakX = new DoubleAnimationUsingPath();
    dakX.PathGeometry = pg;
    dakX.Source = PathAnimationSource.X;
    dakX.Duration = duration;
    DoubleAnimationUsingPath dakY = new DoubleAnimationUsingPath();
    dakY.PathGeometry = pg;
    dakY.Source = PathAnimationSource.Y;
    dakY.Duration = duration;
    this.tt.BeginAnimation(TranslateTransform.XProperty, dakX);
    this.tt.BeginAnimation(TranslateTransform.YProperty, dakY);

### 场景（Storyborad）

    <Border BorderBrush="Gray" BorderThickness="1" Grid.Row="1">
    <Ellipse x:Name="ballG" Height="80" Width="80" Fill="Green" HorizontalAlignment="Left">
      <Ellipse.RenderTransform>
        <TranslateTransform x:Name="ttG"/>
      </Ellipse.RenderTransform>
    </Ellipse>
    </Border>

对应的cs代码，注释已经给出：

    //定义动画要执行的时长
    Duration duation = new Duration(TimeSpan.FromMilliseconds(600));
    //定义一个简单的移动——匀速直线运动
    DoubleAnimation daRx = new DoubleAnimation();
    daRx.Duration = duation;
    daRx.To = 400;
    //定义一个关键帧的移动，目标属性值的速率是一条贝赛尔曲线函数
    DoubleAnimationUsingKeyFrames dakGx = new DoubleAnimationUsingKeyFrames();
    dakGx.Duration = duation;
    SplineDoubleKeyFrame kfG = new SplineDoubleKeyFrame(400, KeyTime.FromPercent(1));
    kfG.KeySpline = new KeySpline(1, 0, 0, 1);
    dakGx.KeyFrames.Add(kfG);
    //定义一个关键帧的移动，目标属性值的速率是一条贝赛尔曲线函数
    DoubleAnimationUsingKeyFrames dakBx = new DoubleAnimationUsingKeyFrames();
    dakBx.Duration = duation;
    SplineDoubleKeyFrame kfB = new SplineDoubleKeyFrame(400, KeyTime.FromPercent(1));
    kfB.KeySpline = new KeySpline(0, 1, 1, 0);
    dakBx.KeyFrames.Add(kfB);
    Storyboard storyboard = new Storyboard();
    //使指定的动画的UI载体
    Storyboard.SetTargetName(daRx, "ttR");
    Storyboard.SetTargetName(dakGx, "ttG");
    Storyboard.SetTargetName(dakBx, "ttB");
    //使动画与UI载体的属性相关联
    Storyboard.SetTargetProperty(daRx,new PropertyPath(TranslateTransform.XProperty));
    Storyboard.SetTargetProperty(dakGx, new PropertyPath(TranslateTransform.XProperty));
    Storyboard.SetTargetProperty(dakBx, new PropertyPath(TranslateTransform.XProperty));
    //指定场景的时间,并把各个对像的动画添加到场景里面
    storyboard.Duration = duation;
    storyboard.Children.Add(daRx);
    storyboard.Children.Add(dakGx);
    storyboard.Children.Add(dakBx);
    storyboard.Begin(this);

## WPF 需要学习

* binding（绑定源、绑定模式【default、OneWay、TwoWay、OntTime、OneWayToSource】、触发绑定更新的事件【Default、Explicit(手动BindingExpression.UpdayeSource())、PropertyChange、LostFocus】、优先级PriorityBinding），包括绑定到单一属性、实体、集合、值转换、触发机制、验证等

* 属性变更通知(INotifyPropertyChange 和ObservableCollection)

* template（模板类型【控件模板、数据模板、面板模板】）

* 模板选择器 <https://www.cnblogs.com/smiler/p/3222151.html>

* style

* 资源Resources，StaticResource/DynamicResource，静态资源在引用对象初始化时一次性设置完毕；对于动态资源、如果发生了改变则会重新应用资源

* 事件的三种方式（冒泡、直接、隧道），Routed Events（路由事件），附加事件（attached Events）& Commands （命令）

* icommand 
     public interface ICommand {
        event EventHandler CanExecuteChanged;
        bool CanExecute(object parameter);
        void Execute(object parameter);
      }

* 什么是attached behavior（附加行为或者附加事件）?

# ASP.NET

## ASHX 处理请求

以下方法包含了处理各种请求，如POST,GET ,并且有获取url参数，和content内容等方法 //读取url参数获取参数内容，并分派请求进行处理 public void ProcessRequest(HttpContext context) { context.Response.ContentType = "text/json"; string querytype = context.Request.QueryString\["type"]; switch (querytype) { case "add": //var addline =JsonConvert.DeserializeObject\<Line>(context.Server.UrlDecode(context.Request.Form.ToString())); context.Response.Write(JsonConvert.SerializeObject(Add(ProcessRequest\<Line>(context)))); break; case "update": var updateline = JsonConvert.DeserializeObject\<Line>(context.Server.UrlDecode(context.Request.Form.ToString())); context.Response.Write(JsonConvert.SerializeObject(Update(updateline))); break; case "delete": string id = context.Request.QueryString\["id"]; context.Response.Write(JsonConvert.SerializeObject(Delete(id))); break; case "all": default: context.Response.Write(JsonConvert.SerializeObject(GetLines())); break; } } // 从请求body 种获取json 字符串内容 private T ProcessRequest\<T>(HttpContext context) where T : class { context.Response.ContentType = "text/json"; HttpRequest request = context.Request; Stream stream = request.InputStream; string json = string.Empty; if (stream.Length != 0) { StreamReader streamReader = new StreamReader(stream); json = streamReader.ReadToEnd(); return JsonConvert.DeserializeObject\<T>(json); } return null; }

# MVC

MVC 模式
模型-视图-控制器 (MVC) 体系结构模式将应用程序分成 3 个主要组件组：模型、视图和控制器。 此模式有助于实现关注点分离。 使用此模式，用户请求被路由到控制器，后者负责使用模型来执行用户操作和/或检索查询结果。 控制器选择要显示给用户的视图，并为其提供所需的任何模型数据。
下图显示 3 个主要组件及其相互引用关系：
![0](data\:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABLAAAAJ0CAYAAAACiNpXAAAAAXNSR0IArs4c6QAAIABJREFUeF7s3Qd4VGXa//F70kMSktAJIaGFIoooKCAWEMGCgouCArr23l7Bhl1x1VWxC4quHUSwAAIWBFFAQEQQpRlKEiD0EpKQnnmvZ3YTCZlyzjCTU+Z7rut//d91nvq5D7r+9pznOETEKVwIIIAAAggggAACCCCAAAIIIIAAAgiYVMBBgGXSyrAsBBBAAAEEEEAAAQQQQAABBBBAAAGXAAEWNwICCCCAAAIIIIAAAggggAACCCCAgKkFCLBMXR4WhwACCCCAAAIIIIAAAggggAACCCBAgMU9gAACCCCAAAIIIIAAAggggAACCCBgagECLFOXh8UhgAACCCCAAAIIIIAAAggggAACCBBgcQ8ggAACCCCAAAIIIIAAAggggAACCJhagADL1OVhcQgggAACCCCAAAIIIIAAAggggAACBFjcAwgggAACCCCAAAIIIIAAAggggAACphYgwDJ1eVgcAggggAACCCCAAAIIIIAAAggggAABFvcAAggggAACCCCAAAIIIIAAAggggICpBQiwTF0eFocAAggggAACCCCAAAIIIIAAAgggQIDFPYAAAggggAACCCCAAAIIIIAAAgggYGoBAixTl4fFIYAAAggggAACCCCAAAIIIIAAAggQYHEPIIAAAggggAACCCCAAAIIIIAAAgiYWoAAy9TlYXEIIIAAAggggAACCCCAAAIIIIAAAgRY3AMIIIAAAggggAACCCCAAAIIIIAAAqYWIMAydXlYHAIIIIAAAggggAACCCCAAAIIIIAAARb3AAIIIIAAAggggAACCCCAAAIIIICAqQUIsExdHhaHAAIIIIAAAggggAACCCCAAAIIIECAxT2AAAIIIIAAAggggAACCCCAAAIIIGBqAQIsU5eHxSGAAAIIIIAAAggggAACCCCAAAIIEGBxDyCAAAIIIIAAAggggAACCCCAAAIImFqAAMvU5WFxCCCAAAIIIIAAAggggAACCCCAAAIEWNwDCCCAAAIIIIAAAggggAACCCCAAAKmFiDAMnV5WBwCCCCAAAIIIIAAAggggAACCCCAAAEW9wACCCCAAAIIIIAAAggggAACCCCAgKkFCLBMXR4WhwACCCCAAAIIIIAAAggggAACCCBAgMU9gAACCCCAAAIIIIAAAggggAACCCBgagECLFOXh8UhgAACCCCAAAIIIIAAAggggAACCBBgcQ8ggAACCCCAAAIIIIAAAggggAACCJhagADL1OVhcQgggAACCCCAAAIIIIAAAggggAACBFjcAwgggAACCCCAAAIIIIAAAggggAACphYgwDJ1eVgcAggggAACCCCAAAIIIIAAAggggAABFvcAAggggAACCCCAAAIIIIAAAggggICpBQiwTF0eFocAAggggAACCCCAAAIIIIAAAgggQIDFPYAAAggggAACCCCAAAIIIIAAAgggYGoBAixTl4fFIYAAAggggAACCCCAAAIIIIAAAggQYHEPIIAAAggggAACCCCAAAIIIIAAAgiYWoAAy9TlYXEIIIAAAggggAACCCCAAAIIIIAAAgRY3AMIIIAAAggggAACCCCAAAIIIIAAAqYWIMAydXlYHAIIIIAAAggggAACCCCAAAIIIIAAARb3AAIIIIAAAggggAACCCCAAAIIIICAqQUIsExdHhaHAAIIIIAAAggggAACCCCAAAIIIECAxT2AAAIIIIAAAggggAACCCCAAAIIIGBqAQIsU5eHxSGAAAIIIIAAAggggAACCCCAAAIIEGBxDyCAAAIIIIAAAggggAACCCCAAAIImFqAAMvU5WFxCCCAAAIIIIAAAggggAACCCCAAAIEWNwDCCCAAAIIIIAAAggggAACCCCAAAKmFiDAMnV5WBwCCCCAAAIIIIAAAggggAACCCCAAAEW9wACCCCAAAIIIIAAAggggAACCCCAgKkFCLBMXR4WhwACCCCAAAIIIIAAAggggAACCCBAgMU9gAACCCCAAAIIIIAAAggggAACCCBgagECLFOXh8UhgAACCCCAAAIIIIAAAggggAACCBBgcQ8ggAACCCCAAAIIIIAAAggggAACCJhagADL1OVhcQgggAACCCCAAAIIIIAAAggggAACBFjcAwgggAACCCCAAAIIIIAAAggggAACphYgwDJ1eVgcAggggAACCCCAAAIIIIAAAggggAABFvcAAggggAACCCCAAAIIIIAAAggggICpBQiwTF0eFocAAggggAACCCCAAAIIIIAAAgggQIDFPYAAAggggAACCCCAAAIIIIAAAgggYGoBAixTl4fFIYAAAggggAACCCCAAAIIIIAAAggQYHEPIIAAAgggECABR3S4OMLDAjQawyCAgNUFnBWV4iypsPo2WD8CCCCAAAKmECDAMkUZWAQCCCCAgBUFHDERknxBJ4k7paVEN0+04hZYMwII1IFAyY48KVy+VQ7MWSfO4vI6mJEpEEAAAQQQsJ8AAZb9asqOEEAAAQTqQCC8foykjDmb4KoOrJkCAbsIlOTmyfZ/fS+VhaV22RL7QAABBBBAoM4ECLDqjJqJEEAAAQTsIhAWFyUtHj6H8MouBWUfCNShQHHWfsl9/gdCrDo0ZyoEEEAAAXsIEGDZo47sAgEEEECgDgWa3nKaJPRIr8MZmQoBBOwkcGjxFtn99lI7bYm9IIAAAgggEHQBAqygEzMBAggggICdBKLbNZSWDw+w05bYCwIIGCCw9clvpWTzfgNmZkoEEEAAAQSsKUCAZc26sWoEEEAAAYMEePrKIHimRcBmAnnzM2XPh7/abFdsBwEEEEAAgeAJEGAFz5aREUAAAQRsKJD+4iCJbBBnw52xJQQQqEuBkpwDsvXRb+pySuZCAAEEEEDA0gIEWJYuH4tHAAEEEKhrgbb/uUwc4WF1PS3zIYCAzQQqCkpky+1f2GxXbAcBBBBAAIHgCRBgBc+WkRFAAAEEbCjQ7v3hNtwVW0IAgboWqCytkM03Tq3raZkPAQQQQAABywoQYFm2dCwcAQQQQMAIAQIsI9SZEwH7CRBg2a+m7AgBBBBAILgCBFjB9WV0BBBAAAGbCRBg2aygbAcBgwQIsAyCZ1oEEEAAAcsKEGBZtnQsHAEEEEDACAECLCPUmRMB+wkQYNmvpuwIAQQQQCC4AgRYwfVldAQQQAABmwkQYNmsoGwHAYMECLAMgmdaBBBAAAHLChBgWbZ0LBwBBBBAwAgBAiwj1JkTAfsJEGDZr6bsCAEEEEAguAIEWMH1ZXQEEEAAAZsJEGDZrKBsBwGDBAiwDIJnWgQQQAABywoQYFm2dCwcAQQQQMAIAQIsI9SZEwH7CRBg2a+m7AgBBBBAILgCBFjB9WV0BBBAAAGbCRBg2aygbAcBgwQIsAyCZ1oEEEAAAcsKEGBZtnQsHAEEEEDACAECLCPUmRMB+wkQYNmvpuwIAQQQQCC4AgRYwfVldAQQQAABmwkQYNmsoGwHAYMECLAMgmdaBBBAAAHLChBgWbZ0LBwBBBBAwAgBAiwj1JkTAfsJEGDZr6bsCAEEEEAguAIEWMH1ZXQEEEAAAZsJEGDZrKBsBwGDBAiwDIJnWgQQQAABywoQYFm2dCwcAQQQQMAIAQIsI9SZEwH7CRBg2a+m7AgBBBBAILgCBFjB9WV0BBBAAAGbCRBg2aygbAcBgwQIsAyCZ1oEEEAAAcsKEGBZtnQsHAEEEEDACAECLCPUmRMB+wkQYNmvpuwIAQQQQCC4AgRYwfVldAQQQAABmwkQYNmsoGwHAYMECLAMgmdaBBBAAAHLChBgWbZ0LBwBBBBAwAgBAiwj1JkTAfsJEGDZr6bsCAEEEEAguAIEWMH1ZXQEEEAAAZsJEGDZrKBsBwGDBAiwDIJnWgQQQAABywoQYFm2dCwcAQQQQMAIAQIsI9SZEwH7CRBg2a+m7AgBBBBAILgCBFjB9WV0BBBAAAGbCRBg2aygbAcBgwQIsAyCZ1oEEEAAAcsKEGBZtnQsHAEEEEDACAECLCPUmRMB+wkQYNmvpuwIAQQQQCC4AgRYwfVldAQQQAABmwkQYNmsoGwHAYMECLAMgmdaBBBAAAHLChBgWbZ0LBwBBBBAwAgBAiwj1JkTAfsJEGDZr6bsCAEEEEAguAIEWMH1ZXQEEEAAAZsJEGDZrKBsBwGDBAiwDIJnWgQQQAABywoQYFm2dCwcAQQQQMAIAQIsI9SZEwH7CRBg2a+m7AgBBBBAILgCBFjB9WV0BBBAAAGbCRBg2aygbAcBgwQIsAyCZ1oEEEAAAcsKEGBZtnQsHAEEEEDACAECLCPUmRMB+wkQYNmvpuwIAQQQQCC4AgRYwfVldAQQQAABmwkQYNmsoGwHAYMECLAMgmdaBBBAAAHLChBgWbZ0LBwBBBBAwAgBAiwj1JkTAfsJEGDZr6bsCAEEEEAguAIEWMH1ZXQEEEAAAZsJEGDZrKAW207L+CYyIP0Ur6vekrdD5m/7zRQ7S4qOl0vaneV1LbkFe+Xr7GWmWG9dLoIAqy61mQsBBBBAwA4CBFh2qCJ7QAABBBCoMwECrDqjZiI3An1TT5KJ/e71avNN9i9yx4KXTeGXkZQqcwY/53UtP+/4U6767mlTrLcuF0GAVZfazIUAAgggYAcBAiw7VJE9IIAAAgjUmQABlmfqFvGNpFODVpprkVuwR9buz9bcvqph28QUaZ2YorlfVt4O2Zi3XXN7MzckwDJzdfStjQBLnxetEUAAAQQQIMDiHkAAAQQQQECHAAGWZ6zhHfrJkz2v06y57kC2DJo5RnP7qobqCSQV5Gi93vpzprywYorW5qZuR4Bl6vLoWhwBli4uGiOAAAIIICAEWNwECCCAAAII6BAgwApcgKVGOmPa7bLz8H7NFYgKj5RfL58osRHRmvsQYGmmCnhDXiH0TEqAFfDbjQERQAABBGwuQIBl8wKzPQQQQACBwAoQYAU2wHpkyX9kyl/zNBfpjBZd5N1zHtDcXjUkwNLFFdDGBFgEWAG9oRgMAQQQQCCkBQiwQrr8bB4BBBBAQK8AAVZgA6x5W3+Tm+e/oLkMD5/6T7mq03ma2xNg6aIKeGMCLAKsgN9UDIgAAgggELICBFghW3o2jgACCCDgjwABVmADrKLyEuk+5UYprSjTVI7vh7wo6QnNNLWtamSnJ7DOatFV3jnnPq/75yuEum4PwxrzCqFh9EyMAAIIIGBRAQIsixaOZSOAAAIIGCNAgBXYAEuNdu33z8rC7at9FjQtoanMG/KSz3ZHN7BTgNWzWWf56NyHCLB03wXm60CAZb6asCIEEEAAAXMLEGCZuz6sDgEEEEDAZAIEWIEPsD5e/508sex9n5VWrw6qVwj1XscaYCVHJ0hyTIIkRce7ps4vPSxb83dLcUWp3qX4bN8gOkGaxjWQmPAo2XX4gOw8vE8qnc7qfl0bZ8i0C54IWoClDslvGFNfkqPjJS4yVgrKiiSvpFD2FB2QssoKn+s/ugGvEHomI8DSfTvRAQEEEEAgxAUIsEL8BmD7CCCAAAL6BAiwAh9gbSvYI30/v8tnId7t/4CckdLFZ7ujG+gNsKLCIuTCNqfJmS1OlJ7NjpOGMYm15lSh0pZDO+SHbb/JlxsXyl8Ht+peV1UHFRr9s+O5MqTdmaICnyOv/cWHZOaWxfLOn7NcgVb7pJYye/C/AxpgqVcy/9HuDDmt+fFyQqM2EuEIrzV+aWWZrN67WZbtXCtTNszT/OVIAiwCLL//YNARAQQQQACBowQIsLglEEAAAQQQ0CFAgBX4AEuNeP70e2Vj3naPg6snkn4d/rZEh0fqqNZ/m+oJsEZ26C83dxkszeo10DyPU5wyf+tvMvaXD2R7wV7N/VTDDslp8vKZt0u7o4KrowfJLzssd/zwiqzdnyW/XP5WQAIstcdRJ18mg9r0lnBHmOZ1lzsrZObmxfKvXz6SQ6WFXvsRYBFgab6xaIgAAggggIAPAQIsbhEEEEAAAQR0CBBg+R9gqS8O9mt5stsB/v3rZHlnzSyPg/dNPUkm9rvX7e/ztq6Qfi27eeyrJcCqFxEt4868Tc5p2V3H3VCz6eHyErlv0QT5NvsXTWOoM73U64ANYupraq9eWbzy26fk43Mf8RrkaTnE/cRGbWXC2aOlcWySprndNVJPzt32w0uuUM3TRYBFgOX3DUZHBBBAAAEEjhIgwOKWQAABBBBAQIcAAZb/AdZLK6fK3ScNczvAL7vWychvxnoc/PEe18jIjv1r/a6+Yjjxz6/krq6X+h1gqae6ppz/uBzfsLWOO8F9U/Vq4f2L35TpmxZ6HSsyLFy+GvRvaZuYomvO7YV7JTEqTuIjYz328xVgqfBq0nmP+vU029GT7i/JlyGzHvL45BkBFgGWrhucxggggAACCHgRIMDi9kAAAQQQQECHAAGW/wHWzfPHyctn3eE6oPzoS72WduqUm1wHpLu75l/ysrSMb1Lrpx+2rXQ9AXRbl3/4HWA90/smubTdWTruAu9NSyvLZfjXT8jqvZs8Nryu80B5oPvIgM155EDeAqz6UXEyc9Az0iKuUcDmXrs/Wy7+6kFRr1IefRFgEWAF7EZjIAQQQACBkBcgwAr5WwAABBBAAAE9AgRY/gdYd/74qisoUoeju7vu+vFVmZO1tNZP6imlby5+wW0f9fXC9PpN5epO5/sVYKm1/Oec+/XcAprabjiQI4O/elAqnJW12qunr5Zc9qbrSapgXN4CLE9Psh29DrXunPxdrqe0UjSEXXf/9LrM2vIzAZaOgvIVQh1YNEUAAQQQQEBECLC4DRBAAAEEENAhQIDlf4D18JJ3XIHII6de5XYQ9drdvYsm1Prt2s4DZYyHp5XO+WKU3HTCRTI0o69fAdYn5z8m3Zt08HoHqKfD1JcGf9+7UWIjouXc9FN99lED3rNwvMzYvKjW2Oq8rjfPHq3prlNPNamn0hKi6onD9V/bfF+eAiwVmC0c+rprD96u99d9LS//Nk0Ky4tdzTo3bC2vnHWHqK8VerrUU3AqsDv64gksz9IEWL7vZVoggAACCCBwpAABFvcDAggggAACOgQIsDxjDe/QT57seZ3HBs/+Okm+z1kh3w950W0bdZ5Szyk313oV7YMBD8ppzY+v1Scnf7f0++L/5KUzb5cLW5/mcV5Ph7h3apAuMy96xmv1VYB087xxMn/bbzXaaXnt8Pe9m+TS2Y/UGv+FM26VwW1O93nXTc38QZ5f8YkcLClwBVjD2/dzfTXQ1xcDPQVY3oLAqsVM+WuePLLkP7XW1jE5TaZf9LTXuXt8erPsLz5Uoy8BFgGWzxudBggggAACCGgUIMDSCEUzBBBAAAEElAABlv8B1qurPpPXfv9C5g15WdISap9npUYeOucxWbUns3oS9XXA5cPflqiwiFoTT1o/Vx5f9p7raSZ/vkJ4fecL5f7uI7ze2Cq4umle7dcX1dNMi4eN93kQeu+pt8ruooM15lCvQ/o6vH3JjjXyz+/+VWttt3a52ONB+FWNPQVY6iuO6muO3q7zpt8jm/Jy3Tbx1V+9Ivr1Ua+AEmARYPFPDgQQQAABBAIlQIAVKEnGQQABBBAICQECLP8DLPW1QPVE0WM9rpYrOg5wO9D41dNFfa2w6jonrbtM6DvKbVsVLKmASZ1h5elcLdXR0xNYb/W7R85OPdnrfau+KPjFxp/ctvE1r+o0euEbMnPz4ur+UeGRsnrkez6folLhlQqxjr68BXq+Aqzll0+UpOh4j/tVX3Qc8KXnVxtvPmGw2y9BVg34wm9T5K0/ZtYYnwCLACsk/sHAJhFAAAEE6kSAAKtOmJkEAQQQQMAuAgRY/gdY7639Wp5e/pH0Se0qb/e7z+1A6ot2g78aU/3bU72ul8van12rrfrSX/dPbhAVurzXf4ycnnKCx4V5CrA8fdnwyIEGzrhf/jq41e3Yo04aJrd0udjrrT1h9XR58YhArk1iinzr4UD6qoEOl5fIyZOvc3sAvGrz6fmPy8lN2nuc190TWM3qNXCdfxXM6501s+Tfv04mwNKIzBlYGqFohgACCCCAwP8ECLC4FRBAAAEEENAhQIDlf4D10fpv5cllH0hMeJSsGKFeC4x0O9gZ026XnYf3u3776dLXpHlcw1rtjnzFztMZWVWdPAVYK0f8R+IjY71W/+RPrncdou7u8nXml+qjDnFXh7lXXV0atZXPB471OufRId7RjZ8//Ra5uO0ZHsdwF2B1SE6TWYOe1XGn6286LXOBPPjzxBodeQLLsyMBlv57jB4IIIAAAqEtQIAV2vVn9wgggAACOgUIsDyD+Qp0Pl7/nTyx7H3XAN6emlJfK/z0r/nSPqmlzB78b7cTqid91BM/6vInwApzOGT9Pz/2+WW/jh9e4fFJKHUQuzqQ3dv1/dZf5Zb5fx9arw6jV+v1di3e8Ydc/Z3nw+W9vYKpxnUXYJ3atJNMOq/2gfI6b3+vzb/Y9JPcv+hNAiyNqARYGqFohgACCCCAwP8ECLC4FRBAAAEEENAhQIAVmADrmuPOlwdPudLtYPO2rpCb54+TG4+/SO7tNtxtmwtnPiAbDuT4HWCpL/mpAMvX1eHDkVLpdLptpiXAmpvzq9z6w98B1hktusi75zzgddoft6+S679/zmObB7qPlOs6D/T4u7sAS71iqULDYF4EWPp0CbD0edEaAQQQQAABAizuAQQQQAABBHQIEGAFJsDydhaUOgPqlE9ukPcGjBH15NDR167DB+T0abdV/2V/nsBSnbW8QnjS5OukoKzI7aYvb99Pxva6zuvdMy3zB3nw57er2/Ro1kk+Ptf7k1DLd62XEd886XHcx3teIyM79NcVYB3fsLV8eWHtrxrquPV9NiXA8klUowEBlj4vWiOAAAIIIECAxT2AAAIIIICADgECrMAEWGqUHy55RVLjG7sd8M4fX5UXz7xNIhzhtX7/bOOPMmbxW8ccYGk5xP386ffKxrzt7tfY9VK548QhXu+et/+cJc+t+Ptgcy1nUe0o3CdnfnaHx3Ff7/N/cm76qboCLOWsvL1dWwt2y/RNC3X8aajZVJ3d9X3OrzX+ImdgeeYkwPL7VqMjAggggECIChBghWjh2TYCCCCAgH8CBFiBC7Ce6HmtjOhwjtsBdxcdlCaxSR7Dra+zlh5zgPVWv3vk7NSTvd4Id//0usza8rPbNuP7jpL+ad299leHmqvDzauu+lFxsmL4309keeqsAiwVZLm75g15WdISmnic190rhFHhka4nzqLCIjz2y87fKed8Mcq/PxgeehFgEWAF9IZiMAQQQACBkBYgwArp8rN5BBBAAAG9AgRYgQuw+rU8Wd48+x5dJahwVsqpU26SQ6WFxxxgXdt5oIzpPtLr/DM3L5bRC9+o1UYFQkuGjRcVSHm7+n85SrIO7azR5Odh46Wxh3CuquH41dPlpZVTaw2t5SuG7gIsNdDk8x6VU5p29LreS2Y/Iqv3btJVE2+NCbAIsAJ2MzEQAggggEDICxBghfwtAAACCCCAgB4BAqzABVj1IqJl+fC3vT4VdPRsK/dkyrA5j9X4y/6egaXldb7SynK5ZNbDsv5/B8ZXTeztgPmqNkef1VX11988e7T0a9nN621XVlkhN81/XhZuX13drlFsousg9o7JaV77egqw1OuOd3a91GvfzIPbZOQ3Y+VASb6mPxbdm3SQIe3OEvWkmbuLAIsAS9ONRCMEEEAAAQQ0CBBgaUCiCQIIIIAAAlUCBFiBC7DUSB8OeEh6Ne+s+QZ7ZdVn8vrvXwQkwFKDfHzuw9Kj2XFe51dhzqurPpffdv8l0eGRcn6rHnJVp/MlzKH+a5Tn68WVU2XC6um1GqjXJtXrk74upzhl2c61rie41BNbvZofLyr083V5CrCaxzUU9fphZFjtc8WOHFMFb8r4u5zlsr/4UI3pUuIaiQqleqccL2e3PFnSE5qJOnT/xEnXuF0WAZbnanEGlq87md8RQAABBBCoKUCAxR2BAAIIIICADgECLM9Ywzv0kyd7ev4q38frv5Mnlr1fY4DrOg+UB3y8xndkh0tnPyK/H/WKm79PYKlxezc/Qd4fMEbHHaCtaWF5sZw57Y4arzpW9WwYkyg/DX1N15Nn2mb9bytPAZb67V+n3SDDMvpqHu5gSYEUV5RKTHiUxEXGug2/CLA0c9ZoSIDlnxu9EEAAAQRCV4AAK3Rrz84RQAABBPwQIMAKbIDVLilVvh78nKZKqCeheky5WdSTSUdexxJgqXGePu1GGZrRR9MatDZ6eMk78ulf8z02//fpN8uQtmdqHU5XO28BlnoN8csL/yXN6jXQNaa3xgRY/lESYPnnRi8EEEAAgdAVIMAK3dqzcwQQQAABPwQIsAIbYKnRfrr0NVGvt/m61NcA1VcBj76ONcBSB7JPPf9x6dywta8laPp9+qaFcu+iCV7bqgDp23+M0/RK4JEDqa8zJkXHSVRYpMfxvQVYqtPxDVvLlPMfd70OGYiLAMs/RQIs/9zohQACCCAQugIEWKFbe3aOAAIIIOCHAAFW4AOsp3pdL5e1P9tnNe5bNEG+3LQw4AGWGjAhqp681ucu1yuFx3JN3vC9jF32gZQ7K3wOM6hNbxl3xm0+21U1KCgrEvWVwMFtTpdbu1zsd4ClOp7UOENe7XNXQJ7EIsDSXMIaDQmw/HOjFwIIIIBA6AoQYIVu7dk5AggggIAfAgRYgQ+w+qd1l/F9R3mthnpt8LSpt8reorygBFhq0HBHmNx24hC5tvMFEhcRo+vuUE9GvbxyqkzLXKCrnzrQ/dEeV7vm9naps6ju+vFV+XnHn67zqOYOedFj+OTrCayqeRpEJ8hDp/5TBrbu5XN+b2tblPuHXDP3GbdNOMTdsxwBlq4/KjRGAAEEEEBACLC4CRBAAAEEENAhQIAV+ABLhUXLh7/t9et4a/dny+Cv3B+2fqyvEB69IxXsXH3c+dIvrZu0T2rpccOlleVJWu7yAAAgAElEQVSyeu8mmbNlqXyaOV9KK8p03El/N1Wv9N3XbYTbrzGWVJS5vgb43K+TZefh/dWdLmjVU145606382kNsKo6p8Y3lis7DpDTW3RxfWHQ4fqvh54vFSZuOLBVfs79Q77YtFA2HMjx2JgAiwDLrz8UdEIAAQQQQMCNAAEWtwUCCCCAAAI6BAiwdGDZoGnj2CTpkNxSkqMTJCk6QUory0Q9DbWvKE/W7M+SovKSgO1SnYulXu1rFJskReXFrsBKfXExv/RwwObwNVBiVJx0bJAuKsRLjI6X2IgoUSGa+hJhXkmh5Bbula35u0W9zsh1bAI8gXVsfvRGAAEEEAg9AQKs0Ks5O0YAAQQQOAYBAqxjwKMrAghUCxBgcTMggAACCCCgT4AAS58XrRFAAAEEQlyAACvEbwC2j0CABAiwAgTJMAgggAACISNAgBUypWajCCCAAAKBECDACoQiYyCAAAEW9wACCCCAAAL6BAiw9HnRGgEEEEAgxAUIsEL8BmD7CARIgAArQJAMgwACCCAQMgIEWCFTajaKAAIIIBAIAQKsQCgyBgIIEGBxDyCAAAIIIKBPgABLnxetEUAAAQRCXIAAK8RvALaPQIAECLACBMkwCCCAAAIhI0CAFTKlZqMIIIAAAoEQIMAKhCJjIIAAARb3AAIIIIAAAvoECLD0edEaAQQQQCDEBQiwQvwGYPsIBEiAACtAkAyDAAIIIBAyAgRYIVNqNooAAgggEAgBAqxAKDIGAggQYHEPIIAAAgggoE+AAEufF60RQAABBEJcgAArxG8Ato9AgAQIsAIEyTAIIIAAAiEjQIAVMqVmowgggAACgRAgwAqEImMggAABFvcAAggggAAC+gQIsPR50RoBBBBAIMQFCLBC/AZg+wgESIAAK0CQDIMAAgggEDICBFghU2o2igACCCAQCAECrEAoMgYCCBBgcQ8ggAACCCCgT4AAS58XrRFAAAEEQlyAACvEb4AAbb9/WncJd4TVGm1H4T75fe+mAM3CMGYWIMAyc3VYGwIIIICAGQUIsMxYFdaEAAIIIGBaAQIs05bGUgtbc+UHEhUWWWvNs7OWyP/9+Jql9sJi/RMgwPLPjV4IIIAAAqErQIAVurVn5wgggAACfgiEYoAVHxkrb/S926tWhbNS8ksPS15poews3Ce/7c6U3/dulKLyEj+U7d+FAMv+Nfa1QwIsX0L8jgACCCCAQE0BAizuCAQQQAABBHQIhGKAlRydIL9c/pYOpf82LauskDlZS+TdNbNl7f5s3f2D0eHo1/ZU8GbERYBlhLq55iTAMlc9WA0CCCCAgPkFCLDMXyNWiAACCCBgIgECLP+K8d7ar+X5FZNdoZZR1xUdB8hjPa6uMX2fz++U7QV763xJBFh1Tm66CQmwTFcSFoQAAgggYHIBAiyTF4jlIYAAAgiYS4AAy/96rNi9Qa767mkpqSjzf5Bj6PnNxS9I28QUAqxjMKRr4AQIsAJnyUgIIIAAAqEhQIAVGnVmlwgggAACARIgwDo2yDlZS+WuH189tkH86N27+Qny/oAxtXqa7QmsWVt+lrt/et2PHdLFagIEWFarGOtFAAEEEDBagADL6AowPwIIIICApQQIsGqWKyd/t/yxb5OEiUMSo+Olc8PWkhgV57Wmd/74qnydtdRn3ZOi46VNYoqkJzR1jV0vIloc4nAdFL/x4HZdh8S/efZo6deyW605r5n7jOw6fKD6r5dWlEt2/k6PawtzOKRV/ebSKqGZNI9rKPUioyU2IloKy4plT9FB+X3PJq/9qwb29ArhF5t+kvsXvelq1jAmUc5o0UWa1Wsgh8uLZd3+bFm+a71PtyMbBGq9R46pzhE7vmFraZ/cUtT5aDERUVJQVix7iw7K+v05knlwmzjFqXmdyq9bk/bSMqGJJEUnSKWzUvJKCmVTnqrxJik16Ik9zRvwsyEBlp9wdEMAAQQQCFkBAqyQLT0bRwABBBDwR4AAq6batMwf5MGf367+iyowubjtGfJoj6slLiLGLbEKOAbOuN9tyNEyvolc1v5sOSu1q3RIbukKrDxdh8tL5LPMBfLSyqlSUFbktllUeKTc2+1yuarTeV7Hquq8+VCunPvlPTXGUoHNgPRT5cLWvaRX886SEFnP663z574trjX9tP13j+08BVjvr/tanv/1E7mv+wgZ2bG/RDjCa4yxMW+73LtwvKg5PF3BWK+aS32N8pYuF8vQjD6u4MrTdaAkX37ctko+3/iTLN25xmO7dkmpcueJQ+SctFMkMqzmPqs6qddNZ2xeJBNWT5dtBXv8+SNr2j4EWKYtDQtDAAEEEDCpAAGWSQvDshBAAAEEzClAgFWzLkcHWFW/9mh2nHx07kMeQ6Nhcx6TlXsyawyWGt9Y5g15WVQIpufaWrBbRnz9pOw8vL9Gt47JafLimbdLRlKq5uHcBVjP9r5JLml3luYxqhqqEGv86ulu+3kKsF5Z9Znr6SZ3T4tVDVRUXiJXfPuUrN67ye3YwVhvi/hG8sGAByU9oZkuhyu+HSvLdq6r1efy9v3ksZ5X1wroPA2uAsr7Fk2QuTm/6prfzI0JsMxcHdaGAAIIIGBGAQIsM1aFNSGAAAIImFaAAEtbgKVavdH3bhmQdorbWnoKdyad94ic2rST7vqrJ5KGzHq4xlNdc//xorSqry9wcRdgqTDu43Mf1r0m1eHm+eNk3tYVtfp6CrB2Fx2UJrFJPufKLdwrA74c7fZA/GCsd9oFT0jXxhk+13VkA3eW6vdhGX3lX6fdoGss1Vh9wfLq756WX3bVDsR0D2aCDgRYJigCS0AAAQQQsJQAAZalysViEUAAAQSMFiDA0h5gDWzdS14+8w63JVuwbZXcMO+5Wr/1T+su4/uO8qvMdy54Rb7OXlbdd96QlyQtoamusTyFLjMHPSOdktN1jaUaq9clL5hxn+YAS88E//51sryzZpbbLoFcb9fG7WTaBU96XFppZblEhUXU+n3sLx/Ih+u+rfHX1RNcswY/KzHhUXq2Wt1WPW3X/4tRUuGs9Ku/mToRYJmpGqwFAQQQQMAKAgRYVqgSa0QAAQQQMI0AAZb2AKt1/eby3T/Gua2demLqH7MeqvWbOvNq3iUviToLS4VJ3+escL1quL1gj+tMrauOO1/OSz/V7ZjqrKR7Fo6v/u3VPne5DlpvXq+hNK2X7LbP2v3ZUlpZVv2bmuf/fnytVlv1CqF6Na+4olQWbl8ti3P/kPUHclyHq3du0Eru7z5S1KHz7q5+X9wtOfm7avzk6QmsqkbqIPmt+Xvk5CbtXYfXu7s2Htwm57sJx1TbQK73io4D5LEeV9dagjrrSp1lpg6vVwf3n9Qkw/XE3XmtekiYI0xOn3pbrbPJnup1veuMM3fXu2tmyztrZot6RfKctO7yeM9r3J6jpr7SqL7WaPWLAMvqFWT9CCCAAAJ1LUCAVdfizIcAAgggYGkBAqya5fN0BpZqlRBVT34b/o7beqsDuft+fpfb305POUHySw+7vkB39KUO+1449HXXF/qOvv7Yt9n1GuHR1z3dLpebjh/kdq4+n98p2wv2+rwn1RNGQ9qd5QpO3B0Yrw6Jf/jUf7odRz1ppp44O/LyFmC9sfpLeXnlNFfztIQmMv2ipz0eHO9p/YFc7w3HXyj3dRtRa2/qKagHf54oX25cWOPVTTW3OqB97f6sGn1U7VYMf8f11cajL3dP5F193Pny0ClX1mr75aaFrvOwrH4RYFm9gqwfAQQQQKCuBQiw6lqc+RBAAAEELC1AgFWzfN4CLBVkrLnyQ7f1VgeunzHtdk33gnrdLDE6TqLDoyQ6PFJeOONWOa5Bq1p9c/J3S78v/q/WXw9EgHX0oOpJMfXElQpjYiKi5JSmHUU9XeTuUk+FqafDjrw8BVj7S/Kl16c3S6XTWd38wVOukGuOu8Dt2DfPf0Hmbf3Np+OxrNfbq6BqYvVa3ycbvnd9dXB/8SGPa/H2KqL6kqW6l468VHinDvU/+vL25JlPCBM1IMAyUTFYCgIIIICAJQQIsCxRJhaJAAIIIGAWAQKsmpXwFmAlRyfIL5e/5bZ06vW7i2Y+4Pa3kxpnyPmterpeSWuX2ELiI2M1lX974V7p89mdtdoGIsBSr8ipNZ3Root0bthamtVrIOGOME3run/xm/LFxp9qtPUUYC3K/UOumftMjbbqtTx1IL676+nlH8l7a7+u9VMg16vquGjYG27PuTpyYnUW1uwtS2T86i8l69DOWmtSXx4c2+s6t/tQB7Q7pfa5VlFhkbXa7yvOk56f3qLJ3syNCLDMXB3WhgACCCBgRgECLDNWhTUhgAACCJhWgABLe4DVqUG6zLyoZhhT1XvpzjVy5bf/qjGYOuD76d43+PUVQjVQsAKsazsPlDtOHKI5SDv65tUTYH2dtVTu/PHVGkN4e3Lp1VWfyWu/f1GjfTDWe2fXS10GWi4VRql1vfnHjBrNbz5hsIw++TItQ3htU1JRJsd/fNUxj2P0AARYRleA+RFAAAEErCZAgGW1irFeBBBAAAFDBQiwtAdYQzP6yNOn3ei2XpM2zJXHl75X/Zs6tP2zgU9Kg5j6ftc3GAHWmO4jRQVCx3LpCbBmZy2pdYi8el1yxkVPu13CW3/OlBdWTKn+LVjrVRM80H2kXKfD4sWVU2XC6unVa7vn5MvlphPcn0Wmx1cdut/5IwIsPWa0RQABBBBAwA4CBFh2qCJ7QAABBBCoMwECLO0B1gcDHpTTmh/vtjZ3/fiqzMlaWv3bm2ePln4tu7ltq57o+Wn777I5L1fySgvk4januw4JP/oKdIClgqPpF/1L1PlR7q4th3bIr7vWS27hPtcZXVd3Ot9tOz0B1rytK+Tm+TW/3Hhq004y6bxH3I790sqpMv5/IVEw11s1ufoqonqKSq3J16VeKez3+f+JOu9MXYF6AosAy5c8vyOAAAIIIGBPAQIse9aVXSGAAAIIBEmAAEtbgNUntau83e8+t1Uod1ZI76m3VR/4rc64Wj58okQ4wmu1V4eCD53zmOTk76r+bWK/e6Vv6klBD7DUl/fUF/jcXe+umS3P/Dqp+qfjG7aWLy+s+Upk1Y96Aqy1+7Nl8Fdjakzp7Um2J5a9Lx+v/87VPpjrPdpAhWUjO/aXQW16izpk39P16NL/yCcb5rl+HpbRV/512g1um4766XVRgaCWSx1wf/QXDrX0M1sbXiE0W0VYDwIIIICA2QUIsMxeIdaHAAIIIGAqAQKsmuVwd4j7Ra1PcwUV6gt97q4vNy2U+xZNqP7puAbpMsPDWVkqnFEhzZHXV4OelY7JabWG9vgElpdX186bfo9syst1u05vT4WdOuUmOVCSX92vf1p3Gd93lNtx9ARYFc5K19cZ9xQdrB5LjavGd3dd9d3T8vOOP10/BXO9nv4Qqi8x3nj8ILn++IFun1R7+89Z8tyKya7u3l6FHPvLB/Lhum9N9Wc92IshwAq2MOMjgAACCNhNgADLbhVlPwgggAACQRUgwKrJ++e+LTI3Z7lEhUdKk9hk6dHsOElLaOKxBiqguWDGfa7XAauuro0zZNoFT7jtMy1zgTz488Tq305POUHe7f+A27DEU4B1a5eL5e6Thrkd/z9rZsuz/3uSqlFsopye0kXUa3z5pYdd85yR0sVtPxUyVb0ap75G+OG5D3l8rU5PgKUmW7JjjTz089uSW7hXhrQ7S5728NSSehKp56c3VwdpwVrvlR3Ple5NO8jMzYtlyY4/5XB5SS2TDwc8JL2ad671199bO0eeXv6x66+rVzGXXf6mqK8aHn2pMPCauc/Kmn1b3HpHhoXL2S27ub5K+cbqL4P6Z7yuBifAqitp5kEAAQQQsIsAAZZdKsk+EEAAAQTqRIAA69iYn17+kby39usag6QlNJV5Q15yO7A6R2niHzMlO3+XdGnURi5r30+iwiLctvUUYA3N6OsxBFIDFZYXu8KVev97YqzP53fK9oK98sIZt8rgNqe7nWvVnkyZ8td815cJL8k4Szolp3uE0RtgaRX+Zdc6GfnN2OrmwVqvOrhdHeCuLlWPvw5slXX7s11PiZVWlEnrxOZyYevTRAV5R19H1/vOrpfIHSde4naLKpBTYegf+za7xo4Nj5am9ZKlfXKa9GjWyWW9MHe1XDv3Wa1Epm5HgGXq8rA4BBBAAAETChBgmbAoLAkBBBBAwLwCBFj+18bd64ZVoy277M1j+gKhGsdTgNUhOU1mDdIeelQFWOqMp8d7XOP/hv/XM1gBljo36qstP1evL1jrPTLA0otx9CuaCVH1ZPagf0vzuIZ6h3K1J8Dyi41OCCCAAAII2EKAAMsWZWQTCCCAAAJ1JUCApV9aHdr+/Iopog4+93SpL9upr9RpudYdyJam9RpIg6NeRfMUYKkxZw56xutTUkfOWxVgJUbFyY9DX5O4iBgty5KlO9dIz2a1X6MLRoClngBTh9sfeQVrvf4GWDM2L5J7Fo6vZafOPJt03qOuJ6r0XgRYesVojwACCCCAgH0ECLDsU0t2ggACCCBQBwIEWNqR1XlX32QvkwmrZ8iGAzleO6ov2X16wROiwg1vlxrn6rnPyJC2Z8q93YbXaOotwFLnbE0672GJCov0uYGqAEs1VK8QPn/GLW7P3KoaSL369tQvH8pnGxfIgkteqfUkmdYAq6CsSG74/jl59vSbJD2hmcd1qn0Om/2o7D7ioPeqxsFYrz8B1g/bVsodC16Wkooyt/tok5gir/W5S9ontfRZjyMb/Lh9lVz//XO6+pi1Ma8QmrUyrAsBBBBAwKwCBFhmrQzrQgABBBAwpQABlvuyFFeUysGSAteB4hv254g6n2lR7h+yo3Cf5jqqJ3LUWUvq4HJ1aPeR1/7iQ/LFpp/k1VWfS1F5iesLhz9c8rI0jEmsbuYtwFKNujRqK2NOuUK6N+ngdk2bD+XK7C1L5a0/ZtQIXvqkdnX1a1M/pUY/FVyt3POXvLRyqizbuc712/WdL5T7u4+o0U5rgPXiyqkyYfV0UV/2u6/bCBnUprdEh/8duJVWlrnWp86VUtaerkCvt3X95nJFxwFyRosu0qp+M49hnvL4dfd6+Xj9XPk6a6nPuoc5HHJBq14yvEM/6dq4ncdwUQWh6mMBakx1qP+h0kKfY1uhAQGWFarEGhFAAAEEzCRAgGWmarAWBBBAAAHTC4RigFXXRVGv7B3fqLUkRSdIYVmR7D58UDIPbhOnOAOyFPXqoToYPDE6TlQ4kldSIFsO7ZC9RXlex2+bmOJ6MsrhcLgCpE15270GSce6WBXoqTkb10t2rXH9gRzX1xG1XsFYr1pTy4Qm0igmUWIioiTCEe76KuG+4jzZeHC7qCDTn0sdzN8uKVUaxCS4Xi0sd1ZKUVmJ7C46INsK9rhCS7tdBFh2qyj7QQABBBAItgABVrCFGR8BBBBAwFYCBFi2KiebQcAwAQIsw+iZGAEEEEDAogIEWBYtHMtGAAEEEDBGgADLGHdmRcBuAgRYdqso+0EAAQQQCLYAAVawhRkfAQQQQMBWAgRYtionm0HAMAECLMPomRgBBBBAwKICBFgWLRzLRgABBBAwRoAAyxh3ZkXAbgIEWHarKPtBAAEEEAi2AAFWsIUZHwEEEEDAVgIEWLYqJ5tBwDABAizD6JkYAQQQQMCiAgRYFi0cy0YAAQQQMEaAAMsYd2ZFwG4CBFh2qyj7QQABBBAItgABVrCFGR8BBBBAwFYCBFi2KiebQcAwAQIsw+iZGAEEEEDAogIEWBYtHMtGAAEEEDBGgADLGHdmRcBuAgRYdqso+0EAAQQQCLYAAVawhRkfAQQQQMBWAgRYtionm0HAMAECLMPomRgBBBBAwKICBFgWLRzLRgABBBAwRoAAyxh3ZkXAbgIEWHarKPtBAAEEEAi2AAFWsIUZHwEEEEDAVgIEWLYqJ5tBwDABAizD6JkYAQQQQMCiAgRYFi0cy0YAAQQQMEaAAMsYd2ZFwG4CBFh2qyj7QQABBBAItgABVrCFGR8BBBBAwFYCBFi2KiebQcAwAQIsw+iZGAEEEEDAogIEWBYtHMtGAAEEEDBGgADLGHdmRcBuAgRYdqso+0EAAQQQCLYAAVawhRkfAQQQQMBWAgRYtionm0HAMAECLMPomRgBBBBAwKICBFgWLRzLRgABBBAwRoAAyxh3ZkXAbgIEWHarKPtBAAEEEAi2AAFWsIUZHwEEEEDAVgIEWLYqJ5tBwDABAizD6JkYAQQQQMCiAgRYFi0cy0YAAQQQMEaAAMsYd2ZFwG4CBFh2qyj7QQABBBAItgABVrCFGR8BBBBAwFYCBFi2KiebQcAwAQIsw+iZGAEEEEDAogIEWBYtHMtGAAEEEDBGgADLGHdmRcBuAgRYdqso+0EAAQQQCLYAAVawhRkfAQQQQMBWAgRYtionm0HAMAECLMPomRgBBBBAwKICBFgWLRzLRgABBBAwRoAAyxh3ZkXAbgIEWHarKPtBAAEEEAi2AAFWsIUZHwEEEEDAVgIEWLYqJ5tBwDABAizD6JkYAQQQQMCiAgRYFi0cy0YAAQQQMEaAAMsYd2ZFwG4CBFh2qyj7QQABBBAItgABVrCFGR8BBBBAwFYCBFi2KiebQcAwAQIsw+iZGAEEEEDAogIEWBYtHMtGAAEEEDBGgADLGHdmRcBuAgRYdqso+0EAAQQQCLYAAVawhRkfAQQQQMBWAgRYtionm0HAMAECLMPomRgBBBBAwKICBFgWLRzLRgABBBAwRoAAyxh3ZkXAbgIEWHarKPtBAAEEEAi2AAFWsIUZHwEEEEDAVgIEWLYqJ5tBwDABAizD6JkYAQQQQMCiAgRYFi0cy0YAAQQQMEaAAMsYd2ZFwG4CBFh2qyj7QQABBBAItgABVrCFGR8BBBBAwFYCBFi2KiebQcAwAQIsw+iZGAEEEEDAogIEWBYtHMtGAAEEEDBGgADLGHdmRcBuAgRYdqso+0EAAQQQCLYAAVawhRkfAQQQQMBWAgRYtionm0HAMAECLMPomRgBBBBAwKICBFgWLRzLRgABBBAwRqD1hEskPDbKmMmZFQEEbCNQfuCwZN09wzb7YSMIIIAAAggEW4AAK9jCjI8AAgggYCuBFo/0l9i2jWy1JzaDAAJ1L1C4Old2vPhj3U/MjAgggAACCFhUgADLooVj2QgggAACxgg0uPh4aXDxCcZMzqwIIGAbgd3v/yKHFmyyzX7YCAIIIIAAAsEWIMAKtjDjI4AAAgjYSiA8KUbSnxskYVHhttoXm0EAgboTqDhcItn3fCWVh8vqblJmQgABBBBAwOICBFgWLyDLRwABBBCoe4FGI06WpAEd6n5iZkQAAVsI7J/+h+yf/qct9sImEEAAAQQQqCsBAqy6kmYeBBBAAAFbCTS/+0yJO7GFrfbEZhBAIPgC+cuyZdeEn4M/ETMggAACCCBgMwECLJsVlO0ggAACCNSdQP1zMqTh0BMlPDqy7iZlJgQQsKSAem1w32er5dD8jZZcP4tGAAEEEEDAaAECLKMrwPwIIIAAApYWcMRGSr3OzSS6TUMJiwiz9F5YPAIIBF6gsrxSSrbsk8Orc8VZUhH4CRgRAQQQQACBEBEgwAqRQrNNBBBAAAEEEEAAAQQQQAABBBBAwKoCBFhWrRzrRgABBBBAAAEEEEAAAQQQQAABBEJEgAArRArNNhFAAAEEEEAAAQQQQAABBBBAAAGrChBgWbVyrBsBBBBAAAEEEEAAAQQQQAABBBAIEQECrBApNNtEAAEEEEAAAQQQQAABBBBAAAEErCpAgGXVyrFuBBBAAAEEEEAAAQQQQAABBBBAIEQECLBCpNBsEwEEEEAAAQQQQAABBBBAAAEEELCqAAGWVSvHuhFAAAEEEEAAAQQQQAABBBBAAIEQESDACpFCs00EEEAAAQQQQAABBBBAAAEEEEDAqgIEWFatHOtGAAEEEEAAAQQQQAABBBBAAAEEQkSAACtECs02EUAAAQQQQAABBBBAAAEEEEAAAasKEGBZtXKsGwEEEEAAAQQQQAABBBBAAAEEEAgRAQKsECk020QAAQQQQAABBBBAAAEEEEAAAQSsKkCAZdXKsW4EEEAAAQQQQAABBBBAAAEEEEAgRAQIsEKk0GwTAQQQQAABBBBAAAEEEEAAAQQQsKoAAZZVK8e6EUAAAQQQQAABBBBAAAEEEEAAgRARIMAKkUKzTQQQQAABBBBAAAEEEEAAAQQQQMCqAgRYVq0c60YAAQQQQAABBBBAAAEEEEAAAQRCRIAAK0QKzTYRQAABBBBAAAEEEEAAAQQQQAABqwoQYFm1cqwbAQQQQAABBBBAAAEEEEAAAQQQCBEBAqwQKTTbRAABBBBAAAEEEEAAAQQQQAABBKwqQIBl1cqxbgQQQAABBBBAAIE6EQhPiJaK/JI6mYtJEEAAAQQQQMC9AAEWdwYCCCCAAAIIIIAAAh4Emlx7qjQafpJsvO5TKc05iBMCCCCAAAIIGCRAgGUQPNMigAACCCCAAAIImFfAERkuqY/2l+TzO7kWWZJzQDKvnCyVhaXmXTQrQwABBBBAwMYCBFg2Li5bQwABBBBAAAEEENAvENE4TtKfvVDiTkyp0Tl/WbZk3TVdnOWV+gelBwIIIIAAAggckwAB1jHx0RkBBBBAAAEEEEDATgIxHZpI65cHS2TjeLfb2j9zjWx78js7bZm9IIAAAgggYAkBAixLlIlFIoAAAggggAACCARboP5ZbSXtX+dLWEyk16l2vL5I9ry/PNjLYXwEEEAAAQQQOEKAAIvbAQEEEEAAAQQQQCDkBWI7NZGMj0Zqdsi67ys5NH+j5vY0RAABBBBAAIFjEyDAOjY/eiOAAAIIIIAAAgjYRCD10QHSYFBnTbupLC6Xjdd8IsWZezW1pxECCCCAAAIIHJsAAdax+dEbAQQQQACBgAjEdUutHie2fWMJT4h2/efI5t6smjgAACAASURBVPUlKqW+6/8Oj4+W2A5NpGDFVinasEd2v71UKvJLAjI/gyCAgIgjIkxavXKxJPRI18RRuitfNl07Rcp2FWhqTyMEEEAAAQQQ8F+AAMt/O3oigAACCCBQS0AFTzHtG1f/9fgjgil3YdSxEFbkF8tfIydJWe6hYxmGvgggcIRAWFyUZHw0QqLTkjW5FGXukU3XT5XKwlJN7WmEAAIIIIAAAv4JEGD550YvBBBAAAEEqgXq92krjYafJPHdWta5StGG3ZI5clKdz8uECNhZICotSdq9e7lEJMVq2mb+smzZcseXIpVOTe1phAACCCCAAAL6BQiw9JvRAwEEEEAAgWqB5qPOksYjTjZU5K+RH0vxhj2GroHJEbCbQL0uzaXtxKHiiAjXtLW9n6yU3HELNLWlEQIIIIAAAgjoFyDA0m9GDwQQQAABBFwC6smrVi8MMlwj98UFsnfySsPXwQIQsJtA8qDO0vLRAZq3xZ9FzVQ0RAABBBBAQLcAAZZuMjoggAACCCDwX4GMSSNdh6obffEvzUZXgPntLND0xp7S9MZemrborHTKlju+kIJlOZra0wgBBBBAAAEEtAsQYGm3oiUCCCCAAAI1BLr8ercpRHiF0BRlYBE2Fkj/94WS2C9D0w4rCkpk0w1TpThzr6b2NEIAAQQQQAABbQIEWNqcaIUAAggggEAtATMEWOpfltf0GU91EEAgiAKO6AhpM+ESieuSommW0l35ro8rVBws0tSeRggggAACCCDgW4AAy7cRLRBAAAEEEHArkDH5Colt39hQnYIV22TzTdMMXQOTIxAKAuFJsa7XhqOaJmjabuHqXNl8y+fiLCnX1J5GCCCAAAIIIOBdgACLOwQBBBBAAAE/BZIvOk5aPnaun70D023XxCWya+LSwAzGKAgg4FUgJqORtH17mITHR2uSypuXKdn3z9LUlkYIIIAAAgggQIDFPYAAAggggEDQBFJG95FGw0/ye3yn8++u6n9VEvnfX3D89z/5ujbdNE0KV2zz1YzfEUAgQALxPdKk9SsXiyMiXNOIhMyamGiEAAIIIICATwGewPJJRAMEEEAAAQS8C8R1S5XEPu0k5ojXCQtXbK3uVPTXHqnIL3H957I9BdL0uh6SPPA4j4M6HSKOI4Itb7Ov7v4S5UEAgToWaHBJF0kd00/zrNn3zZK8+Zma29MQAQQQQAABBGoLEGBxVyCAAAIIIFBHAuGJMdJq3CCJ69rC+4wa/+nM+Vd1VDimQcCNgJ6nLyuLy2XzrZ/J4dU7sEQAAQQQQAABPwU0/ldkP0enGwIIIIAAAgi4BKJaJErrN4ZIdGqSTxH18JWWFwh5NcknJQ0QCJ5AmENav/YPSeiRrmmO8oNFkjnyYynbVaCpPY0QQAABBBBAoKYAARZ3BAIIIIAAAkEWqHdiiuvJq4ikWI0zaYuwOP9KIyfNEAiSQFhclLR9Z5jEZmj7GmlR5h7ZdP1UqSwsDdKKGBYBBBBAAAH7ChBg2be27AwBBBBAwAQCSRd0ktRH+ktYpLYDn/UsmfOv9GjRFoHgCEQ2jZeMSVdoDqjzl2XLlju+FKnUeNBdcJbNqAgggAACCFhOgADLciVjwQgggAAClhBwiDS7pbc0ufbUoCyX86+CwsqgCPglUK9Lc2kz/lIJi4nQ1H/vJysld9wCTW1phAACCCCAAAL/FSDA4k5AAAEEEEAgwAKO6AhJG3ueJJ6doXtkZ4VTHOG+T8Di/CvdtHRAIKgC6s97+nMXap5j2zPzZP/nqzW3pyECCCCAAAKhLkCAFep3APtHAAEEEAioQETjOGn14mCp16mp7nHVIc8Vh4olOi3ZZ1/Ov/JJRAME6lyg6Y09pemNvTTN6yyvkC13TZeCZTma2tMIAQQQQACBUBcgwAr1O4D9I4AAAggETCC6dQNp88YlEtkkXveYJdsOSs59syRj8hWa+nL+lSYmGiFQ5wLp/75QEvtpe/qyoqBEMv85WUpzDtb5OpkQAQQQQAABqwkQYFmtYqwXAQQQQMCUAvE90yX92YESHh+te32Fq7ZL1uiZEndSC2n1wiCf/Yv+2iOZIz722Y4GCCBQ9wLqFeI2Ey6RuC4pmiYvyTkgG6/9VCoOFmlqTyMEEEAAAQRCVYAAK1Qrz74RQAABBAIm0HDYiZIyuo84wsN0j3lg9lrZNnauOMsrXWM0Gn6SzzE4ANonEQ0QMFQgPClW2r17mabXgdVCC1fnyuYbp7n+PsCFAAIIIIAAAu4FCLC4MxBAAAEEEPBXIMzx39Dpsq66R3A6nbLzjcWy5/3l1X0zJo2U2A5NfI6Vdc9MObRgk892ZmsQFh8tUS0SpXjDbrMtjfUgEHCBqLQkyfhwhOanMvfPXCPbnvwu4OtgQAQQQAABBOwiQIBll0qyDwQQQACBOhUIi4tyvTKY0KuV7nkri8sk55Fv5NAPG6v7hidES+cfbtU01pq+46Uiv0RTW7M0UsFVq5cGS0RyrGReMVnKduWbZWmsA4GgCcT3SJPWr1wsjohwTXPseH1RjVBbUycaIYAAAgggECICBFghUmi2iQACCCAQOIGqMCamTUPdg5btLpCsUTOkaH3Np5Dq92lr2/Ov6nVNce0tIinW5VW0YbfrzB9nSbluPzogYDWBBpd0kdQx/TQt21nplJwHZkve/ExN7WmEAAIIIIBAKAkQYIVStdkrAggggMAxC9Q7MUVajfs7jNEzYPHmfbL5ts+lfE9hrW5Nb+wpTW/s5XM4q51/lTywk7R4uL+ERdZ8AuXg939JzoNzRCqdPvdMAwSsLqD1fDu1z8rictl4zSdSnLnX6ttm/QgggAACCARUgAAroJwMhgACCCBgZ4H6fdtJ2tMX1ApjtOw5f0mWZD8wWyoLS902b/PWUInvlupzKMucf+UQaXZLb2ly7ake97T7g+Wy87VFPvdMAwQsLxDmkNav/UMSeqRr2krprnzZdO0UKdtVoKk9jRBAAAEEEAgFAQKsUKgye0QAAQQQOGaBxlefIs1u6y0Oh/pHp75r76erJHfcAq9PG3X59W5Ng1rh/CtHTISkPXmeJJ6d4XNP2Q/MkrzveV3KJxQNLC+gzs1r+84wic1orGkvRZl7ZOPVU3jVVpMWjRBAAAEEQkGAACsUqsweEUAAAQT8FnBEhEnqI/0leeBxusdwVlS6gqt9U3/32jeuW6q0fWuoz/GL/tojmSM+9tnOyAaRTeIlfdwgqdepqaZlqNel1GuVh3/P1dSeRghYWSCyabxkTLqi+jw4X3vJm5cp2WNm86qtLyh+RwABBBAICQECrJAoM5tEAAEEEPBHIDwxxnXeVVzXFrq7VxSUuF4ZLFia7bOv1gDL7OdfxXZqIq3GDRYVYum5yg8c5suEesBoa2mBel2aS5vxl0pYTISmffCqrSYmGiGAAAIIhIAAAVYIFJktIoAAAgjoF4hu3UBavTRYolOTdHcu2XZQsu6eISVb9mvqG5lSXzrNvM5n2003TZPCFdt8tjOiQXyvdGn1/EUSFhOpe/rCVdsl656vpOJgke6+dEDAigLq9dq0ZweKI0zbK8lbn/xODsxcY8WtsmYEEEAAAQQCJkCAFTBKBkIAAQQQsItAfM90SX92oITHR+vekiuMGT1TKvKKdfVVr90lntXWY5+CFdtk803TdI1ZV40bDusqKaPPEkd4mO4pD8xeK9ue+l6cZRW6+9IBASsLqHP1mt9+uqYtOMsrZNON0+Tw6h2a2tMIAQQQQAABOwoQYNmxquwJAQQQQMBvgYbDThT1yXt/wpi8+ZmS8+AccZZX6p4/PCFa1JcIY9vXPuBZnX2lwquK/BLd4wa1Q7hDUkb1kUaXddU9jdPplJ1vLJY97y/X3ZcOCNhFIPXRAdJgUGdN2yk/WCQbr50ipTkHNbWnEQIIIIAAAnYTIMCyW0XZDwIIIICA3wIp9/b1K4xRE+5+9xfZOWGxiNPv6UWFWMkXHSeNhp8sUc3riwquDi3YKOrsK7OFV2Hx0ZL+zAWS0KuV7g1XllVIzkNz5ND8jbr70gEBOwmoj0S0mThU4rqkaNpWSc4BybxyslQWlmpqTyMEEEAAAQTsJECAZadqshcEEEAAAb8EHNERkjb2PFHn0ui9VBizbexcOThnnd6ulm0f1SLRdT5YTJuGuvegniLJumemHF7FVwd149HBlgLhSbHS7t3LJDotWdP+8pdlS9Zd0/160lPTBDRCAAEEEEDApAIEWCYtDMtCAAEEEKgbgYjGcdLqxcFSr1NT3RO6wpjRM+Xw76ETxtTrmiKtXhgkEUmxur2KN+9zHW5fuj1Pd186IKBFQH0QQT29qL4CWrxhj5YupmgTlZYkGR+O0Hzu3r7PV8v2Z+aZYu0sAgEEEEAAgboSIMCqK2nmQQABBBAwnUBsxyau8CqySbzutYViGJM8sJO0eLi/hEWG6/bKX5Il2WPmSGWByc7x0r0TOphRIKZDY2n56ACJ7dCkenkV+cWu13DVlzvVRxCK/9pjuldxj7SM75EmrV+5WBwR2v585b64QPZOXmnGcrAmBBBAAAEEgiJAgBUUVgZFAAEEEDC7QP2+7VyvDYbFROpeqiuMeWB2SJ1D0+zW3tLk2lN1W6kOez9dJepftqXiGA4I82tmOoWCgHrqqv2kkRKeEONzu0UbdleHWQW/bZOy3EM++9RlgwaXdJHUMf00TemsdMqWO76QgmU5mtrTCAEEEEAAAasLEGBZvYKsHwEEEEBAt4D6fH2z23qLw6H+MajvOjB7rWx94juRytAIYxyR4ZL68DmSPPA4fVAi4qyolNxxP8q+qat096UDAloFUh8/VxpcqP/+VOOrp7Sqns5S/796WsvoS30FtdHwkzQtQ70quemGqVKcuVdTexohgAACCCBgZQECLCtXj7UjgAACCOgSUF/8Sn2kv39hjNMpO99YLHveX65rTis3VodLt3rhIonr2kL3NtS/WGePmS0FS7J196UDAnoEOv9wi6anr7SOWbBiqxRt+O+rh0WZe+r+Ka0wh6Q/M1AS+2n7qETprnzJHDlJKg4Wad0i7RBAAAEEELCkAAGWJcvGohFAAAEE9AqExUW5zpfxJ4ypLC6TnEe+kUM/bNQ7rWXbR7dp4DofLDo1SfceSrYdlKxRM6Rk837dfemAgF6BLr/erbeLrvaluXl/n6X127Y6ORxefRm13fuXS2xGY01rLVydK5tv+VycJeWa2tMIAQQQQAABKwoQYFmxaqwZAQQQQECXQFSLRGn10mCJadNQVz/VuGx3gSuMKVq/W3dfq3aI75XuegIkPD5a9xYKV22XrHu+4mkQ3XJ08Fcg2AHW0etST2ip14iDfX5WZNN4afvu5RLVNEETTd68TMm+f5amtjRCAAEEEEDAigIEWFasGmtGAAEEENAsUO/EFGk1bpBEJMVq7lPV8PC6Xa7wqnxPoe6+Vu3QcFhXSRl9ljjCw3RvIW9+puQ89LU4yyp096UDAv4K1HWApdapDoPffPNnQf+qYUxGI2n33nAJi4nQxLNr4hLZNXGpprY0QgABBBBAwGoCBFhWqxjrRQABBBDQLJB0QSfXmVdhkdo+S3/kwK4w5pFvQueVnHCHpIzqI40u66rZ98iGu9/7RXaOXywSGmfb+2VEp+AItHlrqMR3Sw3O4F5GVV/W3Dt5ZdDnTTw7Q9KeHSiOMG0fnci+b5aov39xIYAAAgggYDcBAiy7VZT9IIAAAgiIOESa3dJbmlx7ql8au9/9RXZOCJ0wxhETIa2ev0gSerXS7VVZViHbn5orB2av092XDggEQsCoAEt9tXDzTdMCsQWfY6gvpza//XSf7VSDyuJy2XzrZ3J49Q5N7WmEAAIIIICAVQQIsKxSKdaJAAIIIKBJQB1+nDb2PFFPLei9nBWVrrNtDs4JnTAmskm8pI8bJPU6NdXLJeUHiyTrnplyeFWu7r50QCBQAqEQYCmr1EcHSINBnTWxqT+bmSM/lrJdBZra0wgBBBBAAAErCBBgWaFKrBEBBBBAQJNAeGKMtH59iF9hTEVBiWQ/MFsKlmZrmssOjWI7NZFW4waLCrH0XsWb90nW3TOkdHue3q60RyCgAloDLKfD9XCmONVrrk4Rh7Y38jyudf+stbLt8W8DuhdvgzkiwqTNxKES1yVF05xFmXtk0/VTpbKwVFN7GiGAAAIIIGB2AQIss1eI9SGAAAIIaBKIbt3A9aXB6NQkTe2PbFSy7aArjCnZsl93X6t2qH92O0l78jwJi4nUvYX8JVmSPWaOVBaU6O5LBwQCLZAyuo80Gn6S92FVauUhsTq8dqdUFpXrPkdr3aD/BP1LhEdvKjwpVtq9e5lEpyVrYsxfli1Zo2aGzll+mlRohAACCCBgVQECLKtWjnUjgAACCFQLxPdMl/RnB0p4fLRulcJV2yVr9EypyCvW3deqHdR5Os1u6y0OPx5B2fvpKlGHV0sFp7Vbtf52W3fTG3tK0xt7+R1gqY5VB7LHdGjsCrLiurWU2PaNJap5/Vrjqqc11d8zCldsM4QyKi1J2r17ueYvq+bNy5TsMbNFKvkza0jBmBQBBBBAIGACBFgBo2QgBBBAAAEjBBoOO1HUExiO8DDd0x+YvVa2jZ0rzvJK3X2t2MERGS6pD58jyQOP0718dT5Y7rgfZd/UVbr70gGBYAoEIsByVjplyx1fSMGynBpLjUyp7wqy1P+LTEmU4r92y4Gv1kpFvrFPH9br0lzaThwqjghtX1jd/cFy2fnaomCWgbERQAABBBAIugABVtCJmQABBBBAICgCYQ5XcNXosq66h3c6nbLzjcWy5/3luvtatYM65yrt6QskrmsL3VtwnQ82ZrYULAmd88F0I9HBMIFABFhq8eo+33TDVCnO3GvYXvRMnDyos7R8dIDmLluf/E4OzFyjuT0NEUAAAQQQMJsAAZbZKsJ6EEAAAQR8CoTFRbleGUzo1cpn26MbVJZVSM6Dc+TQDxt197Vqh2M5rF0d0p41aoYUb9pn1e2zbpsLJF90nLR87Fyvu1Qvz2k5s710V75kjpwkFQeLLKHW7I7TpclVp2haq7O8QjbdOE0Or96hqT2NEEAAAQQQMJsAAZbZKsJ6EEAAAQS8CkS1SHQd1h7TpqFuKfVpeXV2zeHfc3X3tWqH+F7p0ur5i/w6rP3wul2y5Y4vLfMv81atEes+NoG4bqnS9q2hXgepLC6XsJgITRMVrs6Vzbd8bo2Dz8Mckv7MQEnsl6Fpb+rvgRuvnSKlOQc1tacRAggggAACZhIgwDJTNVgLAggggIBXgdiOTaT160M0H1585GDFm/e5vjSonigKlavhsK6SMvosv84Hy5ufKTmPfiPO4vJQ4WKfFhXQEmAV/rlTolMTNf+9w0oHnzuiI6Td+5dLbEZjTRUsyTkgmVdOlsrCUk3taYQAAggggIBZBAiwzFIJ1oEAAggg4FWgft92kjb2PL+eJMpfkiXZD8wOnX9hC3dIyij/zgdTRdj93i+yc/xiET5axp9KCwhoCbAKVmyTnW8ssu3B55FN46Xtu5dLVNMETRXLX5YtWXdND5kPWGhCoRECCCCAgOkFCLBMXyIWiAACCCDQ+OpTpNltvcXh0HKKTU2vvZ+uktxxC0LmE/Jh8dGS/swFfp8Ptv2puXJg9jpuOgQsIxDTobG0n3SF1/WW5ubJ+kHvip0PPo/JaCTt3huu+VXJ/TPXyLYnv7NMnVkoAggggAACBFjcAwgggAACphVwRIRJ6iP9JXngcbrX6KyodAVX+6b+rruvVTsc8/lg98yUw6tC53wwq9aZddcW6PLr3T5ZVnd/ydXGzgefJ56dIWnPDhRHmLawf8fri0Lqa6w+bxIaIIAAAgiYWoAAy9TlYXEIIIBA6AqEJ8ZIq3GDJK5rC90IlcVlknXPV1KwNFt3X6t2qNc1RVq9MEjzGT9H7jMUzwezap1Zt3sBPQGW2Pzg80YjTnK9QqzlclY6JeeB2aLOvONCAAEEEEDA7AIEWGavEOtDAAEEQlAgunUD15cGo1OTdO++bHeBZI2aIUXrd+vua9UOyQM7SYuH+0tYZLjuLbjOBxszRyoLSnT3pQMCZhHQFWCJiN0PPm8xpp80vKSLpvKoLzRuvOYTKc7cq6k9jRBAAAEEEDBKgADLKHnmRQABBBBwKxDfM13Snx0o4fHRuoUOr9vlCq/K9xTq7mvJDg6RZrf2libXnOrX8l3ng724QKSC09r9AqSTaQS0BFhr+o6Xivy/g1o7H3yuXr9u9crFktAjXVONSnfly6Zrp0jZrgJN7WmEAAIIIICAEQIEWEaoMycCCCCAgFuBpAs6ScvHBogjPEy3kHoFJueRb8RZUq67rxU7OGIiJO3J80SdeaP3+u/5YD/Kvqmr9HalPQKmFGjz1lCJ75bqdW2bbpomhSu21Whj54PPw+KiJOOjERKdlqypZkWZe2Tj1VNC5u+hmlBohAACCCBgKgECLFOVg8UggAACISqgniS6pbc0uda/J4l2v/uL7JywWCREHiSKbBIv6eMGSb1OTXXfMBUFJZI9ZrYULAmd88F0I9HBcgL+Blhqo3Y++DwqLUnaT75S85cJ8+Zluv7+IJUh8jdTy93pLBgBBBAIbQECrNCuP7tHAAEEDBdQZ9GkjfXvSaLKsgrZNnauHJyzzvB91NUCYjo0ltYvXyyRjeN1T6nOB9t8++dSsnm/7r50QMDMAscSYKl9Nb76FGl+++matmi1g8/1BnS7P1guO19bpMmCRggggAACCNSlAAFWXWozFwIIIIBADYGIxnHS6sXBfj1JVH6wSLJGz5TDv+eGjGr9s9u5XhsMi4nUvefCVdsl58E5okIsLgTsJpAyuo80Gn6S122tG/QfKcs95LFN6qMDpMGgzpporHbwuZ6ATgFsffI7OTBzjSYLGiGAAAIIIFBXAgRYdSXNPAgggAACNQRiOzZxhVfqdTi9V8m2g7Llti+kdHue3q6Wbd9wWFdJubePOBzqH936rgOz18q2p74XZ1mFvo60RsAiAnHdUqXtW0M9rrZgxTbZfNM0r7ux+8HnegI6Z3mFbLpxmhxevcMidwDLRAABBBAIBQECrFCoMntEAAEETCZQv28712uD/j5JpJ68qsgrNtmugrSccIekjOojjS7rqnsCp9MpO99YLHveX667Lx0QsJqAp6ew1Llv6gD34g17fG7Jzgef6w3o1FOuG6+dIqU5B3260QABBBBAAIG6ECDAqgtl5kAAAQQQqBZQr7I0u623/08SjZ0rzvLKkBANi4+W9GcukIRerXTvt7K4THIe/UYOzd+ouy8dELCqQKMRJ0mj4SdLVPP6ri3k/bhJdk1coim8qtqzOvi83buXS0RSrCYGKx18rjegK8k5IJlXTpbKwlJNFjRCAAEEEEAgmAIEWMHUZWwEEEAAgb8FwhzS8rEBkjzwON0qofgkUVSLRGn10mCJadNQt5c65ypr9AwpWrdbd186IICASL0uzaXtxKHiiAjXxLH3k5WSO26BprZGN9Ib0OUvy5asu6aHzP9wYHR9mB8BBBBAwLMAARZ3BwIIIIBA0AXU/+qf/uxA/58keuQbOfRD6DxJVK9rirR6YZDmJ0COLODhdbske/RMDmsP+l3NBHYXSB7UWVo+OkDzNrc9M0/2f75ac3sjG+oN6PZ9vlq2PzPPyCUzNwIIIIAAAkKAxU2AAAIIIBBUgWN+kmjUDClaHzpPEiUP7CQtHu4vYZHanvw4snh58zNdrw06i8uDWlMGRyBUBJrdcbo0ueqU/2fvPKCjKr4w/m16SA8hgQBJgAQkKEWkCSpFQQQB6c2Gioqi/gG7YAGlCHYsqFgpAiLF0KSpIKAiRYoYSkIJpEACSUhP/meeBlN2983bkm3fnMOx7J2Ze3/3hSTfm3tHKlzR+PzE4yuQs+uklL2tjbQKdClvbEXGwj22dpv7kwAJkAAJuDABClgunHyGTgIkQALWJlCrVSRi5ph2kij/+Hkcf+RbFKfnWttN+1hfB9Qd1xnh97Y3yZ+0z37Fufe3A2UmTeckEiABfQTcdIie3gdBPeKk+IiG8Yl3LXSYxueaBLrSMpwYv9xhBDqphNGIBEiABEjAoQhQwHKodNFZEiABEnAcAsG3NUeDyaadJMrekYTkZxJcpnGwzscDUa/ciqDucr8kV3wKSotKcGbaD8hMOOw4Dwc9JQEHIqDz9kDs58PhG1dHymvR+PzomG9QkpUnZW9TIxMEumMPLEF+YoZN3ebmJEACJEACrkmAApZr5p1RkwAJkID1CIiTRA93RvgY004SZXyz959myKWucZTIM9wf0XP6oVbzCM05Eac9TjyxApf3pmieywkkQALyBDwj/NFk/nB4RQRITcrdn4LjY5c6RONzIdA1/mAQ/FpGSsVWmJqNY2MWoyg1R8qeRiRAAiRAAiRgKQIUsCxFkuuQAAmQAAlA5+GGqNduM+kkUVlJqSJcnV+yz2VI+jYPR8yc/hAiltZRcDoLSRNWouD4Ba1TaU8CJGACAZ+4MMR+NgJuPh5Ssy+sOojTr2yQsrW1kXuwL+IWjJIW6PIS03H0nsUoK2C/PVvnjvuTAAmQgCsRoIDlStlmrCRAAiRgRQLuQT5Kvyu/1vU17yJOEomSwZydyZrnOuqEwO6xStmgm4+n5hBy955B0qTVjlGipDk6TiAB+yUgynyjZvSBzk38CK0+UuftQOq8neqGdmAhBLomHw+Fu7+3lDcXNyUi+dkElzktKwWFRiRAAiRAAlYlQAHLqni5OAmQAAm4BgHvRqGIebM/vBsEaw5YOUn0v5UoOOE6J4nq3NMOdR/pDJ1O7pfgilAzEw7h9LSNKCsq0cyaE0iABMwnEDayDSIndJVeKPmp7yFuCHWE4d8hCo3eHSgt0KV98RvOvbvNEUKjjyRAAiRAAk5AgAKWEySRIZAACZCALQn4d4xG9Iw+0m/taSIxwQAAIABJREFUK/qqnCSauAolF/NtGULN7e2uQ8MpPRHSJ17znmVlZTg3dzvSP/9N81xOIAESsCyB+s/2QO1BLaUWLc0vxvFxy3B5/1kpe1sbaRXoTr2yAZmrDtrabe5PAiRAAiTgAgQoYLlAkhkiCZAACViLQO2hrRA5sSt07m6atxAnEk4+t8YhmhxrDk7PBDd/b0RPvw0BnWI0L1eaX4STU9bh0uajmudyAgmQgOUJiH5/MW8PQECHaKnFi7PykDjqa4dpfK5FoCsrLsGxsUsdRqCTShiNSIAESIAE7JIABSy7TAudIgESIAE7J+CmU4SrsGGtTXI0bf6vOPfBdsA1LhqEV/0gpcTSp3FtzbyK0nKQNHEl8g6naZ7LCSRAAtYj4ObnhbivRsI7KkRqE9H4/Nj9S1CaWyhlb0sjUwS6o2MWo/Bkli3d5t4kQAIkQAJOToAClpMnmOGRAAmQgKUJiF/aRMmgSSeJikpweuoPyFpz2NJu2e16tVpHImZ2P3gE+2r28fLhVCRPXAUhYnGQAAnYHwGvqGDEzh8u/fWdvSsZJ8Z/5xCNz7UKdAUnM5F450KTBTq/tg1QePYSilIu2V+i6REJkAAJkIBdEKCAZRdpoBMkQAIk4BgEPOr4ofHcQSadJBIlNKLf1eV9KY4RrAW8DOnTHPVfuAVunu6aV1NKLKesQ1k+r6nXDI8TSKAGCdRqWQ9N5g2BzkPu6zxj0R6kzNlagx6avpUpAl3S4yukS8PdA7wR/kBH1Bl57RUnC1Mu4tTLG5C7+7TpjnMmCZAACZCAUxKggOWUaWVQJEACJGB5Ar5XhSPmjf7wDPfXvHj+8fPKTYOFZy5qnuuQE3RA3XGdEX5ve5PcT/vsV5x733VKLE2CxEkkYEcEQvq1UC5okB0pb2xFxsI9suY2tRMCXeP3B8PNx0PKj/Pf7seZ6ZukbOMWjIJvs3C9tn+P+hr5R9Kl1qERCZAACZCAaxCggOUaeWaUJEACJGAWgcBusYiaeivcfDw1r5O9IwnJzySYXFaieUMbT9D5eCDqlVsR1D1OsyelRSU4M+0HZCa4TomlZkicQAJ2SqDu+C4Iv7udlHdlpWU4MX45cnadlLK3tZH4+yx6Vl9pN2QEupDb49HwxV4G18w7kobEUQuk96QhCZAACZCA8xOggOX8OWaEJEACJGAWgTr3tEPdRzpDpxPfMrSNzIRDSikISl2jW7s4nRY9px9qNY/QBgpASU4BTjyxApf3uk6JpWZInEAC9kzATYfo6X0Q1ENOvBZf88ceWIL8xAx7juqKbxFjOyJibCcpX2UEOvF3ZdBNTYyud7Db+yjJLpDak0YkQAIkQALOT4AClvPnmBGSAAmQgEkExC1UDSbfgpA+8Zrnl5WV4dzc7Uj//DfNcx11gm/zcMTMMa3EsuB0FpImrETB8QuOGj79JgESAKDz9kDs58PhG1dHikdharZyyqgkK0/K3tZG0TP7Wkyga/zREPi3bWA0pGMPLmUvLFsnnfuTAAmQgB0RoIBlR8mgKyRAAiRgLwTcg3wQM6cf/FrX1+xSaX4RTk5eh0tbjmqe66gTArvHKmWDppRY5u49g6RJqx3mF1hHzRH9JoGaIuAZ4Y8m84fDKyJAasvc/Sk4/vC3KCuw/wsbhEDX+INB8GsZKRWbMYGOApYUQhqRAAmQAAlUIEABi48DCZAACZBAJQLejUIR82Z/eDcI1kymKC1HOUmU91ea5rmOOsHcEsvT0zairKjEUcOn3yRAAnoI+MSFIfazEdKNzy9uSkTy0987BEv3YF+I5uvmCnQUsBwi3XSSBEiABOyKAAUsu0oHnSEBEiAB2xKo1SoSjd4eAHd/b82OXD6cqohXxem5muc64gSdpzsavHAzSywdMXn0mQRqgIBofB41ow90bnL9A1Pn7UDqvJ014Jn5WwiBrsnHQ6W/V+gT6Bq81AuhfY2XqJ96eT0yVx8y32GuQAIkQAIk4BQEKGA5RRoZBAmQAAmYTyD4tuZKzys3T3fNi13cnKiUDTpCCYzm4PRMcPP3RqO3+pteYjllHS5tdp0SS0sw5xok4IgEwka2QeSErtKun3plAzJXHZS2t6Whf4coNHp3oMkCnUxTeEcS9WyZC+5NAiRAAq5CgAKWq2SacZIACZCAIQI6oO7DnRE+pr1JjDK+2YuU17eYNNcRJ3nVD1JKLH0a19bsvlJiOXEl8g67TomlZkicQAJORqD+sz1Qe1BLqajKiktwbOxSXN5/Vsre1kZaBbrkp76HeOEhBgUsW2eP+5MACZCA4xGggOV4OaPHJEACJGAxAqIhb9TUWyFKXbSOspJSpMzZivNL9mmd6rD2tVpHImZ2P3gE+2qOQZRYJk9cBSFicZAACbgOAXGja8zbAxDQIVoq6OKsPBwdsxiFJ7Ok7G1tFDmxK8JGtJFyozS/GMfHLVMEOgpYUshoRAIkQAIkUIEABSw+DiRAAiTgogQ86vgh5o3+qNU8QjOBkpwCJD+TgJydyZrnOuqEkD7NUf8FM0osp6xDWb793zLmqPmh3yRgzwTc/LwQ99VIeEeFSLlZcDITiXcuRGluoZS9TY3cdGj07h2aBbqQW69CxNhORl3PWLRHeVHCQQIkQAIkQAKCAAUsPgckQAIk4IIEfK8KV8Qrz3B/zdEXnM5C0v9WouDEBc1zHXKCKLEc1xnh95pWYpn22a849/52oMwho6fTJEACFiLgFRWM2PnDpU9wZu9KRtLjK1BWXGohD6y3jBDomnwyFL5xdaQ2EQJdypwflUtDjI2c3adx/MGlUmvSiARIgARIwPkJUMBy/hwzQhIgARKoRCCwW6xSNujm46mZTO7eM0iauAolF/M1z3XECTofD0S9YnqJ5WnRkDnhsCOGTp9JgASsQKBWy3poMm8IdB5yl2Wc/3Y/zkzfZAVPLL+kZ4Q/4haMlhboRFm12glgCliWzxNXJAESIAFHJkABy5GzR99JgARIQCOB2kNbIfLJbtDp5K51r7h8ZsIhnJ76g0OcBtCIRa+5OJ0WPaef6i9Y+iYrJZbPJiBnh+uUWFqCOdcgAVcgENKvBRpO6SkdasobW5GxcI+0vS0NhUDX+P3BcPPxsIgbFLAsgpGLkAAJkIDTEKCA5TSpZCAkQAIkYISAmw5Ko91hrTVjKisrw7m525H++W+a5zrqBN/m4YiZY0aJ5YSVKDjuIiWWjppk+k0CNiRQd3wXhN/dTsqDstIynHwm4crtfVKTbGgkLgWJntXXIh5QwLIIRi5CAiRAAk5DgAKW06SSgZAACZCAfgKiN0n0jD4I6BSjGVFpUQlOPrcGl7Yc1TzXUScEdo9VygZNLrGctBolWXmOGj79JgESqAkCbjpET++DoB5yN8CK2/uO3rsI+YkZNeGd2XvI3DAos0lJdj4OdvtAxpQ2JEACJEACLkCAApYLJJkhkgAJuC4Br/pBiHmzP3wa19YMQVzlLvpdXd6Xonmuo06oc0871H2ks+klltM2oqyoxFHDp98kQAI1SEDn7YHYz4dLNz4vTM3GsTGLUZSaU4NeVt7KPcAbYSPawK9tA+WDwpRLyN19GnmJ6cg/kl7JuMGUngjt18JsX/df96bZa3ABEiABEiAB5yBAAcs58sgoSIAESKAagVqtIhEzp590Q92KC+QfP6/cNFh45qJLkNV5uqPBCzcjpE+85nhdscRSMyROIAES0EtAND5vMn84vCICpAgJoejoPYtRVlAsZW9JI59mdZTeXb7NwvUuK05L5f2drghaovRPvPxoPG8I/FpGmuUGBSyz8HEyCZAACTgVAQpYTpVOBkMCJEAC/xAIvq05Gky+BW6ecjddVeSWvSMJyc8koDS30CVwugf7Imb27fBrXV9zvKX5RTg5ZR0ubXadEkvNkDiBBEjAKAGfuDA0+Xgo3P29pUhd3JSoXBKB0jIpe0sZxS0YZVC8MrRH/tEMeIT7wyPQB2U6QGeCyxSwLJVBrkMCJEACjk+AApbj55ARkAAJkMB/BHRA3Yc7I3xMe5OoZHyzFylzttb4L0YmOWuBSaLEstHcgfBuEKx5taK0HCRNXIm8w2ma53ICCZAACVQk4N8hCo3eHQidm9wNsWlf/IZz726rMYji9FXTBaMtsF8ZhIZ15SZcCUHrcL9PUZRyyQJ7cwkSIAESIAFHJ0ABy9EzSP9JgARI4F8COg83RL12G8QNUFpHWUmpIlydX7JP61SHta/VOhIxs00rsbx8OBXJE1dBiFgcJEACJGAJAmEj2yByQlfppU69sgGZqw5K25tjKHpeNfloiDlLmDz32INLlbJEDhIgARIgARKggMVngARIgAScgIB7kI/S78rUMrikSauRszPZCUjIhRDSpznqv2BaieXFzYlK2WBZfs33oJGLjlYkQAKOSqD+sz1Qe1BLKffLiktw4vEVyNl1UsreHCMKWObQ41wSIAESIAFLEaCAZSmSXIcESIAEbETAu1GoctOgyWVwE1Yi7y8XKYMTJZbjOiP8XtNKLNM++xXn3t8OpQaGgwRIgAQsTECcpI15ewACOkRLrVySU4DEuxai8GSWlL05Ri22jpPu02XOPlXn8gSWJWlyLRIgARJwbAIUsBw7f/SeBEjAxQn4d4xG9Iw+Jv1SIcrgkiasRHF6rktQ1Pl4IOqVW00usTwtynUSDrsEKwZJAiRgOwJufl6I+2okvKNCpJwoOJmJo2O+QUlWnpS9qUYht8ej4Yu9TJ1u8jwKWCaj40QSIAEScDoCFLCcLqUMiARIwFUI1B7aCpETu0Ln7qY5ZKUMbvI6m1zFruasaBYsbuPK/zsdJdkFauZSn3uG+yN6Tj/Uah4hZV/RSJxwEDd+5exwnRJLzZA4gQRIwKIEvKKCETt/ODyCfaXWzd2fguNjl6KsuFTK3lSjwK5NEDG2E3yb1jF1Cc3zUuftQOq8nZrncQIJkAAJkIDzEaCA5Xw5ZUQkQALOTsBNpwhXYcNamxRp2vxfce4D+yuDixjbEWEj2sA9wEeJqyQ7HxdWH0LaxzvNErJ8m4cjZk5/CBFL6yg4naWcUis4fkHrVNqTAAmQgFkEarWshybzhkDn4S61zoVVByFOitbE8IwMhH/bBvBr21ARs6wpaFHAqomMcg8SIAEScAwCFLAcI0/0kgRIgAQUAjpvD8TMvh0BnWI0EyktKsHpqT8ga439lcE1eLEnQm9voTemi1uPInnSas3xigmB3WOVskE3H0/N83P3noFobm/tshzNjnECCZCAyxAI6dcCDaf0lI737HvbkP75b9L2ljJ0D/CGT9M6V0QtIW5ZarCE0FIkuQ4JkAAJOD4BCliOn0NGQAIk4CIEPOr4IeaN/iaXwYnbqi7vS7E7WjK3W516eT0yVx/S5Hude9qh7iOdodOJb3XaRmbCIZyethFlRSXaJtKaBEiABCxMoO74Lgi/u53UqmWlZTj5TAJEmbithygHF0KWT9Nw5Z9e9QI1uyRKuP+6/VOzTuFq3pQTSIAESIAE7JYABSy7TQ0dIwESIIH/CPheFa6IVyaXwf1vJQpO2GcZnOhNFXRTE6PpzjuShsRRC6QeCZ2nOxq8cDNC+sRL2Vc0Kisrw7m5221ygkGzs5xAAiTgGgTcdIie3gdBPeKk4i3NL8bxcctwef9ZKfuaMhJlh6LU0L9twyuntdT2NuXlhdqa/JwESIAESMBxCVDActzc0XMSIAEXIiBuG2z0zh3QuWk7TaSUwU1chZKL+XZLq+Xv/1P1LWf3aRx/cKmqnXuwr1Ji6de6vqptVYPS/CKcnLIOlzYf1TyXE0iABEjAmgRE+XjjDwbBr2Wk1DbFWXlIHPU1ilJzpOxtZSRO4CqntJr9c0pLXOAhRt7f6UiZsxW5u0/byjXuSwIkQAIkYIcEKGDZYVLoEgmQAAnoIxA2sg0iJ3SVhqOUwU39weq3Ukk7pMdQpnxQTJMRsLwbhyqn1LwbBGt2qSgtB0kTVyLvcJrmuZxAAiRAAjVBQAj0cQtGwSsiQGq7vMR0HLt/CUpzC6Xs7cFI9NISw1I30NpDTPSBBEiABEjAcgQoYFmOJVciARIgAasTqP9sD9Qe1NLoPo5UBiduHhRXsquNjEV7lLfxhkat1pFo9NaAK2/v1dar+Pnlw6lInrgKQsTiIAESIAF7JuATF4YmHw+V/rsue1cyTjyy3J5Dom8kQAIkQAIkIE2AApY0KhqSAAmQgB0QcHdDk48GGyyRU8rgJq/DpS2OUQbX+KMhStmI2jDWByWkT3PUf+EWuHnKXTVfcS/R6FiUDZblF6u5wM9JgARIwC4I+HeIQqN3B0qXlKfO24HUeTvtwnc6QQIkQAIkQALmEKCAZQ49ziUBEiABGxAQZSSxnw6Dd3RIpd2VMrgJK5H3l+OUwcn0vxJBHu73KYpSLlWmrQPqjuuM8Hvbm5SFjG/2ImX2FqDMpOmcRAIkQAI2I6C1pDz5qe/t4mZCmwHjxiRAAiRAAk5BgAKWU6SRQZAACbgaAa+oYMR9OfJKGUn+8fM4/si3KE7PdRgUsv2vCs9eUq5Rrzh0Ph6IeuVWBHWXu5Wr4tyyklKkzPkR55fsdRhWdJQESIAEqhKQKSkvn2OvNxMyqyRAAiRAAiSghQAFLC20aEsCJEACdkRAuZnwrf7I+e0Ukp9JcKhGvQKjbP+rC98fwumX1l8h7xnuj+g5/VCreYTmbJTkFCD52QTk7EjWPJcTSIAESMCeCOg83BDz9gAEdIiWcstRbiaUCoZGJEACJEACLkmAApZLpp1BkwAJOAsB0bz88t4UhwzHlP5Xvs3DETOnP4SIpXUUnM5SSiwLjl/QOpX2JEACJGCXBNz8vBD31Uh4R1UuKTfkrCPeTGiX4OkUCZAACZCATQhQwLIJdm5KAiRAAiSgtf9VYPdYpWzQzcdTM7zcvWeQNGk1SrLyNM/lBBIgARKwZwKipDx2/nB4BPtKuSluJkx6fAXKikul7GlEAiRAAiRAAvZCgAKWvWSCfpAACZCACxHQ2v+qzj3tUPeRztDpxLctbSMz4RBOT9uIsqISbRNpTQIkQAIOQqBWy3poMm8IdB5yt7Ge/3Y/zkzf5CDR0U0SIAESIAES+IcABSw+CSRAAiRAAjVOQLr/1ZrD0JWVIaRPvGYfy8rKcG7udqR//pvmuZxAAiRAAo5GIKRfCzSc0lPa7ZQ3tiJj4R5pexqSAAmQAAmQgK0JUMCydQa4PwmQAAm4IAHZ/lcFpzLh3VCut0tFjKX5RTg5ZR0ubT7qgnQZMgmQgKsSkH05IPiUlZbhxPjlyNl10lVxMW4SIAESIAEHI0ABy8ESRndJgARIwBkIyPa/KtMBujJtERel5SBp4krkHU7TNpHWJEACJOAEBKJn9kVQjzipSMTNrMceWIL8xAwpexqRAAmQAAmQgC0JUMCyJX3uTQIkQAIuSMCnWR00XTDaKpFfPpyK5ImrIEQsDhIgARJwRQI6bw80/mAQ/FpGSoVfmJqNY2MWoyiVf29KAaMRCZAACZCAzQhQwLIZem5MAiRAAq5JIGxkG0RO6KoavDh4paVl+8XNiUrZYFl+seraNCABEiABZybgHuyLuAWj4BURIBVmXmI6jt6zGGUF/PtTChiNSIAESIAEbEKAApZNsHNTEiABEnBdAtFz+iHopibqADR8h8r4Zi9SZm8BNJYbqjtBCxIgARJwTAI+cWFo8vFQuPt7SwVwcVMikp9NAEr5F6kUMBqRAAmQAAnUOAENvx7UuG/ckARIgARIwAkJtNjyMNwDfFQjk+l/VVZSipQ5P+L8kr2q69GABEiABFyNgH+HKMTM6Q83Hw+p0DMW7UHKnK1StjQiARIgARIggZomQAGrpolzPxIgARJwYQKW7H8lmg+L0wI5O5JdmChDJwESIAHjBIK6xyFqRh/o3OSKsk9P34QL3+4nVhIgARIgARKwOwIUsOwuJXSIBEiABJyXgEX6X+mAwvQcnJu7Hd71Aq/A8qwXCK/If/5blMz4NgtX/r0kOx85u09DnCzI3X3aeeEyMhIgARIwQED2714xvay4BCceX4GcXSfJkwRIgARIgATsigAFLLtKB50hARIgAecmIN3/qlozK7mTA2r0Tr28HpmrD6mZ8XMSIAEScDoC9Z/tgdqDWkrFJU64Jt61EIUns6TsaUQCJEACJEACNUGAAlZNUOYeJEACJEACCgHZ/lfWwiVOY/09agGKUi5ZawuuSwIkQAJ2SUDn4YaYtwcgoEO0lH8FJzNxdMw3KMnKk7KnEQmQAAmQAAlYm4C0gBUZGYn27dsb9Sc1NRU7duyQ8rl79+4IDPyv9EPfpE2bNiE7O1tqPRqRAAmQAAnYNwFL9r8yJ9LUeTuQOm+nOUtwLgmQAAk4JAE3Py/EfTUS3lEhUv7n7k/B8Ye/RVlBsZQ9jUiABEiABEjAmgSkBazBgwdj6dKlRn1Zv349br31Vil/Dxw4gBYtWhi1veaaayDsOEiABEiABByfgJYeLNaM9uKPx5A8cZU1t+DaJEACJGC3BLyighE7fzg8gn2lfLy4KRHJT38vZUsjEiABEiABErAmAQpY1qTLtUmABEiABK4QkO9/ZV1ovCbeuny5OgmQgP0TqNWyHprMGwKdh7uUszy5KoWJRiRAAiRAAlYmQAHLyoC5PAmQAAmQwD8EGn80BP5tG9gcBxu52zwFdIAESMAOCIT0a4GGU3pKe5L81Pe4uDlR2p6GJEACJEACJGBpAhSwLE2U65EACZAACeglYA8CVs7u0zj+oPFyeKaPBEiABFyFQMTYjogY20kq3NL8YhwftwyX95+VsqcRCZAACZAACViaAAUsSxPleiRAAiRAAnoJRE7sirARbWxGJ+/vdCRNWsUbCG2WAW5MAiRgjwSiZ/ZFUI84KdeKs/JwdMxiFJ7MkrKnEQmQAAmQAAlYkgAFLEvS5FokQAIkQAIGCbgHeOOq1ffB3d+7xiiJE1clOQW4tPUoMlcfqrF9uREJkAAJOAoBnbcHGn8wCH4tI6VcLjiZicQ7F6I0t1DKnkYkQAIkQAIkYCkCTilg1a1bF3Xq1EFgYCDc3Nxw6dIlZGZm4tSpUygrK7MUO2X9sLAw5Y+3t7eyx4ULF3D27FmL7qPmcEREBGJjY1FUVIT09HSkpKSgoKBAbRo/JwESIIEaJ+DTrA5iZveDV71ATXsXnr2EwpRLV+bk7j515d/FyaqS7H/+zhNiVf6RdE1r05gESIAEXJ2Ae7Av4haMgldEgBSK7F3JSHp8BcqKS6XsaUQCJEACJEACliDgFAJWQEAABg8ejKFDh6Jdu3aoXbu2XjY5OTnYv38/tm7diu+//x67du1Caam2b7w33XQThgwZgu7du6N58+Z698nKysL27duxbt06fP755xD7yozXX38dt9xySzVTIbrdfPPNOH/+/JXPdDqdEu+kSZNw3XXXVZrz3nvvYfz48TJb0oYESIAEapyAOIkVcns8vOoFwS3AG0UpF6/4IE5MlY/8CsJUjTvJDUmABEjAxQj4xIWhycdDpU/Jnv92P85M3+RilBguCZAACZCALQk4vIB1//3347XXXlNOXGkd4kTWJ598go8//lg5NWVsdOzYETNnzsSNN96oaRshZglhasaMGapi2bJlyzBo0CC9648dO1bxUww/Pz989dVXuOOOO/TavvDCC3j11Vc1+UljEiABEiABEiABEiAB1ybg3yEKjd4dCJ2b+BVBfaS8sRUZC/eoG9KCBEiABEiABCxAwGEFLHECSZw0GjdunNkY+vXrh9WrVxtcR4hk77//Pjw9PU3ea/PmzRg2bBgyMjIMrmFMwNq4caNyOkucNvv555/RqlUro/5++umnJvvKiSRAAiRAAiRAAiRAAq5JIGxkG0RO6CoVfFlpGU4+k4CLmxOl7GlEAiRAAiRAAuYQcFgB6+GHH1ZEJXNHUlISmjRpYvB01OOPP4633nrL3G2U+aKsUJQeFhbqb3ppTMAqKSlBvXr18MYbb2D06NFG/enTpw/WrFljEZ+5CAmQAAmQAAmQAAmQgGsR0HJrbGl+MY7euwj5iYZf0roWPUZLAiRAAiRgLQIOKWB5eXnh3LlzCAkJMZvL008/jVmzZuldp3379ti2bZtZJ6+qLvzOO+9AiGL6hjEBS9jv3bsXrVu3Vo25bdu2+OOPP1TtaEACJEACJEACJEACJEAC1Qi46dDo3TsQ0CFaCk5hajaOjVmMolS5vq9Si9KIBEiABEiABKoQcEgBS5wwEk3YjQ1xC9+BAwcgTi41aNAAkZHVrwbOz89XPqvYHL18TVGi+Oeff6JFixaqD01eXh6OHz8OcfuhoQby5YuImwLFjYEnT56stq6agKXqyL8G9evXV24i5CABEiABEiABEiABEiABUwi4+XmhySdD4Rsn12c2LzEdx+5fgtJc/ZUGpvjAOSRAAiRAAiRQkYBDClgTJ07E7NmzDWZS3NoXExNTSSQSok6PHj0wYsQI5UY/Dw8P5YbAe++9V+86vXv3Vi3DE7cLilsARXN1cZuhEL1EnyvRGF40Wjc03nzzTUyYMMEqApbww9vbG8XFxXzSSYAESIAESIAESIAESMBkAp4R/ohbMBoewb5Sa2TvSsaJ8d8BpWVS9jQiARIgARIgAS0EHFLAmjp1KsRNe8ZG3759kZCQoNckPDwcw4cPx5YtW5RTVvqGaOou1jA2Ro4ciUWLFlUzefTRR/Huu+8anHr48GHEx8dbRcBKS0tDRESElmeAtiRAAiRAAiRAAiRAAiSgl0CtlvXQ+P3BcPPxkCKUsWgPUuZslbKlEQmQAAmQAAloIeCQApbaCSwBQJxEEiV5ogH7jh07tDCBm5sbMjMzERgYaHCe6MElyhLFaa+qw93dHRcuXDA6X5QbpqamVpqqpYRw//79mD9/Pnbv3q2UQAqfxQ2FoaGhqifHNMGgMQmQAAmQAAmQAAmp0OJXAAAgAElEQVSQgEsTCOoeh6gZfaBzE786qI/T0zfhwrf71Q1pQQIkQAIkQAIaCDikgNWzZ0+sX79eOsw9e/bgo48+woIFCyDK/tRGq1atlIbpxsamTZtwzz33GDRZtWoV2rRpY/Dz66+/vpqwJitgidsXH3vsMaW/FwcJkAAJkAAJkAAJkAAJWJtAnXvbod4jXaS2ubT9BJIeXyFlSyMSIAESIAESkCXgkAKWj4+P0qRc6y2EFy9eVIQs0T8rPT3dIKPRo0fjq6++kmVokp2+EkcZAUuUH15zzTUUr0yizkkkQAIkQAIkQAIkQAKmEmgwpSdC+xm/4Oj8t/txZtZmoIR9sEzlzHkkQAIkQAL6CTikgCVCefrppzFjxgyT8nrp0iU8//zzmDt3rt4SQHG66e233zZpbdlJd911VzWRTEbAevbZZ02OW9Y32pEACZAACZAACZAACZBAVQI6Dzc0njcEfi2r3+5dWlSClNlbWTrIx4YESIAESMBqBCwqYG3cuBG33HKLlLN//fUXmjVrZtT26quvxsGDB/XaiD5Ty5cvR79+/aT202ckekjdf//91USsF198ES+99JLJ68pMFLcfilsQKw4ZAatPnz7scSUDmDYkQAIkQAIkQAIkQAIWJ+Ae7IvY+cPgHRVyZe3irDwkTVyFy/tSLL4fFyQBEiABEiCBcgLSAtZtt91m8Fa/8sV27dqFjh07StE9ffo06tevb9S2YcOGEHaGhqenJ2bOnIknnngCOp1cU8mqa02ePBnTpk2r9L9fe+01iJNO1hymClg33HADtm3bZk3XuDYJkAAJkAAJkAAJkAAJGCTgFRWMuC9Hwt3fG/lJF3Dise9QlHKJxEiABEiABEjAqgSkBawOHTpg586dRp0Rt+qJ2/XUhpeXFy5fvgxxisrYqFWrFvLy8tSWQ7t27RQhq1u3bqq2VQ3E+o0bN4a4VbB8TJo0Ca+//rrmtbRMoIClhRZtSYAESIAESIAESIAE7ImAf4cohI28FiefW4PS3EJ7co2+kAAJkAAJOCkBaQErNjYWiYmJqhiEGHTixAmjdjJimBC4/Pz8VPeraHDddddh/PjxGDp0KESjd9nx0EMPKc3dy4cQl0R5obGxZcsW/PTTT7JbVLNbsWJFtZsOZUoIeQLLZOScSAIkQAIkQAIkQAIkQAIkQAIkQAIk4KAEpAUscWoqMzMT4lSUsSHK70SDdGNDNE8fN26cURtRJifEGlNGaGgo7rvvPohm7A0aNFBd4ssvv8Tdd999xU6c5Nq8ebPReZ988gkeeOAB1bW1GFDA0kKLtiRAAiRAAiRAAiRAAiRAAiRAAiRAAq5CQFrAEkA2bNig2qS9oKAAN998s8E+TUIcEut4eHgYZTx16lRMmTJFr40oPSwpKVHNkeiRNWHCBEyfPt1oj6x169ahd+/eV9bz9fVVxDpvb2+De6Snpyulhzk5Oap+yBpQwJIlRTsSIAESIAESIAESIAESIAESIAESIAFXIqBJwHrqqaeUXlNqQ4hY4pTVN998g+PHj8PNzQ1NmjRRSvsefvhho8JQ+dpdunTB9u3b9W4lGq+L01niFr81a9YgKyvLqEtqwpv4vFevXpXWECWCXbt2NbruokWLcOedd0qLaYMGDUJcXByEOKdvUMBSe7L4OQmQAAmQAAmQAAmQAAmQAAmQAAmQgCsS0CRghYWFISkpSXNvKq1gf/nlF3Tu3NngtJdeegkvvvii8nlxcbHSXF70o9qzZw8OHjyIjIwMZGdnIygoSBGhPvzwQwQHBxtc76uvvsJdd91V6fMRI0Zg4cKFqq7/+uuvePXVV7Fp0ybk5uZesRenv4RY1bJlS+V0l7jFUfBLSEhA3759KWCpkqUBCZAACZAACZAACZAACZAACZAACZAACfxDQJOAJSbMmjULTz75pFX5idNQ4lSUoVFRwLKEI0888QTefvvtSkuJU2OHDh1Cs2bNpLYQJY3nz59HUVERAgIC4O/vr5w8qzooYEnhpBEJkAAJkAAJkAAJkAAJkAAJkAAJkAAJXCGgWcAKDAzEjh07EB8fbxWMH3zwgWqDd0sKWKWlpUovq+Tk5GrxyPbr0gKCApYWWrQlARIgARIgARIgARIgARIgARIgARIgARNOYAloop/Vrl27ULt2bYsy/PHHH5Um8eIUk7FhSQHrvffew/jx4w1u9+ijj+Ldd9+1WJwUsCyGkguRAAmQAAmQAAmQAAmQAAmQAAmQAAm4CAHNJ7DKuTRt2hRLly5VejxZYsyfPx9CLMrLy1NdzlIC1s8//6z0plK7SXDs2LF45513pJrPqzlPAUuNED8nARIgARIgARIgARIgARIgARIgARIggcoETBawxDK+vr545ZVX8NBDDyk9n0wZR44cgRCkFi9eLD3dXAFLlA1++umnEL2vLl++LLXvtddeq5zEuv7666Xs9RmJk2WvvfaaEq++wVsITUbLiSRAAiRAAiRAAiRAAiRAAiRAAiRAAk5MwCwBq5yLuOHv/vvvx+2334527dopwpaxkZKSgm3btim3/K1atQplZWWaEAuxTJycGjBgALp06YKGDRtKzT937hyESPTJJ59g3759UnOqGgkBSwh24nZDmX0LCwuVnmHr16/HZ599BuGDoUEBy6SUcBIJkAAJkAAJkAAJkAAJkAAJkAAJkICTE7CIgFWRkaenJ1q1aoV69eohJCQEQtwSIk5mZiYuXLiAo0eP4sSJExbFGh4ervTlqlu3LkJDQ+Hj4wMvLy9l3+zsbKSlpeHAgQM4ffq0RfeNiYlRbikUe4o/InZRAin+iD2TkpKUWAsKCiy6LxcjARIgARIgARIgARIgARIgARIgARIgAVciYHEBy5XgMVYSIAESIAESIAESIAESIAESIAESIAESIAHrE6CAZX3G3IEESIAESIAESIAESIAESIAESIAESIAESMAMAhSwzIDHqSRAAiRAAiRAAiRAAiRAAiRAAiRAAiRAAtYnQAHL+oy5AwmQAAmQAAmQAAmQAAmQAAmQAAmQAAmQgBkEKGCZAY9TSYAESIAESIAESIAESIAESIAESIAESIAErE+AApb1GXMHEiABEiABEiABEiABEiABEiABEiABEiABMwhQwDIDHqeSAAmQAAmQAAmQAAmQAAmQAAmQAAmQAAlYnwAFLOsz5g4kQAIkQAIkQAIkQAIkQAIkQAIkQAIkQAJmEKCAZQY8TiUBEiABEiABEiABEiABEiABEiABEiABErA+AQpY1mfMHUhAOwF3N7gHesM9wBtutby0z+cMEiABpyRQVlKK0pxClFzKR2luoVPGyKBIwOYE+D3Y5imgAyRgjwT4Pdges0KfXI0ABSxXyzjjtWsCbv7eqD3oGgR1i7NrP+kcCZCA7QkUZ13G+aX7kL09yfbO0AMScAICbn5eqD24Jb8HO0EuGQIJWJuA8j142X5kbzth7a24PgmQQAUCFLD4OJCAnRDwigpBvce6wDPM3048ohskQAKOQODilkSkf/0HUFLqCO7SRxKwSwKe9QIROfEmfg+2y+zQKRKwXwKXdpxA2ie/8nuw/aaInjkZAQpYTpZQhuOYBNwCvNHw5V7wDPVzzADoNQmQgE0JXFhzCBeW7LOpD9ycBByVgM7XE1Gv9ub3YEdNIP0mARsTyNpwBBkL/7CxF9yeBFyDAAUs18gzo7RzAhEPX4+ADtF27iXdIwESsGcCZ17fjLyDqfbsIn0jAbskEP5ARwR2bmSXvtEpEiABxyCQMmcrLv951jGcpZck4MAEKGA5cPLounMQcK/th0Zz+jlHMIyCBEjAZgQuHz6HlJlbbLY/NyYBRyTgHuiDRu/c4Yiu02cSIAE7IpCXmIYzr26yI4/oCgk4JwEKWM6ZV0blQAT8rmuIeo92cSCP6SoJkIC9Ejg6ZjFQWmav7tEvErA7ArVaRSLyfzfZnV90iARIwPEIHH1gCVBU4niO02MScCACFLAcKFl01TkJBPVqhjojrnXO4BgVCZBAjRI49tBSlOUX1+ie3IwEHJlAYNcmCL+nvSOHQN9JgATshMDxR75FaW6hnXhDN0jAOQlQwHLOvDIqByIQOvBqhPa7xoE8pqskQAL2SuD4+OUozS6wV/foFwnYHYHg25ojbGhru/OLDpEACTgegROPLUfJJX4PdrzM0WNHIkABy5GyRV+dkkDogKsROoACllMml0GRQA0T4A/PNQyc2zk8AQpYDp9CBkACdkPgxBPfoSQr3278oSMk4IwEKGA5Y1YZk0MRoIDlUOmisyRg1wQoYNl1euicHRKggGWHSaFLJOCgBChgOWji6LZDEaCA5VDporPOSIACljNmlTGRgG0IUMCyDXfu6rgEKGA5bu7oOQnYGwEKWPaWEfrjjAQoYDljVhmTQxGggOVQ6aKzJGDXBChg2XV66JwdEqCAZYdJoUsk4KAEKGA5aOLotkMRoIDlUOmis85IgAKWM2aVMZGAbQhQwLINd+7quAQoYDlu7ug5CdgbAQpY9pYR+uOMBOxawPL09IS3tw88PT3g4eEBd3dPuLnpUFZWpuRC/POff1cPQwcdynT/WKoPHXSVDKv+t1hB/L/yP+X/LXwCiouLUViY/+8/C5Gfn3/FZ/W9aeFqBChguVrGGS8JWI8ABSzrseXKzkmAApZz5pVRkYAtCFDAsgV17ulqBNSVnxom4u7ujsjI+uje4xbUCQtHVmYmLmRmID8/D6VlgJuiLJW7/a+QJcQk/CNklctZV6SqciHqH9N/R6X/kIjwv1UrGVdQua7oXTqdIrJ5eXohMCgYoaG1UVhYiJ07tmP//n0oKODNFBLAXcqEApZLpZvBkoBVCVDAsipeLu6EBChgOWFSGRIJ2IgABSwbgee2LkXArgQsX19fTJ4yDRt/WIudO7ejqKgYbm5uSkLEaSdHGv+cDhMnskqV01wNGkTh1t59sWvnL9i9+zdHCoW+WpkABSwrA+byJOBCBChguVCyGapFCFDAsghGLkICJACAAhYfAxKwPgG7EbAaN45F79598PXXn4viQJSUlColeOXlgtZHYfkdhOgm/BelkGKImNpedx1CQ8OwauVyy2/IFR2SAAUsh0wbnSYBuyRAAcsu00Kn7JgABSw7Tg5dIwEHI0ABy8ESRncdkoBdCFiR9Rugf/+B+PqrzxAYGITMzAsoKSm5AtQRT19VfRpED6+goCDk5ubimmtawreWP37YsNYhHxo6bVkCFLAsy5OrkYArE6CA5crZZ+ymEKCAZQo1ziEBEtBHgAIWnwsSsD4BmwtYQth55NHH8cXnnyI4OBhnz56tFrWjCVjlAVQ9PSb6e0VERCgi1g03dsOPWzcjIyPd+lnmDnZNgAKWXaeHzpGAQxGggOVQ6aKzdkCAApYdJIEukICTEKCA5SSJZBh2TcDmAlbLlq0RFRWFPXt2IysrSykbLB+WEq6sUYYo61vVvb29vVG/fn2lsfsNN3TD559/YtcPCJ2zPgEKWNZnzB1IwFUIUMBylUwzTksRoIBlKZJchwRIgAIWnwESsD4BGwtYOoy57wGsW7saHh6eOHfuXKVm7bIikTFMFQUkWSFL374eHu4oLi5V+nOJIetb1T3Ff9erVw/i5FnXrjfj008/sn6WuYNdE6CAZdfpoXMk4FAEKGA5VLrorB0QoIBlB0mgCyTgJAQoYDlJIhmGXROwqYAlmps//cxkvD/3LZSWliIvL+8KLFmBSI1uuYAk1hMnn8Q/xR+xn7jhsPzfyxuui/VEGWPFk2DhderAIyAaeVlJyDyfAejkBaxy/yoKWeIUVqNGjRARUQ8HDuxHSkqKWhj83IkJUMBy4uQyNBKoYQIUsGoYOLdzeAIUsBw+hQyABOyGAAUsu0kFHXFiAjYTsIRgFBlZH8OGj8KiBV8gMyvryo2DlhKvRN4qCljh4eFSJ6fS0tIUgUsMHXSoF1kXYfWa4nTSAZzPyLgigml9LiqKWFdddRXc3T1Qu3Yd/PDDOq1L0d6JCFDAcqJkMhQSsDEBClg2TgC3dzgCFLAcLmV0mATslgAFLLtNDR1zIgI2E7AEw6uvbomOnTph7ZrvkZ6efkVcsoaApYhROp0iaFVdv6LIpa/MUPy/iie2quZf1t/ytcU/Y2NjFT86db4Bn8z70IkeKYailQAFLK3EaE8CJGCIAAUsPhskoI0ABSxtvGhNAiRgmAAFLD4dJGB9AjYVsFpfey2aNm2KX7Ztgzj1JCsEqWGpWA6oZmuNzyvGYUgQEyWEQhS7tU9fvPvWm9Zwg2s6CAEKWA6SKLpJAg5AgAKWAySJLtoVAQpYdpUOOkMCDk2AApZDp4/OOwgBmwpYba9rh6bNmuHnH7daVMCyd/ZC1IqOjoabmw59bx+AObNn2bvL9M+KBChgWREulyYBFyNAAcvFEs5wzSZAActshFyABEjgXwIUsPgokID1CdhUwOrY8XrEx1+NDRvWuJyA1bBhQ3h5eWPEyLswZfIz1s80d7BbAhSw7DY1dIwEHI4ABSyHSxkdtjEBClg2TgC3JwEnIkABy4mSyVDsloDNBawWLa7GunUJlQSsiiWAVf+9IsmKvavE/69Yrmes31V5iV95P6yqPbD09cgy9P+qrlHRv6qljBX3rVevHvz8amHEyHsx+YWn7PYBoWPWJ0ABy/qMuQMJuAoBCliukmnGaSkCFLAsRZLrkAAJUMDiM0AC1idgUwGrQ8frIQSs9esSkJqaCjc3N+tHbMIO+npqmdNnS4heQsDy9/fHqFH34vnnnzTBK05xFgIUsJwlk4yDBGxPgAKW7XNADxyLAAUsx8oXvSUBeyZAAcues0PfnIWAbQWsDp3Q4uprrghYJSUlzsLVaBweHh5XBKyRo+7BC8/zBJZLJN5AkBSwXDn7jJ0ELEuAApZleXI15ydAAcv5c8wISaCmCFDAqinS3MeVCdhYwLoeLa5ugfXr1ignsIqLi10iF15eXqhbty78/QMwbPideHEKe2C5ROIpYLlymhk7CdQIAQpYNYKZmzgRAQpYTpRMhkICNiZAAcvGCeD2LkHAxgKWOIElSgjXIjX1nMsJWH7+/hg27E68PmsacnNzXeKBY5DVCfAEFp8KEiABSxGggGUpklzHVQhQwHKVTDNOErA+AQpY1mfMHUjAxgLW9Yhv0QIb1rvWCSxvb2/UrRsBP78ADBk2GrMpYLn0VyIFLJdOP4MnAYsSoIBlUZxczAUIUMBygSQzRBKoIQIUsGoINLdxaQK2FbA6/itguXAJ4dChozFjxsvIz8936QfRlYOngOXK2WfsJGBZAhSwLMuTqzk/AQpYzp9jRvgfgXvie6OWh7dRJCm557Hi2M96bW6Jug5xwQ1Ukb6/f4WqjTMaUMByxqwyJnsjYFMBq2PH69FcnMByQQFL3ELo5+ePIUNH4bVXX0RRUZG9PRv0p4YIUMCqIdDchgRcgAAFLBdIMkO0KAEKWBbFycXsnMCOYR8gzCfIqJe7045g+NqX9dq8ddN49InppBrlVV+ORklZqaqdsxlQwHK2jDIeeyRgUwGrgziBFe96JYT/NXH3x5Aho/Dyy8/b47NBn2qIAAWsGgLNbUjABQhQwHKBJDNEixKwhoDV0D8cV4VGoVlIlCIW+Hv5wsvdE5eL8pFTlIfz+ZeQmHUaiZmncTI7FWUos2hMXIwEDBGggGXdZ4MClnX5cnUSEARsLmC1iG+B9S7YAys8PFy5hXDEyLswZTJvIXTlL0cKWK6cfcZOApYlQAHLsjy5mvMTsJSAVd8/DMOb9kDP6HZoHBgpDe5CQTZ+PrMPP57ei42ndiOvuEB6Lg1JQCsBClhaiWmzp4CljRetScAUAjYXsOLj4/9t4p7mMrcQiibuioAVEIBRo+7BC88/ZUruOMdJCFDAcpJEVggjzDcItX2CUFJagrO555FbzB53zpdl+4yIApZ95oVe2S8BcwWsiFohmHDtMPRr3BkeOnezAhWns7479hM+P7QWJ7PTzFqLk0lAHwEKWNZ9LihgWZcvVycBQYAClg2eA1FCGBERgYCAAIwceQ9eeIEClg3SYDdbUsCym1SY7ciAJjfgsdaDIMpHyocoDfkt9S9M3fUF/so8afYeXIAEjBGggMXngwS0ETBHwOrfuAumdLgbgV5+2jZVsX54yxvYePJ3i67pzIuNbzUQ0YF1q4V44PwJRQzk+I8ABSzrPg0UsKzLl6uTgJ0IWKIHVgJSU13wBJb/vyewKGC59FcjBSznSH+3Bm0wr8eTBoO5WJiLXt9Nwvn8i84RMKOwSwIUsOwyLXTKjgmYKmBNvHYYHrqmv8Ujy8i/iC5LHnHJBtimwBQvjDYOfBNuOvFOvvLYeOp3PLz5DVOWddo5FLCsm1oKWNbly9VJwOYCVvv2nRAvbiFcvwZpaa4jYIkTWKKEMCAgEMOHj8aLLz7Hp9GFCVDAMi35/p6+6FivherkgpJC/Hxmv6pdRYMeDa+FTuemOmfrqT0oLitR7IR4JUQsY2PG7wvw6cEE1XVpQAKmEqCAZSo5znNVAqYIWM+1uxP3xve2CrJ5B1bj9d2LrLK2My767HWjMKZFH72hUcCqjoUClnW/CihgWZcvVycBmwtYXW7oitjYJtiwfq1LCViiB1adOnWUEsIBA4Zi+nT9V9XyEXUNAhSwTMuzuNHp1+Efwc/Dx+gCooSv4+KHIBrlyoymwQ2R0H+mqmly9jncvHzCFbu1A15HbFB9o/MW/70Jk3d8qro2DUjAVAIUsEwlx3muSkCrgDUw9kbM7PyQ1XD1/G4iTlw6a7X1nWlhH3cvbBs6F0EGSjgpYFHAqunnnQJWTRPnfq5IwKY9sJ56+gWkpqYoJ7DS0zNcqol7WFgY/P390ff2O/DGnJkoK+MVyq74BShipoBleubfvukx3BbTUXWBJ356FwkndqjaCQPxJle80VUbH/25CrP/WHzFbHnfabimdmOj0+YfTMD03xeoLc3PScBkAhSwTEbHiS5KQIuA1cC/DtYNmA1vd0+r0Po97QhGrOVLTVm4w5p2x7RO9xs0p4BFAUv2WbKUHQUsS5HkOiRgmIBNBaxXpr6GY0ePYsOGtUhPT3cZAUuUEConsPwDcMeg4Xj7rVm4fPkyn1MXJUABy/TE947piHduekx1gaWJW/DcLx+r2gmD+bc8gxsiW6raDvj+eRw8f+KKnUw/lDEbZ2guZ1R1hAYkUIEABSw+DiSgjYAWAWtut/+hZ1Q76Q3S87KwJmknTlw8i0uFuQj09kMd32C0qROH1nXiUMvDu9JaT2//EMuP/iS9flXDqIBwxAU3RIi3P0J8AuDt7gVxs6Hw4+/MUzh28QxKzXhhKk4+GxqFJUUGP4sPjUFMYF0l9gCvWrhYkIv0vEz8kfY30vKyTI73+34z0CwkyuD8Taf+wGM/vq33c3FLcElZabXPvNw8AD39tIRhUUkxxKlufUOcAru+3tWICoyADjpkFmQrtxD/dGafpviEONoqLBbhtUIQ7O2v/CkqLVaen6RL5/DXhZPK2qYORyghFDFfE9YYod6BCPUJgGgZIZ7jrIIc5Vnel3EM2YWm/d5k7fxSwDL1yeQ8EpAnYGMBazqOHk1UTmBlZLjOCSwhYIkTWKKEcOCgEZgx/WWewJJ/Zp3OkgKW6Sn19fBWyghFGYGxkZKbgZuWqQtd4geb3SM/UV3vdE46un37eKUtxQ9Yn/d8Dq3Cmuh1ZdHfmzCF5YOmJ5szpQhQwJLCRCMSuEJAVsC6unYjfNf3VSlyQhh5f/8KzN233GAzdvH9pmuDNujfpAt6NGyLvOICdPrmYeSXFErtUW4UHxqNO5vfiuvrtUCkX5jRuUIA2Hz6Dyz46wfszzimaZ/GQZFYP2C2wTmPbHkTG07+9h9Xb3+Ma3kHesd0QN1aoQbnHc5Mxgf7V2Jt0k5pf0TD9vGtBuHRVgOl51Q1/PqvDXh51+fV5hsTeGb+vhCfHPy+0hwhyj3RZggGNOkCL7fKAp8QsG5cNl7VRyFaidNkvaLbK8KmIrIYGEJAEwLO98d/gXg5d7m4QHX9igb2KmCFeAfgrua90L3htWgeGq2IgIaGEGETs05hbdIuLDjygyJsyQ5r55cClmwmaEcCphOwmYCl0+nwytTpSEz82+UELNEDKzQ0FIGBgbhj4HDMnPEKBSzTn2GHn0kBy7wUvt9tAm6Juk51kVu+m6C8vTQ2xNvTL3qqX6ogGrGLhuxVh7vOTfGlQ9141PYNgnjDeyYnA5tO7cae9ERVH2lAAuYSoIBlLkHOdzUCsgLWzC4PYWCTG6XwvLDjE3zz92YpW2EkBJ6rwxpj48nfpeeIE03PthuN7g2ulZ5T0VCcDHpx53yIFzIyQ03AWpu8C49t/ee0U+/oDnip0xiEegfILK3Y/JyyX5kvTtoYG6KMc84Nj+Da8KbSa+szNEXAOnD+BO74/vkrywmx6YPuExDmE6TXFyE0DU6YbNTPu5vfioda9je4hrHJQrh5c88SLDyyUZqFvQlYQqwb33oQ7mzeS7Wnqb4ghfA7/9AavLN3mdTpQmPxWyK/FLCkH0UakoDJBGwmYLm5uWHq1Ok48vcRrF+XgPPnz7tUCeE/AlYQBg0ejhnTKWCZ/AQ7wUQKWOYlsV/jzsoPs2rjpZ2fKW/qjI2n2o7EA1f3VVsKQ9ZMwd70o6p2NCCBmiZAAaumiXM/RycgI2CJUr9fh8+T6n216vh2TPx5rlWx3Fi/Fd66aTwCPGuZtY84vfPkz+9XOjllaEE1AaugpAgdFj+IdnWvwofdJ0G80NE6Dl1IwpA1L8JQOWL/xl3wUsd7lZIyc4cpApbYs8fyJ3AyO025dfi9bk9UO3VV0S9jPbjEM/X6DeM0laQaillW/BPz7UnACvUJxAfdJpgtRoq4fk09jMe2voPz+ReNPhpq8ZubXwpY5n5lcj4JqBOwqYA1bdpM/HXkMNat/V4RsLSuekQAACAASURBVEpK/rmO3tmHKCEsF7AGDhqGmTOm8gSWsyfdSHwUsMxLvvhBdtfwj4weuRc7/HDyd4zb8obRzVbePh2iHMPYOHf5Am5Y+qh5TpswW8QpjtiLvibijeXFwlxcLMgxq3+ICW5wip0ToIBl5wmie3ZHQEbAEqecPuoxSdX3otIS3Lz8fxBl69YafRtdr7y0EWV0lhiiHOvZXz5S7b2lJmAJX0QJoTjJbI7AJE4TiZNhVYelb380VcASl7esPLYN3/efafD2w3LfDbUOECWDi3u/BFGWaqlx6EIyRq17RfUEm5qAI/zZnXYEww1cJiCE0z4xnVTdvurL0QbLZ8Vk0TPsu9tfRUP/cNW1ZA1EWeyIda8YFEDFOmrxm5tfCliy2aIdCZhOwGYCloeHB6ZOm4HDhw+5pIAVEhKCoKAgpQcWSwhNf4CdYSYFLPOzOK/Hk8rbUGMju+gyrlv0gMEj5uJN4M5hHxjtuyDW//zwWrz661fVtnq89WD0iGpr1IcXd8zXVErYPqK50j+kY70WiA2qr3dt0dh1d9rfSqPY5Ud/NNoPQzTP/brXZEP9aZX1f0k5oLc8Unw2KPYm3B1/q2rCvjv6Mz47tEavnehxMTiuq8E1SkpLMXztSxBv8zm0E6CApZ0ZZ7g2ARkBa3L7u5X+PGpj6+m9eGDTLDUzkz+PDW6A5X2mQvR/tOQQwtud66cpwoWhISNgWcIn0T+s53cTlFNOFcc98b3xfLs7LbGFsoapApYouRTfd0VjerUhytre3be8mtmsLg/jjiY3qE3X/LnM86cm4IhNa0LAEoKwqeWvxsB8e/RHPLP9I4MmavGbm18KWJofW04gAc0E7ELAWrtmNS5cuOBSJ7CEgCV6YA0aPJIClubH1rkmUMAyP59CWJnR+UHVhYyV/smWIoq3kvp+yJfpjyJ7C2HrOrF4su0ICAFLyxA/VH984Ht89Ocqgzclre0/C+KXIEPjVE4aun/7hN6P3+v6hNJkVm3sOHsQd23Q3+z4y57Po1O9FgaX2JueqJSQcJhGgAKWadw4y3UJyAhYi3u/iLbhzVQhPffLPCxN3KpqZ4qBaGqd0H8m4oz8/W3KuuVzkrPP4baVTxs8vVJTApbwR1+fSXsRsLQwnrzjUyz+e1OlKbfFdMTbErcna9mnoq24cVk0dzc01AQcMc/aAtaQuG547foHTA3R6DzR5P72Vc/iSOZJvXYy8cs6pi+/FLBk6dGOBEwnYDMBy9PTE889/xKSko5hTcJqZGZmulQPrODgYOUElhCwZs2citLS6lf5mp5WznQkAhSwzM+WOIq+c/iH8NC5G13srT1LMXf/d3ptZAQocd13lyWP6BWHZObLCFjiB7uXO46Bp5vxWIwFKgSkx398R+9V28+1uxP3xvc2ykn0Mbmg55ruX4a+r1yDrjZEE942C++rZiZ6ovwx8tNqV8dXNBRvq8Vbaw7TCFDAMo0bZ7kuARkBS9x2K0q41cbtq57BXwZ+cVabq/b5rdHt8W5X/S8Xqs4Vva32ZxxFYUkx4mvHSDcIn7V7ofISRN+oSQFL9MLqv7ryhSqOKGA9tHk2Np36oxJOIUI2DW6olm7l82MXUyCERdEk/pqwxqonxMWczIJs3Lh0vMHbLGUEHGsLWBvumINGgfVUGWxL+RMfH1iNI5mnlJ8bRO+3x9oMVr0cQNxo+diP7+hdXyZ+Vcf+NdCXXwpYsvRoRwKmE7CZgCVcHjNmLErKSpCweiWysrJcSsAS4pUQsfr1H4I5s18zPYOc6fAEKGBZJoWf3fIsukReY3Sx31L/wsh1r+i12TZkLiJqhRidb6jkQEyyhIAlbiN6of1dFgEifgAVJSGiNKTiED8Afnrz00b3ECUwohSh4ogKCMemgW9J+9bzu4k4celsJfsWtRthhco19MPWvoQ/0v6W3oeGlQlQwOITQQLaCKgJWOIX532jPlNdVPSSuubru1FYWqxqa4rBt32momVYE9WpQjCZ9PPcK72QxIsDUeL+cMsBqnNFj8duyx5HcVn1nrRaBSyxlngZIb7vipJw8f1Z3Joo03heYbngnkqnwcJ8gyBuIBTD290LX/d6QTUe0dj79d2L9Nql52UptwRXHZYUOAYlTIboy1Q+bqrfGp/c/JSq3+JmvSd+fBebT/8nfomT0/N6TJLqGWXs0hqZ+KwpYMn2kzN0GYJ4DsXXgrE+a+J5u3bhfXq/FmXiV03QvwZV8yv+NwUsWXq0IwHTCdhUwOrYsTOaNb/KJQUscQNhcHAQbryxO+bPn2d6BjnT4QlQwLJMCoc17Y5pne43upgQc65bdH+1PlGiJGNNf/W+JaPXT8Wuc4f17mGugCV+MRFNXc05eVXVsS8Or8O0X7+s9L993L2we+THRm9O0ncKakCTG/B6l4elkzXp5/ex8vi2Svaih4zoJWNoiD5l7RaJFxs8kSoNuoohBSxTyXGeqxJQE7DCfYOxfej7qnhECXfbRdYpi6pbKxQ/D3lP1YfUy5lK/yhxAqvq+Lzns+hcz/hLHjHH0ElhLQKWOK3cf/WzyMirfCPcLVHX4f1uE1TjEAbishQhgukbsqKisVsADTlhisAhmvaLk3cXC3KV5vq1PHzQMCAc92+cCZGT8vHa9WMxxEgPyCt2v32Fzw6trebiteFN8U3vl1T57c04iiEJU/TaycRnTQFreucHMTj2JtWf1bosfQQX8i/ptXus9WCMbzXQ6Bqj1k1VbiasOmTirzpHNr9iHgUs1ceTBiRgNgGbCljtO3RCfHw8Vq/6DhcvXnKpE1ii/5UQsG64sQc+o4Bl9oPsyAtQwLJM9kQTdlHipnZ1t77TRffG34bn2o026oi4mrnTN+MM9pYyV8ASAppMb5P8kkKcyk6DeButVtIiBDtxJfTZ3POVYlPrQyUawt+3cWalOVM73YfhTXtIJ0ufeCb6foj+H4aGuMHqkS1vSu9Bw+oEKGDxqSABbQTUBKyYwLr44Q7jN9iKHcXfszcuG69tc0nr/o27YPYN41StRYm8KJXXN3o0bIsPu09UXeOrv9bjlV1fVLPTImC9sOMTfPP3Zr17bR38Dur7han60XfVMwb7GNmLgPXn+eN4eedn2FfhlJWxwDYNfBNRARFGYxenh9ovHmvwQhaZ25LFCbZO3zyktxWAjIBjTQFLpnzQ2Gl5Aa9VWBMs6zPVKEdx8m7egdXVbGTiL5+kNb9iHgUs1S9tGpCA2QRsKmB16NAJzePjsWrld7h0ybUErICAAIQEB6PXrf0wdy5/YTP7SXbgBShgWS55C26drNr4XN8tgqKkTpTWGRuGrsMun2OOgCVT1pdbnI8Zvy1QfikQTUrF6NOoE8QbXfHDvKEhbgN87bevK3089urblSbxhoboodF+ceWm+Fr6doh196QnYmiVZuziBIE4SWBoTNn5KRYdqdzw1nJPh2usRAHLNfLMKC1HQE3AkhVuxCmNm5Y9ZjnHKqwk+iKObHaz6tqj10/DrnOH9NqJkqs/Rn6i2kdJiDGDEyZXW0OWgxBP2i66/0oJY9WF5tzwCMSlKWrjju+fx4HzJ/Sa2YOAdTgzWTnlJHtjbm2fIOWmY7UhTg2J00OGhnjZJl66qQ3xEkq8jKo6ZAQcawlYwd7++G24etXJoQvJWJ+8y2CI4kbl+1v0NYpg/sEETP99gUnxi0la81u+EQUstSeTn5OA+QTsRMBajkuXsl3qBJYQsMQJrMFDRuH1Wa+yibv5z7LJK0SM7YiQvvHwigzChdUHkfrxThSl6D+2bPImRiZSwLIc1dFX9cSLHe4xumBi1mnctvK/HhRebh74fcTHqteS373hNfxy9oDBtc0RsGSuk/7fT+/h+xO/VNtfLeajF8+g94onK82LD42GeItrbIiTW+XXmIsfFneP+FjvLz6i30qPhtdWW0r8UN9qwb1XygEj/cLw42D9TVXLJ4vbD8UtiBymE6CAZTo7zpQnEHhTE/g2q4OS7AJc/PFYjX7PlPdSzlJNwBJ9l7YMelt1sayCHLRbPFbVzhSDeT2eRLcGbVSnXr9kHERvJ0NDlEKKkkhjw9AlHLICVtXvsVX3mnjtMDx0TX/VWOxdwLpnw3RsP/unahzlBlfXboTvVHpACltxa6G43c7QkGmXIOaKF1fiBVbVYUsBKz40Bitvr5m+v8uP/YSnt31oUvxiktb8lm9EAUv6S4KGJGAyAdsLWM3jsXLlcmRnu5aA5e/vj5CQYAweMhqzX38VJSXVG2aanFVOlCYQObErwkZU/qGwJDsfqfN2ImPRHul1zDGkgGUOvcpzxQ/m24bOVX3D3HnJOIgeHWJ0qtcCoqTO2BAnkjp987DR3kymCljianTxVtxYQ1LxC4n4xUTfEP02do8wPr/jNw9DlEBWHLuGfQhRdmloVBTMjJ0Qe3LbBwZ7Y/Vb/SwOX0hWtri90fV448ZHDe53MjsVPZb/z3IPg4uuRAHLRRNfQ2H7NKuDJh8OhnuAT6Ud0xf+gbNv/FhDXlh2GzUBS/bUiGh83uKruyBOIFl6LLntZbSpE6e6bNMvRhkscxeTxSUa4jINtdFCNKMvKapkJitgiZca4nY2Q0OIV0LEUhv2LGAJkU+cMtOSa9HEXlw2ozbUbuKVbYL+0YFVmL17cbXtbClgXV/vanzRs/Ltkmo8TP38h5O/Y9yW6qW/MvGbkt9yPylgmZoxziMBeQI2FbCUHljN47FixbfIyclxqRNYfn5+CAkJxZChI/HGnBkoKqr8g4J8CmlpKgHxg3jTBYb7Hl3cehSnX96gvGG25qCAZVm6osGpaHRqbFRsMD6p7XA8eHU/o/ZLE7fguV8+NmpjqoB1VUgUVvebYXRtcfJL35vE8kniBJd4s2loDFnzIvamJ1b6WIhJQlQyNEQD2dd++0r5+H9thmKcnhushAg4Yu1LBm8nrNgH5aUO92LUVbcY3G/BkR8gbk7iMI8ABSzz+HG2YQLuAd64atWYauJV+Yy8I2lIenK1w53GUhOwRHwH7/wS4rSu2tB3+6raHJnP198xG40DI42ailOvV39t+JIMMXlx7xfRNryZ6pYdFj9YrX+SrIClVm7/4DX9MOna4ao+2LOAJUrcRJN6LUOU/L91o3qPNEO9m8r3khWBFvz1A17aVf17qoyAY60Swt7RHfBO18e1YDPZ1lADf5n4TclvuaMUsExOGSeSgDQBmwpYSg+s5vH47rtlyM3NdUEBKwRDho6igCX9uFrWUJQORoztZHRRcRrr1MsbcGnrf9cgW9YLgAKWZYnKNGSvKEgt7fMKWofFGnXC0K1MFSeZKmDJNuc1h5K+xvUDY2/EzM4PGVy2YhPVr3o9j451W1Sz/TllP+77YSb2jZqvtwRzSeIWPP+v8KfWePahzXOw6dRuc8LkXNFA9rHlKLlkXdGdoF2TgL4Ty1VJiO+ZSZNWI3f3aYeBJCNgbRz4BqID6qrG9PiP72BN0k5VO60Ga/vPQmxwA6PTCkuL0OIr4wKWzAsesYm4TVHcqlhxyApYhnoPla/lDAKWMYHHUJJkxZvZfyzGR3+uMphrcZOkuFFSbei7SEXMkRFwrCVg9W10Pd40chJbLSYtn5sjYJmS33LfKGBpyRJtScA0AjYVsP45gdX8XwHrsksJWLVq1VJOYA0dNhpvvTkTBQX8hcO0R9j0WZ6RgWi+6j6pBax5GosCllQKpI1kei0lXTqHW76bAG93T+wZOR+ebu4G1xc/xHdY/BBEeYixYaqAdVfzXpjc3vgvHdLBGzCseOKs3ETtavjsosu4duH9irkocQzwrFVt9Y8PfI9ZuxfCkAh46EIS+q9+Tjm5sG/0Z/DQ6ecs2LZbNNZg019z43el+RSwXCnbNRtr44+GwL+tcRGl3KPUeTuUUnxHGDIC1txu/0PPqHaq4Yg+haL82tJj4a1T0C7iKtVlm305ymhZm9qLBLFBSVkprvqy+ul0WQHrg/0r8MaeJQZ9dVUBS7wEEi+D1IaxmyTFXNnbJN/euwzv7VtebTtbClg3RLbE/FueUUNgkc8pYFkEIxchAbskYFMB658TWM2xfPkyXL7sigKWOIE1Gu+8/Try8/Pt8gFxdqdCbo9Hwxd7SYVprTfLFLCk8GsyWt53Gq6p3djonA7fPARxPbp4I21sfHfsZzy1Tf3mIFMFrPGtBuKx1oM1xafV+OntH2L50Z+qTVvTfxbijLzVFzdquevcsHnQW3q3nPDTe1h94hdM7XQfhjftUc2mqLQErRfciybB9bHKSNP439OOYMTal7WGRXs9BChg8bGwFgEtApbwIWf3KSRPWm31Mnxz45URsGRFl8vFBei27LFq5Xfm+vh+twm4Jeo61WVuWPoozl2+YNBO3IInbsMzNvTdQivsZQWs9/evwJsUsKohlmkXICYtTdyK534xfFOfuI1S3EqpNl7e9Tm+/mtDNTNbCliyjezFzwTiMgBzxuELSXpvNTY3fjWfeAJLjRA/JwHzCdhcwLpKCFjfLkVeXp5LncDy9fVVTmANG34n3n5rFgUs859lk1cQvbCEiOXbtI7UGqJZbdrHOy32QzkFLCnsmozGXn07nmw7wugc0WS2gX84Xmh/l1G7BzfNxubTf6jub6qAJXsjk6oDRgwMCVhq13GP+WGGUhooTh/oG7eumIRjF1OU690N/UAtTmBFB0QY7Xvx1p6lEG+dOcwnQAHLfIZcQT+BsJFtEDmhqyY81nrxo8kJFWMZAUs0PhcN0GWGTM9EmXUq2jzVdiQeuLqv6jRj5e5BXn7KjbtqY3/GMQxKmFzNjALWf0hMKTHz8/DB7pGfKC+FjI29GUcxJGGKQRNxYluc3FYb92+chR/P7K1mZq6A89ZN49Enxnj7DbGpOMUnTvNVHGG+QdgxVP2FoJoIqha7sc/NjV9tbwpYaoT4OQmYT8D2AtZV4gTWEuTl5buUgOXj43NFwHp/7ptKE3sO2xKQ6e9R7mFhykWlN5Yl+nxQwLJ83qMCIrBp4JtGFxaCSUStUAyOvcmgnbiJRjSzLSwtVnXSVAHrvhZ98Mx1o1TXN8fAkIB1Q/2WmH+z4eP8U3/9AuKXHn0nxHKL89FmwX3KjVfNQ6MNnrB6ZvtHCPUJgPgFzNAYnDAZ+zKs12fOHHaONpcClqNlzHH8FU3c4xaOhlc9w7eXGorGnksKZQQsEdeWQW+jgb/ci65pv34J0YNIyxAXcYjehGJu1dG1QWt83OMp1eU+Ofg9Zv6+UK9dr+j2eK/rE6prGOphZU8Clnixsn+U+qUfO84exF0b5ITHcjDWFDhkToeLk8sdv3moWg+ycv8S+s9E0+CGRvMobke8bvEDyC68XM3O3PjMEbCEMzL95A5nJqPfKvU+X6oPsx4Dc+NX25MClhohfk4C5hOwvYDVvDm+XbZEOYFUXKz+S6L5Idt+BS8vLwgBKzQ0FIMGj8SHH7ytNLHnsD0Bv7YN0PClXtI/oFvih3IKWNbJ+6p+09E8JNrg4qJheB3fYLQMa2LQZtXx7Zj481wpB00VsAbF3oQZnR80usfOcwchmqqbOsR10ocvJFebLnqAif5WXm6eepcWNxFG1ArBbTEdq32+/eyfuGfDdOX/66BT1vH39K1m99mhNfB088Doq3rq3SOrIAftFz9o9Op3U+N2xXkUsFwx6zUXszixHDO7n/T3yIqe2WtJoayApbXce+XxbZjzxzc4m3teb4LE35tNQxqiZ9R1uDWmgyJKGOo/Jf5uFaen1E7vnM+/iJuXT9DbT/DLns+jU73ql3FUde7hLW9g48nfq/lsTwKWYHfk7q+V7z3GhiiH7LrsMYjSzqpD9GTU19vSmgKH7Ek6Q43crwtvhkW9X1T9gjcmAJkbn7kC1rRO92NY0+6qMYibn8VpRi1D9NvsWK8Ffjqzz+A0c+NX84cClhohfk4C5hOwAwErHt8uW4z8/AKXErC8vb0VAUuUEM6aOU0qk+5BPvCJDZOypZHpBNx8PRFyewsE94iTWiQvMR2nXlqP/CPpUvZVjShgmYRNddIjLe/AE22GGLQ7filF6QUiThgZGuO2vAEh/sgMUwWsDnXj8XWvF4xuUfE2PxlftNh80fM5iGu59Y31yb+iYUA4xMmAqqNqg9hPb34aN9ZvVc1u6+m9KC4rxs0N9fdvWZu0E4/9+I4Wl2lrhAAFLD4e1iYgTmI1eKkXgm4yLP4b8sEeSwplBaxgb39sHfwORCmY7BAnVA+cP4G/LiTjQn42PNzcEeTtj0i/2srLk6qivyEBS+z3TtfHIW6yUxvidtj//fguLv57i6AQvcQp2nEtB6hNhXihcOOy8cjTI/jYk4AlAtk7ar5ULsQprA/+XIGMvIsI9w1BdGAEOkdeA/G997pFD1RjYk2BQ9wkuab/TFXhraCkSHl5Jr4Hl48mQZH4+Oan0NA/XDWPxm4yNDc+cwUstZPf5cEJcXHW74vw5eF11UoRKwJw0+nQpk5TpUfcHbE3IqfwMnos19/2QMwzN341+BSw1AjxcxIwn4BNBaz27f9p4r5s2WIUFBSipKQEZWVl5kdl5yuIE1jiT+3aYRh95714dZr62xQRUsANjdDoTfUfQOw8fIdxT/zg+c/ZErlx6uX1yFx9SM64ghUFLM3IpCaIH/bWDZht0FYc0zd2+6B4Y9t+8ViIHyRlhqkCltopKLH3hfxL6Pbt43rfIsv4ZsxG9FUxVN4nGqnGBtWH+MWt6hi9fhp2nfvveX+45QBMaDO0mt2JS2eVMgZDJ91MectqbszOPJ8CljNn175iM6UnVnkElji9bCkasgKW2E+2mbupvhkTsMSLhJW3vya1dH5JIfamJyrfv5qHxkDcOisz3t23HO/sXabX1N4ErLX9Z0EIQqYOQ6ytLXB82H0SejS8Vspt8f1T/An1DkDLsFgIsUZtiNYHopm/+Ke+YW585gpYwieZUspy39PysrD19B6lqXtuUR683D0V4bdurVA0CaqP+NoxlV5EnsxOpYCl9pDwcxJwcAI2FrA6onnzeCxbuhgFha4jYInTVx4eHoqAdc+9D+CVl42fvih/xihg2eKrTchY1hWxKGBZL69rB7yuCDCmjDVJO/G4hpNBpgpYwjdxAku8DTY2xG1/k36ea/SK9PL5ojSiV0x7xATUVW2OHh8aDXG1ur4hfnCs4xtU7StAiH9tFo6pJO6JK97FVe9VR2FpEXKL8hHyf/bOA0yq8nrj773TtvcCC0tHBBVBELFjVOwtdtQYNaLGaKyJiRps0aj419hFY4wFUaxgA0VBUBBBQKSz9L596p257f+cb1jcZWd3Z3Zmdmd2zpeHh7jz1fe7y87+5pz3OLJDrkGf9reUYtOee0v1MQywUv0J6Njzd4WUwkgAFkUzTT3jgTar3Lb3FloDWDTnM2Nuwam9R7V3+lbHUfTV2A9vB6XdhWqJBrAeP+YGnNv/2HZr0VkAi37mvnfGQ61+gNbuQwF4dtkHoAjplloiAKzjewzDKye17enWHh0YYLVHNR7DCiSXAgkBsN59922oqpoyEVgNAKuIANbV43H/fXeH9dQwwApLprh0Cjcay714GzZcNzWiPTDAikiuiDpTCiGlEran3Tz73/h88w9hD40GYJ3Z9yg8edyf2lyLjM5f+PlDfL9zRZMUDwJWfXK6YVBBL9Abw+N7DhOf2H6zbQnGz3q8zXnDKa3eeJIlletw0WdNI0fpU9El4/4D8qAIt1Ea5ykf3hFud+4XhgIMsMIQibvEVIFkTymMBGCRcBT58f6ZD4Ud1RSJ2G0BrGx7Bj4682H0ym47jSySdek9Dv2soJTvllqiAawz+h6Jp467KZJjNunbWQCLNkFVBKmaYKzbT3vWYtwXD7SacpcIAIvO3VYV5PZqwwCrvcrxOFYgeRTofIA1ZAjefWcyVFWDYRjiT1dvBLAsFguKiotw1VXXMcBKggsPNw6rfk4FNt8+LaITMcCKSK6IOh+Y3wvTz/5XRGOoM6VfkLF4KB+QliaLBmBRjN8X5z2OfjllYe2V3njX+V2gSCgKpc+wpoVMLQgXYD1x7I04u9/RYa1NnSb9Mh2PL367Wf93TrsPh5UcEPY8VKUrVMWtsCfgjs0UYIDFD0VnKZCsKYWRAizSlz4weOOUewTMimVrC2DRWlT1lQzZQ6V2t3cvlDZI6YOttUQDWGQBMPfCZ4WXZXtaZwIs2u/DR43HhQPHtGfrIcfs8taAKvru9ta2OmeiACxKh3zpN3eCKmzGsjHAiqWaPBcrkJgKJADAGox3prwtDNxTDmAVFeOqq67F/ZxCmJjfHcC+ymjhJhFWXDcVnsXbIjoPA6yI5Iq4czglm/eflIxT/zT7qYjWigZg0UKUQvja2L+Boqli1cIFWOf1PxaPHXND2MteO+uxkJ/U3zniUow/+Kyo5wl7Au7YTIGOBliDP7sWtpLmHml8NampgCkBUjutTDurSmF7ABbdLoGTJ477I47ufkjMLjscgEWL9c7uhpdPuhN9c7pHtTZ9CPLAD69hytpZbc6TaACLNkzplJRW2Z7W2QCL9kyVLW8adn4ERhWhT0rR2Td8/QQqfXVtSpEoAIs2Sim59L7hmoPOaHPf4XZggBWuUtyPFUheBRICYE15e7KAV2TinioRWLIso6ioGFdTCiEDrIT8DgpGXVFr2zRTd/ux44nZbOKegDd5x4hLcN3BZ0e0s1u/fRafbPw+ojHRAixa7PIDx2LCEb+PaN3WOocLsIrT8/D9Rc+Hta5hmhg55VphzL5/O6HncEw68c6w5gkYmqgAFUmUW1gTp3gnBlgp/gAkyPGpHk8YftPNdutbswcbrn8PusvfYSdpL8Bq2CBFr/552AXolV0a1Z7p38SvtiwK23uR0glvHX4hLj7gxIhStxs2Selm/1r0FiglPJyWiACL9n3VkNNx18jLwjI4b3xOgndD3rii2dGjBTzhaNm4D1XvwMEI/wAAIABJREFU/evIcTggrzzSocKo/Y1VM/Dszx8iEGbBmWjPFwsT9/0PStYHtx12McgfLJpGxXfeXD0zZIR4w7zRnr+t/XEVwrYU4tdZgegV6HyANXgwpkyZvA9eMcBq+VItuWlIG1AU/a3zDK0qIKfbUPz7kcgaFl51G/eS7dg64QuoO5ztUpYjsNolW9iDDinsJyrehNvIdHzU29fBoynhDhH9YgGwaJ6LD/gN/nHElbDLtojWD9U5XIBFYz8959Gw3kCvrt2Cs6bdFXJvOfZMLLp0UlifJlMFQ6pkyC22CjDAiq2ePFsUCrSTYtV8shLb7psRxcKRDY0WYNFqFKVNqVCn9xmNY3oMRVGYaW1VSr2o5vr9jl9Akb/1AU9kmwfQPbMQvx98Ko7vORxUfbe1RhVtF+xaianrvsG8HcsjWitRARYdYljxAFAlXAIhFNXTUqMPJtfUbsWXW37E++vnYLu7qlnXeAOOUHuj5+f0vqNxTr9jMKrbYGRa01o8A0WOrajeKCrzvbF6Jsh8P5IW7fniAbAa9k/RjOcPPB5UFCbc9Fx6r/bjrtWYs30pPt4wL+SHa431ifb8bWnNAKsthfh1ViB6BRICYL399lv70gdTBWBJkrQ3AutaPPBA88pd0V8tz9AeBXLG9Ef5hLGwZLf85qFhXoq6olLgVZOXtGepfWMYYEUlX1iDZ1/wNHpkhgd/Z21djOu/fiKseRt3ihXAojmpXDpFYkXiJ7X/hunT5ReXf4Snl74f1ln+NvIyXB1GGP8bq2fggR/+1+Kc4YKwiT9NwUvLI/OLC+sgKd6JAVaKPwBd4Pi6S8GKE17osJPEAmDtv9myzCIBkwguUaRUmsUO1dBAESIUvbrNXYlNzl2oVupjek76pf/Agl4oSMtBgSNHRCXV+t3CM3GzczfW1m2N6XqJNlmG1YFhxQPRM6sYuY5MWGUrFC0AV8CDre49WFu7rcUqi4lyFrIROKSonwA4dI85jkx4VB9qFReqFSeWV29oE9Ikylmi2Ud5VgkG5PUQXm/0h7w+6QNGRVPh1RTs8tSI76Nt7j2tmtZHs4f2jGWA1R7VeAwrEJkCnQqwDh81GkMGD8bkyW/CNM2U8sCiayouLhEphA88cG9kt8a9Y66AqKI0YSxyxwwIa27f2kpsvX8GlDWVYfVvrRMDrKglbHOCSKrd3DH3efEpXqQtlgCrYe3hxQMxbtBJwh+LfhFqq1EKytLKdfh2+zLx6XKVL/xfjo4tG4pXTw4dWdV43ZvnPI3PNy1ocSv3jb4Klw06ua2t4txP7hafInOLrQIMsGKrJ88WvQLt8cX6eeST0S8c5gzxAFhhLs3dWAFWoIspwACri10oHychFehUgDVq1GgMTlGARcCupKSUAVYCfFtkjugpoq7sZeFVsqGoq92TWv4FPtIjMcCKVLHU7N8jq0hUKcx1ZIlPlm17P1mmion0KT6lQmxz7QFBLG6pqwADrNS9+8Q9Obm6t+0l2Xj/DLAS9zZ5Z6wAK9CyAgyw+OlgBeKvQKcCrIYIrLfeemNfBBaBna7eHA4HTIMAVgmuvoYisDiFsLPuPP+sISifcEpYy8cy6qrxggywwpKfO7ECrEAYCjDACkMk7tIhCtD7ObJLiLRVvb1EFEXpqMYRWB2lNK/DCnR9BRhgdf075hN2vgKdC7AOPwKDhwzB5LfeEEpQFcJUAVjk9UURWNcwwOq074K0QcU44K3Lw1o/nm+oGWCFdQXciRVgBcJQgAFWGCJxl7gqIFIGjfaVIaQPijZcNzWpqhDGVUyenBVgBZJKAQZYSXVdvNkkVaBTAdbIkaP2pRDSp3SpCLAoAutBjsDqlG+fonHDUXbbmFbXDux0Yut9M+BZvC1ue2SAFTdpeWJWIOUUYICVcleegAeOPGWQDlE/p0JUH9Rd/g49E0dgdajcvBgr0KUVYIDVpa+XD5cgCnQqwDr88CMwYOAAvPvOFBFmTlFJqVKFMBiBRSmE1zHA6qRvBltZDgZPu6bF1Snqivyu4v1mmgFWJz0AvCwr0AUV6GiA1QUl5CO1U4Hutx2P4nGHtWv0jv+bHXVF33YtDIABVnuV43GsACuwvwIMsPiZYAXir0CnAqzfnnseLHYHPnh/qgBYqRaBVVxcjOuuvxET/nF3/G+aVwipQOn40Sgdf2ST13S3X0RdOWdXdIhqDLA6RGZehBVICQUYYKXENSfUIenDoD6Pn4X0QSUR74uinDfdMS0mFX0jXnzvAAZY7VWOx7ECrAADLH4GWIGOV6BTABbBqsED++Pe22/B1Jlz8PFH70OS5JQCWATrSktK8Mc/3owJE+6Gpusdf/u8olAgZ0z/fRDLOXs9KPIq3lFXjaVngMUPIivACsRKAQZYsVKS5wlHAari22fiWbBkp4XTvUmfzkoZ3H+jDLAivjoewAqwAi0owBFY/GiwAvFXoFMAFh1r/nv/wcad1Zj6zUJ8/NEHkOUUBFilpfjzzbfiqNIsHHf1HwHThJECVRjj/1gn1woMsJLrvni3rEAiK8AAK5Fvp2vtLVQEc7gn7MyUQQZY4d4S92MFWIFIFWCAFali3J8ViFyBTgFYU55+BGeNPhQfzfsJ78xehE8/nZ6SKYTkgfXnm27F7w7phnqvgr+/8Cbe/3o2OuVSIn92eESMFGCAFSMheRpWgBUAAyx+COKtgCXbgd4Tz0LWiPKIl0qElEEGWBFfGw9gBViBMBVggBWmUNyNFYhCgQ5nJTf9/mL868bfwfA68cH3KzD1u5/xxRefiSOkoon7zTf+Gef1ADJycqF7nNhW78cN//cylm/YTAFZ3FJAAQZYKXDJfERWoIMUYIDVQUKn6DJpg4rR/8ULkjplkAFWij68fGxWoAMUYIDVASLzEimvQIcBLPK9OqBvL/z04auweGrh97jx/g9rMPW75Zg58/OUq0Ko6wZKS0tw7TXX4cT0KvTsMxAWq4m0vGKotnxc/9AT+OSrL8EMq+t/jzLA6vp3zCdkBTpKAQZYHaV06q1DZu0HvHVZu+BVIqUMMsBKvWeXT8wKdJQCDLA6SmleJ5UV6DCAZbNZsXrGOyjPsUGtr4Hf58f7iyrw3vxfMGvWTHEHqRaBVVRUjEsvvhQjAhUYMHAQunUvR05hKexp6XApfvz16Rfx+nSGWF39G5QBVle/YT4fK9BxCjDA6jitU22lonHDUXbbmIiOnYgpgwywIrpC7swKsAIRKMAAKwKxuCsr0E4FOgRgWS0WvPyve3H5SaNhuOsQ8HqheH14b9F6fLBwFb755quUBFiFhYU4bexpOMC5EoP69UV5j3J0L++N3MLusDkyYKgq7np+Ep6e+kk7r5eHJYMCDLCS4ZZ4j6xAcijAACs57ikZd9nvpQuRNaJn2FtPlCqDbW2YqxC2pRC/zgqwAuEqwAArXKW4HyvQfgU6BGCdeMwRmDHpUZjueqiuWgQ8XridLry/uALTl2/C7NlfpxTAstvtME0T+fn5OO6Y41C+ZxkG9e2NXj26o2ePXigs6YbMrBxYrA64PG4Mv/ZO7K6ubf8t88iEVoABVkJfD2+OFUgqBRhgJdV1JdVmIwFYiZwyuL/oDLCS6jHkzbICCa0AA6yEvh7eXBdRIO4Aq3tJEVbNeBcZhg+asxqa1wevsx7Oqhp8vGIbZqzfgzlzvhHpgwR16O+u3hoAVl5uHkaPGo3i7YtxYN9eKO9WjO6lpSgpKUVOfhHsNgdgseLWF17H2199B4Nd3bvko8EAq0teKx+KFegUBRhgdYrsKbFo6fjRKB1/ZKtnTYaUQQZYKfG48iFZgU5RgAFWp8jOi6aYAnEFWJQ6+M4zD+Os0YfA8Dmh+RT4a6pRv6cSNdWV+GKTE7O3OfHtnG+g63pKASx6znJycnD4yMNRsGURBvfthe6FeSgpLEBhfj7yCwqRnpkDi92Bv/3vI0z+ci4DrC76zckAq4tebKNj9c8twz+O+H3Ig35YMRcfVcxtUYQ7DrsEhxT1a/a6ogdw3ayJzb7+z6OuRc+s4mZfr1GcuPXbZ7u+2Cl+QgZYKf4AxPH4lmwHDpx+DSxZjpCrJEvKIAOsOD4kPHXSKWC32NAvpzvo712eauzx1SXdGRJpwwywEuk2eC9dVYG4AqyrLzoHk+65EabXBTWgiegr56a1qNm1E1W19fhmdwDzq9WUA1gOh0NEmuXm5mDkYYcjf+siDOxVhh4FeSjKy0FBfi5ycvKRlpmFtOx8/OauJ7Bld6UAfNy6ngIMsLrene5/omHFAzD19AdCHvSZZe/j6aXvtyjCqyffhWPLhjZ73av5cehbVzX7+mfnPIaBec19anZ5a3Ds1D91fbFT/IQMsFL8AYjz8dMGFaN8wilIP+BXSK67/dg9aT6qJi+J8+rxmZ5TCOOjK8/a8Qqc2nsUTu1zRMiFn136AdbXb2/y2oUDT8A9o36HDOuvUPr7nb/ghq+fAL3H4Ba5AgywIteMR7ACkSoQF4AlSRKGDOiLhe++CLvfBTPgh64E4KmvRU3FKuzavBnVLgXz3Tb85LGkJMCii8rOzsHIESOQu/lHHNCzG7rnZQuAlZ+bg6ycXGTk5KGiXsVv73s60nttsX/mXgNWz+JtMZuTJ4pOAQZY0emXDKMZYCXDLXWNPTLA6hr3mOinIJCVe3x/+NZWgt5P6K7k/WU3HgBLliSkWewhr1E1NKiGnuhXzPtLQgVuHnY+bjr0/JA7v3zGg/hh16p9rxWn52H2BU/DLlub9X/pl2mYuHhKEirQ+VtmgNX5d8A76PoKxAVgpTkc+O6dFzG0ZxFMTz0MTYO/checO7ehpqoGu/dUYueeKizyZ2G1nolvv/0GmqalTAohRWBRoxTCkSMOR86mhehfVozu+dkoyM4QKYQZ2bnQ7Nm4ZOL/sKfOGfWTSOCqfMJY2MtyxVy6S0HF9e9BWVMZ9dw8QXQKMMCKTr9kGM0AKxluqWvskQFW17hHPkXHKRAPgHVCz+GYdOKdIQ/x/M8f4ckl73bcAXmllFEgEoBFkd0U4R2qLdi1AlfM+GfK6BbLgzLAiqWaPBcrEFqBuACs1ybej8vHHgmofsAwoXs88FXvgau6CrVVe7B7TxWqa52YX2NgpWLD3LmzoapqSgEsilLLzcnFqFFHIG/LjygvzkNRbhZKKQKroBB1ug1/feMzbKuqRTSJg+RZUXLtaBSPO6zZE0AQa/XZryb1J6dd4RubAVZXuMXWz8AAq+vfcaKckAFWotwE7yNZFEg1gHVwYV9Q9E1Dq/W7sbRyXbJcF++zFQUiAVj0HHx4ZmhI9dmmBfjznNhlf6TSpTHASqXb5rN2lgIxB1iXnXsGXnnwDthMDdA1SLoB1V0PX9UeuGtrUVtTjT2VNaiprcP8ag2/eCTMm/ctAoFASgEsWZaRm5uH4489Hj3q1yEjzQGvqqPa48eGqnosqtgGn1+N6rnYP+oq1GTkW7F70oKo1uHB0SnAACs6/ZJhNAOsZLilrrFHBlhd4x75FB2nQCoBLIfFhnkXPoc8R9Y+gRfuXoXLvniw4wTnleKmQCQAi9Jc3zr1HxhZMqjJfqji+RUzHgI9F9wiV4ABVuSa8QhWIFIFYgqwigry8cuX76Eo3QKoCiQDMH0uaD4fFJcLztoa1FXVoHJPJapraoWB+y8eGfPmzYHfH/RPIHPzrt4ohdBisSAvLw8nnXQKXn/9vzE9cmtRV/svVPX2Eux4YnZM1+fJIlOAAVZkeiVjbwZYyXhryblnBljJeW+8685TIJUAFpl2P3zUtU3EZoDVec9erFe+6dDf4uZhF4Scdn8PLOpEQPOCAWNEpWMyct/uqcL767/F+jr2yW3v3TDAaq9yPI4VCF+BmAKsz994ESePHgbJ1AEtAKgBGM46qIoPPrcb7non6qoqUbm7EtXVNQJgrfBZ8P13c+Hz+VIKYFmtVuTn5+Oss87DCy88E/6NtdFTVAj6x1ikDyppc06qHLR23JtQd0TvsdXmYtyhRQUYYHX9h4MBVte/40Q5IQOsRLkJ3keyKJBKAGva2Y9gcH5vBljJ8nBGuM/xB5+FO0dcGjbAinB67h6GAgywwhCJu7ACUSoQE4BFfk79epdjxedvwyqboEkpAguqBsNVh4DbDZ9PgdfjRl11Dfbs3oU9eyqxoFLFKr81CLAUBTDNlInAIoBVUFCAiy++DBMn/ivKawwOLx0/GqXjjwxrLoJXFddNZRP3sNSKbycGWPHVNxFmZ4CVCLeQGntggJUa98ynjJ0CiQCwDszvhZGlBzY51Db3HszetnTf13pnd8PY3iMxKL8XCtJy4NcD2Orag7nbf8bcHT+3KciR3Q/C62PvbtZvs2sXXlv5RZOvL6+qwLKqihbnpPSzYcUDMbrbEPTJ6Y58Rzboa3V+N7a692DxnjVYsHNFm9UWLxp4AuwWW5N1Plg/B17t16qWfXO644KBY9A/twcAE79Ub8Szyz4QY8LRjfqc0nsU+uZ2R449E86AB9vclUK3hbtWwdzPaXZIQR+M7X04aF3q71K9qKjbjjnbl0XsFdYvtwxHdT8YQwp6Iz8tG2kWB1wBD3b7arFkzzp8t2M56gOeNu+uoUOWLR2n9RmNw0sPRFF6Lur9bvxctQEfb5iHGsWJKw48Bf844sqQ8+0fgZVtz8A5/Y4J2XdlzSb8tGdtq/sakNsDQ4v7o092N5RlFYH2lm51QNEDqFFcWFG9EbO3LRFat9ba+wz8Ur0BPbNCf1j/7fZl2OLaHXLZ0ox8nNzr8JCvrandgh93rw77PkJ1ZIAVlXw8mBUIS4GYACyH3Y7tC79CbroVskr/EMsCRsHrgubxQHHWiz++gAqnR0FVZSV27NyJ73d6sE5Lw/zv54kILDNFAJbdbgf9IYB1zdXXYtpb/8GS9ZtBeeftaZFEXdH89XMqsO2+GWze3h6x4zCGAVYcRE2wKRlgJdiFdOHtMMDqwpfLR4uLAokAsH4/5DTcffgVTc5X63fhyHduQJrFjr+PugIXDhwDKfgRcbNGUOfm2f8W8ChUu2zQybjr8MvEXOG01iolnt5nNP48/AL0yylrdard3lpM+mUaXl81o8V+P417Bdm2jCav3z73OUzb8B0skoy/H34FLj9wrIBjDY1g3dVfBj/4bU23TFs6HjzyGtB+W2rLqzfgL/NeFClzhWm5eOioa3BS+cgW+9Pat337rAB1rTUySL9jxCU4uvshrfbzaX5MXTcb//fTO/BoSqt9j+txKB495noUpQWriTduBOX+Mu8FpFkdeOq4m0LOsz/AIrg249yJIfv+Z8Wn+Neit5q91iu7BPQsndnvaJQ0KgTQ0sbp95pPNn6PB354rUVQ195nYNaWxbhv9FUhl351xad4JMT+qXNrUWrXf/0EZm1dHM63SIt9GGBFJR8PZgXCUiBqgCXLEibccj3uHn85xM9VQ4UsW2EG/DA99VC9XgQUPwI+BYrHi3qnE1W1tdiyeRPmbavHJiMT8+fPg8fjFRtOBQ8sglfkg0UphNddez1OsO/GPVO+wuylKyOGWEXjhqPstjFhXTZFXW29bwacs1v+VC2sibhTTBVggBVTORNyMgZYCXktXXJTDLC65LXyoeKoQKICLDry9V9PxLhBJ4PgRVut0leHs6f/DVW++n1dCxzZeOzYG3B8j2FtDW/yeiiARRDp3lFXCqAUSft620/40zdPhozGCgUvCCAQSHjxN7fjxPIRzZb6sGKugDXUQgGsBt2uHHwaKOqsrVal1OOOb58XgI+itdpqS6vW45LP7oNuhvbsPbf/sfjnUdfCLlvbmmrf6xudO3HVl49gu7sq5BiK4nrlpL/CJltanFM1dPx76VTccdglIfvEAmARULxqyGlhn6uh4ybnLlz02QQQlN2/tfcZICj2/UXPi6iv/dsG5w6c8uEdIff5zmn34bCSA5q9VuN34eh3/giNbHCiaAywohCPh7ICYSoQNcDq3bMM677+ABZDg2lqkCSZKBTg98Hwe6G5XAgQxFI1KIofzrpaVFbXYOPGTZi7zYVtcjbmz/8OHk8whDaVABZFYI3/w3U4ybodsKXj3ikz8eXi5SISra1mK8tB+YSxyBpR3lZX8TpHXYUlU6d0YoDVKbJ36KIMsDpU7pRejAFWSl8/H74dCiQywIr0OJ9tWoA/z3l637Az+h7ZYkROa3OHAli3Dr8Ifxx6bqRbEv0pyujv309qNjYUvAgYKt5cNRNXH3RGyLVe+mUaJi6eIl5rCWC1a5MRDPrrdy/ig/XfNhtBEVevnnxXk4ixcKel9LULPv2HSMFr3Mhc/avfPoniMCKeCL5YpdCQKxYAq2dWMWb99ql2nW/G5oX40+ynYvoMPHL0dbhgwPEhJT7xg1ubpRFSquuCi18Muf//rfoCDy18PdzrarEfA6yoJeQJWIE2FYgKYGVnZmDpZ1NQXpQD2TQgQQccmYBsA1xV0OtrEHC7oKkaNGJafj9cTif2VFZjQ0UFvtlUh522XCxY8D3c7mA4bqoArLS0NBRQBNb4G3AytsCWng7T4sANL72PBSvX7JeR3/QeKeqq9NrRsGSntXnBRkCDe/FW+JbvarMvd4itAs7vNsG3om3dGWDFVvdEnI0BViLeStfcEwOsrnmvfKr4KdCVABZFBR397o2oVoJRWLECWAcV9sUHZzzUIrigFLZqxYle2aUi9S9Uu+DTe5v5aoUCWG3dNEEGgg3UOgtgfbdzOX4/85EmW6WKfrMveDpkih919Ouq8IPqkVXUYirn44vfxqRfpjeZl6AhwcNoWywAFu3huRNuxdgQHlKULtg41TPUfsd+eDso2qxxi+YZaO29VePnpGG98/ofi8eOuSGklOdM/xtW1myOVmYwwIpaQp6AFWhTgXYDLEpH/+sNV+GBG6+EpAcgyRZIFDmUngV462H63NBVHZo/AENVoQUC8HudcDrd2Ll1G9Zv3ITZ21zYbS/EggXfpSbA2huBdU5WJVTFC2gajMwiXPXsFCyr2BTy8nredwoKzhzS5sVSh2AcF5nqh/ZMCGsS7tRuBbY/9g2q3/3VgLWliRhgtVvipBnIACtprirpN8oAK+mvkA/QwQokA8CiyJovN/+I7Z4qHNntIBBQaqndNPspfLF5oXj5kMJ+uHTQieL/XzjwhJBDKPWQzLYbt6+3LcFXWxbt+9JTx9+EM/qELhI08acpmLR8ujBD75ZRgBd+czvIA2r/Rl5It377bJMvtwde3DznaXy+aYGYpy2AFTA00bfe7xFG7mTg3Vpzqz58unG+SCOj8+Y5skJ2J2P3wyb/oclrpPMDo68J2Z/u42/fvQSan0zrHxh9Nc4PETm0x1eHo9/9Y5M5Zpw3sUW/MQKW83euEIb+o7oNbuYn1niiWAEsMpCffOo/sMW1B59vXiDM8Mn03RXwggoNPHbM9SFT9GgvDy78XzNPtGifgeln/ytk6ue8HctFWmbj9uyYW8RzsH+j6Lczp90Vk395GGDFREaehBVoVYF2A6zBA/th4fuvwCE8ryRQJUJh3k5/q36YBK28HhiaLn6o6aYE1edDfV0tdu/ciVW/LMc3W93Ybc/DDz/Mh8sVzItOlQis9PR04YH1h6v+gNMyq5Bf1A2GHERONXVenHHvU6isb5ornn/WEJRPOKXNR5rBVZsSdUgHBlgdInNSLMIAKymuqUtskgFWl7hGPkQHKpAMAOu6WRNBXlLUyAfpndPvF3AqVCPzbTLh3r+tu3JyyP4Ld6/CZV882KLiBFyWjPtPSE+n73f+gitnPtxk7AF55fj0nEebzUdRYaPfaRr90ha8oHTCH3atEtUW6XcJAkovLZ+GVXsjZdoCWFd/9S8BWKhRdNjM855oMUKMIqR++8k9WFu3VfQnfT8486EWdTn4zStFVFVDI6hDcGf/RtFpx029qYlJO2n69W+fCgnUTvvoTqyv3y6moWit2ef/mhLaeG7SY/ysx/dVqqT0uMmn3osBeT1D7jlWAIsmH1EySFSaDNWoOuXU0+8P+dp/V36Oh398o8lr0T4Dlx14Mu47ormZO8HLw9++dl9FS/q++fHSl5FpbZ69QobvZPwei8YAKxYq8hysQOsKtBtg/efx+3D52KMhqQosdnsw3If+IdcNQA3AlG1QFR9MXRcVCTXdhKoocDvrUVVTh9UrV+DLdbux3ZqDHxcugNPpFDtNFYCVkZGBvNw8XD7uChyurEXffgNRUFAIi80OOacIr8+YhzuffKbJ7fV76UJkjQj9g+nXjsGCwBx11fnf+gywOv8OEmUH9Gn5R2f+M+R2Gvt5hOrw1qn3YlTp4GYvkRnqqCnXNfv6Z+c8hoEh3sDu8tbg2Kl/ShRJeB9xUqArACyqrEtp8g0/7+pnV6BqyhIoa1ovxx4nSXnaLq5AogOsRXvW4NLPmwKBcYNOwv2jrw55M88u+wD/Xvpes9faC7BGlgzC26dNCP3za/k0vLl6ZrPXPj/3cWTZ0pt9/ch3b2hiMt8avFhVuxnXfvUYqJphS601gPXj7tUY98UDTYa29POUOr2/fg7u+u6lJv2nnf0IBuf3Drn8Ee9cjxol+LsLwZEl414FpRHu3wgQ3v7tc82+/vDR43Fs2dBmX7/l22dEFBg1MrEnM/tQ7ZttSwTAatxO7T0Kz4y5JWT/WAKshgUIxHXLyBcVHDNtaXBY7MKri6o/hmqhNI72GaDnrCUz9z9+83/4cm8kIWlN/mT7N4piO2bqjU2ey2j+yWOAFY16PJYVCE+BdgGs/r3L8dP015FukSAbKiSqtCECsKyApgMeJ3S3C6YsBw3JDR2GbohKhG6vC9W1LqxdvRqfr9mJbcjAwhQFWDk5OTjnrHNxQPXPGNivD3p074HCku5Iy8hBjceNE265H9t27d7nhxVu+mAQYTHECu9bIH69GGDFT9tkm7k8qwRfn9/cvJTOQeXCqWx4S40MU6l09f6NfCQTaMsJAAAgAElEQVTIT2L/xgAr2Z6O2O432QFW6fjRKB3fPFVJdymouP49hlixfVx4NgCJDrCeWfY+nl76fpO7oup6r4+9O+T9hTJgp47tBViXHHBii0Ai0gfotI//gvV12/YNaw1enPvJ3VhRvbHVJVoDWKF0a830+855L+CjirlN1nt6zJ9xWu8jQu6hMYzrm9NdRHfFot33w3/x1uovxVRXDj4V94z6Xchp7//htWbwkKKwFl7SFMI1DI4VwOqT002kPx7fc5j4sKwl0/hQm/6g4lv8dd6LTV6K9hmgyf519HUhUzIbFw+gKC2K1tq/hQKB0dwjA6xo1OOxrEB4CrQLYN1z83X4xx+vgOT3Qk7LFBFWoNKuFG3lccJUfNBVDdA1QNJFFJZpsSGg6nDX1aK6shIbtmzDJ8s3Y4uRhh9//AH19UHDyVSKwMrKysKYY8egb/VyHNC7HN2Ki9C9exkKistgtTvw4sdf4B//+/VNiyXbAYrCSj+gOLzb3RuLFWZn7hZjBRhgxVjQJJ6OqggtvezVkJGR9OkyRUY1gOfGxyQ/kW8vfCbkuB92rcTlM5qnNzDASuIHJQZbT1aART/fek88q9XKuoEd9Vh99qsxUImnYAV+VSDRAdYdc5/HxxvmNbmyIQW98fFZTf19GjrEGmBdd8jZuOOwS2LyyOxv5N4SvKhS6nHkfumGoTbQGsAKpdvfRl7WYnXDSz6/v1laHEUSEcAL1RoDrNbS5iIVrrGR+41Dz8Mtwy8MOcUfvnoMc7Y391ldccXrIdM9owVYZNB+18jL8LvBp7aYhtnWWSMBWOE+A7RmS/qTv9tRez3F5lzwNMoyi5pt8ebZ/8bnm39oa+thv84AK2ypuCMr0G4F2gWw5n/0Jg7rXwaLqUMyNMCaDsiySB80nTXQXLUwVE14Y5mmDhgmpLRM+H0eKLoVu7duwKatO/DJL5ux0UjH4kULUVdX1+kAi3y8rBYLVE1rt6DhDLTb7aAUwoyMTIwaeTj6Vq9E3/Iy9CgpRGlRIQoKipGdX4zNe6pwzK1Nf0GlN/kUiZV7fP9wloLuDUDZXAPT+2ueflgDuVPUClRNWQrnN+vbnIdN3NuUqEt0aMlolA736KLJeGXFJ83OSdVyqGpOqNZSmggDrC7xuLT7EMkIsDJH9ESfiWeFVVm34rqp8Cz+NYKj3ULxQFZgrwKJDrCunfXYPp+jhksbXNAb0zoIYBFAIZASi3bhZ//A0spf3xe1BLCWVq7DhZ+FTltsvI/WAFYo3QjAXHPQGSGPcta0u7C6dkuT1x448hpcGgbAai0iLlLdyBSffL6otab9FTP+iQW7VjSbviVNowVYLUU5RXK+SABWuM9Aw/otvceiSD7d0EGv79/In4xAKfllxaoxwIqVkjwPK9CyAhEDrF49yrBi5juwB9ywWq0AfdNLNpj1u6GrlC4I6AE/NHcdDG8tLFYHJIsNOiSoOqDIVtTWe7B+9Qp8sa4SGzQbFi/6MWYAS3jJU+09M+gnH/yPhop8wUxHAlUE12RZFiVf7TYbivNycffvzsNxI4Zi8dpNuOXJl7GrqiaYAhnjtg9gpWdg+PDD0GP3zxhQ3hNlRXkCYOXnFyAnNx+6xYHDbpwAXyDQbAc5Y/qj/L5TYMlyhLW73ZPmY/ekYNUWbomlAAOsxLqPeO3mryPH4Q8Hndni9JRKOHPLj6jzu9AtoxDn9j8Wx5Qd0mJ/enNPb/D2bwyw4nWDyTFvsgGsllIGW1J76/0zUDt9ZXJcBu8yKRRIdIBFJulklt64dSTAuvqgM0CRS7Fo4QIsMginiKi2WmsAK5RurQGs0z/+C9Y1Sm+ktcMFWK35XLZ1hv1fbwywrhpyOv5++OUhp7j+64mYtTVo7N+4xSMCq7VCNLT2L9Ub8e32ZdjurhQVHB89+vqQe44EYIX7DDQsdPmBYzHhiN83W5f84AzTwK3DL2r22uQ1X2HCgthG9TLAivSJ5/6sQOQKRAywbrzyEky8YzwsegCyBEgWO+B3wyBgFVChupzw1zshWSRYqCChuxawOqCRoXtaNhRY4PSp2LRpC6b/sgWbzXT89NMi1NYGTRrbm0LYcJCi/Bz84bzf4OhDBqIowwHd64XP54XL4xf7zbSYyHdYAVVBSd+DADkNksWBDIcdtox0WNLTYVqtwsprTcVGnPynv8Ht9cGIIcgigJWZmQmqRHjoocNRun0J+vXoLgBWUX4uivLzkZNXCKTnYOj197R4q5FGY7kXb8XW+2dC3RE0neSWGAowwEqMe4j3LigdcNb5T4UM7Y907VDmtA1zMMCKVM2u1T9ZAFY4KYOhbmbTHdPgnF3RtS6NT9OpCjDAar0K4Tn9jsHEY/8Y8o7+Mu8FzN0RrPIXTqtT3AJwNLSWooXChReJArDo5/vcC58NKcGUtbNCmuq3pJdHVeDT/OJlisCmSOxQrXGqYcPrZKBOhuahWjQRWK19AEd+XeTb1dDIMmHZZb/+d+O9xBNgkZn7/ItfQBr9Xtqo0fNJPl0UJbd/2z+lNZxnuK0+DLDaUohfZwWiVyBigDXzzRdxzJBesJoGJFmGRJFOhgFQlJXfB83lhEY+WF4PJOgCSCn1VVAULwxYoagaPKYDO6pqBcDaZKRjSZQAiyKtBvTuiY9fehA9i/Mga35Iqgr4PAgoClSfAp/XA8Xng91igaTrIkrM63Yhp8dQZBd0A9UNscqAJc0GWC3QTR2aJMFV78JzH36Kf/63eUWX9spPAIv8r9LS0jD80MOQs2kh+vfshtL8XBTn56AgNwf5hcWYs7EKd7wYuuxx47WLxg0XprfhRGORES5FYlW9vaS92+dxMVaAAVaMBU3g6W4bfhFuGHpuVDukst0Xf35fi+a2DLCikjfpBycDwIokZbDxhehuP1aMCf3LWdJfHB+g0xRIdYBF0TPnfRLaEJ4upTWD8rfWfIn7FoSGFeFcaFcBWHTW7y56HiXpec2OTVFdZ3z815A+l21p1FoFSDK4p/S4xu3CgWPw8FHjQ04bDcB6/oTbcHKvkSHnpbOtrdu677UD8srx6TmPhuwbT4BFCz56zPX4bf/jmqy9zV0pKiSSwX3jtsG5A6d8eEdbVxDx6wywIpaMB7ACESsQEcCilLuKOR+iW3Y6LASJRJqeBMnmoNApaJoK3VkLI+AXqXqUx2foKtSAH56qnXBV7YHXr0GBA7tq6jFjfSXWB2z4edmSdkVg0dqU4vfYndfjykvPR05uOmS/C5LigawFYHjd0JQA/B4PVFWF4nZBNwxYqDqi6ofm98PvU1B80HFIzyuB7HaLyCxJMkDhWqbDCk2ywlPvwtw16/H7B/4Nr6JELPL+AwhgZWdniwiskYeNhHXNPPQtK0VpfjZK8nNRkJePzW4Dd772Ebz+5umDoTZgK8tB+YRT9pUdb2uTFI21+Y7p0F3BT3m4dZ4CDLA6T/uOXlmChOdOuLXFN4Jt7Yc+uSZj2oYS26H6M8BqS8Wu/XqiA6xIUwYb39bay97kKoRd+/HtlNOlCsCiqBiKjtm/6aaBa796TERSURTLkII+GJDXA5Re1dBaMsCmn0lUVY5S4EO+N5UtOKZsqEiJ//Ocp5t16UoAqzXPyv+u/BwTF7/dotfSIYX9cPEBv8H/Vn3RJI3RJlvw07j/NIsqahDytVWf46mfpoqotqO7HyIATp4jK+RdRAOwJp14J07oOTzkvJd98SAW7l4lXqP3OP8ec3OLlRvjDbCGFw/Eu6e3nXpKe22cqhnLf3gYYMVSTZ6LFQitQNgAi2DRyGEHY/abz0H2uSDrAUiGCdlOKXgW4Tmle1zB6CuyjZJMSJIMUyJbLAm+qp3Ys3Et6qpr4dUtqPWp+GpTPdYqMlb88nO7ANaQgX3w8sN/wbCDDoDVngnZKkP2VQMBHxBQg9UQAxSB5YPfq0D1B+DzuaDrOmwWKwxNg66qUP0qig8eA7s9HaipgcUqQ5IByoHUbTZoug6324WnPp+LJ16bEvWzRAArJydHGLkffdQxAmD1KC5AaUE+MrJyMH/DTrz73dKw4VXjDUUSjeVbswcbrn+PIVbUNxrdBAywotMv2UbTG7ybh50vIrEs4h+a8Noubw1unfMMFu1Z0+oABljh6dlVeyUqwBIp7xPGInfMgIilp8irTbdPY/P2iJXjAeEokCoAa+Z5T4hoqpYaQRBKtaK2qnYzzp72t31dW0vVo07Lqzfgx12rQD+n7BYbCtNy0D+3B0aUDkKmNQ1ezY9D37qq2dJdCWC15ktGBydtZm1djG2uSqFDriMTfXK6g6BLaUa++BpFwlFEXOP235P/1qofJlUwFsXg9xn/hr7haAAWRXVRdFeoRhFOk9d8CVmSBbgiP7CWWrwBFq1L0V8UBdZaI1uY49+7SdxJrBsDrFgryvOxAs0VCBtg0dB/3X0bbrrodBHlZHqckO0ZIvqKIBb8CjSfB3ogAFMLQKYKhcL/3ISuazBkK7weD7atW43KqlrUKxpmbarFSreBNatXRQSw6N/oqy86Cw/deT3ycjJgBf3DbYFkSQM0J+CuF5FUpqaJaDACWBqBKkVBQFXh87ihm8SnJFE5UadoLQ0oGnIcLH4Tks8Lq80C2CToFkDVVLjra7C0yodzbrs36ueoAWBRGuHJJ5+KeZ+9B1Uz4AmoqHJ5oZIBVxSNorH6TDwb6QcUtzkLm7u3KVHcOzDAirvECblAj6wiXDn4VJxYPgK9sktD7pHSBX+uqsCHFd/i44p5YVXKYYCVkNfdYZtKRICVNqgYfR4/C/ay3Ih1cC/ehs13TOMPWiJWjgeEq0CqAKzWIoT212p/gOWw2PDRmf/EgLye4crapF8qACw68CNHX4cLBhzfLo1oUCiAdWrvUXhmzC3tnrNhYDQAi85EZ4u2dQTAuuLAU/CPI65sdavzdizHVV8+Eu1xQo5ngBUXWXlSVqCJAhEBrAXT3sLQXiWQ/B7he0WgypKZK9IHDYNgkQbDr8Dw+2AxqRwhVSiURN63abNCNQCPoqJi2RLsrqrFzLV7sKwugA0V68KuQmixyHjwLzfipmsuA4Egi+6DpPoAUwZMC2BqgL8O8PkATYNpGNBVP3RNRcCniBRCn8cDn88nQl1pdzAofEyHZM9GXtmhMOrrYbNbYEo6uXjB73XC7a3H2moVZ94d/T94tO/c3FyRRnjGGefgmWeeFJcS0WWE8SCHk6rBACsMIePchQFWnAVOgukL03JRnl2CPEcmHBY7qLRznd+N9XXboBrRAe0kOD5vMYYKJBrAKrp0OMpuD/3JfVvH5p9PbSnEr8dCgVQBWKO7HYQ3TmnZ66qxlvsDLHqtV3aJSM+in1eRtlQBWHbZitdPuRsjSgZFKpHoHwpg0dennDYhrDnn71wR0qyc5ogGYFHq6ZwLnmkxPXH/w361dRFOKm/umdURACvbniGM7Pc3c2+8x9vnPtdi2mu7Lq7RIAZY0SrI41mBthUIm5lYLBZsmvcJCuwmLIYKUw2A8uwsVjtMPQDBqyhljzybDA2yrou/g6UKZQG4TKsDgUAALo+CtatX450FK7Fojxfbtm5BfX292G1LVQgpWMpqteKVxyfgovNOg8XqgGxokHQ/EPACagCSbsIkEKX5YKqKSBE0DX1vqmBApALS74IB1Y+AXxFAi0JeJU2FCQma1wN7ZhkctgLIpgZT90GHBr/ihU+S8e2qLbj+udfaVrWNHjabDfn5+cjKysa5556P//u/x6Kes6UJ6JNv8sZqKRqLPUXiJn3YEzPAClsq7sgKsAJtKJAoAItTBvlRTRYFUgVg0X386+jrcH4YEUKhABaNp2p7Tx1/U1gwpfH9u1Ufhk++ptkj0ZVSCBsORymU9476HS454MSIvwXOmf53rKzZ1Gwc6f72aRPQM6vlzIpvty/DtbMeE9FaY3sd3myOaAAWTXZi+WF49oRb96WZtnS4V1Z8gkcXTcbU0+/HsOKBTbp1BMCiBVuLNqRn8ch3boCih+cxHOklMsCKVDHuzwpErkBYAIvM20ePOBRfvvY0TE8NJPK/MsnjyiJM3Cl2yPQTvPLDoDArTYVksQYBlqnD1FSRSmhQNJYkQzVleJQAXv1sDt5esAqVlbvhdDrF7smUff9GaxTk5eLj15/FYUMPgp1M400VMkWBqcpezysfJEpVpOqDFHGlKJS8CFNviMJSQTnP5INlOtIR8Hug+vwwdSJvKqCZIuWQjN2t9iJYJUpMVGFKBgJGAIqchnve+AgfL1gWucr7jQgCrAJkZ2fht7+9CI8/Hn1UV1ubChWNtfX+GaidvrKtofx6nBVggBVngXl6ViCFFEgEgMUpgyn0wHWBo6YSwKK8gz8cfAauPugMFIWIpKKI38V7VmPymln4fNOCFm93TM9huPzAsRhZeqDwuArVKPtibe1WfLNtCd5eMws7PFXNunVFgNVwyEH5vXDVkNNwfM9hIbVu6LfTU415O37Gu+u+wdLK9S1qTpFvfz/8cpzR98gm/pn1AQ/eWDUDzy77AGTIT/YEM859ApT22bhFC7BoriO6DcE9o36HA/N7NdsnQc/nln2IGZsXiteO7TEUr550V5N+HQWwjux+EF4fGzracOq6b/D371+O279cDLDiJi1PzArsUyAsgEW9n37oHlx99m8gKc4g8NEJYAGyzS4gkkneV7oJnczTKSWP4JLiFYDLpI4WGaamwzQCMCFDNSS4FD+ufvotLFu/FS63S2xqf4BF43v16I5vp09GUUEBHORNpfkgyXZQOJXkqxdRV6B9aaoAWJrq37uWAUOl9QzouglD1aBLFhimAb9Cfl0aDCLwuiFgHDRd9JFMCZJkFemFmmFAkSSs3roD4558W/x3tI0iyQoLC0UE1vnnX4THHns42inDGk/eWAVnDhF96+dUcDWnsFSLfycGWPHXmFdgBVJFgc4GWNGkDFJ1XM/ibalyVXzONhTwLNsB9w9b4q5TPABW3DcdgwXIz6pHZpGoTEjRKHt8daio2x5RZAoVIiGz9sL0HOTYM8X7a0ULoNJXh62uPfBo0VfujsFRO30KSr/sllGIHEemgE+kUZ3fha3uStTQ7y8RNKoyeHBhX6RbHULnlTWbEaDfyzqwkW9nv9zusMlWYXewyblL7CVR2o1Dz8Mtwy8MuZ1LP7+/zWI40ZyDAVY06vFYViA8BcIGWKu++Qi9ctKCEVU+FyhnUJJMyGnZkHRVVCAkaEUm7jAkAbF0Q4cZ8Is0PslKnwSYRKhgsafB0DUokhU7Kqtx8h2Pot7tERFS+7dhBx2I7z6dDNlig81igURRXZApX1GkDcJTL4Ca6ffAIIhG6YpUXZCM2QmoGQEBpTQyayeYZbFBo1RHw0TA6xIwjSLFLBYrzIAGCVYBsExHBgJeBQG/F26fC3+Y9DHW7aqmE0TdCGAVFRWBTNzPP/9iPProP6OekydIXgUYYCXv3fHOWYFEU6CzAFY0KYOJpiHvJzEU2PP6Iux6em7cN5OqACvuwvICrEAnKFCcnocvzn1cANX920bnToz98Pa47ooBVlzl5clZAaFA2ABr18KZyLJTVp0C0+cGKI3QmgY5LQOm3wX4A9ApfW+vDxWBIV3VxKcxBLvIH8sCOQi9LBJkqx26JMPrVzF32Upc9vh/m0Vf/fb0E/Hykw8hM90BiyzRaBFlJbatuIGAX+wDgQB0QxXgSvhemXvhma6LPemmCcXrFQbzJhUeVHUBr/yKH5BpTxJk2QZJM2DSvvwaAqqGgNcDj9eDB6bPxXfrt8fskWkMsC6+6FL88+EHRfnbUAAvZovyRAmrAAOshL0a3hgrkHQKdBbA6nnfKfsifCMRjT63aqP6eyTTcd8upAADrC50mXwUViBOClAEIRUJoDa8eCAePno8BuT2CLnaAz/8D2+snhGnnQSnZYAVV3l5clYgfIBVkJ+HjbM/hGwogM8Dw+cOel+ZpkghDHpdSQIcGYpXpOQZZIqu+KD5fFTgT1QsJMN0myMNNptVRGFRZJZm6HB5vHhz1gLc8+b0fZu6609X4y9/+h3S0zNFdJQsoq5UQPEIIAaCZX4KTdZF5BVBKkoX1MkHi8AV/U0G7rJV+FrRHwJSmt8Hza8I/ytVjAckRxoMTRcQS9NM+FQditMJJeDHE1/+iPkVO2IKlxoAFnlgXXrxOBxlr8IT07/Hlz8uDaZchohE4+e16yrAAKvr3i2fjBXoaAU6A2BRevrgac0Nmts8O9OrNiVK5Q4MsFL59vnsrEB4Cqy7cjLImN0qW1qtPEgpsid9cCt8e2FXeLNH3osBVuSa8QhWIFIF2ozAIqBy5kljMPnJBwBvLaAFYKr+YCqhoQooRd5WFMlkKgoM3QhWApQt0P0KNMUPnYzSZQmm10sJerCmp8NmdwSjjmQZmsUCRdXw9LTZeGzKJ3jxkb/hknPHwuGwByOvqHSgsJ6SBUCTyOOK/hDsIeN1LRhlJVIGqfogATSNqg4a0FQdmkbRYRr8bidUMpsPBOD3eoJVCGVZwDaKGNN0E4GAAUXX4XT78NiMH7BmVzXI0iuWjQBWcXExMjMzccmFF2OMvAXZOQWo02z4z9yf8cFXX0PTKFWSWyoowAArFW6Zz8gKdIwCnQGwcsb0R5+JZ3fMAXmVlFGAAVbKXDUflBVotwIEsMJpd857AR9VxD8lmQFWOLfBfViB6BQIC2A9/9Dfcempx8JiapAoqslPUVZklE6RVxTCFIyOMtVgxcEGiEWRUsSeCGhRBBalF4oKhYYOq2yFIycfOhk82h0wrVZodgdW+zQMP/RgWCwyrFabQEsi8mpvdUOqdkjeVwb5bRFMo0gvVRPjdV0XKYQi8ktTBQSiSCyCaCpBK48LAcUHv98Pt6sepmYI0GbKFtBR1AD1N7BkexUmzVmGOm98zCcbA6zzz7sAI5TVKMzLR2FuPkr7Dsb2GjcmfTITr376JYOs6J7vpBjNACsprok3yQokhQKdAbCKxg1H2W1jItDHFB9ASTH+cCiCDXDXJFCAAVYSXBJvkRXoZAXCAVgfb5iHO+Y+3yE7ZYDVITLzIimuQJsAiyKUVnz1HnrkZ0HWKfpKEal/ZkAJgiWqNihyBE2YarAKoIhYMk1IhglNIQgkidcs9vQg/Ar4BZyypmeIoCrZaoU1JwfW3n1g2OyQKWWQTOLJ64qq/hFdCigCmNFauqg2SBDLhEbQytCh7wVaGlUWbDByNygCKwDFVQ+f2wWPywl/QBUVD1Xy59Joo7QBi4ButR4/pv60Dt9X7IzrY0EAq6SkBOnp6TjjtDPQY/uP6FlShN49eqCsZx9k5RXD5rDj9S/n4c9PvRTXvfDkna8AA6zOvwPeASvQVRToDIDV7hTCNt+BdJVb4XO0RwEGWO1RjcewAqmlQFsAa/rG7/GXuS9AM/UOEYYBVofIzIukuAJtvn1MT0tD5U9fwVAodY/glSrglOGhsq8mgiFWgESwSHheuUTFQOJOhp9M9SRIIkLLENUAqYqgSDE0DVgIXDnsSC8phb1/f8BiBayOvZ5aZG9FqYOG8LoyAor4v5T+R8CKYJZO5vCUJtgQaUVriEKH5MFFfvM+Yd6ueJxw1dbA6XTCrxmoqakX0MrUyFBeRr1Pxc/ba/DZ8o1wKoG4PxINAMvhSMMJx5+A/I3zUVZciP49u6NXz3IUFJUiMysXhsWG0+96BD+tWReT6odxPxgv0C4FGGC1SzYexAqwAiEU6AyARdtot4m7iKOmtyLcWIGmCjDA4ieCFWAF2lKgJYD1c1UFXv5lOr7YvLCtKWL6OgOsmMrJk7ECIRVoE2AV5OViy7xpAkxZybNKI/+pQBBo2eyglD6KtNIVl2BZhuoXkMk0JQGcaAGCRBSBZfoVSLJVbES2WCDpfuT06QNHee8gvKI/1AwyiNeCVQEJXAWCPlo6gaoAeV9ZgobtBLAIalH0FaUKajo0Yd5OqYsa1IAKxe2E21kPp9uN+nonAgENG3fWwKcDG/bUY+nWSmypdRGT67DWALDsdgeOGn0UCjb/gG7FRehVUojy7t1EdFZuXhEsaRl4ZeZ83Pvy6x22N16o4xVggNXxmvOKrEBXVaCzAJYl24HeE89G1oie7ZCWUwrbIVqXH8IAq8tfMR+QFYhagWHFA9E7uxRZ9nQEdA3VvnqsqNmI3eTb3AmNAVYniM5LppwCbQKsQf374Md3X4RhaCKtz1B9wbRBTRWphJKuiWgoUQlQcUMl0/aAX3hRSRab8LigPwS+KIyI0gVt6ZmwZWQgu1cvWDMyAatNwCtRSpuiqyiMisgUgTI1AM1PJuwB6IYJk8ziCWSRF5eoPKhCM0yoe03bRfVDVYMWUKAG/PA6a0XkldOnoLbWieVbqvHi18v2XXSbAsThkdgHsGx2HH74KORumI+e3UrRrTAPvUpLUFJcjLy8AjiycjHl++W487n/xGEXPGWiKMAAK1FugvfBCiS/Ap0FsBqUKx0/GqXjj2yXkK75m+BdHt8U/nZtjAd1igKeZTvg/mFL3NfOO30wii4aFvd1eAFWgBXo+gowwOr6d8wn7HwFWuU3VIHwvFNPxKsP3iYiqSjtT1QgpEisgDcYVUU+WJoO1euG5vOIKCnVT/5YBiQyYSfopAXE/7c40iHJMtKzMpE3YBBkG4ErSzBMS6eqe3LQFF71i6griqIiGKUTwIIZNIOHDIP2QZFWphSsMKib4m+VYBZ5YhHE0nT4FS88znpUV+2BW9GwsGIXXpq5uNNVbwBYNpsNIw4biYy181Be1g2leTnoUVyA0r0AKyMnDw++/zVe/+wrTiHs9FuL3wYYYMVPW56ZFUg1BTobYJHemSN6os8TZ8OS5YhY/vrZ67Ht/pnQXWRBwI0ViL8CDLDirzGvwAqkigIMsFLlpvmcnalAmwDrgVtvwJ8uOgWS1RqMtlKVvf5RBK90GIpbRFzpPh8Uj0uALN3vE2l8VluaqCDemwkAACAASURBVCIoy1bYMrMhW23ILSlBRo/ekG0NKYNk0h6AMK8SJlcaTJrPr0KlSCsRbUWOVtLeqoOmCM4yaAz5WFkcMFQFKlUdJJBlmtAIZPkVKD4P6mtrUF1Ti+kLVuK9RRtE1FZnt8YAa/iw4bCtnovybiUozs1BWWEuigvyUVhQAFtuCY667REogfj7cnW2Jqm8PgOsVL59PjsrEFsFEgFg0YmiSSkM7KjHpjunQ1lTGVtxeDZWIIQCDLD4sWAFWIFYKcAAK1ZK8jysQMsKtJlB9/HLT+KYg/uKqoEUgSWir8jMXdNFyqAEGaqnHgGvE4ZfDUZNUfqgMGYFLLJFRF1Z0tKQ36sfHPmFkNKyIMkSJGsaTNUN+DzCsN1UNZiGJszg9YAK3TShm1LQlF3XhKe7bmgwqBKhoQWBF+3H0KHt9cIyZIuAXgGvBz53nfC92rSrFrf8d6aIzkqE1gCw6O9Dhx4KadV3KO9WiJK8XJTkZqG4sADdy3pgwrtfY9aSFRx9lQiXFsc9MMCKo7g8NSuQYgokCsBqkD2alMIdT8xG1dtLUuwG+bgdrQADrI5WnNdjBbquAgywuu7d8skSR4FWARYBliWfTkZZjh0yeWCR8bpkgR4gHywdhmFCc9dAp1RCTRMphBT5JGKcDB2yLEO2WEHV9nJ7D4AtJx8SpRFa5WDUFUVDUeqg4hGm75rPK7y0yD9Ll2QYVFVQgphTmLiLSCyCWDpMUQ7VAl0PwLTYREoheWTRnihyS/G64K2vQY3ThbkrtuHfn/6QMKqTrsXFxaC/Dz54KIx1C1FekIXSwgKUFuTDkp6F52b8gFVbdzK8Sphbi99GGGDFT1uemRVINQUSDWCR/pxSmGpPYXKdlwFWct0X75YVSGQFGGAl8u3w3rqKAq0CrKzMDFR88z5smk8AJ2t6drAKoagEKAsTd8PvDUZMeV1B7yvypzLIhUqG1WZDRn4R0vMLYcvKhuTIEBFTEsEnKlloAmbAB8OvCGhF8EpTA2I8RVmJrEJJhkZVBkWlQUPAM53SGCUrTIJXZChvscKkSCyRZkgRYAH43F4462tQ5/LivQVrMXvVFgHJfCpFhzVtpmmC/L7o77ZaOH1am4PGU4QaVRq0CYB1KCw7VyNNNuEzJFRU1mP9rhoRLdb2btraLb+eDAowwEqGW+I9sgLJoUAiAixSjlMKk+P5ScVdMsBKxVvnM7MC8VGAAVZ8dOVZWYHGCrQKsIry87D+63eFobqk67A47MKcXffWw4AsDNwNMm4n4OT3iCgs+hqBF5s9HY7sHKTl5MGalgHJ7oAkPLHIpF0RlQYNGk+ph5oBnaKsFAWGERxPPleUhKgRJJNkkU5IvlrUzwRVHyR4pcOUrSLFkCBWsCqhJioSep11qKpzYe4vG/DewrUwdRN1HkUArM5uBLG6desGu92BoYcOx/RpH3b2lnj9TlSAAVYnis9LswJdTIFEBVgNMrc3pVB3Kai4/j32xepiz2siHIcBViLcAu+BFegaCjDA6hr3yKdIbAVaBVg9upXgl0//B6gBqg8IkJE7RTzpOjSfSwArgkqm3yMipkxNhWyzQ5YtcGRnC4hlsVshU+SVxSrSD82AByZswkeLIJSueKB5veL/U3VBiszSNTUYeUXphJRKaLUJqEVAS1W8Il2QIBABLGqiD+2DgFfAj0DAB6fLi61V9Xj8o+/gVVR4lQDqfP4gQKPJJECSLWI8RXEFv9gxjfZeVlYGh8OBo446Dm+++VrHLMyrJKQCDLAS8lp4U6xAUiqQ6ACLRM0Z0x/l950ScZVCglgrTnghKe+FN524CjDASty74Z2xAsmmAAOsZLsx3m8yKtAqwOrfuycWTX0RpuKDbLcCEhmySyI8SvM6YaqBoIm63weJbNtNHVa7Q1QctNjtkE1DwCvJZgcsNiCgwlB90H0eGOR55XXBkG1QnbUCKEEYuHugUT9Zgm7KIlXRIC8tqxWq1wlLWjb87joBqiSLPQieZCugqQhQRURDF6l4NU43Hv1gHnbWOBEI6Kh2+4KwygTSMzIhW+0i5ZHM4IXdPAEx8uPqAJBFAKu8vBw2mx2nnHI6nn/+6WR8dnjPMVKAAVaMhORpWAFWAMkAsOiabGU56DPxbKQfUBzRrW26YxqcsysiGsOdWYHWFGCAxc8HK8AKxEoBBlixUpLnYQVaVqBVgHXQwL6Y9+a/YQYUMYMkAbItLRgt5XNTniB0nwvQdBiaAkdWHqyONFgoXVCSRF9KHRTgSMAhCVr1Tpj2TGiKV3hcka8V+WCZqh+azwnV70PA74dGX5dlSFYHIMsAAS1KG4QMnfyxKJVRU0HOV2QEL4k0QwOK4kVVXR1enr0KKzZXCmP3arcHKpUpBFBQVAqv2wWFKh/SgRo1SbaJKojxhlgEsPr06SM0OunkUzDpJf5EOZW/SRlgpfLt89lZgdgqkCwAq+HUZbePQdGlw8MWYcf/zUbVZK5MGLZg3LFNBRhgtSkRd2AFWIEwFWCAFaZQ3I0ViEKBVgHWUSMOxacvPCyM2ik6iqKWhPE6RS3Rn4AS9L0yNFhtdljojyMdFqtNRF3JjsygqTt5UxEEMwHNVQtNVcUf2NJFpULyzaKURKVmF/yeegQUPzRVg2m1Q7LZIFnJsF0D7Bkiwoo8uQg+UVojpTNir6G83+eGy+PD6q278cTM5RTSBa9PRZ3XL6BUZmY2MjKzUFW5q0XJJPLUEhArfo306Nu3r/Ds+s2JJ+HVV16O32I8c8IrwAAr4a+IN8gKJI0CyQawSNhIUgorrpsKz+JtSXMfvNHEV4ABVuLfEe+QFUgWBRhgJctN8T6TWYFWAda5Jx+P/9z3Z8BQIVvsAuzIkgUGAR5KufP7YEnLhO6phcWRCatVhpyWBZkAlsUqdBFVAnVNVBnUPE5oInIrXVQMtDjSoFPlQU8dAs5q+Jx18Pnc8Ltd0E0qNGgVfwiMSVR10GIBLMHoLlNxA5Ip4BhVHtS1ADxuF+qcLqyqUvHK10vh8xO8ouixYIXB/gMOxPp1qwQ0a6mRL5aoNEh+XHFqNP+AAQOgazqOPf43+N9rr8RpJZ42GRRggJUMt8R7ZAWSQ4FkBFikbDgphYGdTqw+6z/JcRG8y6RRgAFW0lwVb5QVSHgFGGAl/BXxBruAAi0CLIJE115yLh658XKR4idROp9EpudmMPNOlmEobmHYLgmvq2xY7RQxZYdEoEm2CUN2MnY3Aj7o7loYFgc0rxugtELJKubQvW74PU54qnfCV1cDj+ITqYJUdZAiqwiGNfwt07wilZHGSsKEnYzc9YAPmhqAP6BBMWVMmrUEyzfuws46z74rImh00MHD8MvyJa0CLLsjDdlZOaiu3hPX6x00aJAwnu/Tpz9mzPgsrmvx5ImtAAOsxL4f3h0rkEwKJCvAatC4pZRC3e3HptuncfRVMj2MSbJXBlhJclG8TVYgCRRggJUEl8RbTHoFWgRYsiThwdvG4w9nHQ+LrgovKhG5JMASQaQguBJRUloAUlq6iM6SHVnBtEH6HwUyBRTofh90vyLM0glmmeQ1ZRrCB0vTNPjqKuGtr4WrrgaK1wOV0gIpAspiFQBLeGqZpojEEqbxlLZIKYUUiWUaAgSpqh+w2KGowN3vzobbG8Dueq/YBzUCWEMPPQzLli5uFWBlZecgJzsXO3Zsjdvl2mw2kUKYn1+Inbt2YNPGTXH33YrbYXjiqBVggBW1hDwBK8AK7FUg2QEWHSNzRE8UjTsMucf3F6eqn1OB3ZPmQ1lTyffMCsRcAQZYMZeUJ2QFUlYBBlgpe/V88A5UoOUILADv/PtBHHdwX1hlKiLoENBIIl8qwi0Erag6oCSJdEF6nYATRV5R9BYBKDJ7131u6AEFhkE2WipgtYr/FhFTrjoEvF74nDXwuOqh+FX4FS9UGqdpAEV32RywWK3CY4vWozlpAxZrmvhvivASf8sW+HUDTrcXt77+FSyShBqPT0C0BoA1YOCB2LhhnQBeoRpBrl69+2LXzh1iD/FotEZxcTEyMtJxxBFHYerUd1rcTzzW5zkTTwEGWIl3J7wjViBZFegKACtZted9J6cCDLCS895416xAIirAACsRb4X31NUUaCWFEPhh6iT0KcyErAcg2zIgWy1BiCWM13Vh2C6TvxRMWOwZIn2wARhRdUICVqZhQlc8MCVJ+F1RbFagvhaqronUQcVZD5/XDUXxQ/G6oaoqDIqskqjyYDBt0UKBX3sN262ODAHQqOKgyGUkFkWG8iagBBSUHzAUZ939NDTDhMevNrmvtLR09BswCCuWLwlCtv2aw5EGglyUZhjq9VhcvtVqRXl5uTjnscedgLfe/F8spuU5klgBBlhJfHm8dVYgwRRggJVgF8LbSXgFGGAl/BXxBlmBpFGAAVbSXBVvNIkVaBFgZaSnYeWnbyBT1iEbBKJ0yPY0iNp/ph70xLLYIIs/VvEaRUGJioUmYAQCwpvKMCEAli4qDXpgQIaq+OD3uuGtr4GieOH1eOH3eREg/ytdF3BKpiqGFHnlSIPFYgVVBzQIhlF0lq4HvbfIE4v2FgjAnpYGS0YOisv74uqHX8LabXuC0Iv20uiUxSXdxNjdu7YHr00QNwlpGRno0aPX3ggtPS5XSlCspKRERHeNPvIYLF36E7ZtjV+qYlwOwZPGXAEGWDGXlCdkBVJWAQZYKXv1fPB2KsAAq53C8TBWgBVopgADLH4oWIH4K9AiwCopLMCqz16H6a7bB6wIVpF5OvlSmboB2WoX8IpisMgjC1Y7DPK7Cvihqz4RpUVRV1QhUFQbVANQvE6RNhjweeDzeODxeuBXFAQIYFH0FZmyGwSwbLDthVcWqwWQLMJDS/zRCGBRlqIGm8WCrLxCWNIyBNzK79Ybf3rqVays2Cq8tKjaIUVjEUhraJSSSKmOlI5I6Y9Z2dmwyjJq4mjcTvAqNzdXeH717z8A3ct64LNPp8f/hnmFhFeAAVbCXxFvkBVIGgUYYCXNVfFGE0QBBlgJchG8DVagCyjAAKsLXCIfIeEVaBFgDe7fB3NemwhQpUFTh5yWJYzQCcRY7GkCVFkcaZBtaZAJXlGElOYHkSLN54JOBu1G0KjdNCX4XTUIKIqIvlIDChSvC4pfg8fjhuLxIkC+WJoKXSfzdhlWm01EX1ntaXtN1yUYlDZIBu8wYZMlpGflwGq1QaKKhABy8gthyS7EHx5+Adsra+AhDywAmmlCM4JpiE3bXqN502zV2D3aWyTN7Ha78LoaOvRQdC/rienTPhR6cmMFGGDxM8AKsAKxUoABVqyU5HlSRQEGWKly03xOViD+CjDAir/G/9/emUDJUZVR+HZXVW8zmSxsIUQjm4ggAioiCoKoiAubqICK4oIgrqDIIoobKLiACiiCiiAoi4AiGI+i4IIogghEDSRAgOyZzPT0UtVV3e25f6fmdCY9W2YSZnru05wk01Wv6n1Vc3Lm4/7/0xVEYFCBdeDL98bPzz8ViYpvwoqyhSmneo07D3qNEj6KHwokl7sDOuz0jqjQg0rvaqvMs2bsFR9hEKBWjRAW+9Cz4ilUEw6CchnlwEelUoXPkkL7cxkJzgv6MBdO0oGbajRxTzoOXDcFL5VCKpNFlc3b6yE8LwU3nUXKTWLGnB1QKvk4/KyLgBrn9RGGkfXUqlTZLqshrFq0vxrTmzBwzlj0xZOy7xVLB1+x3/5YsWIF7r7rzjFdTye3FwEJrPZ6nlqNCDybBCSwnk36uvZkJCCBNRmfmu5ZBCYmAQmsiflcdFftRaClwKLgOemYw3HuicdY+spxHCvPa/S7YjlfEkmmr9jCnTLLy1rD9qjUh1o1RKXQi1q1hgrTV9XQJFK5ewUqlcYug365DD/wEZR9VMIqyj57ZdURVatWJOik0o3ywVSjv5bnekhnc40dB8GeXBFSndPhuB48JrRqYaMMcPpsLF68CKdecSu8ZBIOm81TpNVqqLIXFhKWILP+XabJElaKmEgkrRF94+9sHL/uOHvWCfu/ZaXWJaYaAqzRBL5x1jopxsbzqCOZcJBOpzFjxgzbcXCb2XOw6LFHMX/+7QiCoL3eIK1mzAQksMaMUBOIgAisIyCBpVdBBEZHQAJrdLx0tAiIwOAEJLD0dojApicwqMD67jmfwFv33wtOog7UEyau6myu7nKnwTrc7DRLZrGROyNNLBsMSwXTOX73StTdFMJSEZVyAVEYISgXUcqvhV/2rXF7uVREGNUQVioIqzWEbFJVq9rOg2x55WYycL20lRJSKjmomZDKZHPwcp1IWvrLgZeoIe3U0Tl3VwSVCL++8y78Y/EK270wk2IJoodqrY5SqYySHyDn1DA9lYTDHlupRqIr2zUDi7p9LHxiiaW+bJfFes2axbNnFWUcyxe5biv7iyNX64QWe3ZVeRx7d/FeHdesVj7fi0Jfn83DzzREoBUBCSy9FyIgAuNFQAJrvEhqnqlCQAJrqjxprVMENj0BCaxNz1hXEIGWAosS5u6rL8aOW7G5ecL6XDFZZUmjZCOF5XZMt50JE14WSDoIupeiVvYR1SJEQQWhX7Jm7EGxD+W+HgR+2ZJXbNxeqQSNssFKaKmoMAwRRlUr7Ut6Djxr4J6F47B3VAYef+cug5Zu4p874KRcuLXQhFZ2y7moJxysWbEMTy95GqVygARLHet1pDo6rTF8uZDHooULke/rw8xZM+FlO+Blc+ic1oWObefhtG9fhWLZV18qfU9sdgISWJsduS4oAm1LQAKrbR+tFraJCEhgbSKwmlYEpiABCawp+NC15M1OoKXA2mrWTDxw46VwK2U4Xorb/VmZHcv8WNLndswwiUWxhVrN+lv5q58xYRX63G0wQKXYB79cQlSNUOxeiSjhophfi9CPUA4osSoIowgR000MJzUq9ZBwEnCTgJfJIJXOWOlgin2wkhRXOTgOE04JeLUKMtOmIztztiWk/EIe3WvzWP70U4jYsT2KkMp2WALLSaUQlksoFvJ45OEF1vg925GD19mFmVtvg9//dyluuevezQ5fFxQBEph+yC7Y6ti9BUMEREAExkxg0Uk3oO5HY55HE4jAVCHQdeCO2Pq9+0yV5WqdIiACm5DA4lNuQq1Y2YRX0NQiIAIbCCx+Yd89X4ibLjwDiSiwFJOb7UJY6oGbbfSdcjIdSKSyJrbYBCryiyivWYZqtY5K4CMsF1Aps8dVySRVsXcN/CBsNGoPWELIpFajL1UUhv0VeS6TXVbW59rvrufCdR3rwZXy0o1ElusglU4h17UF0p0zUK9XUQ18lIslE1jdy5ehXmW5XxWpdA7pXM52M+QOh0yBFdb24KEFC9DZ2YmOmVtgi3k74Kwrb0Z3nuWPGiKw+QnkXrQt5px24Oa/sK4oAiLQVgSq5Qoe//BNrbbcbat1ajEiMJ4EMrtujbmfOXg8p9RcIiACU5BArVrF4hNvgP2AqyECIrDJCLRMYJ187OE454QjgXLBdh5kg3bHyyCZylrfK/bBYvN2sLdTImG9r5i4Cgp5lPNrUK0BFT9AiaWDlQCB7yPwAxT7eq1Ru18JUK3WwKAU2ETdmqcnkHYprjw4TGClG72vuIMfxZbnpU1sZXIdyE2baYKLrdc5oipQzPchrNbx9KMLwBtgyoqJrUxHJ5Keh3otMpnG+1q9aiUWP/UMtt1+Z9z28FP44/0PbzLAmlgEhiOQ7Ehh+0uOWrexwHBH63MREAERaE2g794nseKyvwqPCIjAKAjo3+BRwNKhIiACgxIoPbQUS79xlwiJgAhsYgItE1hXnX86Dtp9eySqFbheFk52mvW7sqbt6yRW3ZqbRwiLfdboPGKJXvcK7hEInzKrUkG5txtlJrJY4lcsIggrtiMhd+JjAosliex7xebsrpUGJi1d5blJ28WPaS/KK8dzrRdWJtcJh43bTXSlrOF63XEQBhFqUQ09vb1YtWgBEknXdid0kx5SuawlsCixqtXIdkL0wwiLn1iCnvQMfOv6O6z/loYIPJsEtv7gvuh65fbP5i3o2iIgApOYAHfSfepz81FZsnYSr0K3LgLPDoGt3vNSTD9o52fn4rqqCIjApCegf4Mn/SPUAiYRgQ0Elue5+Me1F2HLnNdomu5S/qTAmgSvcwtLMiXTHahXqwhLfYiCAEHfWoRB0CgP7MuD3TeKvWvh+wHKpT5UeIzvoxKGlsAKwqrJpFq9imSC4oplgmzY7jUauDtJeK4D10kg3dGBTK7LJFZj50EPqXTajnNTaTbNAmp1BGUfa9esQVDoRd+q5Uh1dMFzPKRYkpjJ2hrqiTqiWt36cYVuGsefdzkKpfIkely61XYlwP8CvN3pByE9b1a7LlHrEgER2IQEVl33T/TOX7gJr6CpRaB9CSTSDuae9Vr9G9y+j1grE4FNSqD7lofQfYsqejYpZE0uAusIrCewmIbaY5edMP+yL6HuF6xBu5PttAbugAM322Hd1hNuCpFfMllUjarwC70o53sQVQJrzl5m76swst/9Usl6T5XKRdspkDsQ2u6DtQiMX1FeeZa0orRKIpVNI5NpNG6nTEs6jYSW47rw3DQ8yqt0xn5nfy4KrXoVKPR0I6hESNRChMUiCquWw83kkOZug17KGrnXHMfKkutuGslZs/GGU85Btar0lb4bJgaBRMbFth99FXK7bTsxbkh3IQIiMOEJsOfGyivuReGeJyf8veoGRWBCE0g5mH3yfujca+6Evk3dnAiIwMQhwH+DV19zP/J/eGzi3JTuRATanMAGCawT33EYzn3f4UCVnamqcNKUVkDSScHJdKKeYBYrgSgo285+pe6VCMoF1OGi1NsNn2IrCOH7BQR+xcoGy6Ui/KDS6HsVNVJY7F7FnQzZqN1LwkoFrWG7lQiu+0VR5bGBe8p2JOTnXqbDygNRD5FKsydXB0r5taiGVZTLZWRzWVTLPsKgjOKqZUjlpsFL52w3xRpqoK5KZLqwNHJx/NkXoF5Xo702f8cn3fI69nkOZh22O9JzZ0y6e9cNi4AIbD4C+Xsex9pbH0G4vG/zXVRXEoE2J6B/g9v8AWt5IjBOBPr+sQTdN/1b/waPE09NIwIjJbCBwLr6gjPxmt13BKIK3Ow0a9Tu5Kahnkgi6bJkL4lqxUfQl0cYVez3cmEt6jUHZb+McrmAUr4XYRSiWCwirIQmsdh7qlqr2ddrNdNISDpJuCwFTAIp9rXyKLDchrBKufAyuUYqK5W2UkB+xsbuSUTomD4b9aSDKuVZDSgVC3CTSeS6ZqJS7GV4DNVKgFL3CqQ6ZyDpeCarqhRWHdNx75JunHnxlSPlpONEYLMTcLrScGZkkcyxhFdDBERABGC77NYKFYSrC0DInVA0REAENgWB5LQ03Jn6N3hTsNWcIjBZCejf4Mn65HTf7URgQAlhAg9cfwm2zDpWtpdIOKjXa3A6Z1mfqWSmE1GxB1WWAhbyCPp6EfglRExWVWso9fWixJ0IS0WUy8VGw3S/jDCsmrjiLoBWspdkuguWtqKYSq3rgeU4bL7uIplIWPIq0zkNKZYNspQwWYObqCM7bQu4LGushmBsM+m4iIIQZd/HrJkzUK/VAUqypGtN4oPuFYjCCpJeGnU3xWUA2Q5c9pu/4/r5dymB1U5vs9YiAiIgAiIgAiIgAiIgAiIgAiIgAiLQlgT6BRal0Z677ozbLjobCMq2kx/YeyqVA/8bLxNYjpe2FJXfsxphUIHf14OwWkUp3wM4KRTyPfBLBfgsLSyVUAkjE1eVoIKwXkcURqjWqgxxNcoFkwlLTXmUWJ6DZDKBdCrTKC1ct9sgv57yPKQyWaQ7p/OWTHBxF0Q3nbOkFRvH04jN2mpr1MPImr1bOotZrXIBUbEXYN+uWg3VhItk53Qcc+6lWLpytZUyaoiACIiACIiACIiACIiACIiACIiACIiACExcAuslsM468Z34yJEHox761qi9DjZvB5KZ6ahVSoCXscQSxVVQLMIv5q1EMKxGqFj5YKnR78r3bdfBMtNZUQ1BpWKle/xfNYpMYFFCsRyQSSvPdZFmKSHLCG33QdeauqfSKWSyWaQzObipFBKJxh2xKTsTVWwsH/plBOUyOjpySFuZYcrmqSGBWlixXQfD/BrUky6iOlBjeiwzDQef8oWJ+1R0ZyIgAiIgAiIgAiIgAiIgAiIgAiIgAiIgAv0E1hNYP7vwbByw+45IOC5qlcBSVXBcsG0UxRV7V9XhICjmbWfBoFhAua8HdcdDGIYo5LvhF0vwwxB+uYxKyP5XoX1Wq9WspK9ej5BgG/hkstG43XOt/xXlE/thMW1FgeWlPKTS7H3Fvzeau/Nm2cDdmrizkXwlsJLAWhQhl3bhoQ4v1wUnlUEt6aAWrCtvLOVNxjEtVnM8PO07OOaMr+k1EAEREAEREAEREAEREAEREAEREAEREAERmAQENmjiPgnuWbcoAiIgAiIgAiIgAiIgAiIgAiIgAiIgAiIwhQhIYE2hh62lioAIiIAIiIAIiIAIiIAIiIAIiIAIiMBkJCCBNRmfmu5ZBERABERABERABERABERABERABERABKYQAQmsKfSwtVQREAEREAEREAEREAEREAEREAEREAERmIwEJLAm41PTPYuACIiACIiACIiACIiACIiACIiACIjAFCIggTWFHraWKgIiIAIiIAIiIAIiIAIiIAIiIAIiIAKTkYAE1mR8arpnERABERABERABERABERABERABERABEZhCBCSwptDD1lJFQAREQAREQAREQAREQAREQAREQAREYDISkMCajE9N9ywCIiACIiACIiACIiACIiACIiACIiACU4iABNYUethaqgiIgAiIgAiIgAiIgAiIgAiIgAiIgAhMRgISWJPxqemeRUAEREAEREAEREAEREAEREAEREAERGAKEZDAmkIPW0sVAREQAREQAREQAREQAREQAREQAREQgclIQAJrMj41MRvb+wAAFAVJREFU3bMIiIAIiIAIiIAIiIAIiIAIiIAIiIAITCECElhT6GFrqSIgAiIgAiIgAiIgAiIgAiIgAiIgAiIwGQlIYE3Gp6Z7FgEREAEREAEREAEREAEREAEREAEREIEpREACawo9bC1VBERABERABERABERABERABKYKgRkzZuCII47AnnvuiZkzZ6Kvrw/3338/brzxRuTz+Q0w7LfffjjwwAMxb948ZDIZrFixAvfccw9+/etfo1Kp9B+/8847453vfOd654dhiNWrV+Ohhx7Cvffei2q1ut7ne+yxB4466ijwuK9//esIgmCD6x933HFwXRc/+clPRvWIXvayl+FVr3oVdtppJ0ybNs3WuXjxYtx111247777RjXXeBxMjq9//etx1VVX4fHHHx/xlBt73ogvMMSBZPeud73LjvjmN7+5wftx7rnnDnmZb3zjG8a91Yjfl6uvvhqLFi1qecxo508mk/auHnDAAXjOc54Dx3GwatUq/P3vf8evfvUr+L4/5P0Ot16evPvuu+NNb3oTdtxxR3svly5dij/+8Y/4/e9/j3q9vt78iUQChxxyCA466CDMnj3brr9w4UL88pe/xKOPPjoej8jmkMAaN5SaSAREQAREQAREQAREQAREQAREYCIQoDSgFMjlciaUli1bhrlz52KfffbBmjVr8JnPfMZ+4I/HRz7yEZMuFD+UABRNu+22G/bee2/72tlnn41isWiHUxidc845eOqpp/rnoECgSJg1a5Z9/fzzz8fTTz/dPz9lw6mnnmp/v/7663HNNddsgOlzn/scPM+zuUcyuJ5PfOITeO5zn2tSgfKsXC5jq622wktf+lJb63//+18TZpRrm2sceeSROOGEE2wdDz744Igvu7HnjfgCgxxIOXPxxRcbN4pL3jvfkXh0dHTguuuuMxkXvwMDp+Kzi6JogyvwPfz85z+Prq4uex8pUAeO0c7P++VclKJ//etf8e9//9uE6HbbbYfXve51KBQK9n63krS89nDr5THHHHMMKFT5LlPiUljxvd9hhx1sDV/+8pf718v5zjrrLHvneC//+9//kEql8PKXvxxbb721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LJ7DEkEKi0MOOWQ9YcJ7oXxgKSB3gGs1uF6WBXJtzU25maRho/WB/as4xwtf+EJr1E3Rx0Fp8s9//tN4NqfABoooJnkOPfRQOzfuw8Xz4+QZE0VMcE1UgcV7pZzkToSUURSOHBRaLL0kx+bkUSyYhvtmiJNvo52fx/M+2O+M7018P/w6ZRbl1Z133jnc5QdNYFEsNn/PtJqIz5ESLR58N1iWSwkbD94Ln+3AnRuHvbEhDpDAGgs9nSsCIiACIiACIiACIiACIiACIjChCTARwz5OlFHsGTXUoAxgA3imsljyNFQJ1kRaNFNQbJ5NqcR+V81CZbzvkzwp+cgm3gFvvK8xUefje8H1h2GI5cuXG+/xHKOdn0kwpp24+yTTduNRpjeW9TC1yHeRMre51HQsczafK4E1XiQ1jwiIgAiIgAiIgAiIgAiIgAiIgAiIwGYnwB0nRzKuu+66kRymYyYoAQmsCfpgdFsiIAIiIAIiIAIiIAIiIAIiIAIiIALDE5DAGp5ROxwhgdUOT1FrEAEREAEREAEREAEREAEREAEREAEREIE2JiCB1cYPV0sTAREQAREQAREQAREQAREQAREQAREQgXYgIIHVDk9RaxABERABERABERABERABERABERABERCBNiYggdXGD1dLEwEREAEREAEREAEREAEREAEREAEREIF2ICCB1Q5PUWsQAREQAREQAREQAREQAREQAREQAREQgTYmIIHVxg9XSxMBERABERABERABERABERABERABERCBdiAggdUOT1FrEAEREAEREAEREAEREAEREAEREAEREIE2JiCB1cYPV0sTAREQAREQAREQAREQAREQAREQAREQgXYgIIHVDk9RaxABERABERABERABERABERABERABERCBNiYggdXGD1dLEwEREAEREAEREAEREAEREAEREAEREIF2IPB/3GmxVM+HwKIAAAAASUVORK5CYII= "0")
基础介绍
ASP.NET Core MVC 采用 ASP.NET Core 作为基础，因此享有内建的相依注入能力 (Dependency Injection)，ASP.NET Core MVC 本身也是 ASP.NET Core 的服务之一，因此必须要在 ASP.NET Core 的起始类别中注册并使用 MVC，才可以享有 MVC 的功能。下列例子即为在一个 ASP.NET Core 的程式的起始类别 (通常被命名为 Startup) 中注册并启用 ASP.NET Core MVC 的程式码：
public void ConfigureServices(IServiceCollection services)
{
// 加入 ASP.NET Core MVC 服務
services.AddMvc();
}
public void Configure(IApplicationBuilder app, IHostingEnvironment env, ILoggerFactory loggerFactory)
{
// ...
// 啟用 ASP.NET Core MVC
app.UseMvc(routes =>
{
routes.MapRoute(
name: "default",
template: "{controller=Home}/{action=Index}/{id?}");
});
}
1234567891011121314151617
注册 ASP.NET Core MVC 服务后，ASP.NET Core 会自动将 MVC 的执行引擎加入 ASP.NET Core 的管线式相依注入 (Pipeline-based Dependency Injection) 的服务清单内，以开始提供 MVC 的相关服务。
路由
ASP.NET Core MVC 强化了 ASP.NET Routing 技术，使其更具弹性，除了原有的由起始类别加入的路由外，亦全面整合了之前在 ASP.NET MVC 5.2 / Web API 2.1 起支援的属性路由能力 (Attribute Routing)，这表示开发人员不一定需要在起始类别注册 MVC 时定义路由，只需要在 Controller 内加入路由设定即可，但官方还是建议至少加入预设路由 (default routes)，例如：
app.MapControllerRoute(
name: "default",
pattern: "{controller=Home}/{action=Index}/{id?}");
Controller
ASP.NET Core MVC 可同时支援 MVC 本身的功能以及 Web API 的功能，它们都源自相同的 Controller 基底类别，此类别已被重新实作，以支援一般的 View 以及 RESTful API 的回传值，微软亦重新定义了 ActionResult 类别，提出新的 IActionResult 界面，但开发人员不一定要回传 IActionResult 界面，也可以直接回传 .NET 内建的资料型态，Controller 会自动将它对应到 Content Result。虽然微软建议以 IActionResult 为传回型别，但原本的 ActionResult 型别仍然适用。
下列程式是一个标准的 ASP.NET Core MVC Controller 的实作，和 ASP.NET MVC 差异相当小。
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
namespace WebApplication18.Controllers
{
public class HomeController : Controller
{
public IActionResult Index()
{
return View();
}
public IActionResult About()
{
ViewData\["Message"] = "你的应用程序描述页。";
return View();
}
public IActionResult Contact()
{
ViewData\["Message"] = "你的相联页面。";
return View();
}
public IActionResult Error()
{
return View();
}
}
}
Model
在 ASP.NET MVC 中，Model 相对不设限，可以使用内置的数据结构以及自定义的资料类别，也可以是一个商业物件，因此 Model 的弹性相当大，除了前述的数据结构外，微软新发展的一些资料存取方式也可以应用在 Model 中，像是ADO.NET Entity Framework与LINQ to SQL等技术。
另外，MVC在服务端资料验证中，提供了ViewDataDictionary类别，这个类别中有一个ModelState属性，内含了ModelStateDictionary类别，开发人员可以利用这个类别来控制资料验证的结果，而View中输出验证消息的部分会和此类别有关系，例如下列的程序：
\[AcceptVerbs(HttpVerbs.Post)]
public ActionResult Create(Person person)
{
if (person.Name.Trim().Length == 0)
{
ModelState.AddModelError("Name", "姓名为必填项。");
}
if (person.Age < 1 || person.Age > 200)
{
ModelState.AddModelError("Age", "年龄必须在 1 到 200 之间。");
}
if ((person.Zipcode.Trim().Length > 0) && (!Regex.IsMatch(person.Zipcode, @"^\d{5}`$|^\d{5}-\d{4}$`")))
{
ModelState.AddModelError("Zipcode", "邮政编码无效。");
}
if (!Regex.IsMatch(person.Phone, @"(((\d{3}) ?)|(\d{3}-))?\d{3}-\d{4}"))
{
ModelState.AddModelError("Phone", "电话号码无效。");
}
if (!Regex.IsMatch(person.Email, @"^\[\w-.]+@(\[\w-]+.)+\[\w-]{2,4}\$"))
{
ModelState.AddModelError("Email", "电子邮件格式无效。");
}
if (!ModelState.IsValid)
{
return View("Create", person);
}
people.Add(person);
return RedirectToAction("Index");
}
在 ASP.NET MVC 2.0 中，新增了一个可以直接让 MVC Framework 针对资料字段进行验证控制的模型，称为 Model Validation，它融合了在 .NET Framework 3.5 SP1 发表的 ASP.NET Dynamic Data Framework 中 Data Annotations (资料记号) 的特性，让开发人员可以只利用标记的方式来执行验证，或是利用自定义的代码来扩展资料记号的验证行为。
using System.ComponentModel.DataAnnotations;\
namespace MvcDA {
\[MetadataType(typeof(ProductMD))]
public partial class Product {
public class ProductMD {
\[StringLength(50),Required]
public object Name { get; set; }
\[StringLength(15)]
public object Color { get; set; }
\[Range(0, 9999)]
public object Weight { get; set; }
}
}
}
View
由于View是直接呈现给用户，因此与用户交互的部分都要由此层处理，包含资料的输出以及以客户端操作为主的回应（例如脚本）等。
HTML 工具类别
HTML工具类别在View中是很重要的输出工具，它内置了辅助产生HTML标签的工具方法，多数的HTML语法都可以利用它来产生，包含像链接()、窗体()以及窗体控件等等。HTML工具是以HtmlHelper类别为核心，并配合System.Web.Mvc.Html命名空间的方法，以延伸方法(Extension Method)的方式，让产生HTML的程序就有如调用方法般简单： <h2>Index</h2> <table> <tr> <th></th> <th>
Id </th> <th>
Name </th> </tr>
<% foreach (var person in Model) { %> <tr> <td>
<%= Html.ActionLink("Details", "Details", person )%> </td> <td>
<%= Html.Encode(person.Id) %> </td> <td>
<%= Html.Encode(person.Name) %> </td> </tr>
<% } %> </table> <p>
<%= Html.ActionLink("Create New", "Create") %> </p>
资料验证
View的HTML工具可以配合Model处理资料验证的结果，在ASP.NET中常用的ValidationSummary在这里也支持，而且MVC的架构让验证信息的输出也更加弹性： <h2>Create</h2>
<%= Html.ValidationSummary("Create was unsuccessful. Please correct the errors and try again.") %>
<% using (Html.BeginForm()) {> \<fieldset> \<legend>Fields\</legend> <p> \<label for="Name">Name:\</label>
<%= Html.TextBox("Name") %> Required
<%= Html.ValidationMessage("Name", "*") %> </p> <p> \<label for="Age">Age:\</label>
<%= Html.TextBox("Age") %> Required
<%= Html.ValidationMessage("Age", "*") %> </p> <p> \<label for="Street">Street:\</label>
<%= Html.TextBox("Street") %>
<%= Html.ValidationMessage("Street", "*") %> </p> <p> \<label for="City">City:\</label>
<%= Html.TextBox("City") %>
<%= Html.ValidationMessage("City", "*") %> </p> <p> \<label for="State">State:\</label>
<%= Html.TextBox("State") %>
<%= Html.ValidationMessage("State", "*") %> </p> <p> \<label for="Zipcode">Zipcode:\</label>
<%= Html.TextBox("Zipcode") %>
<%= Html.ValidationMessage("Zipcode", "*") %> </p> <p> \<label for="Phone">Phone:\</label>
<%= Html.TextBox("Phone") %> Required
<%= Html.ValidationMessage("Phone", "*") %> </p> <p> \<label for="Email">Email:\</label>
<%= Html.TextBox("Email") %> Required
<%= Html.ValidationMessage("Email", "*") %> </p> <p> \<input type="submit" value="Create" /> </p> \</fieldset>
 } > <div>
<%=Html.ActionLink("Back to List", "Index") %> </div>
不同类型的输出
每一个Controller中负责回应的方法，都会回传一个ActionResult物件的信息，ActionResult是一个执行结果物件的封装体，当MvcHandler执行完指令接到ActionResult时，就会依照它的内容来输出资料。目前MVC Framework支持的ActionResult有下列几种：

* ViewResult物件，这个物件内装载了IView接口的信息，以及IViewEngine的信息，实际产生输出资料的会是
* PartialViewResult物件，与ViewResult相似，但它回传的是"部分展示"，即用户控件的View。
* ContentResult物件，装载由用户自定义的 Content-Type 以及资料。
* EmptyResult物件，表示不回传任何东西。
* HttpUnauthorizedReuslt物件，表示动作没有被授权（即 HTTP 401）的错误消息。
* JavaScriptResult物件，表示回传的是JavaScript脚本。
* JsonResult物件，表示回传的是JSON资料。
* FileResult物件，表示回传的是一个文件资料。
* RedirectResult物件，表示回传的是一个重导向 (HTTP Redirect) 指令。
* RedirectToRouteResult物件，与 RedirectResult 类似，但是它是重导向给一个 Route 的路径。
    透过多类型的ActionResult，开发人员可以自由决定要回传的资料的类型与格式。

# WebapiA

# WCF WebService

## WCF简介

> WCF顾明思义，就是在Windows平台下解决通信（C,Communication）的基础框架（F,Foundation）问题。
> SOA 面向服务（Service Orientation，SO）。服务的自治原则要求单个服务在底层逻辑控制方面尽可能是独立和自包含的，服务尽可能不依赖于访问它的客户端和其他服务。服务可以独立地进行部署及实施版本策略和安全策略。
> SOA采用基于消息的通信方式。SOA采用XML，XSD及WSDL作为服务描述的“语言”。
> SOA支持跨平台
> SOA鼓励创建可组合的服务
> SOA鼓励服务的复用
> SOA强调松耦合

## 地址

> 终结点是WCF最为核心的对象，因为它承载了所有通信功能。服务通过相应的终结点发布出来，客户端通过与之匹配的终结点对服务进行调用。终结点由代表地址、绑定和契约的ABC三要素构成。 作为终结点的三要素之一的地址（Address）、在基于WCF的通信中不仅仅用于定位服务，还提供额外的寻址信息。除此之外，终结点还和安全有关系，因为它包含着用于进行服务认证的服务身份信息。
> 统一资源（URI）\:Uniform Resource Identifier结构：传输协议://\[主机名称|域名|IP地址]:\[可选端口]/\[资源路径]
> HTTP/HTTPS
> HTTP全称为HyperText Transfer Protocol（超文本传输协议）,是建立在TCP/IP簇上的应用层协议。
> HTTPS全称为HyperText Transfer Protocol over Secure Socket Layer(安全超文本传输协议)，它是采用了SSL（Secure Socket Layer）的HTTP，而SSL是一个进行数据加密的协议，很多安全性要求较高的网站都采用HTTPS。
> Net.TCP
> TCP全称为Transport Control Protocol（传输控制协议）,在整个TCP/IP簇中处于核心地位。
> Net.Pipe
> 命名管道（Named Pipes）是Windows平台及UNIX系统下实现跨进程通信（Inter Process Communication，IPC）的标准实现方式。
> Net.Msmq
> 消息队列（Message Queuing，也称MSMQ），是微软对消息服务领域的开创性尝试。

## 绑定

> 绑定是预先配置好的信道栈，它代表了服务器与客户端之间的通信约定，每个绑定都会指定了通信所应用到的传输协调、编码等属性。在Framework3.5中已经包含basicHttpBinding、wsHttpBinding、wsDualHttpBinding、webHttpBinding、netTcpBinding、netNamedPipeBinding、netMsmqBinding、netPeerTcpBinding、msmqIntegrationBinding、wsFedrationHttpBinding、ws2007HttpBinding、ws2007FederationHttpBinding等多种绑定。
> 绑定类名称	传输	编码	消息版本	安全模式	可靠性会话	事务流
> BasicHttpBinding	HTTP	文本	SOAP 1.1	无	不支持	不支持
> WSHttpBinding	HTTP	文本	SOAP 1.2 WS-Addressing 1.0	消息	禁用	WS-AtomicTransactions
> WSDualHttpBinding	HTTP	文本	SOAP 1.2 WS-Addressing 1.0	消息	启用	WS-AtomicTransactions
> WSFederationHttpBinding	HTTP	文本	SOAP 1.2 WS-Addressing 1.0	消息	禁用	WS-AtomicTransactions
> NetTcpBinding	TCP	二进制	SOAP 1.2	传输	禁用	OleTransactions
> NetPeerTcpBinding	P2P	二进制	SOAP 1.2	传输	不支持	不支持
> NetNamedPipesBinding	命名管道	二进制	SOAP 1.2	传输	不支持	OleTransactions
> NetMsmqBinding	MSMQ	二进制	SOAP 1.2	消息	不支持	不支持
> MsmqIntegrationBinding	MSMQ	不支持	不支持	传输	不支持	不支持
> CustomBinding	自定义　	自定义　	自定义	自定义　　	自定义	自定义
> WCF内置的绑定。g功能简介
> 绑定 描述
> BasicHttpBinding 适用于与符合 WS-Basic Profile 的 Web 服务（例如基于 ASP.NET Web 服务 (ASMX) 的服务）进行的通信。此绑定使用 HTTP/HTTPS 作为传输协议，并使用文本/XML 作为默认的消息编码
> BasicHttpContextBinding BasicHttpBinding的扩展，支持并使用HTTP Cookies来存储和传输上下文消息。
> WS2007HttpBinding 一个安全且可互操作的绑定，可为 Security, ReliableSession 的正确版本和 TransactionFlow 绑定元素提供支持。关于细节，将在第七章中介绍。
> WSHttpBinding 一个安全且可互操作的绑定，适合于非双工服务约
> WSHttpContextBinding WSHttpBinding的扩展，实现了通过SOAP消息的头部信息来收发上下文消息。
> WSDualHttpBinding 一个安全且可互操作的绑定，适用于双工服务协定或通过 SOAP 媒介进行的通信
> WebHttpBinding 可用于为通过 HTTP 请求（而不是 SOAP 消息）公开的 WCF Web 服务配置终结点
> WS2007FederationHttpBinding 一个安全且可互操作的绑定，它派生自 WS2007HttpBinding 并支持联合安全性。
> WSFederationHttpBinding 一个安全且可互操作的绑定，支持 WS 联合协议并使联合中的组织可以高效地对用户进行身份验证和授权。
> NetTcpBinding 一个安全且经过优化的绑定，适用于 WCF 应用程序之间跨计算机的通信
> NetTcpContextBinding NetTcpBinding的扩展，实现了通过SOAP消息的头部信息来收发上下文消息。
> NetNamePipeBinding 一个安全、可靠且经过优化的绑定，适用于 WCF 应用程序之间计算机上的通信
> NetMsmqBinding 一个排队绑定，适用于 WCF 应用程序之间的跨计算机的通信
> MsmqIntegrationBinding 适用于 WCF 应用程序和现有消息队列（也称为 MSMQ）应用程序之间跨计算机的通信
> 自定义绑定元素
> 当预定义的绑定无法满足用户需求时，可以使用CustomBinding类开发自定义绑定，该类存在于System.ServiceModel.Channels命名空间。用户可以根据需要绑定以下属性： 事务（TransactionFlowBindingElement类）、可靠性会话（ReliableSessionBindingElement 类）、安全（ SecurityBindingElement 类）、流安全、单工双工工作模式、信息编码、传输绑定等，其中信息编码和传输绑定元素是自定义绑定的必要属性，其他属性用户可根据需求制定。
> 传输绑定元素(必要），用户可选其中一种传输绑定模式。
> 传输信道	传输绑定元素	绑定扩展	配置元素
> TCP传输信道	TcpTransportBindingElement	TcpTransportElement	\<tcpTransport>
> HTTP传输信道	HttpTransportionBindingElement　　	HttpTransportElement　　	\<httpTransport>
> HTTPS传输信道	HttpTransportationBindingElement	HttpTransportElement	\<httpTransport>
> MSMQ传输信道	MSMQTransportBindingElement	MSMQTransportElement	\<msmqTransport>
> MSMQ集成传输信道	MSMQIntegrationBindingElement　　	MSMQIntegrationBindingElement	\<msmqIntegration>
> 命名管道传输信道	NamedPipeTransportBindingElement	NamedPipeTransportElement　　	\<namedPipeTransport>
> P2P传输信道　	PeerTransportBindingElement	PeerTransportElement	\<peerTransport>
> UDP传输信道	UdpTransportBindingElement	UdpTransportElement	\<udpTransport>
> 信息编码（必要），用户可以选择其中一种信息编码形式
> 1.TextMessageEncodingBindingElement，文本编码
> 2.BinaryMessageEncodingBindingElement，二进制编码
> 3.MtomMessageEncodingBindingElement，MOTM编码
> 流安全绑定元素（可选），用户可以选择其中一种安全绑定形式
> 1.SslStreamSecurityBindingElement，SSL安全模式
> 2.WindowsStreamSecurityBindingElement，Window安全模式
> 通信传输（可选），用户可以选择单工或双工其中一种模式
> 1.CompositeDuplexBindingElement，双工传输模式
> 2.OneWayBindingElement，单工传输模式

## 契约

> 一个正常的服务调用要求客户端和服务端对服务操作有一致的理解，WCF通过服务契约对服务操作进行抽象，以一种与平台无关的，能够被不同的厂商理解的方式对服务进行描述。同理，客户端和服务端进行有效的数据交换，同样要求交换双方对交换数据的结构达成共识，WCF通过数据契约来对交换的数据进行描述。与数据契约的定义相匹配，WCF采用新的序列化器——数据契约序列化器（DataContractSerializer）进行基于数据契约的序列化于反序列化操作。
> 服务契约
> 数据契约
> 序列化器

## 序列化

## 消息

> 消息交换是WCF进行通信的唯一手段，通过方法调用（Method Call）形式体现的服务访问需要转化成具体的消息，并通过相应的编码（Encoding）才能通过传输通道发送到服务端；服务操作执行的结果也只能以消息的形式才能被正常地返回到客户端。所以，消息在整个WCF体系结构中处于一个核心的地位，WCF可以看成是一个消息处理的管道。

## 服务寄宿 SelfHost

> 使用WAS寄宿WCF服务
> 在应用程序中寄宿WCF服务 ServiceHost ServiceHost对象的初始化过程：
> ServieHost(Type serviceTpye, Uri\[]baseAddresses) 实例化 ServiceHost
> \--> InitializeDescription(serviceType, new UriSchemekeyedCollection(baseaddressessed))Initializes a description of the service hosted based on its type and specified base addresses根据服务的类型和基本地址，实例化Servicehost
> \---->base.InitializeDescription(baseAddresses); Creates and initializes the service host with the contract and service descriptions 创建和实例化ServieHost，并指定服务契约和服务描述
> \------>CreateDescription(out dictionary);创建Servicehost的描述
> \------>ApplyConfiguration();从配置文件中加载服务描述信息，并应用到在WCF运行时已经创建的ServiceHost对象
> ServiceHost提供了一些事件，以供追踪ServieHost对象的状态。下表列出了这些事件：
> 事件 描述
> Opening当通信对象转换到正在打开状态时发生
> Opened当通信对象转换到已打开状态时发生
> Closing当通信对象转换到正在关闭状态时发生
> Closed当通信对象转换到已关闭状态时发生
> Faulted在通信对象转换到出错状态时发生
> UnknownMessageReceived 接收未知消息时发生

## 客户端

> WCF通信机制由它自身复杂的体系结构所决定，但WCF服务给我们提供了两种不同的机制来创建客户端程序调用，一种是ClientBase\<TChannel>类，另一种ChannelFactory\<TChannel> 类。
> ClientBase\<TChannel>：创建客户端代理类的基类，客户端代理类通过继承该基类，调用WCF的内部通信机制来实现WCF客户端与服务端的通信。代理类是一个公开单个CLR接口来表示服务契约的CLR类，代理类和服务契约很相似，但是他有着附加的方法来管理代理的生命周期和连接服务。通过visual studio 右键添加服务引用和通过svcutil.exe命令行工具生成的客户端都属于这种方式。(如果不熟悉svcutil.exe，请参照WCF初探-1：认识WCF)
> ChannelFactory\<TChannel>：使用通道工厂类取决于你是否拥有描述服务契约的本地接口。最大的好处是你可以已扩展的方式更容易的修改通道的通信机制，如果你需要共享服务和客户端之间的契约组件，那么使用ChannelFactory\<TChannel>可以更有效的节省时间，但客户端必须完成对服务契约组件的引用。
> ClientBase\<TChannel>和ChannelFactory\<TChannel>的差异：

## 实例化与会话

## REST服务

## 异常处理

## 元数据

## 事务

> 通过服务契约决定事物流转（Transaction Flow）的策略；
> 通过绑定实施事务的流转；
> 通过服务行为控制事务的相关行为。
> 分布式事务

## 并发与限流

## 可靠会话

## 队列服务

## 传输安全

## 扩展

# .Net Core

## Router

### property router

> \[Route("app/\[controller]/actions/\[action]/{id\:weekday?}")]

### 设置路由中间件

    app.UseMvc(routes =>
    {
      routes.MapRoute(
        name: "default",
        template: "{controller=Home}/{action=Index}/{id?}");
    });

> 常规路由：routes.MapRoute(name: "default",template: "{controller=Home}/{action=Index}/{id?}"); 这是一个常规路由

### 多路由

    app.UseMvc(routes =>
    {
      routes.MapRoute("blog", "blog/{*article}",
        defaults: new { Controller = "Blog", Action = "Index" });
      routes.MapRoute(
        name: "default",
        template: "{controller=Home}/{action=Index}/{id?}");
    });

### 高级路由

    app.UseMvc(routes => {
      routes.MapRoute(
        name: "areas",
        template: "{area:exists}/{controller=Home}/{action=Index}");
      routes.Routes.Add(new LegacyRoute(
        routes.DefaultHandler,
        "/articles/Windows_3.1_Overview.html",
        "/old/.NET_1.0_Class_Library"));
      routes.MapRoute(
        name: "default",
        template: "{controller=Home}/{action=Index}/{id?}");
      routes.MapRoute(
        name: "out",
        template: "outbound/{controller=Home}/{action=Index}");
    });

## Session

    using System;
    using Microsoft.AspNetCore.Http;
    using Microsoft.Extensions.DependencyInjection;
    using Newtonsoft.Json;
    using SportsStore.Infrastructure;
    namespace SportsStore.Models
    {
      public class SessionCart : Cart
      {
        public static Cart GetCart(IServiceProvider services)
        {
          ISession session = services.GetRequiredService<IHttpContextAccessor>()?
            .HttpContext.Session;
          SessionCart cart = session?.GetJson<SessionCart>("Cart")
            ?? new SessionCart();
          cart.Session = session;
          return cart;
        }
        [JsonIgnore]
        public ISession Session { get; set; }
        public override void AddItem(Product product, int quantity)
        {
          base.AddItem(product, quantity);
          Session.SetJson("Cart", this);
        }
        public override void RemoveLine(Product product)
        {
          base.RemoveLine(product);
          Session.SetJson("Cart", this);
        }
        public override void Clear()
        {
          base.Clear();
          Session.Remove("Cart");
        }
      }
    }

## DI

> services.AddSingleton\<IRepository, MemoryRepository>(); 单实例
> services.AddTransient\<IModelStorage, DictionaryStorage>(); 每一次获取的对象都不是同一个
> services.AddScoped 请求开始-请求结束 在这次请求中获取的对象都是同一个；不用申明静态类；

## Filters

子类Controller拦截器要先于父类Controller拦截器执行

> 最先执行的是全局声明的MyActionOneAttribute拦截器
> 然后执行的是声明在子Controller类HomeController上的MyActionThreeAttribute拦截器
> 接着执行的是声明在父Controller类BaseController上的MyActionTwoAttribute拦截器
> 最后执行的是声明在子Controller类HomeController的Index方法上的MyActionFourAttribute拦截器

    public class MyFilterAttribute : ResultFilterAttribute {
      private string message;
      public MyFilterAttribute(string msg) {
        message = msg;
      }
      public override void OnResultExecuting(ResultExecutingContext context) {
        WriteMessage(context, $"<div>Before Result:{message}</div>");
      }
      public override void OnResultExecuted(ResultExecutedContext context) {
        WriteMessage(context, $"<div>After Result:{message}</div>");
      }
      private void WriteMessage(FilterContext context, string msg) {
        byte[] bytes = Encoding.ASCII
          .GetBytes($"<div>{msg}</div>");
        // Synchronous operations are disallowed. Call WriteAsync or set AllowSynchronousIO to true instead.
        context.HttpContext.Response
          .Body.WriteAsync(bytes, 0, bytes.Length);
      }
    }

> Usage:

      [MyFilter("This is the Controller-Scoped Filter", Order = 10)]
      public class HomeController : Controller {
        [MyFilter("This is the First Action-Scoped Filter", Order = 1)]
        [MyFilter("This is the Second Action-Scoped Filter", Order = -1)]
        public ViewResult Index() => View("Message",
          "This is the Index action on the Home controller");
      }

### 授权过滤器 AuthorizeAttribute

     public class HttpsOnlyAttribute : Attribute, IAuthorizationFilter {
        public void OnAuthorization(AuthorizationFilterContext context) {
          if (!context.HttpContext.Request.IsHttps) {
            context.Result =
              new StatusCodeResult(StatusCodes.Status403Forbidden);
          }
        }
      }

### 资源过滤器 IResourceFilter

    public class CustomerResourceFilterAttribute : Attribute, IResourceFilter
      {
        private static Dictionary<string,object> cacheDic=new Dictionary<string, object>();
        public void OnResourceExecuting(ResourceExecutingContext context)
        {
          var path=context.HttpContext.Request.Path; 
          if (cacheDic.ContainsKey(path))
          {
            context.Result = (IActionResult)cacheDic[path];
          }
          Console.WriteLine("CustomerResourceFilterAttribute.OnResourceExecuting");
        }
        public void OnResourceExecuted(ResourceExecutedContext context)
        {
          var path = context.HttpContext.Request.Path;
          cacheDic[path] = context.Result;
          Console.WriteLine("CustomerResourceFilterAttribute.OnResourceExecuted");
        }
     
         
      }

### 异常过滤器 IExceptionFilter

    public class RangeExceptionAttribute : ExceptionFilterAttribute {
        public override void OnException(ExceptionContext context) {
          if (context.Exception is ArgumentOutOfRangeException) {
            context.Result = new ViewResult() {
              ViewName = "Message",
              ViewData = new ViewDataDictionary(
                new EmptyModelMetadataProvider(),
                new ModelStateDictionary()) {
                Model = @"The data received by the
                    application cannot be processed"
              }
            };
          }
        }
      }

### 操作过滤器 ActionFilterAttribute

    public class ProfileAttribute : ActionFilterAttribute {
        private Stopwatch timer;
        private double actionTime;
        public override async Task OnActionExecutionAsync(
            ActionExecutingContext context,
            ActionExecutionDelegate next) {
          timer = Stopwatch.StartNew();
          await next();
          actionTime = timer.Elapsed.TotalMilliseconds;
        }
        public override async Task OnResultExecutionAsync(
            ResultExecutingContext context,
            ResultExecutionDelegate next) {
          await next();
          timer.Stop();
          string result = "<div>Action time: "
            + $"{actionTime} ms</div><div>Total time: "
            + $"{timer.Elapsed.TotalMilliseconds} ms</div>";
          byte[] bytes = Encoding.ASCII.GetBytes(result);
          await context.HttpContext.Response.Body.WriteAsync(bytes,
            0, bytes.Length);
        }
      }



    public class ViewResultDiagnostics : IActionFilter {
        private IFilterDiagnostics diagnostics;
        public ViewResultDiagnostics(IFilterDiagnostics diags) {
          diagnostics = diags;
        }
        public void OnActionExecuting(ActionExecutingContext context) {
          // do nothing - not used in this filter
        }
        public void OnActionExecuted(ActionExecutedContext context) {
          ViewResult vr;
          if ((vr = context.Result as ViewResult) != null) {
            diagnostics.AddMessage($"View name: {vr.ViewName}");
            diagnostics.AddMessage($@"Model type: 
              {vr.ViewData.Model.GetType().Name}");
          }
        }
      }

### 结果过滤器 ResultFilterAttribute

       public class MessageAttribute : ResultFilterAttribute {
        private string message;
        public MessageAttribute(string msg) {
          message = msg;
        }
        public override void OnResultExecuting(ResultExecutingContext context) {
          WriteMessage(context, $"<div>Before Result:{message}</div>");
        }
        public override void OnResultExecuted(ResultExecutedContext context) {
          WriteMessage(context, $"<div>After Result:{message}</div>");
        }
        private void WriteMessage(FilterContext context, string msg) {
          byte[] bytes = Encoding.ASCII
            .GetBytes($"<div>{msg}</div>");
          // Synchronous operations are disallowed. Call WriteAsync or set AllowSynchronousIO to true instead.
          context.HttpContext.Response
            .Body.WriteAsync(bytes, 0, bytes.Length);
        }
      }



     public class ViewResultDetailsAttribute : ResultFilterAttribute {
        public override async Task OnResultExecutionAsync(
            ResultExecutingContext context,
            ResultExecutionDelegate next) {
          Dictionary<string, string> dict = new Dictionary<string, string> {
            ["Result Type"] = context.Result.GetType().Name,
          };
          ViewResult vr;
          if ((vr = context.Result as ViewResult) != null) {
            dict["View Name"] = vr.ViewName;
            dict["Model Type"] = vr.ViewData.Model.GetType().Name;
            dict["Model Data"] = vr.ViewData.Model.ToString();
          }
          context.Result = new ViewResult {
            ViewName = "Message",
            ViewData = new ViewDataDictionary(
                new EmptyModelMetadataProvider(),
                new ModelStateDictionary()) {
              Model = dict
            }
          };
          await next();
        }
      }

### 结果过滤器 IFilterDiagnostics

       public interface IFilterDiagnostics {
        IEnumerable<string> Messages { get; }
        void AddMessage(string message);
      }
      public class DefaultFilterDiagnostics : IFilterDiagnostics {
        private List<string> messages = new List<string>();
        public IEnumerable<string> Messages => messages;
        public void AddMessage(string message) =>
          messages.Add(message);
      }

### IAsyncResultFilter

      public class DiagnosticsFilter : IAsyncResultFilter {
        private IFilterDiagnostics diagnostics;
        public DiagnosticsFilter(IFilterDiagnostics diags) {
          diagnostics = diags;
        }
        public async Task OnResultExecutionAsync(
            ResultExecutingContext context,
            ResultExecutionDelegate next) {
          await next();
          foreach (string message in diagnostics?.Messages) {
            byte[] bytes = Encoding.ASCII
              .GetBytes($"<div>{message}</div>");
            await context.HttpContext.Response.Body
              .WriteAsync(bytes, 0, bytes.Length);
          }
        }
      }



     public class TimeFilter : IAsyncActionFilter, IAsyncResultFilter {
        private ConcurrentQueue<double> actionTimes = new ConcurrentQueue<double>();
        private ConcurrentQueue<double> resultTimes = new ConcurrentQueue<double>();
        private IFilterDiagnostics diagnostics;
        public TimeFilter(IFilterDiagnostics diags) {
          diagnostics = diags;
        }
        public async Task OnActionExecutionAsync(
            ActionExecutingContext context, ActionExecutionDelegate next) {
          Stopwatch timer = Stopwatch.StartNew();
          await next();
          timer.Stop();
          actionTimes.Enqueue(timer.Elapsed.TotalMilliseconds);
          diagnostics.AddMessage($@"Action time: 
            {timer.Elapsed.TotalMilliseconds} 
            Average: {actionTimes.Average():F2}");
        }
        public async Task OnResultExecutionAsync(
            ResultExecutingContext context, ResultExecutionDelegate next) {
          Stopwatch timer = Stopwatch.StartNew();
          await next();
          timer.Stop();
          resultTimes.Enqueue(timer.Elapsed.TotalMilliseconds);
          diagnostics.AddMessage($@"Result time: 
            {timer.Elapsed.TotalMilliseconds}
            Average: {resultTimes.Average():F2}");
        }
      }

## Controllers

> \[HttpGet("object/{format?}")]
> \[FormatFilter]

### WebAPI

      [Route("api/[controller]")]
      public class ContentController : Controller {
        [HttpGet("string")]
        public string GetString() => "This is a string response";
        [HttpGet("object/{format?}")]
        [FormatFilter]
        //[Produces("application/json", "application/xml")]
        public Reservation GetObject() => new Reservation {
          ReservationId = 100,
          ClientName = "Joe",
          Location = "Board Room"
        };
        [HttpPost]
        [Consumes("application/json")]
        public Reservation ReceiveJson([FromBody] Reservation reservation) {
          reservation.ClientName = "Json";
          return reservation;
        }
        [HttpPost]
        [Consumes("application/xml")]
        public Reservation ReceiveXml([FromBody] Reservation reservation) {
          reservation.ClientName = "Xml";
          return reservation;
        }
      }

### Controller

> 所有的动作结果都继承自ActionResult基类 ASP.NET MVC框架支持六种标准类型的动作结果：
> 动作名称 概述 方法名
> ViewResult 视图内容，HTML或标记 View
> EmptyResult 空内容
> RedirectResult 重定向到新的URL
> Redirect RedirectToRouteResult 重定向到新的控制器
> RedirectToAction/RedirectToRoute JsonResult 返回一个JSON（Javascript Object Notation）内容 Json ContentResult 返回文本内容 Content

    [Route("api/[controller]")]
      public class ReservationController : Controller {
        private IRepository repository;
        public ReservationController(IRepository repo) => repository = repo;
        [HttpGet]
        public IEnumerable<Reservation> Get() => repository.Reservations;
        [HttpGet("{id}")]
        public Reservation Get(int id) => repository[id];
        [HttpPost]
        public Reservation Post([FromBody] Reservation res) =>
          repository.AddReservation(new Reservation {
            ClientName = res.ClientName,
            Location = res.Location
          });
        [HttpPut]
        public Reservation Put([FromBody] Reservation res) =>
          repository.UpdateReservation(res);
        [HttpPatch("{id}")]
        public StatusCodeResult Patch(int id,
            [FromBody]JsonPatchDocument<Reservation> patch) {
          Reservation res = Get(id);
          if (res != null) {
            patch.ApplyTo(res);
            return Ok();
          }
          return NotFound();
        }
        [HttpDelete("{id}")]
        public void Delete(int id) => repository.DeleteReservation(id);
      }

### Rezor View

    @model IEnumerable<Reservation>
    @{ Layout = "_Layout"; }
    <form id="addform" asp-action="AddReservation" method="post">
      <div class="form-group">
        <label for="ClientName">Name:</label>
        <input class="form-control" name="ClientName" />
      </div>
      <div class="form-group">
        <label for="Location">Location:</label>
        <input class="form-control" name="Location" />
      </div>
      <div class="text-center panel-body">
        <button type="submit" class="btn btn-sm btn-primary">Add</button>
      </div>
    </form>
    <table class="table table-sm table-striped table-bordered m-2">
      <thead><tr><th>ID</th><th>Client</th><th>Location</th></tr></thead>
      <tbody>
        @foreach (var r in Model) {
          <tr>
            <td>@r.ReservationId</td>
            <td>@r.ClientName</td>
            <td>@r.Location</td>
          </tr>
        }
      </tbody>
    </table>



    services.AddMvc()
      .AddXmlDataContractSerializerFormatters()
      .AddMvcOptions(opts => {
        opts.EnableEndpointRouting = false;
        opts.FormatterMappings.SetMediaTypeMappingForFormat("xml",
          new MediaTypeHeaderValue("application/xml"));
        opts.RespectBrowserAcceptHeader = true;
        opts.ReturnHttpNotAcceptable = true;
      });

## ViewComponent

     public class PageSize : ViewComponent {
        public async Task<IViewComponentResult> InvokeAsync() {
          HttpClient client = new HttpClient();
          HttpResponseMessage response
            = await client.GetAsync("http://apress.com");
          return View(response.Content.Headers.ContentLength);
        }
      }

## Taghelper

> 可以扩展一些自定义的标记 其实就是后台生成html代码的一种形式
> 扩展标记，可以从后台进行前端Html的配置
> HtmlTargetElement 属性中配置那些html元素，那些样式起作用
> 定义一个Taghelper formbutton 设置其属性

      [HtmlTargetElement("button", Attributes = "bs-button-color", ParentTag = "div")]
      [HtmlTargetElement("a", Attributes = "bs-button-color", ParentTag = "div")]
      [HtmlTargetElement("formbutton")]
      public class LYFButtonTagHelper : TagHelper {
        public string BsButtonColor { get; set; } = "primary";
        public override void Process(TagHelperContext context,
                       TagHelperOutput output) {
          output.Attributes.SetAttribute("class", $"btn btn-{BsButtonColor}");
        }
      }

> View中用法

    <formbutton>hello</formbutton>

> 本质上所有的mvc视图元素都是来自Taghelper 比如form

    <form method="post" asp-controller="Home" asp-action="Create"
       asp-antiforgery="true">
      <div class="form-group">
        <label asp-for="Name"></label>
        <input class="form-control" asp-for="Name" />
      </div>
      <div class="form-group">
        <label asp-for="Country"></label>
        <select class="form-control" asp-for="Country" asp-items="ViewBag.Countries">
          <option disabled selected value="">Select a Country</option>
        </select>
      </div>
      <div class="form-group">
        <label asp-for="Population"></label>
        <input class="form-control" asp-for="Population" />
      </div>
      <div class="form-group">
        <label asp-for="Notes"></label>
        <textarea class="form-control" asp-for="Notes"></textarea>
      </div>
      <button type="submit" class="btn btn-primary">Add</button>
      <a class="btn btn-primary" href="/Home/Index">Cancel</a>
    </form>

## SignalR

> 什么是 SignalR？
> ASP.NET Core SignalR 是一个开放源代码库，可用于简化向应用添加实时 Web 功能。 实时 Web 功能使服务器端代码能够将内容推送到客户端。
> 适合 SignalR 的候选项：
> 需要从服务器进行高频率更新的应用。 示例包括游戏、社交网络、投票、拍卖、地图和 GPS 应用。
> 仪表板和监视应用。 示例包括公司仪表板、即时销售更新或旅行警报。
> 协作应用。 协作应用的示例包括白板应用和团队会议软件。
> 需要通知的应用。 社交网络、电子邮件、聊天、游戏、旅行警报和很多其他应用都需使用通知。
> SignalR 提供用于创建服务器到客户端远程过程调用 (RPC) 的 API。 RPC 从服务器端 .NET Core 代码调用客户端上的函数。 提供多个受支持的平台，其中每个平台都有各自的客户端 SDK。 因此，RPC 调用所调用的编程语言有所不同。
> 以下是 ASP.NET Core SignalR 的一些功能：
> 自动处理连接管理。
> 同时向所有连接的客户端发送消息。 例如聊天室。
> 向特定客户端或客户端组发送消息。
> 对其进行缩放，以处理不断增加的流量。
> SignalR 中心协议
> 源托管在 GitHub 上的存储库中SignalR。
> 传输
> SignalR 支持以下用于处理实时通信的技术（按正常回退的顺序）：
> WebSockets
> Server-Sent Events
> 长轮询
> SignalR 自动选择服务器和客户端能力范围内的最佳传输方法。
> 中心
> SignalR 使用 中心 在客户端和服务器之间进行通信。
> Hub 是一种高级管道，允许客户端和服务器相互调用方法。 SignalR 自动处理跨计算机边界的调度，并允许客户端调用服务器上的方法，反之亦然。 可以将强类型参数传递给方法，从而支持模型绑定。 SignalR 提供两个内置中心协议：基于 JSON 的文本协议和基于 MessagePack 的二进制协议。 与 ON 相比 JS，MessagePack 通常会创建较小的消息。 旧版浏览器必须支持 XHR 级别 2 才能提供 MessagePack 协议支持。
> 中心通过发送包含客户端方法的名称和参数的消息来调用客户端代码。 作为方法参数发送的对象使用配置的协议进行反序列化。 客户端尝试将名称与客户端代码中的方法匹配。 当客户端找到匹配项时，它会调用该方法并将反序列化的参数数据传递给它。
> 不支持 ECMAScript 6 的浏览器 (ES6)
> SignalR 面向 ES6。 对于不支持 ES6 的浏览器，请将库转译为 ES5。 有关详细信息，请参阅使用 ES6 入门 – 使用 Traceur 和 Babel 将 ES6 转为 ES5。
> SignalR 简单示例
> 创建 Web 应用项目
> 创建 ASP.NET Core Web 应用
> 在“配置新项目”对话框中，为“项目名称”输入 SignalRChat。 请务必将项目命名为 SignalRChat（包括匹配大写），以便命名空间与教程中的代码匹配。
> 添加 SignalR 客户端库
> ASP.NET Core 共享框架中包含 SignalR 服务器库。 JavaScript 客户端库不会自动包含在项目中。 对于此教程，使用库管理器 (LibMan) 从 unpkg 获取客户端库。 unpkg 是一个快速的全局内容分发网络，适用于 npm 上的所有内容。
> 在“解决方案资源管理器”>中，右键单击项目，然后选择“添加”“客户端库”。
> 在“添加客户端库”对话框中：
> 为“提供程序”选择“unpkg”
> 对于“库”，请输入 @microsoft/signalr\@latest。
> 选择“选择特定文件”，展开“dist/browser”文件夹，然后选择 signalr.js 和 signalr.min.js。
> 将“目标位置”设置为 wwwroot/js/signalr/。
> 选择“安装” 。
> “添加客户端库”对话框 - 选择库
> LibMan 创建 wwwroot/js/signalr 文件夹并将所选文件复制到该文件夹。
> 创建 SignalR 中心
> 中心是一个类，用作处理客户端 - 服务器通信的高级管道。
> 在 SignalRChat 项目文件夹中，创建 Hubs 文件夹。
> 在 Hubs 文件夹中，使用以下代码创建 ChatHub 类：
> C#

    using Microsoft.AspNetCore.SignalR;
    namespace SignalRChat.Hubs
    {
      public class ChatHub : Hub
      {
        public async Task SendMessage(string user, string message)
        {
          await Clients.All.SendAsync("ReceiveMessage", user, message);
        }
      }
    }

> ChatHub 类继承自 SignalRHub。 Hub 类管理连接、组和消息。
> 可通过已连接客户端调用 SendMessage，以向所有客户端发送消息。 本教程后面部分将显示调用该方法的 JavaScript 客户端代码。 SignalR 代码是异步模式，可提供最大的可伸缩性。
> 配置 SignalR
> 必须将 SignalR 服务器配置为将 SignalR 请求传递给 SignalR。 将以下突出显示的代码添加到 Program.cs 文件。
> C#

    using SignalRChat.Hubs;
    var builder = WebApplication.CreateBuilder(args);
    // Add services to the container.
    builder.Services.AddRazorPages();
    builder.Services.AddSignalR();
    var app = builder.Build();
    // Configure the HTTP request pipeline.
    if (!app.Environment.IsDevelopment())
    {
      app.UseExceptionHandler("/Error");
      // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
      app.UseHsts();
    }
    app.UseHttpsRedirection();
    app.UseStaticFiles();
    app.UseRouting();
    app.UseAuthorization();
    app.MapRazorPages();
    app.MapHub<ChatHub>("/chatHub");
    app.Run();

> 以上突出显示的代码将 SignalR 添加到 ASP.NET Core 依赖关系注入和路由系统。
> 添加 SignalR 客户端代码
> CSHTML

    @page
    <div class="container">
      <div class="row p-1">
        <div class="col-1">User</div>
        <div class="col-5"><input type="text" id="userInput" /></div>
      </div>
      <div class="row p-1">
        <div class="col-1">Message</div>
        <div class="col-5"><input type="text" class="w-100" id="messageInput" /></div>
      </div>
      <div class="row p-1">
        <div class="col-6 text-end">
          <input type="button" id="sendButton" value="Send Message" />
        </div>
      </div>
      <div class="row p-1">
        <div class="col-6">
          <hr />
        </div>
      </div>
      <div class="row p-1">
        <div class="col-6">
          <ul id="messagesList"></ul>
        </div>
      </div>
    </div>
    <script src="~/js/signalr/dist/browser/signalr.js"></script>
    <script src="~/js/chat.js"></script>

> JavaScript

    "use strict";
    var connection = new signalR.HubConnectionBuilder().withUrl("/chatHub").build();
    //Disable the send button until connection is established.
    document.getElementById("sendButton").disabled = true;
    connection.on("ReceiveMessage", function (user, message) {
      var li = document.createElement("li");
      document.getElementById("messagesList").appendChild(li);
      // We can assign user-supplied strings to an element's textContent because it
      // is not interpreted as markup. If you're assigning in any other way, you 
      // should be aware of possible script injection concerns.
      li.textContent = `${user} says ${message}`;
    });
    connection.start().then(function () {
      document.getElementById("sendButton").disabled = false;
    }).catch(function (err) {
      return console.error(err.toString());
    });
    document.getElementById("sendButton").addEventListener("click", function (event) {
      var user = document.getElementById("userInput").value;
      var message = document.getElementById("messageInput").value;
      connection.invoke("SendMessage", user, message).catch(function (err) {
        return console.error(err.toString());
      });
      event.preventDefault();
    });

## consul

# Entity Framework

## EDM

> 实体数据模型，简称EDM，由三个概念组成。概念模型由概念架构定义语言文件 (.csdl)来定义，映射由映射规范语言文件 (.msl)，存储模型（又称逻辑模型）由存储架构定义语言文件 (.ssdl)来定义。这三者合在一起就是EDM模式。EDM模式在项目中的表现形式就是扩展名为.edmx的文件。这个包含EDM的文件可以使用Visual Studio中的EDM设计器来设计。由于这个文件本质是一个xml文件，可以手工编辑此文件来自定义CSDL、MSL与SSDL这三部分。

# DI（IoC）

DI(Dependency Injection)
IoC(Inverse of Control)

## Unity

微软patterns\&practicest团队开发的IOC依赖注入框架，支持AOP横切关注点。
static void Main(string\[] args)
{
UnityContainer container = new UnityContainer();//创建容器
container.RegisterType\<Test01.IWaterTool, Test01.PressWater>();//注册依赖对象
Test01.IPeople people = container.Resolve\<Test01.VillagePeople>();//返回调用者
people.DrinkWater();//喝水
}

## MEF

（Managed Extensibility Framework）：是一个用来扩展.NET应用程序的框架，可开发插件系统。

    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Reflection;
    using System.ComponentModel.Composition;
    using System.ComponentModel.Composition.Hosting;
       [Export(typeof(IBookService))]
       public class MusicBook : IBookService
       {
          public string BookName { get; set; }
          public string GetBookName()
          {
             return "MusicBook";
          }
       }
       class Program
       {
          [Import]
          public IBookService Service { get; set; }
          static void Main(string[] args)
          {
             Program pro = new Program();
             pro.Compose();
             if (pro.Service != null)
             {
                Console.WriteLine(pro.Service.GetBookName());
             }
             Console.Read();
          }
          private void Compose()
          {
             var catalog = new AssemblyCatalog(Assembly.GetExecutingAssembly());
             CompositionContainer container = new CompositionContainer(catalog);
             container.ComposeParts(this);
          }
       }

## Spring.NET

> 依赖注入、面向方面编程(AOP)、数据访问抽象,、以及ASP.NET集成。
> class Program
> {
> static void Main(string\[] args)
> {
> // 创建容器
> Spring.Context.Support.StaticApplicationContext context
> \= new Spring.Context.Support.StaticApplicationContext();

            // 注册
            context.RegisterPrototype("Person", typeof(Student), null);
             
            // 注册一个单例类型
            context.RegisterSingleton("Alice", typeof(Person), null);
     
            Person person = context.GetObject("Person") as Person;
     
            Console.WriteLine(person);
        }
    }

## Autofac

> 最流行的依赖注入和IOC框架，轻量且高性能，对项目代码几乎无任何侵入性。
> //注册Autofac组件
> ContainerBuilder builder = new ContainerBuilder();
> //注册实现类Student，当我们请求IStudent接口的时候，返回的是类Student的对象。
> builder.RegisterType\<Student>().As\<IStudent>();
> //上面这句也可改成下面这句，这样请求Student实现了的任何接口的时候，都会返回Student对象。
> //builder.RegisterType\<Student>().AsImplementedInterfaces();
> IContainer container = builder.Build();
> //请求IStudent接口
> IStudent student = container.Resolve\<IStudent>();
> student.Add("1001", "Hello");

## Ninject

> Ninject是一个快如闪电、超轻量级的基于.Net平台的开源依赖注入框架。
> using System;
> using System.Collections.Generic;
> using System.Linq;
> using System.Text;
> using Ninject; //引入命名空间
> namespace RegisterNinject
> {
> public class Register
> {
> private StandardKernel \_kernel = new StandardKernel();
> // 在这里注册
> public Register()
> {
> \_kernel.Bind\<IDataAccess>().To\<MySqlDataOrder>();
> //\_kernel.Bind\<IDataAccess>().To\<SqlServerDataOrder>();
> //\_kernel.Bind\<IDataProduct>().To\<SqlServerDataProduct>();
> }
> //获取
> public TInterface Get\<TInterface>()
> {
> return \_kernel.Get\<TInterface>();
> }
> public void Dispose()
> {
> \_kernel.Dispose();
> }
> }
> }
> using System;
> using System.Collections.Generic;
> using System.Linq;
> using System.Text;
> namespace RegisterNinject
> {
> public class Order
> {
> private Register reg = new Register();
> public string QueryOrder()
> {
> return reg.Get\<IDataAccess>().QueryOrder();
> }
> }
> }
> 使用Xml文件（热插拔）
> Register.xml \<?xml version="1.0" encoding="utf-8" ?> \<module name="register"> \<bind service="XmlNinject.IDataAccess,XmlNinject" to="XmlNinject.SqlServerDataOrder,XmlNinject"/> \</module>

    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using Ninject; //引入命名空间
    using Ninject.Extensions.Xml;//引入命名空间
    namespace XmlNinject
    {
        public class Register
        {
            private StandardKernel _kernel = new StandardKernel();
            // 以后这里就不用更改这里了，只需要该xml文件就可以了
            public Register()
            {
                var settings = new NinjectSettings() { LoadExtensions = false };
                _kernel = new StandardKernel(settings, new XmlExtensionModule());
                _kernel.Load("Xml/Register.xml");
            }
            //获取
            public TInterface Get<TInterface>()
            {
                return _kernel.Get<TInterface>();
            }
            public void Dispose()
            {
                _kernel.Dispose();
            }
        }
    }

# 单元测试

简介
　　1. 单元测试
　　　　1.1 定义：“单元测试”就是针对一个“工作单元”的测试，一般意义上来讲是针对一个基础类进行输入/输出测试。与之相关的是集成测试，验收测试等。这里指单纯意义上的“单元测试”。
　　　　1.2 特征：
　　　　　　　　与其他代码相隔离：单元测试只测试一件事，否则应该怀疑是否是测试内容有误。
　　　　　　　　与其他开发人员隔离：保证最小化的变量影响单元测试，也就是控制变量法。逐渐形成了模拟框架以及依赖注入框架等辅助工具。
　　　　　　　　有针对性：要做有意义的测试，保证完成那些功能或方法。
　　　　　　　　可重复：单元测试的最大优势就是可重复，这也是持续集成的意义所在。
　　　　　　　　可预测：单元测试保证的是---确定的输入得到肯定的输出。
　　2. 涵盖内容
　　　　2.1 单元测试框架（UnitTest）：自从2005年TDD开始流行，框架和工具得到了迅猛的发展，这些框架允许定义测试代码，控制测试的执行，还提供了一个应用程序运行测试，并在成功完成测试套件中的每个测试后给出报告。
　　　　2.2 模拟框架（Mock）：为了仅测试一个方法而不对其他发展产生影响或者被影响，产生了Mock框架。通过模拟另一个类的代码来完成单元测试，同时又充分的隔离了另一个类的部分信息。
　　　　2.3 注入框架（inject）：为了充分隔离类内部使用的对象，一般采用构造注入的方式或者属性注入的方式，都是将外部初始化好的对象导入进测试类，以进行隔离。
　　3. 工具比较
　　　　3.1 单元测试工具：
　　　　　　3.1.1 NUnit：目前.net最流行的工具，由JUnit发展而来，简单易用。 官方网站
　　　　　　3.1.2 MSTest： 也十分的强大，同时也被多种自动编译工具所支持，在VS2010中十分方便创建以及关联测试测试类，使用方便。
　　　        这是两个比较主要的测试框架，NUnit更新比较慢，但是开源。两种工具语法标签上大同小异，也都支持“Setup”和“Teardown”方便初始化共享对象。
　　　　3.2 模拟框架：
　　　　　　3.2.1 Rhino Mock：免费，使用简单，功能强大。
　　　　　　3.2.2 Type Mock：使用中间语言（IL）在运行时以模拟实现来代替实际实现。商业产品。模拟对象不需要从接口集成，可以模仿第三方类库。
　　　　　　3.2.3 Moq：社区支持，功能强大，使用简单。Moq利用了lambda表达式。语法更具描述性。
　　　　3.3 注入框架：
　　　　　　3.3.1 Structure Map：开源容器框架，能够自动模拟容器。
　　　　　　3.3.2 Unity：来自微软设计与实践群组。
　　　　　　3.3.3 Autofac：允许不采用XML文件的情况下进行配置。

# AOP框架

> AOP（Aspect-Oriented Programming，面向切面的编程），它是可以通过预编译方式和运行期动态代理实现在不修改源代码的情况下给程序动态统一添加功能的一种技术。它是一种新的方法论，它是对传统OOP编程的一种补充。OOP是关注将需求功能划分为不同的并且相对独立，封装良好的类，并让它们有着属于自己的行为，依靠继承和多态等来定义彼此的关系；AOP是希望能够将通用需求功能从不相关的类当中分离出来，能够使得很多类共享一个行为，一旦发生变化，不必修改很多类，而只需要修改这个行为即可。AOP是使用切面（aspect）将横切关注点模块化，OOP是使用类将状态和行为模块化。在OOP的世界中，程序都是通过类和接口组织的，使用它们实现程序的核心业务逻辑是十分合适。但是对于实现横切关注点（跨越应用程序多个模块的功能需求）则十分吃力，比如日志记录，权限验证，异常拦截等。
> Castle
> Encase 是C#编写开发的为.NET平台提供的AOP框架。Encase 独特的提供了把方面(aspects)部署到运行时代码，而其它AOP框架依赖配置文件的方式。这种部署方面(aspects)的方法帮助缺少经验的开发人员提高开发效率。
> NKalore 是一款编程语言，它扩展了C#允许在.net平台使用AOP。NKalore的语法简单、直观，它的编译器是基于Mono C#编译器(MCS)。NKalore目前只能在命令行或#Develop内部使用。NKalore兼容公共语言规范CLS(Common Language Specification)，它可以在任何.NET开发环境中使用，包括微软的Visual Studio .NET。
> PostSharp 读取.NET字节模块，转换成对象模型。让插件分析和转换这个模型并写回到MSIL。PostSharp使开发程序分析应用程序容易得像分析代码规则和设计模式，它使程序开发的思想变革为面向方面软件开发(AOSD/AOD)思想。
> AspectDNG 的目标是为.NET开发人员提供简单而功能强大的AOP-GAOP实现。它效仿Java下的开源工具AspectJ 和 Spoon，成熟程度也很接近它们。
> RAIL(Runtime Assembly Instrumentation Library) 开源项目可以在C#程序集加载和运行前进行处理控制调整和重新构建。C#在CLR中，我们已经能够动态加载程序集并且获得程序集中的类和方法，RAIL(Runtime Assembly Instrumentation Library)的出现填补了CLR处理过程中的一些空白。
> SetPoint是一款.NET框架下的全功能(full-featured)AOP引擎.它着重为称为语义切点(semantic pointcuts)的定义依赖RDF/OWL的使用.它的功能为一个IL-level，highly dynamic weaver\&LENDL,一个引人注目的定义语言、、、、、、
> DotNetAOP为 CLR language提供AOP 框架基础属性。
> NAop是一个DotNet下的AOP框架。
> AspectSharp是DotNet下的免费AOP框架，它以Dynamic Proxies和XML作为配置文件。

# 认证授权

## 认证 Authentication

> 身份验证是确定用户身份的过程。 授权是确定用户是否有权访问资源的过程。 在 ASP.NET Core 中，身份验证由身份验证服务 IAuthenticationService 负责，而它供身份验证中间件使用。 身份验证服务会使用已注册的身份验证处理程序来完成与身份验证相关的操作。 与身份验证相关的操作示例包括：对用户进行身份验证。在未经身份验证的用户试图访问受限资源时作出响应。
> 身份验证负责提供 ClaimsPrincipal 进行授权，以针对其进行权限决策。 可通过多种身份验证方案方法来选择使用哪种身份验证处理程序负责生成正确的声明集：

### Session-Cookie认证

Session-Cookie 的认证流程如下：用户先使用用户名和密码登录，登录完成后后端将用户信息存在session 中，把sessionId 写到前端的cookie 中，后面每次操作带着cookie 去后端，只要后端判断sessionId 没问题且没过期就不需要再次登录。
使用这种方式进行认证，开发者可能面临的主要问题如下：
cookie 安全性问题，攻击者可以通过xss 获取cookie 中的sessinId，使用 httpOnly 在一定程度上提高安全性
cookie 不能跨域传输
session 存储在服务器中，所以session 过多会耗费较大服务器资源

### Token认证

> 与上面的Session-Cookie 机制不同的地方在于，基于token 的用户认证是一种服务端无状态的认证方式，服务端可以不用存放token 数据，但是服务器可以验证token 的合法性和有效性。进行认证的方式这里主要介绍两种：SAML,JWT

#### SAML

> SAML (Security Assertion Markup Language)
> 未登录的用户通过浏览器访问资源网站（Service Provider，简称SP）
> SP 发现用户未登录，将页面重定向至IdP（Identity Provider）
> IdP 验证请求无误后，提供表单让用户进行登录
> 用户登录成功后，IdP 生成并发送SAML token (一个很大的XML对象) 给SP
> SP 对token 进行验证，解析获取用户信息，允许用户访问相关资源

#### JWT

> JWT 就是一种在用户登录后生成token 并把token 放在前端，后端不需要维护用户的状态信息但是可以验证token 有效性的认证及状态管理方式。

### SSO 与CAS 单点登录。

> 有若干云服务。包含项目管理、代码托管、代码检查、流水线、编译构建、部署、自动化测试等众多微服务的DevCloud（软件开发云） 正是其中之一，用户如果在使用任意一个服务没有登录的时候都可以去同一个地方进行登录认证，登录之后的一段时间内可以无需登录访问所有其他服务。
> CAS（Central Authentication Service，中文名是中央认证服务） 是一个被高频使用的解决方案。因此，这里介绍一下利用CAS 实现SSO。而CAS 的具体实现又可以依赖很多种协议，比如OpenID、OAuth、SAML 等，这里重点介绍一下CAS 协议。CAS 协议中的几个重要概念
> CAS Server：用于认证的中心服务器
> CAS Clients：保护CAS 应用，一旦有未认证的用户访问，重定向至CAS Server 进行认证
> TGT & TGC：用户认证之后，CAS Server 回生成一个包含用户信息的TGT (Ticket Granting Ticket) 并向浏览器写一个cookie（TGC，Ticket Granting Cookie），有啥用后面流程会讲到
> ST：在url 上作为参数传输的ticket，受保护应用可以凭借这个ticket 去CAS Server 确认用户的认证是否合法

### 多重身份验证

> 多重身份验证 (MFA) 是在登录事件期间请求用户进行其他形式的身份验证的过程。 此提示可以是输入手机中的代码、使用 FIDO2 密钥或提供指纹扫描。 需要进行另一种形式的身份验证时，安全性便得到了增强。 攻击者无法轻松获取或复制额外的因素。
> MFA TOTP（基于时间的一次性密码算法）
> 使用 ASP.NET Core Identity时，默认支持使用 TOTP 的 MFA。 此方法可与任何合规的验证器应用一起使用，包括：
> Microsoft Authenticator
> Google Authenticator
> 若要禁用对 MFA TOTP 的支持，请使用 AddIdentity 而不是 AddDefaultIdentity配置身份验证。 AddDefaultIdentity 在内部调用 AddDefaultTokenProviders ，这将注册多个令牌提供程序，包括一个用于 MFA TOTP 的令牌提供程序。 若要仅注册特定的令牌提供程序，请为每个所需的提供程序调用 AddTokenProvider 。 有关可用令牌提供程序的详细信息，请参阅 GitHub 上的 AddDefaultTokenProviders 源。
> MFA FIDO2 或无密码
> FIDO2 目前是：
> 实现 MFA 的最安全方法。唯一可防止钓鱼攻击的 MFA 流。
> 目前，ASP.NET Core 不能直接支持 FIDO2。 FIDO2 可用于 MFA 或无密码流。
> Azure Active Directory 提供对 FIDO2 和无密码流的支持。
> MFA 短信
> 与密码身份验证（单因素）相比，使用短信的 MFA 大大提高了安全性。 但是，不再建议使用短信作为第二个因素。 此类型的实现存在太多已知攻击媒介。

### .NET CORE身份验证方案

> 身份验证方案的身份验证操作负责根据请求上下文构造用户的身份。 它会返回一个 AuthenticateResult指示身份验证是否成功；若成功，则还在身份验证票证中指示用户的身份。 请参阅 AuthenticateAsync。 身份验证示例包括：
>
> > 根据 cookie 构造用户身份的 cookie 身份验证方案。
> > 对 JWT 持有者令牌进行反序列化和验证以构造用户身份的 JWT 持有者方案。
> > 当未经身份验证的用户请求要求身份验证的终结点时，授权会发起身份验证挑战。 例如，当匿名用户请求受限资源或访问登录链接时，会引发身份验证挑战。 授权会使用指定的身份验证方案发起挑战；如果未指定任何方案，则使用默认方案。 请参阅 ChallengeAsync。 身份验证挑战示例包括：
> > 将用户重定向到登录页面的 cookie 身份验证方案。
> > 返回具有 www-authenticate: bearer 标头的 401 结果的 JWT 持有者方案。
> > 身份验证处理程序：
> > 是一种实现方案行为的类型。
> > 派生自 IAuthenticationHandler 或 AuthenticationHandler\<TOptions>。
> > 具有对用户进行身份验证的主要责任。
> > 默认身份验证方案。
> > 直接设置 HttpContext.User。

    using Microsoft.AspNetCore.Authorization;
    using Microsoft.AspNetCore.Identity;
    [Authorize]
    public class AccountController : Controller {
      private UserManager<IdentityUser> userManager;
      private SignInManager<IdentityUser> signInManager;
      public AccountController(UserManager<IdentityUser> userMgr,
        SignInManager<IdentityUser> signInMgr) {
        userManager = userMgr;
        signInManager = signInMgr;
        IdentitySeedData.EnsurePopulated(userMgr).Wait();
      }
      [AllowAnonymous]
      public ViewResult Login(string returnUrl) {
        return View(new LoginModel {
          ReturnUrl = returnUrl
        });
      }
      [HttpPost]
      [AllowAnonymous]
      [ValidateAntiForgeryToken]
      public async Task<IActionResult> Login(LoginModel loginModel) {
        if (ModelState.IsValid) {
          IdentityUser user =
            await userManager.FindByNameAsync(loginModel.Name);
          if (user != null) {
            await signInManager.SignOutAsync();
            if ((await signInManager.PasswordSignInAsync(user,
                loginModel.Password, false, false)).Succeeded) {
              return Redirect(loginModel?.ReturnUrl ?? "/Admin/Index");
            }
          }
        }
        ModelState.AddModelError("", "Invalid name or password");
        return View(loginModel);
      }
      public async Task<RedirectResult> Logout(string returnUrl = "/") {
        await signInManager.SignOutAsync();
        return Redirect(returnUrl);
      }
    }

#### Identity

> Identity是一个一个 API，它支持用户界面 (UI) 登录功能。
> 管理用户、密码、配置文件数据、角色、声明、令牌、电子邮件确认等等。
> 可以理解为.net core提供的一套用户管理系统，经过简单的配置就可以使用，当然也是可以自定义界面（需要添加基架标识(Scaffold Identity )）
> 使用Scaffold Identity 授权到MVC 项目
> 1.从解决方案资源管理器，右键单击该项目 >添加 > 新基架项。
> 2.从左窗格添加基架对话框中，选择标识 > 添加。
> 3.在中ADD 标识添加对话框中，选择所需的选项。
> 使用Identity主要步骤：
> 配置 Identity 服务 这些服务添加在 Program.cs 中。 包括配置数据库链接，典型模式是按以下顺序调用方法：
> Add{Service}
> builder.Services.Configure{Service}
> 构建 Register、Login、LogOut 和 RegisterConfirmation 的基架

## 授权

### 授权  Authorize

> 简单授权
> ASP.NET Core 中的授权由 AuthorizeAttribute 及其各种参数控制。 在其最基本的形式中，将 \[Authorize] 属性应用于控制器、操作或 Razor 页面，将对该组件的访问权限限制为经过身份验证的用户。
> 基于角色的授权
> 角色服务添加到 Identity 通过调用应用配置中的角色类型来AddRoles注册Program.cs基于角色的Identity授权服务。 以下示例中的角色类型为 IdentityRole：builder.Services.AddDefaultIdentity\<IdentityUser>( ... ).AddRoles\<IdentityRole>()
> \[Authorize(Roles = "HRManager,Finance")]
> 基于 Policy 的角色检查
> builder.Services.AddAuthorization(options =>
> {
> options.AddPolicy("RequireAdministratorRole",
> policy => policy.RequireRole("Administrator"));
> options.AddPolicy("ElevatedRights", policy =>
> policy.RequireRole("Administrator", "PowerUser", "BackupAdministrator"));
> });
> \[Authorize(Policy = "RequireAdministratorRole")]
> 基于声明的授权
> 添加声明检查
> builder.Services.AddAuthorization(options =>
> {
> options.AddPolicy("EmployeeOnly", policy => policy.RequireClaim("EmployeeNumber"));
> });
> 使用 \[Authorize] 属性上的 Policy 属性应用策略，以指定策略名称；\[Authorize(Policy = "EmployeeOnly")]
> 基于策略的授权
> IAuthorizationService
> 典型的授权服务配置：
> // Add all of your handlers to DI.
> builder.Services.AddSingleton\<IAuthorizationHandler, MyHandler1>();
> // MyHandler2, ...
> builder.Services.AddSingleton\<IAuthorizationHandler, MyHandlerN>();
> // Configure your policies
> builder.Services.AddAuthorization(options =>
> options.AddPolicy("Something",
> policy => policy.RequireClaim("Permission", "CanViewPage", "CanViewAnything")));
> 将策略应用于 MVC 控制器 \[Authorize(Policy = "AtLeast21")]
> 授权策略提供程序
> 通常在使用基于策略的授权时，通过在授权服务配置中调用 AuthorizationOptions.AddPolicy 来注册策略。 在某些情况下，可能无法（或不可取）采用此方式注册所有授权策略。 在这些情况下，可以使用自定义 IAuthorizationPolicyProvider 来控制如何提供授权策略。
> 自定义 IAuthorizationPolicyProvider 可能很有用的方案示例包括：
> 使用外部服务提供策略评估。
> 使用大范围的策略（例如对于不同房间号或年龄），因此使用 AuthorizationOptions.AddPolicy 调用添加每个单独授权策略没有意义。
> 在运行时基于外部数据源（如数据库）中的信息创建策略，或通过其他机制动态确定授权要求。
> 自定义 AuthorizationMiddleware 的行为
> 基于资源的授权
> 使用命令性授权
> 授权作为服务 IAuthorizationService 实现，并在类中的服务集合 Startup 中注册。 该服务通过依赖项注入提供给页面处理程序或操作。
> public class DocumentController : Controller
> {
> private readonly IAuthorizationService \_authorizationService;
> private readonly IDocumentRepository \_documentRepository;
> public DocumentController(IAuthorizationService authorizationService,
> IDocumentRepository documentRepository)
> {
> \_authorizationService = authorizationService;
> \_documentRepository = documentRepository;
> }
> IAuthorizationService 有两个 AuthorizeAsync 方法重载：一个接受资源和策略名称，另一个接受资源和要评估的要求列表。
> Task\<AuthorizationResult> AuthorizeAsync(ClaimsPrincipal user,
> object resource,
> IEnumerable\<IAuthorizationRequirement> requirements);
> Task\<AuthorizationResult> AuthorizeAsync(ClaimsPrincipal user,
> object resource,
> string policyName);
> 在以下示例中，要保护的资源将加载到自定义 Document 对象中。 系统调用 AuthorizeAsync 重载以确定是否允许当前用户编辑提供的文档。 自定义“EditPolicy”授权策略已纳入决策中。 有关创建授权策略的详细信息，请参阅基于自定义策略的授权。
> 以下代码示例假定身份验证已运行并设置了 User 属性。
> public async Task\<IActionResult> OnGetAsync(Guid documentId)
> {
> Document = \_documentRepository.Find(documentId);
> if (Document == null)
> {
> return new NotFoundResult();
> }
> var authorizationResult = await \_authorizationService
> .AuthorizeAsync(User, Document, "EditPolicy");
> if (authorizationResult.Succeeded)
> {
> return Page();
> }
> else if (User.Identity.IsAuthenticated)
> {
> return new ForbidResult();
> }
> else
> {
> return new ChallengeResult();
> }
> }
> 编写基于资源的处理程序为基于资源的授权编写处理程序与编写普通的要求处理程序没有太大区别。 创建自定义要求类并实现要求处理程序类。 有关创建要求类的详细信息，请参阅要求。处理程序类指定要求和资源类型。 例如，使用 SameAuthorRequirement 和 Document 资源的处理程序如下所示：
> public class DocumentAuthorizationHandler :
> AuthorizationHandler\<SameAuthorRequirement, Document>
> {
> protected override Task HandleRequirementAsync(AuthorizationHandlerContext context,
> SameAuthorRequirement requirement,
> Document resource)
> {
> if (context.User.Identity?.Name == resource.Author)
> {
> context.Succeed(requirement);
> }
> return Task.CompletedTask;
> }
> }
> public class SameAuthorRequirement : IAuthorizationRequirement { }
> 在前面的示例中，假设 SameAuthorRequirement 是更泛型的 SpecificAuthorRequirement 类的特例。 SpecificAuthorRequirement 类（未显示）包含一个表示作者姓名的 Name 属性。 Name 属性可以设置为当前用户。
> 在 Program.cs 中注册要求和处理程序：
> builder.Services.AddRazorPages();
> builder.Services.AddControllersWithViews();
> builder.Services.AddAuthorization(options =>
> {
> options.AddPolicy("EditPolicy", policy =>
> policy.Requirements.Add(new SameAuthorRequirement()));
> });
> builder.Services.AddSingleton\<IAuthorizationHandler, DocumentAuthorizationHandler>();
> builder.Services.AddSingleton\<IAuthorizationHandler, DocumentAuthorizationCrudHandler>();
> builder.Services.AddScoped\<IDocumentRepository, DocumentRepository>();
> 如果要根据 CRUD 的结果做出决策， (创建、读取、更新、删除) 操作，请使用 OperationAuthorizationRequirement 帮助程序类。 借助此类，你可以编写单个处理程序，而不是为每种操作类型编写一个类。 若要使用它，请提供一些操作名称：
> public static class Operations
> {
> public static OperationAuthorizationRequirement Create =
> new OperationAuthorizationRequirement { Name = nameof(Create) };
> public static OperationAuthorizationRequirement Read =
> new OperationAuthorizationRequirement { Name = nameof(Read) };
> public static OperationAuthorizationRequirement Update =
> new OperationAuthorizationRequirement { Name = nameof(Update) };
> public static OperationAuthorizationRequirement Delete =
> new OperationAuthorizationRequirement { Name = nameof(Delete) };
> }
> 基于视图的授权
> 开发人员通常希望根据当前用户标识显示、隐藏或以其他方式修改 UI。 可以通过依赖项注入在 MVC 视图中访问授权服务。 若要将授权服务注入 Razor 视图，请使用 @inject 指令：
> @using Microsoft.AspNetCore.Authorization
> @inject IAuthorizationService AuthorizationService
> 如果要在每个视图中使用授权服务，请将 @inject 指令 \_ViewImports.cshtml 放入 Views 目录的文件。 有关详细信息，请参阅视图中的依赖关系注入。
> 使用注入的授权服务调用 AuthorizeAsync，其方式与在基于资源的授权过程中检查的方式完全相同：
> @if ((await AuthorizationService.AuthorizeAsync(User, "PolicyName")).Succeeded)
> { <p>This paragraph is displayed because you fulfilled PolicyName.</p>
> }
> 有时资源是视图模型。 调用 AuthorizeAsync 的方式与在基于资源的授权过程中检查的方式完全相同：
> @if ((await AuthorizationService.AuthorizeAsync(User, Model, Operations.Edit)).Succeeded)
> { <p>\<a class="btn btn-default" role="button"
> href="@Url.Action("Edit", "Document", new { id = Model.Id })">Edit</a></p>
> }
> 在前面的代码中，模型作为策略评估应考虑的资源传递。
> 按方案限制标识
> 在某些情况下，例如单页应用程序 (SPA)，通常会使用多种身份验证方法。 例如，应用可能会针对登录使用基于 cookie 的身份验证，并使用 JWT 持有者身份验证来处理 JavaScript 请求。 在某些情况下，应用可能会有一个身份验证处理程序的多个实例。 例如，有两个 cookie 处理程序，一个包含基本标识，另一个是在多重身份验证 (MFA) 触发后创建的。 可能会触发 MFA，因为用户请求了需要额外安全性的操作。 有关当用户请求需要 MFA 的资源时强制执行 MFA 的详细信息，请参阅使用 MFA 保护部分这一 GitHub 问题。身份验证方案是在身份验证期间配置身份验证服务时命名的。
<div class="devgis_code"><pre>
// Authentication
builder.Services.AddAuthentication(options =>
{
  options.DefaultScheme = "B2C\_OR\_AAD";
  options.DefaultChallengeScheme = "B2C\_OR\_AAD";
})
.AddJwtBearer("B2C", jwtOptions =>
{
  jwtOptions.MetadataAddress = "B2C-MetadataAddress";
  jwtOptions.Authority = "B2C-Authority";
  jwtOptions.Audience = "B2C-Audience";
})
.AddJwtBearer("AAD", jwtOptions =>
{
  jwtOptions.MetadataAddress = "AAD-MetadataAddress";
  jwtOptions.Authority = "AAD-Authority";
  jwtOptions.Audience = "AAD-Audience";
  jwtOptions.TokenValidationParameters = new TokenValidationParameters
  {
    ValidateIssuer = true,
    ValidateAudience = true,
    ValidateIssuerSigningKey = true,
    ValidAudiences = builder.Configuration.GetSection("ValidAudiences").Get<string[]>(),
    ValidIssuers = builder.Configuration.GetSection("ValidIssuers").Get<string[]>()
    };
    })
    .AddPolicyScheme("B2C\_OR\_AAD", "B2C\_OR\_AAD", options =>
    {
    options.ForwardDefaultSelector = context =>
    {
      string authorization = context.Request.Headers\[HeaderNames.Authorization];
      if (!string.IsNullOrEmpty(authorization) && authorization.StartsWith("Bearer "))
      {
      var token = authorization.Substring("Bearer ".Length).Trim();
      var jwtHandler = new JwtSecurityTokenHandler();
      return (jwtHandler.CanReadToken(token) && jwtHandler.ReadJwtToken(token).Issuer.Equals("B2C-Authority"))
      ? "B2C" : "AAD";
    }
    return "AAD";
  };
});
</pre></div>

### WCF三种授权模式

> 安全主体具有两个基本的要素：身份与权限。身份在客户端经过认证之后已经确立下来，现在需要解决的问题就是如何获取被认证用户的权限。为了解决这个问题，WCF为我们提供了不同的方案，我们把这些方案成为不同的“安全主体权限模式（Principal Permission Mode）”。具体来说，WCF支持如下三种安全主体权限模式。
> 采用Windows用户组：将经过认证的用户映射为同名的Windows帐号，将该帐号所在的用户组作为权限集；
> 采用ASP.NET Roles提供程序：通过ASP.NET角色管理机制借助于某个RoleProvider获取基于当前认证用户的角色列表，并将其作为权限集；
> 自定义权限模式：自定义权限解析和安全主体创建机制。

### OAuth 授权

> OAuth 2 是一个授权框架，或称授权标准，它可以使第三方应用程序或客户端获得对HTTP服务上（例如 Google，GitHub ）用户帐户信息的有限访问权限。OAuth 2 通过将用户身份验证委派给托管用户帐户的服务以及授权客户端访问用户帐户进行工作。
> OAuth2 角色
> 资源所有者（Resource Owner）在 OAuth 2 标准中，资源所有者即代表授权客户端访问本身资源信息的用户（User），也就是应用场景中的“开发者A”。
> 资源服务器（Resource Server）资源服务器托管了受保护的用户账号信息。
> 授权服务器（Authorization Server） 而授权服务器验证用户身份然后为客户端派发资源访问令牌。
> 客户端（Client）客户端即代表意图访问受限资源的第三方应用
> OAuth 2 的授权流程
> Authrization Request 客户端向用户请求对资源服务器的authorization grant。
> Authorization Grant（Get）如果用户授权该次请求，客户端将收到一个authorization grant。
> Authorization Grant（Post）客户端向授权服务器发送它自己的客户端身份标识和上一步中的authorization grant，请求访问令牌。
> Access Token（Get）如果客户端身份被认证，并且authorization grant也被验证通过，授权服务器将为客户端派发access token。授权阶段至此全部结束。
> Access Token（Post && Validate）客户端向资源服务器发送access token用于验证并请求资源信息。
> Protected Resource（Get）如果access token验证通过，资源服务器将向客户端返回资源信息。

