---
layout: post
title: 微软Dotnet技术
description: Dotnet相关技术WPF,AS.net，Winform等相关技术总结
date: 2022-10-01 09:01:01
updatedate: 2023-11-28 13:46:01
---

- [Donet6 ubuntu下的安装](#donet6-ubuntu下的安装)
- [C# .Net Base](#c-net-base)
  - [CLR基础 CLR的执行模型](#clr基础-clr的执行模型)
  - [生成、打包、部署和管理应用程序及类型](#生成打包部署和管理应用程序及类型)
  - [共享程序集和强命名程序集](#共享程序集和强命名程序集)
  - [类型基础](#类型基础)
  - [元组 Tuple](#元组-tuple)
  - [常量和字段属性](#常量和字段属性)
  - [方法](#方法)
  - [异步编程](#异步编程)
  - [集合类型](#集合类型)
  - [Lambda表达式](#lambda表达式)
  - [Fluent API(流式接口)](#fluent-api流式接口)
  - [参数](#参数)
  - [属性](#属性)
  - [委托](#委托)
  - [事件](#事件)
  - [泛型](#泛型)
  - [接口](#接口)
  - [多线程](#多线程)
    - [volatile](#volatile)
    - [阻塞](#阻塞)
    - [临界值](#临界值)
    - [锁](#锁)
    - [互斥锁（Mutex）](#互斥锁mutex)
    - [信号量 (Semaphore)](#信号量-semaphore)
    - [信号和句柄（EventWaitHandle,ManualResetEvent，AutoResetEvent）](#信号和句柄eventwaithandlemanualreseteventautoresetevent)
    - [Interlocked](#interlocked)
    - [ReaderWriterLock](#readerwriterlock)
  - [Task,Task](#tasktask)
  - [ThreadPool](#threadpool)
  - [CancellationTokenSource  取消线程任务](#cancellationtokensource--取消线程任务)
  - [字符、字符串和文本处理](#字符字符串和文本处理)
  - [枚举类型和位标志](#枚举类型和位标志)
  - [数组](#数组)
  - [定制特性](#定制特性)
  - [可空值类型](#可空值类型)
  - [异常和状态管理](#异常和状态管理)
  - [托管堆和垃圾回收](#托管堆和垃圾回收)
  - [CLR寄宿和AppDomain](#clr寄宿和appdomain)
  - [程序集加载和反射](#程序集加载和反射)
  - [运行时序列化](#运行时序列化)
  - [与WinRT组件互操作](#与winrt组件互操作)
  - [I/O的异步操作](#io的异步操作)
  - [ML.NET](#mlnet)
- [ASP.NET](#aspnet)
  - [ASHX 处理请求](#ashx-处理请求)
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
  - [WPF属性](#wpf属性)
    - [普通属性](#普通属性)
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
  - [CopyPaste(WPF)](#copypastewpf)
    - [ICopyAble](#icopyable)
    - [IPasteAble](#ipasteable)
    - [CopyPasteProxy](#copypasteproxy)
    - [CopyPasteData](#copypastedata)
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
  - [WPF的类层次结构](#wpf的类层次结构)
  - [XAML](#xaml)
      - [VisualTreeHelper](#visualtreehelper)
      - [LogicalTreeHelper](#logicaltreehelper)
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
  - [元素绑定](#元素绑定)
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
  - [Ubuntu Linux下Dotnet 安装](#ubuntu-linux下dotnet-安装)
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
- [插件式框架](#插件式框架)
  - [Main](#main)
    - [Log4Net配置](#log4net配置)
    - [Log4Net初始化](#log4net初始化)
    - [MEF初始化](#mef初始化)
  - [Plugin实现层](#plugin实现层)
    - [服务实现层](#服务实现层)
      - [CommonService](#commonservice)
        - [LoggerService](#loggerservice)
        - [MessageService](#messageservice)
      - [CommonViews](#commonviews)
        - [DebugPanel.xaml](#debugpanelxaml)
        - [DebugPanelViewModel](#debugpanelviewmodel)
        - [DebugPanel.Xaml.cs](#debugpanelxamlcs)
    - [插件实现层](#插件实现层)
      - [MyPlugin1](#myplugin1)
        - [MyPlugin1](#myplugin1-1)
      - [MyPlugin2](#myplugin2)
        - [MyPlugin2](#myplugin2-1)
    - [StaticData](#staticdata)
  - [Controls](#controls)
    - [Conveter](#conveter)
      - [ProjectVisableConverter](#projectvisableconverter)
    - [DialogCloser](#dialogcloser)
    - [Dialog](#dialog)
    - [Window](#window)
  - [Plugin接口层](#plugin接口层)
    - [Plugin插件模型接口层](#plugin插件模型接口层)
      - [PluginBase](#pluginbase)
      - [View](#view-1)
      - [ViewModel](#viewmodel-1)
    - [服务接口层](#服务接口层)
      - [IDebugOut](#idebugout)
      - [ILogger](#ilogger)
      - [IMessageBox](#imessagebox)
    - [Plugin插件模型接口层](#plugin插件模型接口层-1)
      - [MessageReceivedEventArgs](#messagereceivedeventargs)
  - [Core](#core)
    - [Builder](#builder)
  - [Viwes](#viwes)
    - [CreateProject](#createproject)
      - [Xaml](#xaml-1)
      - [ViewModel](#viewmodel-2)
    - [MainWindow](#mainwindow)
      - [Xaml](#xaml-2)
      - [ViewModel](#viewmodel-3)
    - [SelectDevices](#selectdevices)
      - [Xaml](#xaml-3)
      - [ViewModel](#viewmodel-4)
    - [ViewLocator](#viewlocator)
  - [外部包依赖](#外部包依赖)
  - [LanguageResource实现多语言支持](#languageresource实现多语言支持)

## Donet6 ubuntu下的安装

> > 完整卸载，如果未安装可以不用执行

> sudo apt remove dotnet*

> sudo apt remove netstandard*

> > using gedit 生成99microsoft-dotnet.pref

> sudo gedit /etc/apt/preferences.d/99microsoft-dotnet.pref

> > /etc/apt/preferences.d/99microsoft-dotnet.pref

```
Package: *
Pin: origin "packages.microsoft.com"
Pin-Priority: 1001
```

> > API transport for downloading via HTTPS

> sudo apt install apt-transport-https

> > Download package information

> sudo apt update

> > Install the .NET Core SDK

> sudo apt install dotnet-sdk-6.0

> > 查看是否安装成功

> dotnet --version

> dotnet --help

## C# .Net Base 

### CLR基础 CLR的执行模型

### 生成、打包、部署和管理应用程序及类型

### 共享程序集和强命名程序集

### 类型基础

> 值类型（value type）：byte，short，int，long，float，double，decimal，char，bool 和 struct 统称为值类型。值类型变量声明后，不管是否已经赋值，编译器为其分配内存。  

> > .NET 中，编译器直接支持的数据类型称为基元类型primitive type.基元类型和.NET框架类型FCL中的类型有直接的映射关系，例如：在C#中，int直接映射为System.Int32类型。

> > 结构体是值类型数据结构。它使得一个单一变量可以存储各种数据类型的相关数据。struct 关键字用于创建结构体。

> 引用类型（reference type）：string 和 class统称为引用类型。当声明一个类时，只在栈中分配一小片内存用于容纳一个地址，而此时并没有为其分配堆上的内存空间。当使用 new 创建一个类的实例时，分配堆上的空间，并把堆上空间的地址保存到栈上分配的小片空间中。

### 元组 Tuple

>  C# 7.0 及更高版本中可用，它提供了简洁的语法，用于将多个数据元素分组成一个轻型数据结构。

> > (double, int) t1 = (4.5, 3);

> > (string, bool, int) t1 = ("test",true, 3);

### 常量和字段属性

> 字段（field），是一种表示与对象类型（类与结构体）关联的变量是为一个对象类型存储数据的,字段是类型的成员，以前称为“成员变量”

> > 使用了readonly的属性，只能在定义时，或者构造函数中初始化，其他的地方都不能再修改其值

> > 使用 const 关键字来声明某个常量字段或局部变量。 常量字段和常量局部变量不是变量并且不能修改。 常量可以为数字、布尔值、字符串或 null 引用。 不要创建常量来表示你需要随时更改的信息。 

> 分为两种：实例字段：与对象关联的字段 静态字段：由static修饰，与类型关联的字段

> 定义：属性（property）是一种用于访问对象或类型的特征的成员，特征反应了状态,属性是字段的自然扩展

> > 字段（field），偏向于实例对象在内存中的布局属性（property），偏向于反映现实世界对象的特征（面向对象）

### 方法

> 方法是包含一系列语句的代码块。 程序通过调用该方法并指定任何所需的方法参数使语句得以执行。 在 C# 中，每个执行的指令均在方法的上下文中执行。
> 该方法定义指定任何所需参数的名称和类型。 调用代码调用该方法时，它为每个参数提供了称为参数的具体值。 参数必须与参数类型兼容，但调用代码中使用的参数名（如果有）不需要与方法中定义的参数名相同。 
> 默认情况下，将值类型的实例传递给方法时，传递的是其副本而不是实例本身。 因此，对参数的更改不会影响调用方法中的原始实例。 若要按引用传递值类型实例，请使用 ref 关键字。 

> 扩展方法是C#中新增的很重要的特性之一。为了在不破坏这个类现有封装的前提下又可以为其添加LINQ的支持就需要用到扩展方法。

```
 public static class Extensions
 {
     public static bool IsValidEmailAddress(this string s)
     {
         Regex regex = new Regex(@"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
         return regex.IsMatch(s);
     }
 }
```


### 异步编程

> async和await的概念

> > async：将方法标记为异步方法，表示该方法包含异步操作。

> > await：用于等待一个异步操作完成，然后继续执行下面的代码。await只能在async方法内部使用。

> Task和Task

> > 在异步编程中，经常使用Task和Task<T>来表示异步操作的结果。Task表示一个异步操作，而Task<T>表示一个异步操作的结果。

> 异步和多线程的区别

> > 异步编程和多线程是不同的概念。异步编程不一定涉及多线程，而是利用异步任务的等待和非阻塞特性来提高程序的并发性。多线程是通过创建多个线程来实现并发执行。

```
class Program
{
    static async Task Main(string[] args)
    {
        await DownloadWebsiteAsync();
        Console.WriteLine("下载完成！");
    }

    static async Task DownloadWebsiteAsync()
    {
        using (HttpClient client = new HttpClient())
        {
            string website = "https://www.example.com";
            string content = await client.GetStringAsync(website);
            Console.WriteLine("下载内容长度：" + content.Length);
        }
    }
}
```

> 在异步方法中，异常的处理方式与同步方法类似。您可以使用try-catch块捕获异常。另外，async方法内部的异常不会立即抛出，而是会被包装到Task对象中，您可以通过Task.Exception属性来访问异常。

### 集合类型

> ArrayList

> > ArrayList是List接口的可变数组非同步实现，并允许包括null在内的所有元素，相当于List < object>

> List < T >

> > 泛型的List 类是一个不限长度的集合类型，它内部实际就是一个数组，初始长度是4，每次数组到达限制，就会把现有容量翻倍，它提供用于对集合进行搜索、排序和操作等方法
List是数组链表，数组链表访问快,复杂度O(1),但是添加删除复杂度O(n)

> LinkedList

> > LinkedList是List接口的双向链表非同步实现，并允许包括null在内的所有元素。底层的数据结构是基于双向链表的，LinkedList是指针链表，指针链表访问复杂度是O(n),但是添加删除很快O(1),如果对这个集合在中间的添加删除操作非常频繁的话，就建议使用LinkedList。

> Dictionary < K, V>

> > 存储键值对的关联性集合，查询等操作速度很快,因为它的时间复杂度是O(1)，单线程中推荐使用Dictionary,有泛型优势,且读取速度较快,容量利用更充分.

> Hashtable

> > Hashtable是System.Collections命名空间提供的一个容器，用于处理和表现类似key/value的键值对

> > Hashtable使用了闭散列法来解决冲突，它通过一个结构体bucket来表示哈希表中的单个元素，这个结构体中有三个成员：

> > （1） key ：表示键，即哈希表中的关键字。

> > （2） val ：表示值，即跟关键字所对应值。

> > （3） hash_coll ：它是一个int类型，用于表示键所对应的哈希码。

> > 哈希表的所有元素存放于一个名称为buckets（又称为数据桶） 的bucket数组之中

> > 优点：

> > （1）在使用哈希表保存集合元素（一种键/值对）时，首先要根据键自动计算哈希代码，以确定该元素的保存位置，再把元素的值放入相应位置所指向的存储桶中。在查找时，再次通过键所对应的哈希代码到特定存储桶中搜索，这样将大大减少为查找一个元素进行比较的次数

> > （2）多线程程序中推荐使用Hashtable，对Hashtable进一步调用Synchronized()方法可以获得完全线程安全的类型

> Dictionary< TKey, TValue> 是 Hashtable 的泛型版本，它们之间实现上区别不大，运行效率上有一些差别

> > Hashtable由于键值类型都object，所以涉及装箱拆箱操作，在添加数据的效率上要差一些，但是频繁使用数据时效率更高，HashTable的优点就在于其索引的方式，速度非常快。如果以任意类型键值访问其中元素会快于其他集合，特别是当数据量特别大的时候，效率差别尤其大。

> SortedList

> > 表示基于相关的 IComparer 实现按键进行排序的键/值对的集合,与哈希表类似，区别在于SortedList中的Key数组排好序的

> > 堆栈（Stack）

> > 表示对象的简单的后进先出非泛型集合。Push方法入栈，Pop方法出栈

> > 队列（Queue）

> > 队列先进先出,enqueue方法入队列，dequeue方法出队列

> > SortedList< TKey,TValue>

> > SortedList< TKey,TValue>是支持排序的关联性集合，将数据存储在数组中的。也就是说添加和移除操作都是线性的，时间复杂度是O(n)，因为操作其中的元素可能导致所有的数据移动。但是因为在查找的时候利用了二分搜索，所以查找的性能会好一些，时间复杂度是O(log n)。所以推荐使用场景是这样地：如果你想要快速查找，又想集合按照key的顺序排列，最后这个集合的操作（添加和移除）比较少的话，就是SortedList了。集合中的数据是有序的。可以通过key来匹配数据，也可以通过int下标来获取数据。

> > 添加操作比ArrayList，Hashtable略慢；查找、删除操作比ArrayList快，比Hashtable慢

> > 10）SortedDictioanry< TKey,TValue>

> > SortedDictionary< TKey,TValue>和Dictionary< TKey,TValue>大致上是类似的，但是在实现方式上有一点点区别SortedDictionary< TKey,TValue>用二叉树作为存储结构的。并且按key的顺序排列　　SortedDictionary< TKey,TValue>相比于SortedList< TKey,TValue>其性能优化了 SortedList< TKey,TValue>其内部维护的是数组而SortedDictionary< TKey,TValue>内部维护的是**红黑树(平衡二叉树)**的一种，因此其占用的内存，性能都好于SortedDictionary< TKey,TValue>　唯一差在不能用下标取值。

> > HashSet< T>

> > HashSet是一个无序的能够保持唯一性的集合,不支持下标访问。

> > SortedSet< T>

> > SortedSet内部也是一个二叉树，用来支持按顺序的排列元素。算法，存储结构都与哈希表相同，主要是设计用来做高性能集运算的，例如对两个集合求交集、并集、差集等。集合中包含一组不重复出现且无特定顺序的元素。

> BitArray 

> > BitArray用于二进制运算，“或”、“非”、“与”、"异或非"等这种操作，只能存true或false；

> ListDictionary

> > 单向链表，每次添加数据时都要遍历链表，数据量大时效率较低，数据量较大且插入频繁的情况下，不宜选用

> HybridDictionary

> > HybridDictionary的类，充分利用了Hashtable查询效率高和ListDictionary占用内存空间少的优点，内置了Hashtable和ListDictionary两个容器，添加数据时内部逻辑如下：

> > 当数据量小于8时，Hashtable为null，用ListDictionary保存数据。

> > 当数据量大于8时，实例化Hashtable，数据转移到Hashtable中，然后将　　ListDictionary置为null。

### Lambda表达式

> Lambda表达式是对.NET2.0中匿名方法在语法形式上的进一步改进，仍然以代码说明：

> > var inString = list.FindAll(delegate(string s) { return s.Indexof("YJingLee") >= 0; }); 

> 使用Lambda表达式代码将更自然易懂。

> > var inString = list.FindAll(s => s.Indexof("YJingLee") >= 0); 

### Fluent API(流式接口)

>是软件工程中面向对象API的一种实现方式,以提供更为可读的源码。从表现上来看,接口调用呈现链式调用(瀑布式调用),看起来非常流畅,荡气回肠

```
StringBuilder sb = new StringBuilder()
        .append(1)
        .append("2")
        .append(1.1);

modelBuilder.Entity<Person>().Property(p => p.RowVersion).IsRowVersion();
```

### 参数

### 属性

### 委托

> 委托的定义

> > 委托是C#中的一种引用类型,委托的本质是一个类,定义了方法的类型,是将方法作为参数传递到另一个方法的特殊类。

> 匿名函数

> > 匿名函数是一个“内联”语句或表达式，可在需要委托类型的任何地方使用。 可以使用匿名函数来初始化命名委托，或传递命名委托（而不是命名委托类型）作为方法参数。

> > C#中有两种匿名函数：Lambda 表达式 和 匿名方法。

> 委托的使用

> > 声明委托 private delegate void Delegate1(string parm1);

> > 实例化委托 Delegate1 d1 = new Delegate1(OnDelegate1); 

> > 调用委托 d("teststr");

> > C#内置了许多泛型委托，可以直接使用

> Action

> > Action是无返回值的泛型委托。Action 表示无参，无返回值的委托

> > Action<int,string> 表示有传入参数int,string无返回值的委托

> > Action<int,string,bool> 表示有传入参数int,string,bool无返回值的委托

> > Action<int,int,int,int> 表示有传入4个int型参数，无返回值的委托

> > Action至少0个参数，至多16个参数，无返回值。

> > 使用比较简单 Action<string> action1 = new Action<string>(OnAction1);直接 action1("action1")就可以调用。

> Func委托

> > Func是有返回值的泛型委托，<>中，最后一个类型为返回值类型。

> > Func<int> 表示无参，返回值为int的委托

> > Func<object,string,int> 表示传入参数为object, string 返回值为int的委托

> > Func至少0个参数，至多16个参数，根据返回值泛型返回。必须有返回值，不可void

> > 实例化 Func<string, string, int> func2 = new Func<string, string, int>(OnFunc2); 调用 func2("name1", "name2")。

> Predicate委托

> > 表示一种方法，该方法定义一组条件并确定指定对象是否符合这些条件。

> > 其实就是类似t=>t.GameID==gameInfo.GameID

> > public delegate bool Predicate<in T>(T obj);

> > Predicate 是返回bool型的泛型委托

> > Predicate有且只有一个参数，返回值固定为bool

> 关于委托的总结

> > 委托类似于 C++ 函数指针，但它们是类型安全的。

> > 委托允许将方法作为参数进行传递。

> > 委托可用于定义回调方法。

> > 委托可以链接在一起；例如，可以对一个事件调用多个方法。

> > Delegate至少0个参数，至多32个参数，可以无返回值，也可以指定返回值类型

> > Func可以接受0个至16个传入参数，必须具有返回值

> > Action可以接受0个至16个传入参数，无返回值

> > Predicate只能接受一个传入参数，返回值为bool类型

### 事件

> 事件event是一种特殊的委托，他不能被初始化，event 后边的EventHandler其实就是在初始化事件的委托类型，所以事件只能被订阅取消订阅。

> 异步的事件处理没有阻塞进程，很好的起到了异步方法的作用。

> 以下只是一个简单实例，实际中用while true 这种方式肯定是不可取的。
```
class MyEvent //声明事件
{
    public event EventHandler<EventArgs> OnInput; //定义一个委托类型的事件  
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
    static void Main(string[] args)
    {
        MyEvent Evt = new MyEvent();//实例化
        Evt.OnInput += On_Input; //绑定事件到方法  
        Evt.WaitInput();
    }
    //事件处理方法
    private static void On_Input(object sender, EventArgs e)
    {
        Console.WriteLine("你触发了‘X’！");
    }
}
```

### 泛型

### 接口

### 多线程

> 线程同步

#### volatile 

> volatile关键字指示一个字段可以由多个同时执行的线程修改。出于性能原因，编译器，运行时系统甚至硬件都可能重新排列对存储器位置的读取和写入。声明为 volatile 的字段将从某些类型的优化中排除。不确保从所有执行线程整体来看时所有易失性写入操作均按执行顺序排序。”

> volatile并不能用来做线程同步，它的主要作用时为了让多个线程之间能看到被修改过后最新的值。

#### 阻塞

> 当线程调用Sleep，Join，EndInvoke，线程就处于阻塞状态（Sleep使调用线程阻塞，Join、EndInvoke使另外一个线程阻塞），会立即从cpu退出。（阻塞状态的线程不消耗cpu）

#### 临界值

> 加锁（lock）使用引用类型，值类型加锁时会装箱，产生一个新的对象。使用private修饰，使用public时易产生死锁。（使用lock（this），lock(typeof(实例))时，该类也应该是private）。string不能作为锁对象。不能在lock中使用await关键字

> Monitors lock本质上就是 Monitors.Enter/Monitors.Exit();

#### 锁

> 自旋锁 SpinLock因为自旋锁本质上不会让线程休眠，而是一直循环尝试对资源访问，直到可用。所以自旋锁线程被阻塞时，不进行线程上下文切换，而是空转等待。对于多核CPU而言，减少了切换线程上下文的开销，从而提高了性能。

#### 互斥锁（Mutex）

> > Mutex可以实现进程同步，互斥锁的带有三个参数的构造函数

> > > initiallyOwned: 如果initiallyOwned为true，互斥锁的初始状态就是被所实例化的线程所获取，否则实例化的线程处于未获取状态。name:该互斥锁的名字，在操作系统中只有一个命名为name的互斥锁mutex，如果一个线程得到这个name的互斥锁，其他线程就无法得到这个互斥锁了，必须等待那个线程对这个线程释放。createNew:如果指定名称的互斥体已经存在就返回false，否则返回true。

> Thread test = new Thread(MutexMethod); 

#### 信号量 (Semaphore)

> Semaphore,Semaphore,是负责协调各个线程, 以保证它们能够正确、合理的使用公共资源。也是操作系统中用于控制进程同步互斥的量。Semaphore常用的方法有两个WaitOne()和Release()，Release()的作用是退出信号量并返回前一个计数，而WaitOne()则是阻止当前线程，直到当前线程的WaitHandle 收到信号。这里我举一个例子让大家更容易理解：当我们这样实例化Semaphore时候

#### 信号和句柄（EventWaitHandle,ManualResetEvent，AutoResetEvent）

> CountdownEvent,CountdownEvent的使用和ManualEvent正好相反，是多个线程共同唤醒一个线程。
 
> EventWaitHandle的构造方法允许创建一个命名的EventWaitHandle，来实现跨进程的信号量操作。名字只是一个简单的字符串，只要保证不会跟其它进程的锁冲突即可。

#### Interlocked

> 提供对数的原子操作

#### ReaderWriterLock

> 该锁确保在对资源获取赋值或更新时，只有它自己可以访问这些资源，其他线程都不可以访问。即排它锁。

> > readerwritelock.AcquireWriterLock(t); readerwritelock.ReleaseWriterLock();

### Task,Task<T>

> public class Task : IAsyncResult, IDisposable

```
属性
AsyncState	
获取在创建 Task 时提供的状态对象，如果未提供，则为 null。

CompletedTask	
获取一个已成功完成的任务。

CreationOptions	
获取用于创建此任务的 TaskCreationOptions。

CurrentId	
返回当前正在执行 Task 的 ID。

Exception	
获取导致 AggregateException 提前结束的 Task。 如果 Task 成功完成或尚未引发任何异常，这将返回 null。

Factory	
提供对用于创建和配置 Task 和 Task<TResult> 实例的工厂方法的访问。

Id	
获取此 Task 实例的 ID。

IsCanceled	
获取此 Task 实例是否由于被取消的原因而已完成执行。

IsCompleted	
获取一个值，它表示是否已完成任务。

IsCompletedSuccessfully	
了解任务是否运行到完成。

IsFaulted	
获取 Task 是否由于未经处理异常的原因而完成。

Status	
获取此任务的 TaskStatus。

方法
ConfigureAwait(Boolean)	
配置用于等待此 Task的 awaiter。

ContinueWith	 
创建一个在目标 Task 完成时接收调用方提供的状态信息并执行的延续任务。

Delay
创建一个在指定的毫秒数后完成的任务。

Dispose
释放 Task 类的当前实例所使用的所有资源。

FromCanceled<TResult>(CancellationToken)	
创建 Task<TResult>，它因指定的取消标记进行的取消操作而完成。

FromException(Exception)	
创建 Task，它在完成后出现指定的异常。

FromException<TResult>(Exception)	
创建 Task<TResult>，它在完成后出现指定的异常。

FromResult<TResult>(TResult)	
创建指定结果的、成功完成的 Task<TResult>。

GetAwaiter()	
获取用于等待此 Task 的 awaiter。

Run
将在线程池上运行的指定工作排队，并返回代表该工作的 Task 对象。 可使用取消标记来取消工作（如果尚未启动）。

RunSynchronously
对当前的 Task 同步运行 TaskScheduler。

Start
启动 Task，并将它安排到当前的 TaskScheduler 中执行。

Wait
等待 Task 完成执行过程。 如果在任务完成之前取消标记已取消，等待将终止。

WaitAll
等待提供的所有 Task 对象完成执行过程。

WaitAny
等待提供的任一 Task 对象完成执行过程。

WaitAsync
获取一个 ， Task 它将在完成此操作 Task 或指定的 CancellationToken 请求取消时完成。

WhenAll
创建一个任务，该任务将在可枚举集合中的所有 Task 对象都已完成时完成。

WhenAny
任何提供的任务已完成时，创建将完成的任务。

Yield()	
创建异步产生当前上下文的等待任务。
```

```
Task.Run(() =>
    {
        Thread.Sleep(3000);
        Console.WriteLine("oh my god");
        source.Token.ThrowIfCancellationRequested();
    }, source.Token);

```

### ThreadPool

> QueueUserWorkItem(WaitCallback)	 将方法排入队列以便执行。 此方法在有线程池线程变得可用时执行。

> > WaitCallback的原型是public delegate void WaitCallback(object? state);

> QueueUserWorkItem(WaitCallback, Object)	 将方法排入队列以便执行，并指定包含该方法所用数据的对象。 此方法在有线程池线程变得可用时执行。

> QueueUserWorkItem<TState>(Action<TState>, TState, Boolean) 将 Action<T> 委托指定的方法排入队列以便执行，并提供该方法使用的数据。 此方法在有线程池线程变得可用时执行。

```
属性
CompletedWorkItemCount	
获取迄今为止已处理的工作项数。

PendingWorkItemCount	
获取当前已加入处理队列的工作项数。

ThreadCount	
获取当前存在的线程池线程数。

方法
BindHandle(IntPtr)	
已过时。
将操作系统句柄绑定到 ThreadPool。

BindHandle(SafeHandle)	
将操作系统句柄绑定到 ThreadPool。

GetAvailableThreads(Int32, Int32)	
检索由 GetMaxThreads(Int32, Int32) 方法返回的最大线程池线程数和当前活动线程数之间的差值。

GetMaxThreads(Int32, Int32)	
检索可以同时处于活动状态的线程池请求的数目。 所有大于此数目的请求将保持排队状态，直到线程池线程变为可用。

GetMinThreads(Int32, Int32)	
发出新的请求时，在切换到管理线程创建和销毁的算法之前检索线程池按需创建的线程的最小数量。

QueueUserWorkItem(WaitCallback)	
将方法排入队列以便执行。 此方法在有线程池线程变得可用时执行。

QueueUserWorkItem(WaitCallback, Object)	
将方法排入队列以便执行，并指定包含该方法所用数据的对象。 此方法在有线程池线程变得可用时执行。

QueueUserWorkItem<TState>(Action<TState>, TState, Boolean)	
将 Action<T> 委托指定的方法排入队列以便执行，并提供该方法使用的数据。 此方法在有线程池线程变得可用时执行。

RegisterWaitForSingleObject(WaitHandle, WaitOrTimerCallback, Object, Int32, Boolean)	
注册一个等待 WaitHandle 的委托，并指定一个 32 位有符号整数来表示超时值（以毫秒为单位）。

RegisterWaitForSingleObject(WaitHandle, WaitOrTimerCallback, Object, Int64, Boolean)	
注册一个等待 WaitHandle 的委托，并指定一个 64 位有符号整数来表示超时值（以毫秒为单位）。

RegisterWaitForSingleObject(WaitHandle, WaitOrTimerCallback, Object, TimeSpan, Boolean)	
注册一个等待 WaitHandle 的委托，并指定一个 TimeSpan 值来表示超时时间。

RegisterWaitForSingleObject(WaitHandle, WaitOrTimerCallback, Object, UInt32, Boolean)	
指定表示超时（以毫秒为单位）的 32 位无符号整数，注册一个委托等待 WaitHandle。

SetMaxThreads(Int32, Int32)	
设置可以同时处于活动状态的线程池的请求数目。 所有大于此数目的请求将保持排队状态，直到线程池线程变为可用。

SetMinThreads(Int32, Int32)	
发出新的请求时，在切换到管理线程创建和销毁的算法之前设置线程池按需创建的线程的最小数量。

UnsafeQueueNativeOverlapped(NativeOverlapped*)	
将重叠的 I/O 操作排队以便执行。

UnsafeQueueUserWorkItem(IThreadPoolWorkItem, Boolean)	
将指定的工作项对象排队到线程池。

UnsafeQueueUserWorkItem(WaitCallback, Object)	
将指定的委托排队到线程池，但不会将调用堆栈传播到辅助线程。

UnsafeQueueUserWorkItem<TState>(Action<TState>, TState, Boolean)	
将 Action<T> 委托指定的方法排入队列以便执行，并指定包含该方法使用的数据的对象。 此方法在有线程池线程变得可用时执行。

UnsafeRegisterWaitForSingleObject(WaitHandle, WaitOrTimerCallback, Object, Int32, Boolean)	
注册一个等待 WaitHandle 的委托，并使用一个 32 位带符号整数来表示超时时间（以毫秒为单位）。 此方法不将调用堆栈传播到辅助线程。

UnsafeRegisterWaitForSingleObject(WaitHandle, WaitOrTimerCallback, Object, Int64, Boolean)	
注册一个等待 WaitHandle 的委托，并指定一个 64 位有符号整数来表示超时值（以毫秒为单位）。 此方法不将调用堆栈传播到辅助线程。

UnsafeRegisterWaitForSingleObject(WaitHandle, WaitOrTimerCallback, Object, TimeSpan, Boolean)	
注册一个等待 WaitHandle 的委托，并指定一个 TimeSpan 值来表示超时时间。此方法不将调用堆栈传播到辅助线程。

UnsafeRegisterWaitForSingleObject(WaitHandle, WaitOrTimerCallback, Object, UInt32, Boolean)	
指定表示超时（以毫秒为单位）的 32 位无符号整数，注册一个委托等待 WaitHandle。 此方法不将调用堆栈传播到辅助
```

```
ThreadPool.QueueUserWorkItem(o =>
{

}, source);
```

### CancellationTokenSource  取消线程任务

> CancellationTokenSource cancellationTokenSource = new CancellationTokenSource(3000); 实现定时3000ms取消任务。

> 关联取消,多个任务中的一个取消则其他也取消

```
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

```

```
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
```

> TaskPool 也和其他任务也可以采用类似方法，但是涉及判断，其实并不智能，并且设计打断流水。

```
ThreadPool.QueueUserWorkItem(o =>
{
    for (int i = 0; i < 10000; i++)
    {
        if (!source.Token.IsCancellationRequested)
        {
            Thread.Sleep(100);
            Console.WriteLine(i);
        }
        else
        {
            Console.WriteLine("要求退出");
            break;
        }
    }
}, source);
```

### 字符、字符串和文本处理

### 枚举类型和位标志

### 数组

### 定制特性

### 可空值类型

### 异常和状态管理

### 托管堆和垃圾回收

### CLR寄宿和AppDomain

### 程序集加载和反射

>（1）Assembly：定义和加载程序集，加载在程序集中的所有模块以及从此程序集中查找类型并创建该类型的实例。

> > 创建带参数对象
```
Assembly assembly = Assembly.Load("TestClass");//加载程序集
Type type = assembly.GetType("TestClass.Person");//获取类名称（要带上命名空间）
object o = Activator.CreateInstance(type, new object[] {"a",666 });//创建Person实体,有参构造
Person person = o as Person;
return person;
```

> （2）Module：获取包含模块的程序集以及模块中的类等，还可以获取在模块上定义的所有全局方法或其他特定的非全局方法。

> （3）ConstructorInfo：获取构造函数的名称、参数、访问修饰符（如pulic 或private）和实现详细信息（如abstract或virtual）等。

> （4）MethodInfo(GetMethod/GetMethods)：获取方法的名称、返回类型、参数、访问修饰符（如pulic 或private）和实现详细信息（如abstract或virtual）等。

> > 调用方法

```
Assembly assembly= Assembly.Load("TestClass");
Type type = assembly.GetType("TestClass.Person");
object o = Activator.CreateInstance(type);
MethodInfo methodInfo = type.GetMethod("getName1");
string result=methodInfo.Invoke(o, new object[] { "这是传入参数" }).ToString();
return result;
```

> （5）FiedInfo(GetField/GetFields)：获取字段的名称、访问修饰符（如public或private）和实现详细信息（如static）等，并获取或设置字段值。

> （6）EventInfo(GetEvent/GetEvents)：获取事件的名称、事件处理程序数据类型、自定义属性、声明类型和反射类型等，添加或移除事件处理程序。

> （7）PropertyInfo(GetProperty/GetProperties)：获取属性的名称、数据类型、声明类型、反射类型和只读或可写状态等，获取或设置属性值。

> （8）ParameterInfo：获取参数的名称、数据类型、是输入参数还是输出参数，以及参数在方法签名中的位置等。

> （9）MemberInfo(GetMember/GetMembers):获取字段、事件、属性等各种信息

### 运行时序列化

### 与WinRT组件互操作

### I/O的异步操作

### ML.NET

> 微软人工智能学习

## ASP.NET

### ASHX 处理请求

> > 以下方法包含了处理各种请求，如POST,GET ,并且有获取url参数，和content内容等方法

```
//读取url参数获取参数内容，并分派请求进行处理
public void ProcessRequest(HttpContext context)
{
    context.Response.ContentType = "text/json";
    string querytype = context.Request.QueryString["type"];
    switch (querytype)
    {
        case "add":
            //var addline =JsonConvert.DeserializeObject<Line>(context.Server.UrlDecode(context.Request.Form.ToString()));
            context.Response.Write(JsonConvert.SerializeObject(Add(ProcessRequest<Line>(context))));
            break;

        case "update":
            var updateline = JsonConvert.DeserializeObject<Line>(context.Server.UrlDecode(context.Request.Form.ToString()));
            context.Response.Write(JsonConvert.SerializeObject(Update(updateline)));
            break;
        case "delete":
            string id = context.Request.QueryString["id"];
            context.Response.Write(JsonConvert.SerializeObject(Delete(id)));
            break;
        case "all":
        default:
            context.Response.Write(JsonConvert.SerializeObject(GetLines()));
            break;
    }

}

// 从请求body 种获取json 字符串内容
private T ProcessRequest<T>(HttpContext context) where T : class
{
    context.Response.ContentType = "text/json";
    HttpRequest request = context.Request;
    Stream stream = request.InputStream;
    string json = string.Empty;
    if (stream.Length != 0)
    {
        StreamReader streamReader = new StreamReader(stream);
        json = streamReader.ReadToEnd();
        return JsonConvert.DeserializeObject<T>(json);
    }
    return null;
}
```

## WPF

### WPF 体系结构

#### milcore 

> 是以非托管代码编写的，实现与 DirectX 的紧密集成。milcore.dll是WPF渲染系统的核心，也是媒体集成层的基础。

#### WindowsCodes.dll

> 提供图像支持的低级API(处理、显示以及缩放位图与JPEG图像)

#### Direct3D是图形渲染

#### User32

> 决定实际占有桌面部分。不管拖动，缩放，milcore负责绘制程序恰当部分。

### WPF控件主要基类

#### System.Object

> Equals(Object)	 确定指定对象是否等于当前对象。

> Equals(Object, Object)	确定指定的对象实例是否被视为相等。

> Finalize()	在垃圾回收将某一对象回收前允许该对象尝试释放资源并执行其他清理操作。

> GetHashCode()	作为默认哈希函数。

> GetType()	获取当前实例的 Type。

> MemberwiseClone()	创建当前 Object 的浅表副本。

> ReferenceEquals(Object, Object)	确定指定的 Object 实例是否是相同的实例。

> > Equals和ReferenceEquals方法一样均先对obj1、 obj2进行了装箱（IL代码如图2所示），Equals方法用于值类型比较时，比较的是值类型的比特值，即按位相等性.

> ToString()	返回表示当前对象的字符串。

#### Dispatcher 

> > (Object->Dispatcher)

> > 命名空间:System.Windows.Threading

> > 程序集:WindowsBase.dll

> > 属性

> CurrentDispatcher	

> > 获取当前正在执行的线程的 Dispatcher，并在该线程没有关联的调度程序时创建一个新的 Dispatcher。

> HasShutdownFinished	

> > 确定 Dispatcher 是否已经完成关闭。

> HasShutdownStarted	

> > 确定 Dispatcher 是否正在关闭。

> Hooks	

> > 获取提供有关 Dispatcher 的其他事件信息的挂钩集合。

> Thread	

> > 获取与此 Dispatcher 关联的线程。

> >  方法

> BeginInvoke

> > 用在其上创建了 Dispatcher 的线程上的指定参数，按指定优先级异步执行指定委托。

> BeginInvokeShutdown

> > 异步启动 Dispatcher 的关闭。

> CheckAccess()	

> > 确定调用线程是否为与此 Dispatcher 关联的线程。

> DisableProcessing()	

> > 禁用对 Dispatcher 队列的处理。

> ExitAllFrames()	 请求退出所有帧，包括嵌套的帧。

> FromThread(Thread)	 获取指定线程的 Dispatcher。

> Invoke 在与 Action 关联的线程上同步执行指定的 Dispatcher。

> Invoke<TResult> 在与 Func<TResult> 关联的线程上同步执行指定的 Dispatcher。

> InvokeAsync 在与 Action 关联的线程上异步执行指定的 Dispatcher。

> InvokeAsync<TResult> 在与 Func<TResult> 关联的线程上异步执行指定的 Dispatcher。

> InvokeShutdown()	 同步启动 Dispatcher 的关闭过程。

> PushFrame(DispatcherFrame)	 进入执行循环。

> Run()	 将主执行帧推送到 Dispatcher 的事件队列中。

> ValidatePriority(DispatcherPriority, String)	 确定指定的 DispatcherPriority 是否为有效的优先级。

> VerifyAccess()	 确定调用线程是否可以访问此 Dispatcher。

> Yield()	

> Yield(DispatcherPriority)	 创建异步产生控制权交还给当前计划程序并为该计划程序提供机会处理其他事件的可等待对象。

> > 事件

> ShutdownFinished	当 Dispatcher 完成关闭时发生。

> ShutdownStarted	当 Dispatcher 开始关闭时发生。

> UnhandledException	在通过 Invoke 或 BeginInvoke 执行委托的过程中，如果引发线程异常且未能捕获该异常，则发生此事件。

> UnhandledExceptionFilter	当在筛选阶段通过 Invoke 或 BeginInvoke 执行委托的过程中，如果引发线程异常且未能捕获该异常，则发生此事件。

> > 扩展方法

> BeginInvoke 用正常优先级在依据其创建指定 Dispatcher 的线程上异步执行指定的委托。

> Invoke 用正常优先级在依据其创建指定 Dispatcher 的线程上同步执行指定的委托。

#### DispatcherObject

> > (Object->DispatcherObject)

> > 命名空间:System.Windows.Threading

> > 程序集:WindowsBase.dll

> > WPF/Silverlight 中有许多类继承自DispatcherObject，DispatcherObject提供了处理同步和并发的基本构造。

> > 属性:

> Dispatcher	Gets the Dispatcher this DispatcherObject is associated with. 方法:

> CheckAccess()	Determines whether the calling thread has access to this DispatcherObject.

> VerifyAccess()	

Enforces that the calling thread has access to this DispatcherObject.

#### DependencyObject

> > (Object->DispatcherObject->DependencyObject)

> > 命名空间:System.Windows

> > 程序集:WindowsBase.dll

> > 构建WPF/Silverlight的一个主要思想是属性优先于方法和事件。WPF/Silverlight 提供了丰富的属性系统，其核心是DependencyObject。

> > 方法:METHODS

> ClearValu

Clears the local value of a property. The property to be cleared is specified by a DependencyProperty identifier.

> CoerceValue(DependencyProperty)	

Coerces the value of the specified dependency property. This is accomplished by invoking any CoerceValueCallback function specified in property metadata for the dependency property as it exists on the calling DependencyObject.

> GetLocalValueEnumerator()	

Creates a specialized enumerator for determining which dependency properties have locally set values on this DependencyObject.

> GetValue(DependencyProperty)	

Returns the current effective value of a dependency property on this instance of a DependencyObject.

> InvalidateProperty(DependencyProperty)	

Re-evaluates the effective value for the specified dependency property.

> OnPropertyChanged(DependencyPropertyChangedEventArgs)	

Invoked whenever the effective value of any dependency property on this DependencyObject has been updated. The specific dependency property that changed is reported in the event data.

> ReadLocalValue(DependencyProperty)	

Returns the local value of a dependency property, if it exists.

> SetCurrentValue(DependencyProperty, Object)	

Sets the value of a dependency property without changing its value source.

> SetValue

Sets the local value of a dependency property, specified by its dependency property identifier.

> ShouldSerializeProperty(DependencyProperty)	

Returns a value that indicates whether serialization processes should serialize the value for the provided dependency property.

> > 属性:PROPERTIES

> DependencyObjectType	

Gets the DependencyObjectType that wraps the CLR type of this instance.

> IsSealed	

Gets a value that indicates whether this instance is currently sealed (read-only).

> 主要作用是为WPF/Silverlight 提供２D呈现支持，主要包括输出显示，坐标转换，区域剪切等。

#### Visual

> > (Object->DispatcherObject->DependencyObject->Visual)

> > 命名空间:System.Windows.Media

> > 程序集:PresentationFramework.dll

> > 方法:METHODS

> AddVisualChild(Visual)	

Defines the parent-child relationship between two visuals.

> GetValue(DependencyProperty)	

Returns the current effective value of a dependency property on this instance of a DependencyObject.

> HitTestCore(GeometryHitTestParameters)	

Determines whether a geometry value is within the bounds of the visual object.

> HitTestCore(PointHitTestParameters)	

Determines whether a point coordinate value is within the bounds of the visual object.

> InvalidateProperty(DependencyProperty)	

Re-evaluates the effective value for the specified dependency property.

> IsDescendantOf(DependencyObject)	

Determines whether the visual object is a descendant of the ancestor visual object.

> OnDpiChanged(DpiScale, DpiScale)	

Called when the DPI at which this View is rendered changes.

> OnPropertyChanged(DependencyPropertyChangedEventArgs)	

Invoked whenever the effective value of any dependency property on this DependencyObject has been updated. The specific dependency property that changed is reported in the event data.

> OnVisualParentChanged(DependencyObject)	

Called when the parent of the visual object is changed.

> PointFromScreen(Point)	

Converts a Point in screen coordinates into a Point that represents the current coordinate system of the Visual.

PointToScreen(Point)	

Converts a Point that represents the current coordinate system of the Visual into a Point in screen coordinates.

> ReadLocalValue(DependencyProperty)	

Returns the local value of a dependency property, if it exists.

> SetCurrentValue(DependencyProperty, Object)	

Sets the value of a dependency property without changing its value source.

> TransformToAncestor(Visual)	

Returns a transform that can be used to transform coordinates from the Visual to the specified Visual ancestor of the visual object.

> TransformToAncestor(Visual3D)	

Returns a transform that can be used to transform coordinates from the Visual to the specified Visual3D ancestor of the visual object.

> TransformToDescendant(Visual)	

Returns a transform that can be used to transform coordinates from the Visual to the specified visual object descendant.

> TransformToVisual(Visual)	

Returns a transform that can be used to transform coordinates from the Visual to the specified visual object.

> > 属性:

> DependencyObjectType	

Gets the DependencyObjectType that wraps the CLR type of this instance.

> IsSealed	

Gets a value that indicates whether this instance is currently sealed (read-only).

> VisualBitmapEffectInput	

Gets or sets the BitmapEffectInput value for the Visual.

> VisualBitmapScalingMode	

Gets or sets the BitmapScalingMode for the Visual.

> VisualCacheMode	

Gets or sets a cached representation of the Visual.

> VisualChildrenCount	

Gets the number of child elements for the Visual.

> VisualClearTypeHint	

Gets or sets the ClearTypeHint that determines how ClearType is rendered in the Visual.

> VisualClip	

Gets or sets the clip region of the Visual as a Geometry value.

> VisualEdgeMode	

Gets or sets the edge mode of the Visual as an EdgeMode value.

> VisualEffect	

Gets or sets the bitmap effect to apply to the Visual.

> VisualOffset	

Gets or sets the offset value of the visual object.

> VisualOpacity	

Gets or sets the opacity of the Visual.

> VisualOpacityMask	

Gets or sets the Brush value that represents the opacity mask of the Visual.

> VisualParent	

Gets the visual tree parent of the visual object.

> VisualScrollableAreaClip	

Gets or sets a clipped scrollable area for the Visual.

> VisualTextHintingMode	

Gets or sets the TextHintingMode of the Visual.

> VisualTextRenderingMode	

Gets or sets the TextRenderingMode of the Visual.

> VisualTransform	

Gets or sets the Transform value for the Visual.

> VisualXSnappingGuidelines	

Gets or sets the x-coordinate (vertical) guideline collection.

> VisualYSnappingGuidelines	

Gets or sets the y-coordinate (horizontal) guideline collection.

> >  System.Windows.Markup.UidProperty("Uid")

> > 方法: METHODS

> ApplyTemplate()	

Builds the current template's visual tree if necessary, and returns a value that indicates whether the visual tree was rebuilt by this call.

> ArrangeCore(Rect)	

Implements ArrangeCore(Rect) (defined as virtual in UIElement) and seals the implementation.

> ArrangeOverride(Size)	

When overridden in a derived class, positions child elements and determines a size for a FrameworkElement derived class.

> BeginInit()	

Starts the initialization process for this element.

BeginStoryboard(Storyboard)	

Begins the sequence of actions that are contained in the provided storyboard.

BeginStoryboard(Storyboard, HandoffBehavior)	

Begins the sequence of actions contained in the provided storyboard, with options specified for what should happen if the property is already animated.

BeginStoryboard(Storyboard, HandoffBehavior, Boolean)	

Begins the sequence of actions contained in the provided storyboard, with specified state for control of the animation after it is started.

BringIntoView()	

Attempts to bring this element into view, within any scrollable regions it is contained within.

BringIntoView(Rect)	

Attempts to bring the provided region size of this element into view, within any scrollable regions it is contained within.

> ClearValue(DependencyProperty)	

Clears the local value of a property. The property to be cleared is specified by a DependencyProperty identifier.

FindResource(Object)	

Searches for a resource with the specified key, and throws an exception if the requested resource is not found.

> GetBindingExpression(DependencyProperty)	

Returns the BindingExpression that represents the binding on the specified property.

GetFlowDirection(DependencyObject)	

Gets the value of the FlowDirection attached property for the specified DependencyObject.

GetLocalValueEnumerator()	

Creates a specialized enumerator for determining which dependency properties have locally set values on this DependencyObject.

> GetUIParentCore()	

Returns an alternative logical parent for this element if there is no visual parent.

GetValue(DependencyProperty)	

Returns the current effective value of a dependency property on this instance of a DependencyObject.

> InvalidateProperty(DependencyProperty)	

Re-evaluates the effective value for the specified dependency property.

> IsAncestorOf(DependencyObject)	

Determines whether the visual object is an ancestor of the descendant visual object.

> MeasureCore(Size)	

Implements basic measure-pass layout system behavior for FrameworkElement.

> MeasureOverride(Size)	

When overridden in a derived class, measures the size in layout required for child elements and determines a size for the FrameworkElement-derived class.

> MoveFocus(TraversalRequest)	

Moves the keyboard focus away from this element and to another element in a provided traversal direction.

> OnApplyTemplate()	

When overridden in a derived class, is invoked whenever application code or internal processes call ApplyTemplate().

> OnContextMenuClosing(ContextMenuEventArgs)	

Invoked whenever an unhandled ContextMenuClosing routed event reaches this class in its route. Implement this method to add class handling for this event.

OnContextMenuOpening(ContextMenuEventArgs)	

Invoked whenever an unhandled ContextMenuOpening routed event reaches this class in its route. Implement this method to add class handling for this event.

> OnDpiChanged(DpiScale, DpiScale)	

Called when the DPI at which this View is rendered changes.

> OnGotFocus(RoutedEventArgs)	

Invoked whenever an unhandled GotFocus event reaches this element in its route.

> OnInitialized(EventArgs)	

Raises the Initialized event. This method is invoked whenever IsInitialized is set to true internally.

> OnPropertyChanged(DependencyPropertyChangedEventArgs)	

Invoked whenever the effective value of any dependency property on this FrameworkElement has been updated. The specific dependency property that changed is reported in the arguments parameter. Overrides OnPropertyChanged(DependencyPropertyChangedEventArgs).

> OnRenderSizeChanged(SizeChangedInfo)	

Raises the SizeChanged event, using the specified information as part of the eventual event data.

OnStyleChanged(Style, Style)	

Invoked when the style in use on this element changes, which will invalidate the layout.

> OnToolTipClosing(ToolTipEventArgs)	

Invoked whenever an unhandled ToolTipClosing routed event reaches this class in its route. Implement this method to add class handling for this event.

OnToolTipOpening(ToolTipEventArgs)	

Invoked whenever the ToolTipOpening routed event reaches this class in its route. Implement this method to add class handling for this event.

> ParentLayoutInvalidated(UIElement)	

Supports incremental layout implementations in specialized subclasses of FrameworkElement. ParentLayoutInvalidated(UIElement) is invoked when a child element has invalidated a property that is marked in metadata as affecting the parent's measure or arrange passes during layout.

> PointFromScreen(Point)	

Converts a Point in screen coordinates into a Point that represents the current coordinate system of the Visual.

> RaiseEvent(RoutedEventArgs)	

Raises a specific routed event. The RoutedEvent to be raised is identified within the RoutedEventArgs instance that is provided (as the RoutedEvent property of that event data).

> ReleaseAllTouchCaptures()	

Releases all captured touch devices from this element.

> RemoveVisualChild(Visual)	

Removes the parent-child relationship between two visuals.

> SetBinding(DependencyProperty, String)	

Attaches a binding to this element, based on the provided source property name as a path qualification to the data source.

> SetCurrentValue(DependencyProperty, Object)	

Sets the value of a dependency property without changing its value source.

> SetResourceReference(DependencyProperty, Object)	

Searches for a resource with the specified name and sets up a resource reference to it for the specified property.

> SetValue(DependencyProperty, Object)	

Sets the local value of a dependency property, specified by its dependency property identifier.

ShouldSerializeStyle()	

Returns whether serialization processes should serialize the contents of the Style property.

ShouldSerializeTriggers()	

Returns whether serialization processes should serialize the contents of the Triggers property.

> TransformToAncestor(Visual)	

Returns a transform that can be used to transform coordinates from the Visual to the specified Visual ancestor of the visual object.

> UnregisterName(String)	

Simplifies access to the NameScope de-registration method.

UpdateDefaultStyle()	

Reapplies the default style to the current FrameworkElement.

> > Events

> ContextMenuClosing	ContextMenuOpening	

> DataContextChanged	

> Initialized	 FrameworkElement is initialized. 

> Loaded	 element is laid out, rendered, and ready for interaction.

> RequestBringIntoView	Occurs when BringIntoView(Rect) is called on this element.

> SizeChanged when either the ActualHeight or the ActualWidth properties change value on this element.

> SourceUpdated	Occurs when the source value changes for any existing property binding on this element.

> TargetUpdated	Occurs when the target value changes for any property binding on this element.

> ToolTipClosing/ToolTipOpening	 when any tooltip on the element is closed or opened.

> Unloaded	when the element is removed from within an element tree of loaded elements.

#### UIElement

> > (Object->DispatcherObject->DependencyObject->Visual->UIElement)

> > 命名空间:System.Windows

> > 程序集:PresentationFramework.dll

> > 其中定义很多与输入和焦点有关的特性，例如键盘事件，鼠标，还包括一些与WPF事件模型有关的API。

> > 方法: METHODS

> AddHandler

Adds a routed event handler for a specified routed event, adding the handler to the handler collection on the current element.

> AddToEventRoute(EventRoute, RoutedEventArgs)	

Adds handlers to the specified EventRoute for the current UIElement event handler collection.

> AddVisualChild(Visual)	

Defines the parent-child relationship between two visuals.

> ApplyAnimationClock(DependencyProperty, AnimationClock, HandoffBehavior)	

Applies an animation to a specified dependency property on this element, with the ability to specify what happens if the property already has a running animation.

> Arrange(Rect)	

Positions child elements and determines a size for a UIElement. Parent elements call this method from their ArrangeCore(Rect) implementation (or a WPF framework-level equivalent) to form a recursive layout update. This method constitutes the second pass of a layout update.

> ArrangeCore(Rect)	

Defines the template for WPF core-level arrange layout definition.

> BeginAnimation

Starts a specific animation for a specified animated property on this element, with the option of specifying what happens if the property already has a running animation.

> CaptureMouse()	

Attempts to force capture of the mouse to this element.

> CaptureStylus()	

Attempts to force capture of the stylus to this element.

> CaptureTouch(TouchDevice)	

Attempts to force capture of a touch to this element.

> ClearValue(DependencyProperty)	

Clears the local value of a property. The prope

rty to be cleared is specified by a DependencyProperty identifier.

> GetAnimationBaseValue(DependencyProperty)	

Returns the base property value for the specified property on this element, disregarding any possible animated value from a running or stopped animation.

> GetLocalValueEnumerator()	

Creates a specialized enumerator for determining which dependency properties have locally set values on this DependencyObject.

> GetUIParentCore()	

When overridden in a derived class, returns an alternative user interface (UI) parent for this element if no visual parent exists.

> GetValue(DependencyProperty)	

Returns the current effective value of a dependency property on this instance of a DependencyObject.

> HitTestCore(PointHitTestParameters)	

Implements HitTestCore(PointHitTestParameters) to supply base element hit testing behavior (returning HitTestResult).

> InputHitTest(Point)	

Returns the input element within the current element that is at the specified coordinates, relative to the current element's origin.

> InvalidateArrange()	

Invalidates the arrange state (layout) for the element. After the invalidation, the element will have its layout updated, which will occur asynchronously unless subsequently forced by UpdateLayout().

> InvalidateMeasure()	

Invalidates the measurement state (layout) for the element.

> InvalidateProperty(DependencyProperty)	

Re-evaluates the effective value for the specified dependency property.

> IsAncestorOf(DependencyObject)	

Determines whether the visual object is an ancestor of the descendant visual object.

> MeasureCore(Size)	

When overridden in a derived class, provides measurement logic for sizing this element properly, with consideration of the size of any child element content.

> MoveFocus(TraversalRequest)	

Attempts to move focus from this element to another element. The direction to move focus is specified by a guidance direction, which is interpreted within the organization of the visual parent for this element.

> OnAccessKey(AccessKeyEventArgs)	

Provides class handling for when an access key that is meaningful for this element is invoked.

> OnChildDesiredSizeChanged(UIElement)	

Supports layout behavior when a child element is resized.

> OnCreateAutomationPeer()	

Returns class-specific AutomationPeer implementations for the Windows Presentation Foundation (WPF) infrastructure.

> OnDpiChanged(DpiScale, DpiScale)	

Called when the DPI at which this View is rendered changes.

> OnDragLeave(DragEventArgs)	

Invoked when an unhandled DragLeave attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

OnDragOver(DragEventArgs)	

Invoked when an unhandled DragOver attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnDrop(DragEventArgs)	

Invoked when an unhandled DragEnter attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnGiveFeedback(GiveFeedbackEventArgs)	

Invoked when an unhandled GiveFeedback attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnGotFocus(RoutedEventArgs)	

Raises the GotFocus routed event by using the event data provided.

> OnGotKeyboardFocus(KeyboardFocusChangedEventArgs)	

Invoked when an unhandled GotKeyboardFocus attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnGotMouseCapture(MouseEventArgs)	

Invoked when an unhandled GotMouseCapture attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnGotStylusCapture(StylusEventArgs)	

Invoked when an unhandled GotStylusCapture attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnGotTouchCapture(TouchEventArgs)	

Provides class handling for the GotTouchCapture routed event that occurs when a touch is captured to this element.

> OnIsKeyboardFocusedChanged(DependencyPropertyChangedEventArgs)	

Invoked when an unhandled IsKeyboardFocusedChanged event is raised on this element. Implement this method to add class handling for this event.

> OnIsKeyboardFocusWithinChanged(DependencyPropertyChangedEventArgs)	

Invoked just before the IsKeyboardFocusWithinChanged event is raised by this element. Implement this method to add class handling for this event.

> OnIsMouseCapturedChanged(DependencyPropertyChangedEventArgs)	

Invoked when an unhandled IsMouseCapturedChanged event is raised on this element. Implement this method to add class handling for this event.

> OnIsMouseCaptureWithinChanged(DependencyPropertyChangedEventArgs)	

Invoked when an unhandled IsMouseCaptureWithinChanged event is raised on this element. Implement this method to add class handling for this event.

> OnIsMouseDirectlyOverChanged(DependencyPropertyChangedEventArgs)	

Invoked when an unhandled IsMouseDirectlyOverChanged event is raised on this element. Implement this method to add class handling for this event.

> OnIsStylusCapturedChanged(DependencyPropertyChangedEventArgs)	

Invoked when an unhandled IsStylusCapturedChanged event is raised on this element. Implement this method to add class handling for this event.

> OnIsStylusCaptureWithinChanged(DependencyPropertyChangedEventArgs)	

Invoked when an unhandled IsStylusCaptureWithinChanged event is raised on this element. Implement this method to add class handling for this event.

> OnIsStylusDirectlyOverChanged(DependencyPropertyChangedEventArgs)	

Invoked when an unhandled IsStylusDirectlyOverChanged event is raised on this element. Implement this method to add class handling for this event.

> OnKeyDown(KeyEventArgs)	

Invoked when an unhandled KeyDown attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnKeyUp(KeyEventArgs)	

Invoked when an unhandled KeyUp attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnLostFocus(RoutedEventArgs)	

Raises the LostFocus routed event by using the event data that is provided.

> OnLostKeyboardFocus(KeyboardFocusChangedEventArgs)	

Invoked when an unhandled LostKeyboardFocus attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnLostMouseCapture(MouseEventArgs)	

Invoked when an unhandled LostMouseCapture attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnLostStylusCapture(StylusEventArgs)	

Invoked when an unhandled LostStylusCapture attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnLostTouchCapture(TouchEventArgs)	

Provides class handling for the LostTouchCapture routed event that occurs when this element loses a touch capture.

> OnManipulationBoundaryFeedback(ManipulationBoundaryFeedbackEventArgs)	

Called when the ManipulationBoundaryFeedback event occurs.

> OnManipulationCompleted(ManipulationCompletedEventArgs)	

Called when the ManipulationCompleted event occurs.

> OnManipulationDelta(ManipulationDeltaEventArgs)	

Called when the ManipulationDelta event occurs.

> OnManipulationInertiaStarting(ManipulationInertiaStartingEventArgs)	

Called when the ManipulationInertiaStarting event occurs.

> OnManipulationStarted(ManipulationStartedEventArgs)	

Called when the ManipulationStarted event occurs.

> OnManipulationStarting(ManipulationStartingEventArgs)	

Provides class handling for the ManipulationStarting routed event that occurs when the manipulation processor is first created.

> OnMouseDown/OnMouseEnter/OnMouseLeave/OnMouseLeftButtonDown/OnMouseLeftButtonUp/OnMouseMove/OnMouseRightButtonDown/OnMouseRightButtonUp/OnMouseUp/OnMouseWheel(MouseWheelEventArgs)	 鼠标相关事件

> OnPreviewDragEnter/OnPreviewDragLeave/OnPreviewDragOver/OnPreviewDrop 路由中进入派生自此类的拖拽事件

> OnPreviewGiveFeedback(GiveFeedbackEventArgs)	

Invoked when an unhandled PreviewGiveFeedback attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnPreviewGotKeyboardFocus/OnPreviewKeyDown/OnPreviewKeyUp/OnPreviewLostKeyboardFocus(KeyboardFocusChangedEventArgs)	

Invoked when an unhandled PreviewKeyDown attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnPreviewMouseDown/OnPreviewMouseLeftButtonDown/OnPreviewMouseLeftButtonUp/OnPreviewMouseMove/OnPreviewMouseRightButtonDown/OnPreviewMouseRightButtonUp/OnPreviewMouseUp/OnPreviewMouseWheel 路由鼠标事件

> OnPreviewQueryContinueDrag(QueryContinueDragEventArgs)	

Invoked when an unhandled PreviewQueryContinueDrag attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnPreviewStylusButtonDown/OnPreviewStylusButtonUp/OnPreviewStylusDown/OnPreviewStylusInAirMove/OnPreviewStylusInRange/OnPreviewStylusMove/OnPreviewStylusOutOfRange/OnPreviewStylusSystemGesture/OnPreviewStylusUp 路由触控笔事件

> OnPreviewTextInput(TextCompositionEventArgs)	

Invoked when an unhandled PreviewTextInput attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnPreviewTouchDown/OnPreviewTouchMove/OnPreviewTouchUp 路由触控事件

> OnPropertyChanged(DependencyPropertyChangedEventArgs)	

Invoked whenever the effective value of any dependency property on this DependencyObject has been updated. The specific dependency property that changed is reported in the event data.

> OnQueryCursor(QueryCursorEventArgs)	

Invoked when an unhandled QueryCursor attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnRender(DrawingContext)	

When overridden in a derived class, participates in rendering operations that are directed by the layout system. The rendering instructions for this element are not used directly when this method is invoked, and are instead preserved for later asynchronous use by layout and drawing.

> OnRenderSizeChanged(SizeChangedInfo)	

When overridden in a derived class, participates in rendering operations that are directed by the layout system. This method is invoked after layout update, and before rendering, if the element's RenderSize has changed as a result of layout update.

> OnStylusButtonDown/OnStylusButtonUp/OnStylusDown/OnStylusEnter/OnStylusInAirMove/OnStylusInRange/OnStylusLeave/OnStylusMove/OnStylusOutOfRange/OnStylusSystemGesture/OnStylusUp 触控笔事件

> OnTextInput(TextCompositionEventArgs)	

Invoked when an unhandled TextInput attached event reaches an element in its route that is derived from this class. Implement this method to add class handling for this event.

> OnTouchDown/OnTouchEnter/OnTouchLeave/OnTouchMove/OnTouchUp 触摸屏输入事件

> OnVisualChildrenChanged(DependencyObject, DependencyObject)	

Called when the VisualCollection of the visual object is modified.

> PointFromScreen(Point)	

Converts a Point in screen coordinates into a Point that represents the current coordinate system of the Visual.

> RaiseEvent(RoutedEventArgs)	

Raises a specific routed event. The RoutedEvent to be raised is identified within the RoutedEventArgs instance that is provided (as the RoutedEvent property of that event data).

> ReadLocalValue(DependencyProperty)	

Returns the local value of a dependency property, if it exists.

> ReleaseMouseCapture()	

Releases the mouse capture, if this element held the capture.

> ReleaseStylusCapture()	

Releases the stylus device capture, if this element held the capture.

> ReleaseTouchCapture(TouchDevice)	

Attempts to release the specified touch device from this element.

> RemoveHandler(RoutedEvent, Delegate)	

Removes the specified routed event handler from this element.

> RemoveVisualChild(Visual)	

Removes the parent-child relationship between two visuals.

> ShouldSerializeInputBindings()	

Returns whether serialization processes should serialize the contents of the InputBindings property on instances of this class.

> ShouldSerializeProperty(DependencyProperty)	

Returns a value that indicates whether serialization processes should serialize the value for the provided dependency property.

> TransformToAncestor(Visual)	

Returns a transform that can be used to transform coordinates from the Visual to the specified Visual ancestor of the visual object.

> UpdateLayout()	

Ensures that all visual child elements of this element are properly updated for layout.

> > Events

> DragEnter/DragLeave	/DragOver	/Drop	拖拽事件

> FocusableChanged	

Occurs when the value of the Focusable property changes.

> GiveFeedback	

Occurs when the input system reports an underlying drag-and-drop event that involves this element.

> GotFocus	

Occurs when this element gets logical focus.

> GotKeyboardFocus	

Occurs when the keyboard is focused on this element.

> GotMouseCapture	

Occurs when this element captures the mouse.

> GotStylusCapture	

Occurs when this element captures the stylus.

> GotTouchCapture	

Occurs when a touch is captured to this element.

> IsEnabledChanged	

Occurs when the value of the IsEnabled property on this element changes.

> IsHitTestVisibleChanged	

Occurs when the value of the IsHitTestVisible dependency property changes on this element.

> IsKeyboardFocusedChanged	

Occurs when the value of the IsKeyboardFocused property changes on this element.

> IsKeyboardFocusWithinChanged	

Occurs when the value of the IsKeyboardFocusWithin property changes on this element.

> IsMouseCapturedChanged	

Occurs when the value of the IsMouseCaptured property changes on this element.

> IsMouseCaptureWithinChanged	

Occurs when the value of the IsMouseCaptureWithinProperty changes on this element.

> IsMouseDirectlyOverChanged	

Occurs when the value of the IsMouseDirectlyOver property changes on this element.

> IsStylusCapturedChanged	

Occurs when the value of the IsStylusCaptured property changes on this element.

> IsStylusCaptureWithinChanged	

Occurs when the value of the IsStylusCaptureWithin property changes on this element.

> IsStylusDirectlyOverChanged	

Occurs when the value of the IsStylusDirectlyOver property changes on this element.

> IsVisibleChanged	

Occurs when the value of the IsVisible property changes on this element.

> KeyDown/KeyUp 键盘按键事件

> LayoutUpdated	

Occurs when the layout of the various visual elements associated with the current Dispatcher changes.

> LostFocus	

Occurs when this element loses logical focus.

> LostKeyboardFocus	

Occurs when the keyboard is no longer focused on this element.

> LostMouseCapture	

Occurs when this element loses mouse capture.

> LostStylusCapture	

Occurs when this element loses stylus capture.

> LostTouchCapture	

Occurs when this element loses a touch capture.

> ManipulationBoundaryFeedback	

Occurs when the manipulation encounters a boundary.

> ManipulationCompleted	

Occurs when a manipulation and inertia on the UIElement object is complete.

> ManipulationDelta	

Occurs when the input device changes position during a manipulation.

> ManipulationInertiaStarting	

Occurs when the input device loses contact with the UIElement object during a manipulation and inertia begins.

> ManipulationStarted	

Occurs when an input device begins a manipulation on the UIElement object.

> ManipulationStarting	

Occurs when the manipulation processor is first created.

> MouseDown/MouseEnter/MouseLeave/MouseLeftButtonDown/MouseLeftButtonUp/MouseMove/MouseRightButtonDown/MouseRightButtonUp/MouseUp/MouseWheel	鼠标事件

Occurs when the user rotates the mouse wheel while the mouse pointer is over this element.

> PreviewDragEnter/PreviewDragLeave/PreviewDragOver/PreviewDrop	路由拖拽事件

> PreviewGiveFeedback	

Occurs when a drag-and-drop operation is started.

> PreviewGotKeyboardFocus	

Occurs when the keyboard is focused on this element.

> PreviewKeyDown/PreviewKeyUp	路由键盘按键事件

> PreviewLostKeyboardFocus	

Occurs when the keyboard is no longer focused on this element.

> PreviewMouseDown/PreviewMouseLeftButtonDown/PreviewMouseLeftButtonUp/PreviewMouseMove/PreviewMouseRightButtonDown/PreviewMouseRightButtonUp/PreviewMouseUp/PreviewMouseWheel/PreviewQueryContinueDrag 路由鼠标事件

> PreviewStylusButtonDown/PreviewStylusButtonUp/PreviewStylusDown/PreviewStylusInAirMove/PreviewStylusInRange/PreviewStylusMove/PreviewStylusOutOfRange	/PreviewStylusSystemGesture	/PreviewStylusUp	路由触控笔事件

> PreviewTextInput	

Occurs when this element gets text in a device-independent manner.

> PreviewTouchDown/PreviewTouchMove	/PreviewTouchUp 路由屏幕触控事件

> QueryContinueDrag	

Occurs when there is a change in the keyboard or mouse button state during a drag-and-drop operation.

> QueryCursor	

Occurs when the cursor is requested to display. This event is raised on an element each time that the mouse pointer moves to a new location, which means the cursor object might need to be changed based on its new position.

> StylusButtonDown/StylusButtonUp	/StylusDown	/StylusEnter/StylusInAirMove/StylusInRange	/StylusLeave/StylusMove	/StylusOutOfRange/StylusSystemGesture/StylusUp	触控笔事件

> TextInput	

Occurs when this element gets text in a device-independent manner.

> TouchDown/TouchEnter/TouchLeave/TouchMove/TouchUp	屏幕触控事件

> > 属性:

> AllowDrop	

Gets or sets a value indicating whether this element can be used as the target of a drag-and-drop operation. This is a dependency property.

> AreAnyTouchesCaptured	

Gets a value that indicates whether at least one touch is captured to this element.

> AreAnyTouchesCapturedWithin	

Gets a value that indicates whether at least one touch is captured to this element or to any child elements in its visual tree.

> AreAnyTouchesDirectlyOver	

Gets a value that indicates whether at least one touch is pressed over this element.

> AreAnyTouchesOver	

Gets a value that indicates whether at least one touch is pressed over this element or any child elements in its visual tree.

> BitmapEffect	

Gets or sets a bitmap effect that applies directly to the rendered content for this element. This is a dependency property.

> BitmapEffectInput	

Gets or sets an input source for the bitmap effect that applies directly to the rendered content for this element. This is a dependency property.

> CacheMode	

Gets or sets a cached representation of the UIElement.

> Clip	

Gets or sets the geometry used to define the outline of the contents of an element. This is a dependency property.

> ClipToBounds	

Gets or sets a value indicating whether to clip the content of this element (or content coming from the child elements of this element) to fit into the size of the containing element. This is a dependency property.

> CommandBindings	

Gets a collection of CommandBinding objects associated with this element. A CommandBinding enables command handling for this element, and declares the linkage between a command, its events, and the handlers attached by this element.

> DependencyObjectType	

Gets the DependencyObjectType that wraps the CLR type of this instance.

> Effect	

Gets or sets the bitmap effect to apply to the UIElement. This is a dependency property.

> Focusable	

Gets or sets a value that indicates whether the element can receive focus. This is a dependency property.

> HasAnimatedProperties	

Gets a value indicating whether this element has any animated properties.

> HasEffectiveKeyboardFocus	

Gets a value that indicates whether the UIElement has focus.

> InputBindings	

Gets the collection of input bindings associated with this element.

> IsArrangeValid	

Gets a value indicating whether the computed size and position of child elements in this element's layout are valid.

> IsEnabled	

Gets or sets a value indicating whether this element is enabled in the user interface (UI). This is a dependency property.

> IsEnabledCore	

Gets a value that becomes the return value of IsEnabled in derived classes.

> IsFocused	

Gets a value that determines whether this element has logical focus. This is a dependency property.

> IsHitTestVisible	

Gets or sets a value that declares whether this element can possibly be returned as a hit test result from some portion of its rendered content. This is a dependency property.

> IsInputMethodEnabled	

Gets a value indicating whether an input method system, such as an Input Method Editor (IME), is enabled for processing the input to this element.

> IsKeyboardFocused	

Gets a value indicating whether this element has keyboard focus. This is a dependency property.

> IsKeyboardFocusWithin	

Gets a value indicating whether keyboard focus is anywhere within the element or its visual tree child elements. This is a dependency property.

> IsManipulationEnabled	

Gets or sets a value that indicates whether manipulation events are enabled on this UIElement.

> IsMeasureValid	

Gets a value indicating whether the current size returned by layout measure is valid.

> IsMouseCaptured	

Gets a value indicating whether the mouse is captured to this element. This is a dependency property.

> IsMouseCaptureWithin	

Gets a value that determines whether mouse capture is held by this element or by child elements in its visual tree. This is a dependency property.

> IsMouseDirectlyOver	

Gets a value that indicates whether the position of the mouse pointer corresponds to hit test results, which take element compositing into account. This is a dependency property.

> IsMouseOver	

Gets a value indicating whether the mouse pointer is located over this element (including child elements in the visual tree). This is a dependency property.

> IsSealed	

Gets a value that indicates whether this instance is currently sealed (read-only).

> IsStylusCaptureWithin	

Gets a value that determines whether stylus capture is held by this element, or an element within the element bounds and its visual tree. This is a dependency property.

> IsStylusDirectlyOver	

Gets a value that indicates whether the stylus position corresponds to hit test results, which take element compositing into account. This is a dependency property.

> IsStylusOver	

Gets a value indicating whether the stylus cursor is located over this element (including visual child elements). This is a dependency property.

> IsVisible	

Gets a value indicating whether this element is visible in the user interface (UI). This is a dependency property.

> Opacity	

Gets or sets the opacity factor applied to the entire UIElement when it is rendered in the user interface (UI). This is a dependency property.

> OpacityMask	

Gets or sets an opacity mask, as a Brush implementation that is applied to any alpha-channel masking for the rendered content of this element. This is a dependency property.

> PersistId	

Gets a value that uniquely identifies this element.

> RenderSize	

Gets (or sets) the final render size of this element.

> RenderTransform	

Gets or sets transform information that affects the rendering position of this element. This is a dependency property.

> RenderTransformOrigin	

Gets or sets the center point of any possible render transform declared by RenderTransform, relative to the bounds of the element. This is a dependency property.

> SnapsToDevicePixels	

Gets or sets a value that determines whether rendering for this element should use device-specific pixel settings during rendering. This is a dependency property.

> StylusPlugIns	

Gets a collection of all stylus plug-in (customization) objects associated with this element.

> TouchesCaptured	

Gets all touch devices that are captured to this element.

> TouchesCapturedWithin	

Gets all touch devices that are captured to this element or any child elements in its visual tree.

> TouchesDirectlyOver	

Gets all touch devices that are over this element.

> TouchesOver	

Gets all touch devices that are over this element or any child elements in its visual tree.

> Uid	

Gets or sets the unique identifier (for localization) for this element. This is a dependency property.

> Visibility	

Gets or sets the user interface (UI) visibility of this element. This is a dependency property.

> VisualBitmapEffect	

Gets or sets the BitmapEffect value for the Visual.

> > Fileds:FIELDS:

> AllowDropProperty	

Identifies the AllowDrop dependency property.

> AreAnyTouchesCapturedProperty	

Identifies the AreAnyTouchesCaptured dependency property.

> AreAnyTouchesCapturedWithinProperty	

Identifies the AreAnyTouchesCapturedWithin dependency property.

> AreAnyTouchesDirectlyOverProperty	

Identifies the AreAnyTouchesDirectlyOver dependency property.

> AreAnyTouchesOverProperty	

Identifies the AreAnyTouchesOver dependency property.

> BitmapEffectInputProperty	

Identifies the BitmapEffectInput dependency property.

> BitmapEffectProperty	

Identifies the BitmapEffect dependency property.

> CacheModeProperty	

Identifies the CacheMode dependency property.

> ClipProperty	

Identifies the Clip dependency property.

> ClipToBoundsProperty	

Identifies the ClipToBounds dependency property.

> DragEnterEvent	

Identifies the DragEnter routed event.

> DragLeaveEvent	

Identifies the DragLeave routed event.

> DragOverEvent	

Identifies the DragOver routed event.

> DropEvent	

Identifies the Drop routed event.

> EffectProperty	

Identifies the Effect dependency property.

> FocusableProperty	

Identifies the Focusable dependency property.

> GiveFeedbackEvent	

Identifies the GiveFeedback routed event.

> GotFocusEvent	

Identifies the GotFocus routed event.

> GotKeyboardFocusEvent	

Identifies the GotKeyboardFocus routed event.

> GotMouseCaptureEvent	

Identifies the GotMouseCapture routed event.

> GotStylusCaptureEvent	

Identifies the GotStylusCapture routed event.

> GotTouchCaptureEvent	

Identifies the GotTouchCapture routed event.

> IsEnabledProperty	

Identifies the IsEnabled dependency property.

> IsFocusedProperty	

Identifies the IsFocused dependency property.

> IsHitTestVisibleProperty	

Identifies the IsHitTestVisible dependency property.

> IsKeyboardFocusedProperty	

Identifies the IsKeyboardFocused dependency property.

> IsKeyboardFocusWithinProperty	

Identifies the IsKeyboardFocusWithin dependency property.

> IsManipulationEnabledProperty	

Identifies the IsManipulationEnabled dependency property.

> IsMouseCapturedProperty	

Identifies the IsMouseCaptured dependency property.

> IsMouseCaptureWithinProperty	

Identifies the IsMouseCaptureWithin dependency property.

> IsMouseDirectlyOverProperty	

Identifies the IsMouseDirectlyOver dependency property.

> IsMouseOverProperty	

Identifies the IsMouseOver dependency property.

> IsStylusCapturedProperty	

Identifies the IsStylusCaptured dependency property.

> IsStylusCaptureWithinProperty	

Identifies the IsStylusCaptureWithin dependency property.

> IsStylusDirectlyOverProperty	

Identifies the IsStylusDirectlyOver dependency property.

> IsStylusOverProperty	

Identifies the IsStylusOver dependency property.

> IsVisibleProperty	

Identifies the IsVisible dependency property.

> KeyDownEvent	

Identifies the KeyDown routed event.

> KeyUpEvent	

Identifies the KeyUp routed event.

> LostFocusEvent	

Identifies the LostFocus routed event.

> LostKeyboardFocusEvent	

Identifies the LostKeyboardFocus routed event.

> LostMouseCaptureEvent	

Identifies the LostMouseCapture routed event.

> LostStylusCaptureEvent	

Identifies the LostStylusCapture routed event.

> LostTouchCaptureEvent	

Identifies the LostTouchCapture routed event.

> ManipulationBoundaryFeedbackEvent	

Identifies the ManipulationBoundaryFeedback event.

> ManipulationCompletedEvent	

Identifies the ManipulationCompleted routed event.

> ManipulationDeltaEvent	

Identifies the ManipulationDelta routed event.

> ManipulationInertiaStartingEvent	

Identifies the ManipulationInertiaStarting routed event.

> ManipulationStartedEvent	

Identifies the ManipulationStarted routed event.

> ManipulationStartingEvent	

Identifies the ManipulationStarting routed event.

> MouseDownEvent	

Identifies the MouseDown routed event.

> MouseEnterEvent	

Identifies the MouseEnter routed event.

> MouseLeaveEvent	

Identifies the MouseLeave routed event.

> MouseLeftButtonDownEvent	

Identifies the MouseLeftButtonDown routed event.

> MouseLeftButtonUpEvent	

Identifies the MouseLeftButtonUp routed event.

> MouseMoveEvent	

Identifies the MouseMove routed event.

> MouseRightButtonDownEvent	

Identifies the MouseRightButtonDown routed event.

> MouseRightButtonUpEvent	

Identifies the MouseRightButtonUp routed event.

> MouseUpEvent	

Identifies the MouseUp routed event.

> MouseWheelEvent	

Identifies the MouseWheel routed event.

> OpacityMaskProperty	

Identifies the OpacityMask dependency property.

> OpacityProperty	

Identifies the Opacity dependency property.

> PreviewDragEnterEvent	

Identifies the PreviewDragEnter routed event.

> PreviewDragLeaveEvent	

Identifies the PreviewDragLeave routed event.

> PreviewDragOverEvent	

Identifies the PreviewDragOver routed event.

> PreviewDropEvent	

Identifies the PreviewDrop routed event.

> PreviewGiveFeedbackEvent	

Identifies the PreviewGiveFeedback routed event.

> PreviewGotKeyboardFocusEvent	

Identifies the PreviewGotKeyboardFocus routed event.

> PreviewKeyDownEvent	

Identifies the PreviewKeyDown routed event.

> PreviewKeyUpEvent	

Identifies the PreviewKeyUp routed event.

> PreviewLostKeyboardFocusEvent	

Identifies the PreviewLostKeyboardFocus routed event.

> PreviewMouseDownEvent	

Identifies the PreviewMouseDown routed event.

> PreviewMouseLeftButtonDownEvent	

Identifies the PreviewMouseLeftButtonDown routed event.

> PreviewMouseLeftButtonUpEvent	

Identifies the PreviewMouseLeftButtonUp routed event.

> PreviewMouseMoveEvent	

Identifies the PreviewMouseMove routed event.

> PreviewMouseRightButtonDownEvent	

Identifies the PreviewMouseRightButtonDown routed event.

> PreviewMouseRightButtonUpEvent	

Identifies the PreviewMouseRightButtonUp routed event.

> PreviewMouseUpEvent	

Identifies the PreviewMouseUp routed event.

> PreviewMouseWheelEvent	

Identifies the PreviewMouseWheel routed event.

> PreviewQueryContinueDragEvent	

Identifies the PreviewQueryContinueDrag routed event.

> PreviewStylusButtonDownEvent	

Identifies the PreviewStylusButtonDown routed event.

> PreviewStylusButtonUpEvent	

Identifies the PreviewStylusButtonUp routed event.

> PreviewStylusDownEvent	

Identifies the PreviewStylusDown routed event.

> PreviewStylusInAirMoveEvent	

Identifies the PreviewStylusInAirMove routed event.

> PreviewStylusInRangeEvent	

Identifies the PreviewStylusInRange routed event.

> PreviewStylusMoveEvent	

Identifies the PreviewStylusMove routed event.

> PreviewStylusOutOfRangeEvent	

Identifies the PreviewStylusOutOfRange routed event.

> PreviewStylusSystemGestureEvent	

Identifies the PreviewStylusSystemGesture routed event.

> PreviewStylusUpEvent	

Identifies the PreviewStylusUp routed event.

> PreviewTextInputEvent	

Identifies the PreviewTextInput routed event.

> PreviewTouchDownEvent	

Identifies the PreviewTouchDown routed event.

> PreviewTouchMoveEvent	

Identifies the PreviewTouchMove routed event.

> PreviewTouchUpEvent	

Identifies the PreviewTouchUp routed event.

> QueryContinueDragEvent	

Identifies the QueryContinueDrag routed event.

> QueryCursorEvent	

Identifies the QueryCursor routed event.

> RenderTransformOriginProperty	

Identifies the RenderTransformOrigin dependency property.

> RenderTransformProperty	

Identifies the RenderTransform dependency property.

> SnapsToDevicePixelsProperty	

Identifies the SnapsToDevicePixels dependency property.

> StylusButtonDownEvent	

Identifies the StylusButtonDown routed event.

> StylusButtonUpEvent	

Identifies the StylusButtonUp routed event.

> StylusDownEvent	

Identifies the StylusDown routed event.

> StylusEnterEvent	

Identifies the StylusEnter routed event.

> StylusInAirMoveEvent	

Identifies the StylusInAirMove routed event.

> StylusInRangeEvent	

Identifies the StylusInRange routed event.

> StylusLeaveEvent	

Identifies the StylusLeave routed event.

> StylusMoveEvent	

Identifies the StylusMove routed event.

> StylusOutOfRangeEvent	

Identifies the StylusOutOfRange routed event.

> StylusSystemGestureEvent	

Identifies the StylusSystemGesture routed event.

> StylusUpEvent	

Identifies the StylusUp routed event.

> TextInputEvent	

Identifies the TextInput routed event.

> TouchDownEvent	

Identifies the TouchDown routed event.

> TouchEnterEvent	

Identifies the TouchEnter routed event.

> TouchLeaveEvent	

Identifies the TouchLeave routed event.

> TouchMoveEvent	

Identifies the TouchMove routed event.

> TouchUpEvent	

Identifies the TouchUp routed event.

> UidProperty	

Identifies the Uid dependency property.

> VisibilityProperty	

Identifies the Visibility dependency property. EXPLICIT INTERFACE IMPLEMENTATIONS

> IQueryAmbient.IsAmbientPropertyAvailable(String)	

For a description of this member, see the IsAmbientPropertyAvailable(String) method.

#### FrameworkElement

> > (Object->DispatcherObject->DependencyObject->Visual->UIElement->FrameworkElement)

> > 命名空间:System.Windows

> > 程序集:PresentationFramework.dll

##### Page

##### Control

##### Image

##### Panel

> > 而且还添加了一些功能，例如，布局定义、逻辑树、对象生命周期事件、支持数据绑定和动态资源引用、支持样式和动画。

> > 属性:

> ActualHeight	ActualWidth	实际渲染的高和宽

> AllowDrop	

Gets or sets a value indicating whether this element can be used as the target of a drag-and-drop operation. This is a dependency property.

> BitmapEffect

Gets or sets a bitmap effect that applies directly to the rendered content for this element. This is a dependency property.

> Cursor	

Gets or sets the cursor that displays when the mouse pointer is over this element.

> DataContext	

Gets or sets the data context for an element when it participates in data binding.

> DefaultStyleKey	

Gets or sets the key to use to reference the style for this control, when theme styles are used or defined.

> DependencyObjectType	

Gets the DependencyObjectType that wraps the CLR type of this instance.

> Effect	

Gets or sets the bitmap effect to apply to the UIElement. This is a dependency property.

> ForceCursor	

Gets or sets a value that indicates whether this FrameworkElement should force the user interface (UI) to render the cursor as declared by the Cursor property.

> HorizontalAlignment	

Gets or sets the horizontal alignment characteristics applied to this element when it is composed within a parent element, such as a panel or items control.

> InheritanceBehavior	

Gets or sets the scope limits for property value inheritance, resource key lookup, and RelativeSource FindAncestor lookup.

> LayoutTransform	

Gets or sets a graphics transformation that should apply to this element when layout is performed.

> LogicalChildren	

Gets an enumerator for logical child elements of this element.

> Margin	

Gets or sets the outer margin of an element.

> MaxHeight	 MaxWidth	最大高宽

> MinHeight	MinWidth	最小高宽

> Name	

Gets or sets the identifying name of the element. The name provides a reference so that code-behind, such as event handler code, can refer to a markup element after it is constructed during processing by a XAML processor.

> Parent	

Gets the logical parent element of this element.

> TemplatedParent	

Gets a reference to the template parent of this element. This property is not relevant if the element was not created through a template.

> ToolTip	

Gets or sets the tool-tip object that is displayed for this element in the user interface (UI).

> VerticalAlignment	

Gets or sets the vertical alignment characteristics applied to this element when it is composed within a parent element such as a panel or items control.

> VisualClearTypeHint	

Gets or sets the ClearTypeHint that determines how ClearType is rendered in the Visual.

> VisualTextHintingMode	

Gets or sets the TextHintingMode of the Visual.

> > Fielsds:

> ActualHeightProperty	

Identifies the ActualHeight dependency property.

> ActualWidthProperty	

Identifies the ActualWidth dependency property.

> BindingGroupProperty	

Identifies the BindingGroup dependency property.

> ContextMenuClosingEvent	

Identifies the ContextMenuClosing routed event.

> ContextMenuOpeningEvent	

Identifies the ContextMenuOpening routed event.

> ContextMenuProperty	

Identifies the ContextMenu dependency property.

> CursorProperty	

Identifies the Cursor dependency property.

> DataContextProperty	

Identifies the DataContext dependency property.

> DefaultStyleKeyProperty	

Identifies the DefaultStyleKey dependency property.

> FlowDirectionProperty	

Identifies the FlowDirection dependency property.

> FocusVisualStyleProperty	

Identifies the FocusVisualStyle dependency property.

> ForceCursorProperty	

Identifies the ForceCursor dependency property.

> HeightProperty	

Identifies the Height dependency property.

> HorizontalAlignmentProperty	

Identifies the HorizontalAlignment dependency property.

> InputScopeProperty	

Identifies the InputScope dependency property.

> LanguageProperty	

Identifies the Language dependency property.

> LayoutTransformProperty	

Identifies the LayoutTransform dependency property.

> LoadedEvent	

Identifies the Loaded routed event.

> MarginProperty	

Identifies the Margin dependency property.

> MaxHeightProperty	

Identifies the MaxHeight dependency property.

> MaxWidthProperty	

Identifies the MaxWidth dependency property.

> MinHeightProperty	

Identifies the MinHeight dependency property.

> MinWidthProperty	

Identifies the MinWidth dependency property.

> NameProperty	

Identifies the Name dependency property.

> OverridesDefaultStyleProperty	

Identifies the OverridesDefaultStyle dependency property.

> RequestBringIntoViewEvent	

Identifies the RequestBringIntoView routed event.

> SizeChangedEvent	

Identifies the SizeChanged routed event.

> StyleProperty	

Identifies the Style dependency property.

> TagProperty	

Identifies the Tag dependency property.

> ToolTipClosingEvent	

Identifies the ToolTipClosing routed event.

> ToolTipOpeningEvent	

Identifies the ToolTipOpening routed event.

> ToolTipProperty	

Identifies the ToolTip dependency property.

> UnloadedEvent	

Identifies the Unloaded routed event.

> UseLayoutRoundingProperty	

Identifies the UseLayoutRounding dependency property.

> VerticalAlignmentProperty	

Identifies the VerticalAlignment dependency property.

> WidthProperty	

Identifies the Width dependency property.

#### VisualStateManager

> > (Object->DispatcherObject->DependencyObject->VisualStateManager)

> > 命名空间:System.Windows

> > 程序集:PresentationFramework.dll

> > 管理控件的状态以及用于状态过渡的逻辑。

> > 构造函数

> VisualStateManager()	

> > 初始化 VisualStateManager 类的新实例。

> > 字段

> CustomVisualStateManagerProperty	

> > 标识 CustomVisualStateManager 依赖项属性。

> VisualStateGroupsProperty	

> > 标识 VisualStateGroups 依赖项属性。

> > 属性

> CustomVisualStateManager	

> > 获取或设置在控件的状态间转换的 VisualStateManager 对象。

> VisualStateGroups	

> > 获取或设置 VisualStateGroup 对象的集合。

> > 方法

> GetCustomVisualStateManager(FrameworkElement)	

> > 获取 CustomVisualStateManager 附加属性。

> GetVisualStateGroups(FrameworkElement)	

> > 获取 VisualStateGroups 附加属性。

> GoToElementState(FrameworkElement, String, Boolean)	

> > 使元素在两个状态间转换。 使用此方法转换由应用程序（而非控件）定义的状态。

> GoToState(FrameworkElement, String, Boolean)	

> > 在控件的两种状态之间转换。 使用此方法转换具有 ControlTemplate 的控件的状态。

> GoToStateCore(FrameworkElement, FrameworkElement, String, VisualStateGroup, VisualState, Boolean)	

> > 使控件在状态间过渡。

> RaiseCurrentStateChanged(VisualStateGroup, VisualState, VisualState, FrameworkElement, FrameworkElement)	

> > 在指定的 CurrentStateChanging 对象上引发 VisualStateGroup 事件。

> RaiseCurrentStateChanging(VisualStateGroup, VisualState, VisualState, FrameworkElement, FrameworkElement)	

> > 在指定的 CurrentStateChanging 对象上引发 VisualStateGroup 事件。

> SetCustomVisualStateManager(FrameworkElement, VisualStateManager)	

> > 设置 CustomVisualStateManager 附加属性。

### WPF属性

#### 普通属性

> Get Set封装的Field

#### 依赖项属性Dependency property

> > wpf中的动态绑定就必须依赖依赖项属性来实现，除此之外wpf中最重要的动画Animation也必须基于依赖项属性。

> 使用效率更高的保存机制

> 附加功能

> 更改通知

> 属性值继承

> 使用

> > 注册依赖项属性

> > 添加属性包装器

> 特征

> > 依赖属性提供用来扩展属性功能的功能，这与字段支持的属性相反。 通常，此类功能代表或支持以下特定功能之一：

> > 资源

> > 数据绑定

> > 样式

> > 动画

> > 元数据重写

> > 在从最初注册依赖属性的类派生时，可以通过重写依赖属性的元数据来更改该属性的某些行为。 重写元数据依赖于 DependencyProperty 标识符。 重写元数据不需要重新实现属性。 元数据的更改由属性系统在本机处理；对于所有从基类继承的属性，每个类都有可能基于每个类型保留元数据。以下示例重写依赖属性 DefaultStyleKey 的元数据。 重写此特定依赖属性的元数据是某个实现模式的一部分，该模式创建可以使用主题中的默认样式的控件。

```
public class SpinnerControl : ItemsControl
{
  static SpinnerControl()
  {
    DefaultStyleKeyProperty.OverrideMetadata(
      typeof(SpinnerControl),
      new FrameworkPropertyMetadata(typeof(SpinnerControl))
    );
  }
}
```

> > 属性值继承

> > 下面的示例演示一个绑定，并设置指定绑定（在前面的绑定示例中未显示出来）的源的 DataContext 属性。 子对象中的任何后续绑定都无需指定源，它们可以使用父对象 StackPanel 中 DataContext 的继承值。 （或者，子对象可以选择直接在 Binding 中指定自己的 DataContext 或 Source，并且有意不将继承值用于其绑定的数据上下文。）

```
<StackPanel Canvas.Top="50" DataContext="{Binding Source={StaticResource XmlTeamsSource}}">
 <Button Content="{Binding XPath=Team/@TeamName}"/>
</StackPanel>
```

> 如何自定义依赖属性

> > 1、声明依赖属性变量。

> > 2、在属性系统中进行注册。
 
> > 3、使用.NET属性包装依赖属性

```
public static DependencyProperty  =
    DependencyProperty.Register("Text", //属性名称
    typeof(string), //属性类型
    typeof(TestDependencyPropertyWindow), //该属性所有者，即将该属性注册到那个类上
    new PropertyMetadata("")); //属性默认值
public string Text
{
  get { return (string)GetValue(TextProperty); }
  set { SetValue(TextProperty, value); }
}
```

> 依赖属性的特点

> > 1、属性变更通知

> > 无论什么时候，只要依赖属性的值发生改变，wpf就会自动根据属性的元数据触发一系列的动作，这些动作可以重新呈现UI元素，也可以更新当前的布局，刷新数据绑定等等，这种变更的通知最有趣的特点之一就是属性触发器，它可以在属性值改变的时候，执行一系列自定义的动作，而不需要更改任何其他的代码来实现。通过下面的示例来演示属性变更通知

> > 2、属性值继承

> > 是指属性值自顶向下沿着元素树进行传递。

> > 3、节省内存空间

> > 依赖属性和CLR属性在内存的使用上是截然不同的，每个CLR属性都包含一个非static的字段，因此当我们实例化一个类型的时候，就会创建该类型所拥有的所有CLR属性，也就是说一个对象所占用的内存在调用new操作进行实例化的时候就已经决定了、而wpf允许对象在创建的时候并不包含用于存储数据的空间，只保留在需要用到数据的时候能够获得该默认值，即用其他对象数据或者实时分配空间的能力。

> 共享依赖项属性

#### 附加属性

> 与依赖项属性区别

> > 一。附加属性使用的RegisterAttached方法，而依赖属性使用的是Register方法

> > 二。附加属性使用两个方法进行包装，依赖属性使用CLR属性对GetValue和SetValue两个方法进行包装

> 主要用途，附加项属性值修改时可以获取到被修改对象，

> > 然后去修改该对象的属性，

> > 例如可以绑定附加项属性去修改被附加对象的非依赖项属性等

```
public static readonly DependencyProperty AngleProperty =
  DependencyProperty.RegisterAttached("Angle", typeof(double), typeof(RotationManager), new PropertyMetadata(0.0,OnAngleChanged));

private static void OnAngleChanged(DependencyObject obj, DependencyPropertyChangedEventArgs e)
{
  var element = obj as UIElement; //可以获取到被修改对象
  if (element != null)
  {
    element.RenderTransformOrigin = new Point(0.5, 0.5);
    element.RenderTransform = new RotateTransform((double)e.NewValue);
  }
}
```

### WPF事件

#### 普通事件

> > 以下事件也有路由事件实现。

##### 生命周期事件

> > 在元素被初始化，加载或卸载时发生。

> a.Initialized 元素被实例化，但是窗口的其他部分可能还没有初始化。还没有应用样式和数据绑定。

> b.Loaded 事件 ，应用了样式和数据绑定时，

> c.Unloaded 当元素被释放时，窗口被关闭或特定的元素被从窗口中删除

> FrameworkElement类实现了ISuppertInitialize接口，调用BeginInit()方法，XAML解析器设置所有元素的属性。调用EndInit（），引发Initalized事件。

> 包含其他所有元素的窗口首先引发Loaded事件，都引发了Loaded事件之后，窗口就变的可见了。

##### 鼠标事件

> > 鼠标动作的结果。

##### 键盘事件 

> > 键盘动作的结果，继承自UIElement。

> PreviewKeyDown事件：隧道事件，按键触发

> KeyDown事件：冒泡事件，按键触发

> PreviewTextInput事件：隧道事件，按键完成接受文本输入触发。

> TextInput事件：冒泡事件，按键完成接受文本输入触发。

> PreviewKeyUp事件：隧道事件，释放键触发

> KeyUp事件：冒泡事件，释放键触发

##### 手写笔事件

> > 类似铅笔的手写笔的结果，继承自UIElement。

> StylusButtonDown/StylusButtonUp	/StylusDown	/StylusEnter/StylusInAirMove/StylusInRange	/StylusLeave/StylusMove	/StylusOutOfRange/StylusSystemGesture/StylusUp	触控笔事件

##### 多点触控事件，继承自UIElement。

> TouchDown/TouchEnter/TouchLeave/TouchMove/TouchUp	屏幕触控事件

#### 路由事件

> > （向上冒泡或者向下隧道传播（Preview开始的事件））

> 定义 注册 封装路由事件（RoutedEvent）

> 共享  引发 处理路由事件

> 分类

> > 冒泡：由事件源向上传递一直到根元素

> > 直接：只有事件源才有机会响应事件

> > 隧道：从元素树的根部调用事件处理程序并依次向下深入直到事件源

#### 附加事件

> Microsoft官方：附加事件可用于在非元素类中定义新的 路由事件 ，并在树中的任何元素上引发该事件。 为此，必须将附加事件注册为路由事件，并提供支持附加事件功能的特定 支持代码 。 由于附加事件注册为路由事件，因此在元素树中引发时，它们会传播到元素树中。

> 附加事件是路由事件的一种用法。路由事件的宿主都是拥有可视化实体的界面元素，而附加事件的宿主则不具备显示再用户界面上的能力。

> 定义 WPF 附加事件

> > public static readonly RoutedEvent CleanEvent = EventManager.RegisterRoutedEvent("Clean", RoutingStrategy.Bubble, typeof(RoutedEventHandler), typeof(AquariumFilter));

> 如果在一个非UIElement派生类中注册了路由事件，那么这个类的实例既不能自己激发此路由事件，也不能自己侦听此路由事件，只能把事件的激发附加在具备RaiseEvent方法的对象上，把事件的侦听也交给别的对象去做。

> 引发 WPF 附加事件

> > 使用 UIElement.RaiseEvent 方法在任何 或 ContentElement上UIElement引发附加事件。 引发路由事件时，无论是否附加，都需要将元素树中的元素指定为事件源。 然后，该源将报告为调用方 RaiseEvent 。 例如，若要在 AquariumFilter.Clean 上 aquarium1引发附加的路由事件，

> > aquarium1.RaiseEvent(new RoutedEventArgs(AquariumFilter.CleanEvent));

> 拥有附加事件的类有：

> > Binding类：SourceUpdate事件、TargetUpdated事件

> > Mouse类：MouseEnter事件、MoouseLeave事件、MouseUp事件、MouseDown事件等

> > Keyboard类：KeyDown事件、KeyUp事件等

### 资源

#### 样式

> WPF样式的优先级： 标签内样式(最高) > Windows/UserControl/Page  >  Application.xaml(最低)

```
 <Window>
     <Grid>
         <Grid.Resources>
             <Style TargetType="{x:Type Button}" x:Key="ButtonStyle">
                 <Setter Property="Height" Value="22"/>
                 <Setter Property="Width" Value="60"/>
             </Style>
         </Grid.Resources>
         <Button Content="Button" Style="{StaticResource ButtonStyle}"/>
         <Button Content="Button" Style="{StaticResource ButtonStyle}" Margin="156,144,286,145" />
     </Grid>
 </Window>
```

> 样式基础

> > 样式(Style)是组织和重用格式化选项的重要工具。不是使用重复的标记填充XAML,以便设置外边距、内边距、颜色以及字体等细节，而是创建一系列封装所有这些细节的样式，然后再需要之处通过属性来应用样式。样式是可应用于元素的属性值集合。使用资源的最常见原因之一就是保存样式。使按钮具有统一格式的实现方式一：资源

> 设置属性

```

<Setter Property="FontFamily" Value="Times New Roman"/>

```

> 创建只应用按钮的样式 

```

<Style x:Key="BigFontButtonStyle" TargetType="Button">

  <Setter Property="FontFamily" Value="Times New Roman"/>

  <Setter Property="FontSize" Value="18"/>

  <Setter Property="FontWeight" Value="Bold"/>

</Style>

```

> 关联事件处理程序

```

 <Window.Resources>

    <Style x:Key="MouseOverHighlightStyle">

      <EventSetter Event="TextBlock.MouseEnter" Handler="element_MouseEnter"></EventSetter>

      <EventSetter Event="TextBlock.MouseLeave" Handler="element_MouseLeave"></EventSetter>

    </Style>

  </Window.Resources>

  <Grid Name="gird1" ShowGridLines="True">

    <TextBlock Style="{StaticResource MouseOverHighlightStyle}"></TextBlock>

  </Grid>

```

> 多层样式

```

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

```

> 通过类型自动应用样式

```

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

```

#### 触发器

> Trigger	这是一种最简单的触发器。可以监测依赖项属性的变化，然后设置器改变样式。

```

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

```

> MultiTrigger	与Trigger类似，但这种触发器联合了多个条件。只有满足了所有这些条件，才会启动触发器。

  <Style.Triggers>

        <MultiDataTrigger>

          <MultiDataTrigger.Conditions>

            <Condition Property="Control.IsFocused" Value="true"/>

            <Condition Property="Control.IsMouseOver" Value="true"/>

          </MultiDataTrigger.Conditions>

          <MultiDataTrigger.Setters>

            <Setter Property="Control.Foreground" Value="DarkRed"/>

          </MultiDataTrigger.Setters>

        </MultiDataTrigger>

      </Style.Triggers>

> DataTrigger	这种触发器使用数据绑定，与Trigger类似，只不过监视的是任意绑定数据的变化。

```

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

```

> MultiDataTrigger	联合多个数据触发器。

> EventTrigger	这是最复杂的触发器。当事件发生时，这种触发器应用动画。

#### 模板

> 资源是保存在可执行文件中的一种不可执行数据。在WPF的资源中，几乎可以包含图像、字符串等所有的任意CLR对象，只要对象有一个默认的构造函数和独立的属性。也就是说，应用程序中非程序代码的内容，比如点阵图、颜色、字型、动画/影片档以及字符串常量值，可将它们从程序中独立出来，单独包装成"资源(Resource)"。

#### 使用资源的优势：

> 1. 由于不用写在程序代码中，方便管理：便于更新。

> 2. 优化资源，节省空间。资源一旦定义，便可重复利用。还记得FLASH中的将物体转换为元件吗？一旦将物体转换为元件，就可以重复利用了。在WPF中，似乎与之有共通之处。所不同的是，WPF将资源保存在XAML中，对我们而言是“可见的”。

#### 资源的范围（层级）：

> WPF提供一个封装和存取资源(resource)的机制，我们可将资源建立在应用程序的不同范围上。WPF中，资源定义的位置决定了该资源的可用范围。资源可以定义在如下范围中：

> (1)物件级：此时，资源只能套用在这个Object物件，或套用至该物件的子物件。

> (2)文件级：如果将资源定义在Window或Page层级的XAML档中，那么可以套用到这个文件中的所有物件。

> (3)应用程序级：如果我们将资源定义在App.xaml 中，那么，就可以将资源套用到应用程序内的任何地方。

> (4)字典级：当我们把资源封装成一个资源字典, 定义到一个ResourceDictionary的XAML文件时,就可以在另一个应用程序中重复使用。

### CopyPaste(WPF)

> 需要拦截WIndows消息处理 IPasteAble，ICopyAble由相应控件实现,如果不实现则使用默认机制处理。

#### ICopyAble

```

 public interface ICopyAble

  {

    /// <summary>

    /// 复制操作

    /// </summary>

    /// <param name="IsDeleteSource">是否删除源</param>

    /// <returns></returns>

    CopyPasteData Copy(bool IsDeleteSource);

    /// <summary>

    /// 剪贴版的清空操作

    /// </summary>

    /// <param name="Data"></param>

    void Remove(CopyPasteData Data);

  }

```

#### IPasteAble

```

  /// <summary>

  /// 复制粘贴服务接口

  /// 可以根据用户自己实现具体支持的数据类型所以定义为泛型类

  /// </summary>

  /// <typeparam name="T"></typeparam>

  public interface IPasteAble

  {

    /// <summary>

    /// 粘贴操作

    /// </summary>

    void Paste(CopyPasteData Data);

  }

```

#### CopyPasteProxy

```

  public class CopyPasteProxy

  {

    public CopyPasteData Data { get; set; }

    public ICopyAble Source { get; set; }

    public void Copy(ICopyAble Source,bool IsDeleteSource)

    {

      this.Source = Source;

      if (Source != null)

      {

        Data = Source.Copy(IsDeleteSource);

      }

      else

      {

        Data = new CopyPasteData();

      }

    }

    public void Paste(IPasteAble Destination, bool IsDeleteSource)

    {

      if (Destination != null)

      {

        Destination.Paste(Data);

        if (IsDeleteSource)

        {

          Source.Remove(Data);

        }

      }

    }

    public void OnCopy(bool IsDeleteSource)

    {

      if (Keyboard.FocusedElement is DependencyObject)

      {

        var c = GetParent<ICopyAble>(Keyboard.FocusedElement as DependencyObject);

        if (c != null && c is ICopyAble)

        {

          Copy(c as ICopyAble, IsDeleteSource);

        }

      }

    }

    public void OnPaste(bool IsDeleteSource)

    {

      if (Keyboard.FocusedElement is DependencyObject)

      {

        var p = GetParent<IPasteAble>(Keyboard.FocusedElement as DependencyObject);

        if (p != null && p is IPasteAble)

        {

          Paste(p as IPasteAble, IsDeleteSource);

        }

      }

    }

    private DependencyObject GetParent<T>(DependencyObject o)

    {

      if (o != null && o is DependencyObject)

      {

        var p = VisualTreeHelper.GetParent(o as UIElement);

        if (p != null && p is T)

        {

          return p;

        }

        else if(p != null)

        {

          return GetParent<T>(p);

        }

        {

          return null;

        }

      }

      return null;

    }

  }

```

#### CopyPasteData

```

 public class CopyPasteData

  {

    /// <summary>

    /// 数据类型

    /// </summary>

    public string DataType { get; set; } = "ClipboardDataFromMemo";

    /// <summary>

    /// 数据是否从系统剪贴版获取

    /// </summary>

    public bool IsFromClipboard { get; set; } = true;

    /// <summary>

    /// 数据对象 IsFromClipboard为true则此值无效需要直接获取剪贴板数据

    /// </summary>

    public object Data { get; set; } = null;

    /// <summary>

    /// 获取剪贴板数据

    /// 数据对象 IsFromClipboard为true则此值有效 当然客户可以直接从系统剪贴板直接获取数据

    /// </summary>

    public IDataObject ClipboardData

    {  get

      {

        return Clipboard.GetDataObject();

      } 

    }

  }

```

### Behavior

> 其实就是对通用的事件作一些封装成为行为Behavior 使之通用减少代码量，大多是业务无关的，比如触发一些鼠标移动的动态效果等。

> 老版引用System.Windows.Interactivity.dll

> 新版.net 引用 Microsoft.Xaml.Behaviors;

> 重写Behavior里面的两个函数OnAttached（附加后）与OnDetaching（分离时）

```

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

```

### Command

> WPF的命令系统由几个基本要素构成，它们是：

#### 命令(Command)

> WPF的命令实际上就是实现了ICommand接口的类，平时使用最多的就是RoutedCommand类。我们还会学习使用自定义命令。

> ICommand接口与RoutedCommand

> WPF中的命令是实现了ICommand接口的类。ICommand接口非常简单，只包含两个方法和一个事件：

> Execute方法：命令执行，或者说命令执行于命令目标之上。需要注意的是，现实世界中的命令是不会自己执行的，而这里，执行变成了命令的方法，有点拟人化的味道。

> CanExecute方法：在执行之前探知命令是否可以执行。

> CanExecuteChanged事件：当命令的可执行状态改变的时候，可激发此事件通知其它对象。

> RoutedCommand就是一个实现了ICommand接口的类。RoutedCommand在实现ICommand接口时，并未向Execute和CanExecute方法中添加任何逻辑，也就是说，它是通用的、与具体的业务逻辑无关的。怎么理解“与具体的业务逻辑无关这句话呢”？我们从外部和内部两部分来理解。

#### 命令源(Command Source)

> 即命令的发送者，是实现了ICommandSource接口的类。很多界面元素都实现了这个接口，其中包括Button,ListBoxItem,MenuItem等。

#### 命令目标(Command Target)

> 即命令发送给谁，或者说命令作用在谁的身上。命令目标必须是实现了IInputElement接口的类。

#### 命令关联(Command Binding)

> 负责把一些外围逻辑和命令关联起来，比如执行之前对命令是否可以执行进行判断、命令执行之后还有哪些后续工作等。

### MVVM

#### Model

#### View

#### ViewModel

> INotifyPropertyChanged ViwModel

```

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

```

> 屬性就可以簡寫成為一下方法：

```

public List<DataNode> projectNodes;

        public List<DataNode> ProjectNodes{

      get => projectNodes;

      set => SetProperty(ref projectNodes, value);

    }

```

### Application類

#### 应用程序事件

> Startup：该事件在调用Application.Run()方法之后，并且在主窗口显示之前执行。

> > （1）、处理命令行参数。

> > （2）、打开主窗口。

> > （3）、初始化应用程序范围的资源。

> > （4）、初始化应用程序范围的属性。

> Exit：该事件在应用程序关闭时(不管什么原因)

> SessionEnding：该事件在Windows对话结束时发生

> Activated：当激活应用程序中的窗口时发生该事件，当切换到另外一个window程序时也会触发。

> > 1、 应用程序打开第一个窗口。

> > 2、 用户使用Alt+Tab组合件或者使用任务管理器切换到该应用程序。

> > 3、 用户单击应用程序中一个窗口的任务栏按钮。

> Deactivated：当取消激活应用程序中的窗口时发生该事件，当切换到另外一个window程序时也会触发。

> DispatcherUnhandledException：应用程序只要发生未处理的异常，都会进入该事件。还可将Handled属性设置为true，继续运行应用程序。

### Prism

> Prism 是一个用于构建松耦合、可维护和可测试的 XAML 应用的框架，它支持所有还活着的基于 XAML 的平台，包括 WPF、Xamarin Forms、WinUI 和 Uwp Uno。Prism 提供了一组设计模式的实现，这些模式有助于编写结构良好且可维护的 XAML 应用程序，包括 MVVM、依赖项注入、命令、事件聚合器等。

#### 重要的概念

##### Modules

> Modules是能够独立开发、测试、部署的功能单元，

> Modules可以被设计成实现特定业务逻辑的模块（如Profile Management），也可以被设计成实现通用基础设施或服务的模块 　（如Logging、Exception Management）。

##### Module Catalog：

> 在Prism中，Module Catalog指明了要Load哪些Module，和用什么样的顺序去Load这些Module。

##### Shell

> Shell是宿主应用程序（host application），modules将会被load到Shell中。

> Shell定义了应用程序的整体布局和结构，而不关心寄宿其中的Module，Shell通常实现通用的application service和infrastructure，而应用的逻辑则实现在具体的Module中，同时，Shell也提供了应用程序的顶层窗口。

##### Views：

> Views是应用中展现特定功能的视图，它展现UI、定义交互行为，并且通过数据绑定的方式与ViewModel进行交互。

##### View Model和Presenters

> View Model用来封装应用程序的UI逻辑及其状态。

###### Model

> Model被用来封装数据和相应的验证，以及相关的业务规则来保证数据的一致性和正确性。

###### Commands

> Command被用来封装应用程序功能，Prism提供了Delegate Command和CompositeCommand两个类。

###### Regions：

> Regions是应用程序UI的逻辑区域，它很像一个PlaceHolder，Views在Regions中展现，很多种控件可以被用作Region：ContentControl、ItemsControl、ListBox、TabControl。Views能在Regions编程或者自动呈现，Prism也提供了Region导航的支持。

##### Navigation

> Prism支持两种导航：state-based导航和view-switching导航。

##### EventAggregator

> 组件通常要和其它的组件或者服务进行通信。为此，Prism提供了EventAggregator组件，这个组件实现pub-sub事件机制，允许一些组件发布事件，另一些组件去订阅事件而无需两个组件之间的引用。

##### Dependency Injection container

> Prism使用依赖注入模式来管理组件之间的依赖，Prism被设计使用Unity、Mef等依赖注入容器。

##### Services：

> Services是用来实现非UI相关功能的逻辑，例如logging、exception management、data access。Services可以被定义在应用程序中或者是Module中，Services通常被注册在依赖注入容器中，使得其它的组件可以很容易的定位这个服务。

##### Controllers

> Controller被用来控制在Region中哪个View将会被呈现，同时控制这个View的创建和初始化。

##### Bootstrapper：

> Bootstrapper用来初始化应用程序级别的组件和服务， 它也被用来配置和初始化module catalog和Shell 的View和View Model。

#### Prism.Core、Prism.Wpf 和 Prism.Unity#

> 现在 Prism 只支持 DryIoc 和 Unity 两种 IOC 容器。

> 以 WPF 为例，核心的项目是 Prism.Core，它提供实现 MVVM 模式的核心功能以及部分各平台公用的类。然后是 Prism.Wpf，它提供针对 Wpf 平台的功能，包括导航、弹框等。最后由 Prism.Unity 指定 Unity 作为 IOC 容器。

#### Prism.Core#

> BindableBase 和 ErrorsContainer

> Commanding

> Event Aggregator

> 这些功能已经覆盖了 MVVM 的核心功能。

#### BindableBase 和 ErrorsContainer#

> 数据绑定是 MVVM 的核心元素之一，为了使绑定的数据可以和 UI 交互，数据类型必须继承 INotifyPropertyChanged。 BindableBase 实现了 INotifyPropertyChanged 最简单的封装，它的使用如下：

```

public class MockViewModel : BindableBase

{
  private string _myProperty;
  public string MyProperty
  {
    get { return _myProperty; }
    set { SetProperty(ref _myProperty, value); }
  }
}

```

> 其中 SetProperty 判断 _myProperty 和 value 是否相等，如果不相等就为 _myProperty 赋值并触发 OnPropertyChanged 事件。

> 除了 INotifyPropertyChanged，绑定机制中另一个十分有用的接口是 INotifyDataErrorInfo，它用于公开数据验证的结果。Prism 提供了 ErrorsContainer 以便管理及通知数据验证的错误信息。要使用 ErrorsContainer，可以先写一个类似这样的基类：

```
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

```

> 然后就可以在派生类中通过 ErrorsContainer.SetErrors 和 ErrorsContainer.ClearErrors 管理数据验证的错误信息：

```
public class MockValidatingViewModel : DomainObject
{
  private int mockProperty;
  public int MockProperty
  {
    get
    {
      return mockProperty;
    }

    set
    {
      SetProperty(ref mockProperty, value);
      if (mockProperty < 0)
        ErrorsContainer.SetErrors(() => MockProperty, new string[] { "value cannot be less than 0" });
      else
        ErrorsContainer.ClearErrors(() => MockProperty);
    }
  }
}
```

#### Commanding

> ICommand 同样是 MVVM 模式的核心元素，DelegateCommand 实现了 ICommand 接口，它最基本的使用形式如下，其中 DelegateCommand 构造函数中的第二个参数 canExecuteMethod 是可选的：

```

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

```

> 另外它还有泛型的版本：

```

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

```

> 通常 UI 会根据 ICommand 的 CanExecute 函数的返回值来判断触发此 Command 的 UI 元素是否可用。CanExecute 返回 DelegateCommand 构造函数中的第二个参数 canExecuteMethod 的返回值。如果不传入这个参数，则 CanExecute 一直返回 True。

> 如果 CanExecute 的返回值有变化，可以调用 RaiseCanExecuteChanged 函数，它会触发 CanExecuteChanged 事件并通知 UI 元素重新判断绑定的 ICommand 是否可用。除了主动调用 RaiseCanExecuteChanged，DelegateCommand 还可以用 ObservesProperty 和 ObservesCanExecute 两种形式监视属性，定于属性的 PropertyChanged 事件并改变 CanExecute：

```

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

```

#### Event Aggregator

> 本来Event Aggregator（事件聚合器）或 Messenger 之类的组件本来并不是 MVVM 的一部分，不过现在也成了 MVVM 框架的一个重要元素。解耦是 MVVM 的一个重要目标，'EventAggregator' 则是实现解耦的重要工具。在 MVVM 中，对于 View 和与他匹配的 ViewModel 之间的交互，可以使用 INotifyProperty 和 Icommand；而对于必须通信的不同 ViewModel 或模块，为了使它们之间实现低耦合，可以使用 Prism 中的 EventAggregator。如下图所示，Publisher 和 Scbscriber 之间没有直接关联，它们通过 Event Aggregator 获取 PubSubEvent 并发送及接收消息：

> 要使用 EventAggregator，首先需要定义 PubSubEvent：

> public class TickerSymbolSelectedEvent : PubSubEvent<string>{}

> 发布方和订阅方都通过 EventAggregator 索取 PubSubEvent，在 ViewModel中通常都是通过依赖注入获取一个 IEventAggregator：

```

public class MainPageViewModel

{

  IEventAggregator _eventAggregator;

  public MainPageViewModel(IEventAggregator ea)

  {

    _eventAggregator = ea;

  }

}

```

> 发送方的操作很简单，只需要 通过 GetEvent 拿到 PubSubEvent，把消息发布出去，然后拍拍屁股走人，其它的责任都不用管：

> eventAggregator.GetEvent<TickerSymbolSelectedEvent>().Publish("STOCK0");

> 订阅方是真正使用这些消息并负责任的人，下面是最简单的通过 Subscribe 订阅事件的代码：

```

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

```

> 除了基本的调用方式，Subscribe 函数还有其它可选的参数：

> public virtual SubscriptionToken Subscribe(Action action, ThreadOption threadOption, bool keepSubscriberReferenceAlive)

> 其中 threadOption 指示收到消息后在哪个线程上执行第一个参数定义的 action，它有三个选项：

> PublisherThread，和发布者保持在同一个线程上执行。

> UIThread，在 UI 线程上执行。

> BackgroundThread，在后台线程上执行。

> 第三个参数 keepSubscriberReferenceAlive 默认为 false，它指示该订阅是否为强引用。

> 设置为 false 时，引用为弱引用，用完可以不用管。

> 设置为 true 时，引用为强引用，用完需要使用 Unsubscribe 取消订阅。

> 下面代码是一段订阅及取消订阅的示例：

```

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

```

#### PrismApplication#

> 安装好 Prism.Wpf 和 Prism.Unity 后，下一步要做的是将 App.xaml 的类型替换为 PrismApplication。

```
<prism:PrismApplication x:Class="PrismTest.App"

            xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"

            xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"

            xmlns:prism="http://prismlibrary.com/">

  <Application.Resources>

  </Application.Resources>

</prism:PrismApplication>
```

> 上面是修改过的 App.xaml，将 Application 改为 prism:PrismApplication，并且移除了 StartupUri="MainWindow.xaml"。

> 修改 App.xaml.cs：

```
public partial class App : PrismApplication
{
  public App()
  {
  }

  protected override Window CreateShell()
    => Container.Resolve<ShellWindow>();

}
```

> PrismApplication 不使用 StartupUri ，而是使用 CreateShell 方法创建主窗口。

#### RegisterTypes

> 向IOC容器中注册类型

```
protected override void RegisterTypes(IContainerRegistry containerRegistry)
{
  containerRegistry.RegisterForNavigation<BlankPage, BlankViewModel>(PageKeys.Blank);
  containerRegistry.RegisterForNavigation<MainPage, MainViewModel>(PageKeys.Main);
  containerRegistry.RegisterForNavigation<ShellWindow, ShellViewModel>();

  // Configuration
  var configuration = BuildConfiguration();

  // Register configurations to IoC
  containerRegistry.RegisterInstance<IConfiguration>(configuration);

}
```

#### XAML ContainerProvider#

在 XAML 中直接实例化 ViewModel 并设置 DataContext 是 View 和 ViewModel 之间建立关联的最基本的方法：

Copy

<UserControl.DataContext>

  <viewmodels:MainViewModel/>

</UserControl.DataContext>

但现实中很难这样做，因为相当一部分 ViewModel 都会在构造函数中注入依赖，而 XAML 只能实例化具有无参数构造函数的类型。为了解决这个问题，Prism 提供了 ContainerProvider 这个工具，通过设置 Type 或 Name 从 Container 中解析请求的类型，它的用法如下：

Copy

<TextBlock

 Text="{Binding

  Path=Foo,

  Converter={prism:ContainerProvider {x:Type local:MyConverter}}}" />

<Window>

 <Window.DataContext>

  <prism:ContainerProvider Type="{x:Type local:MyViewModel}" />

 </Window.DataContext>

</Window>

#### ViewModelLocator

Prism 还提供了 ViewModelLocator，用于将 View 的 DataContext 设置为对应的 ViewModel：

Copy

<Window x:Class="Demo.Views.MainWindow"

  ...

  xmlns:prism="http://prismlibrary.com/"

  prism:ViewModelLocator.AutoWireViewModel="True">

在将 View 的 ViewModelLocator.AutoWireViewModel 附加属性设置为 True 的同时，Prism 会为查找这个 View 对应的 ViewModel 类型，然后从 Container 中解析这个类型并设置为 View 的 DataContext。它首先查找 ViewModelLocationProvider 中已经使用 Register 注册的类型，Register 函数的使用方式如下：

Copy

ViewModelLocationProvider.Register<MainWindow, CustomViewModel>();

如果类型未在 ViewModelLocationProvider 中注册，则根据约定好的命名方式找到 ViewModel 的类型，这是默认的查找逻辑的源码：

Copy

var viewName = viewType.FullName;

viewName = viewName.Replace(".Views.", ".ViewModels.");

var viewAssemblyName = viewType.GetTypeInfo().Assembly.FullName;

var suffix = viewName.EndsWith("View") ? "Model" : "ViewModel";

var viewModelName = String.Format(CultureInfo.InvariantCulture, "{0}{1}, {2}", viewName, suffix, viewAssemblyName);

return Type.GetType(viewModelName);

例如 PrismTest.Views.MainView 这个类，对应的 ViewModel 类型就是 PrismTest.ViewModels.MainViewModel。

当然很多项目都不符合这个命名规则，那么可以在 App.xaml.cs 中重写 ConfigureViewModelLocator 并调用 ViewModelLocationProvider.SetDefaultViewTypeToViewModelTypeResolver 改变这个查找规则：

Copy

protected override void ConfigureViewModelLocator()

{

  base.ConfigureViewModelLocator();

  ViewModelLocationProvider.SetDefaultViewTypeToViewModelTypeResolver((viewType) =>

  {

    var viewName = viewType.FullName.Replace(".ViewModels.", ".CustomNamespace.");

    var viewAssemblyName = viewType.GetTypeInfo().Assembly.FullName;

    var viewModelName = $"{viewName}ViewModel, {viewAssemblyName}";

    return Type.GetType(viewModelName);

  });

}

#### Dialog Service

Prism 7 和 8 相对于以往的版本最大的改变在于 View 和 ViewModel 的交互，现在的处理方式变得更加易于使用，这篇文章以其中的 DialogService 作为代表讲解 Prism 如何实现 View 和 ViewModel 之间的交互。

DialogService 内部会调用 ViewModelLocator.AutoWireViewModel，所以使用 DialogService 调用的 View 无需添加这个附加属性。

以往在 WPF 中需要弹出一个窗口，首先新建一个 Window，然后调用 ShowDialog，ShowDialog 阻塞当前线程，直到弹出的 Window 关闭，这时候还可以拿到一个返回值，具体代码差不多是这样：

Copy

var window = new CreateUserWindow { Owner = this };

var dialogResult = window.ShowDialog();

if (dialogResult == true)

{

  var user = window.User;

  //other code;

}

简单直接有用。但在 MVVM 模式中，开发者要假装自己不知道要调用的 View，甚至不知道要调用的 ViewModel。开发者只知道要执行的这个操作的名字，要传什么参数，拿到什么结果，至于具体由谁去执行，开发者要假装不知道（虽然很可能都是自己写的）。为了做到这种效果，Prism 提供了 IDialogService 接口。这个接口的具体实现已经在 PrismApplication 里注册了，用户通常只需要从构造函数里注入这个服务：

Copy

public MainWindowViewModel(IDialogService dialogService)

{

  _dialogService = dialogService;

}

IDialogService 提供两组函数，分别是 Show 和 ShowDialog，对应非模态和模态窗口。它们的参数都一样：弹出的对话框的名称、传入的参数、对话框关闭时调用的回调函数：

Copy

void ShowDialog(string name, IDialogParameters parameters, Action<IDialogResult> callback);

其中 IDialogResult 类型包含 ButtonResult 类型的 Result 属性和 IDialogParameters 类型的 Parameters 属性，前者用于标识关闭对话框的动作（Yes、No、Cancel等），后者可以传入任何类型的参数作为具体的返回结果。下面代码展示了一个基本的 ShowDialog 函数调用方式：

Copy

var parameters = new DialogParameters

{

  { "UserName", "Admin" }

};

_dialogService.ShowDialog("CreateUser", parameters, dialogResult =>

{

  if (dialogResult.Result == ButtonResult.OK)

  {

    var user = dialogResult.Parameters.GetValue<User>("User");

    //other code

  }

});

为了让 IDialogService 知道上面代码中 “CreateUser” 对应的 View，需要在 'App,xaml.cs' 中的 RegisterTypes 函数中注册它对应的 Dialog：

Copy

containerRegistry.RegisterDialog<CreateUserView>("CreateUser");

上面这种注册方式需要依赖 ViewModelLocator 找到对应的 ViewModel，也可以直接注册 View 和对应的 ViewModel：

Copy

containerRegistry.RegisterDialog<CreateUserView, CreateUserViewModel>("CreateUser");

有没有发现上面的 CreateUserWindow 变成了 CreateUserView？因为使用 DialogService 的时候，View 必须是一个 UserControl，DialogService 自己创建一个 Window 将 View 放进去。这样做的好处是 View 可以不清楚自己是一个弹框或者导航的页面，或者要用在拥有不同 Window 样式的其它项目中，反正只要实现逻辑就好了。由于 View 是一个 UserControl，它不能直接控制拥有它的 Window，只能通过在 View 中添加附加属性定义 Window 的样式：

Copy

<prism:Dialog.WindowStyle>

  <Style TargetType="Window">

    <Setter Property="prism:Dialog.WindowStartupLocation" Value="CenterScreen" />

    <Setter Property="ResizeMode" Value="NoResize"/>

    <Setter Property="ShowInTaskbar" Value="False"/>

    <Setter Property="SizeToContent" Value="WidthAndHeight"/>

  </Style>

</prism:Dialog.WindowStyle>

最后一步是实现 ViewModel。对话框的 ViewModel 必须实现 IDialogAware 接口，它的定义如下：

Copy

public interface IDialogAware

{

  /// <summary>

  /// 确定是否可以关闭对话框。

  /// </summary>

  bool CanCloseDialog();

  /// <summary>

  /// 关闭对话框时调用。

  /// </summary>

  void OnDialogClosed();

  /// <summary>

  /// 在对话框打开时调用。

  /// </summary>

  void OnDialogOpened(IDialogParameters parameters);

  /// <summary>

  /// 将显示在窗口标题栏中的对话框的标题。

  /// </summary>

  string Title { get; }

  /// <summary>

  /// 指示 IDialogWindow 关闭对话框。

  /// </summary>

  event Action<IDialogResult> RequestClose;

}

一个简单的实现如下：

Copy

public class CreateUserViewModel : BindableBase, IDialogAware

{

  public string Title => "Create User";

  public event Action<IDialogResult> RequestClose;

  private DelegateCommand _createCommand;

  public DelegateCommand CreateCommand => _createCommand ??= new DelegateCommand(Create);

  private string _userName;

  public string UserName

  {

    get { return _userName; }

    set { SetProperty(ref _userName, value); }

  }

  

  public virtual void RaiseRequestClose(IDialogResult dialogResult)

  {

    RequestClose?.Invoke(dialogResult);

  }

  public virtual bool CanCloseDialog()

  {

    return true;

  }

  public virtual void OnDialogClosed()

  {

  }

  public virtual void OnDialogOpened(IDialogParameters parameters)

  {

    UserName = parameters.GetValue<string>("UserName");

  }

  protected virtual void Create()

  {

    var parameters = new DialogParameters

    {

      { "User", new User{Name=UserName} }

    };

    RaiseRequestClose(new DialogResult(ButtonResult.OK, parameters));

  }

}

上面的代码在 OnDialogOpened 中读取传入的参数，在 RaiseRequestClose 关闭对话框并传递结果。至此就完成了弹出对话框并获取结果的整个流程。

自定义 Window 样式在 WPF 程序中很流行，DialogService 也支持自定义 Window 样式。假设 MyWindow 是一个自定义样式的 Window，自定义一个继承它的 MyPrismWindow 类型，并实现接口 IDialogWindow：

Copy

public partial class MyPrismWindow: MyWindow, IDialogWindow

{

  public IDialogResult Result { get; set; }

}

然后调用 RegisterDialogWindow 注册这个 Window 类型。

Copy

protected override void RegisterTypes(IContainerRegistry containerRegistry)

{

  containerRegistry.RegisterDialogWindow<MyPrismWindow>();

}

这样 DialogService 将会使用这个自定义的 Window 类型作为 View 的窗口。


#### Prism框架 如何在主程序中合理的弹出子窗体

> 最常见的实现方法就是在ViewModel中，直接New ChildWindow，然后直接Show。这样的方法也达到的要求。但是它不符合MVVM分层思想，再就是代码不美观，难以维护，今天我就给大家介绍一种美观又实用的方法。通过Prism中提供的InteractionRequestTrigger事件触发器，实现点击按钮或者用户的某种操作弹出对话框的效果。另外，不要忘了引用此命名空间：

```
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

```

> 创建ChildWindow的基类：ChildWindowActionBase 并从TriggerAction<T>派生，代码如下：


```
public class ChildWindowActionBase : TriggerAction<FrameworkElement>
  {
    protected override void Invoke(object parameter)
    {
      var arg = parameter as InteractionRequestedEventArgs;
      if (arg == null)
        return;
      var windows = this.GetChildWindow(arg.Context);
      var callback = arg.Callback;
      EventHandler handler = null;
      handler =
        (o, e) =>
        {
          windows.Closed -= handler;
          callback();
        };
      windows.Closed += handler;
      windows.ShowDialog();
    }

    Window GetChildWindow(Notification notification)
    {
      var childWindow = this.CreateDefaultWindow(notification);
      childWindow.DataContext = notification;
      return childWindow;
    }

    Window CreateDefaultWindow(Notification notification)
    {
      return (Window)new ChildWindow.ChildWindow();
    }
  }
```

> 到此子窗体已经完成

```
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

```

> 对之对应的ViewModel：

```
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

```

### 拖拽

> https://github.com/punker76/gong-wpf-dragdrop

### WPF的类层次结构

> System.Threading.DispatcherObject类——继承DispatcherObject类，用户界面的元素检查是否在正确的线程，访问调度程序为用户界面线程封送代码。

> System.Windows.DependencyObject类——和屏幕上的元素进行交互主要通过属性进行。 继承DependencyObject类，获得对依赖项属性的支持。

> System.Windows.Media.Visual类——看做绘图对象，Visual类在托管的WPF库和渲染桌面的milcore.dll提供了链接

> System.Windows.UIElement类——UIElement类为WPF本质特征提供支持，如布局、输入、焦点以及事件。实现了成为路由事件的路由系统(第5章)，添加对命令的支持(第9章)

> System.Windows.FrameworkElement类——实现了全部由UIElement类定义的成员。引入数据绑定和样式。

> System.Windows.Shapes.Shape类——基本的形状类都继承自该类

> System.Windows.Controls.Control类——控件是可以和用户进行交互的元素。Control类为设置字体和前景色与背景色提供了附加功能，还有模板支持(第17章)。

> System.Windows.Controls.ContentControl类——所有具有单一内容的控件的基类。控件中的单一内容可以是从普通的字符串乃至具有其他形状和控件组合的布局面板(第6章)。

> System.Windows.Controls.ItemsControl类——是所有显示选项集合的控件的基类，如ListBox控件和TreeView控件

> System.Windows.Controls.Panel类——是所有布局器的基类，布局容器是可以包含一个或多个子元素，并根据特定的规则对子元素进行排列的元素。

### XAML

> x: 前缀：用于映射 XAML xmlns http://schemas.microsoft.com/winfx/2006/xaml。

> x:Class属性（Attribute）：编译成C#代码后对应的类名，如果手动把该属性改成其他后台代码中不包含的类名称，编译后会自动生成该类。如果与后台代码的类名称相同则进行合并（后台代码中的类要用partial修饰）。

> x:Key：为 ResourceDictionary 中的每个资源设置一个唯一的键。

> x:Name：为运行时代码中存在的实例指定运行时对象名称。

> x:Static：启用一个获取静态值的值引用，该静态值只能是一个 XAML 可设置属性。

> x:Type：根据类型名称构造Type 引用。指定采用 Type 的属性 

> XAML的树形结构：

> XAML都是一个树，有唯一根节点，通常为Window或Page。

> 提供VisualTreeHelper和LogicTreeHelper两个帮助类用来查找或操作树。

##### VisualTreeHelper

> 1、FindElementsInHostCoordinates 检索一组对象，这些对象位于某一对象的坐标空间的指定点或 Rect 内。

> 2、GetChild 使用提供的索引，通过检查可视化树获取所提供对象的特定子对象。

> 3、GetChildrenCount 返回在可视化树中在某一对象的子集合中存在的子级的数目。

> 4、GetParent 返回可视化树中某一对象的父对象。

##### LogicalTreeHelper 

> 借助逻辑树，内容模型可以方便地循环访问其可能的子对象。 此外，逻辑树还为某些通知提供框架，

> > BringIntoView(DependencyObject)	尝试使所请求的 UI 元素可见，并在目标上引发 RequestBringIntoView 事件以报告结果。

> > FindLogicalNode(DependencyObject, String)	尝试查找并返回具有指定名称的对象。 搜索从指定对象开始，并持续到逻辑树的子节点中。

> > GetChildren(DependencyObject)	通过处理逻辑树返回指定的对象的即时子对象集合。

> > GetChildren(FrameworkContentElement) 通过处理逻辑树，返回指定 FrameworkContentElement 的直接子对象的集合。

> > GetChildren(FrameworkElement)	通过处理逻辑树，返回指定 FrameworkElement 的直接子对象的集合。

> > GetParent(DependencyObject)	通过处理逻辑树，返回指定对象的父对象。

#### 合并XAMLS命名空间 到 http://url

> 注意看程序集的信息，里面有一堆这样的代码：

```
[assembly: XmlnsDefinition("http://schemas.microsoft.com/winfx/2006/xaml/presentation", "System.Windows.Controls")]
[assembly: XmlnsDefinition("http://schemas.microsoft.com/winfx/2006/xaml/presentation", "System.Windows.Documents")]
[assembly: XmlnsDefinition("http://schemas.microsoft.com/winfx/2006/xaml/presentation", "System.Windows.Shapes")]
[assembly: XmlnsDefinition("http://schemas.microsoft.com/winfx/2006/xaml/presentation", "System.Windows.Shell")]
[assembly: XmlnsDefinition("http://schemas.microsoft.com/winfx/2006/xaml/presentation", "System.Windows.Navigation")]
[assembly: XmlnsDefinition("http://schemas.microsoft.com/winfx/2006/xaml/presentation", "System.Windows.Data")]
[assembly: XmlnsDefinition("http://schemas.microsoft.com/winfx/2006/xaml/presentation", "System.Windows")]
************
```

> 这些代码的作用就是把那些命名空间合并到一个统一的命名空间里，方便调用。我们在自己的程序集里也可以这样用，只要修改AssemblyInfo.cs就可以了。然后我们在XAML里添加命名空间，就会看到自己定义的命名空间了。

### 布局

> StackPanel 在纵向上或横向上排列元素，注意默认会自动充满横向空间和纵向空间，不会自动换行，通过Orientation控制排列方向。

> WrapPanel 采用流式布局，通过Orientation控制流的方向，当到达行尾或列尾时可以实现自动换行。

> DockPanel 可以设置内部元素的停靠方向，通过设置DockPanel.Dock设置子控件的停靠方向。

> Canvas 可以进行绝对定位布局，通过设置Canvas.Left和Canvas.Top等定位元素，除非确定布局不会改变，否则尽量少使用Canvas布局。

> Grid 以网格的形式对元素进行布局

> 通用设置

> > 控制尺寸

> > 1. 高度和宽度

> > FrameworkElement元素会根据内容大小调整尺寸（这里有一个例外，如果Window不设置SizeToContent的话，会根据屏幕分辨率设置自己的大小），它同时有Width（默认值Double.NaN，XAML里可以指定为Auto，意思就是和内容一样大）、Height（默认值同Width）、MinWidth（默认值0）、MinHeight（默认值0）、MaxWidth（默认值Double.PositiveInfinity，XAML里面可以写Infinity）、MaxHeight（默认值同MaxWidth）控制宽高，显然如果Width和Height在Min*和Max*范围内的时候，它们的优先级要比Min*以及Max*高

> > FrameworkElement还有一些与尺寸有关的只读属性：DesiredSize、ActualWidth和ActualHeight、RenderSize；DesiredSize是基于以上属性计算出来的，由父元素（Panel）在布局过程中使用的；RenderSize则是布局结束后元素的尺寸，ActualWidth和ActualHeight与之相同。由于布局操作是异步的，RenderSize的值会晚于Height、Width等基本属性的值，所以依赖RenderSize是不可靠的；UIElement中有一个强制完成布局的方法UpdateLayout()，但由于它会影响性能，而且不能保证正在使用的元素会被正常渲染，所以一般不用

> > 2. Margin和Padding

> > FrameworkElement.Margin：控制元素边界外的空间

> > Control.Padding：控制元素边界内的空间

> > 3. Visibility

> > Collapsed：元素不可见并且不参与布局

> > Visible：元素可见，并参与布局

> > Hidden：元素不可见但是参与布局

##### 控制位置

> 不同父元素（Panel）有不同的方法确定子元素的位置，但是有一些方法是子元素共有的

###### 1. Alignment

####### 比如Canvas就没有给它的子元素分配多余的空间，所以设置HorizontalAlignment和VerticalAlignment不起作用

####### 子元素（FrameworkElement）可以通过设置Alignment（默认值Stretch）控制怎样使用父元素分配给它的多余的空间；“多余的空间”很重要，因为如果父元素按照子元素的大小给它分配空间的话，这两个属性就不起作用了

####### 再比如StackPanel（Orientation属性值这里默认是Vertical，表示子元素垂直排列）只为子元素在水平方向上分配了多余空间，垂直方向上根据尺寸分配，所以设置HorizontalAlignment可以起作用，而设置VerticalAlignment不起作用

###### 2. Content Alignment

####### Control元素还可以通过设置HorizontalContentAlignment和VerticalContentAlignment控制自己的内容元素怎样对齐

###### 3. FlowDirection

####### FrameworkElement可以通过设置此属性改变此元素的内容流动的方向（LeftToRight和RightToLeft），可以作用在面板（Panel）或者拥有子元素的控件上

##### Panel（面板）

> Panel有一个ZIndex附加属性，ZIndex值大的元素会呈现在ZIndex值小的元素上方

> WPF内置的常用面板有：Canvas、StackPanel、WrapPanel、DockPanel、Grid，还有一些大多数时候在控件内部使用的轻量级面板

###### 1. 常用面板

> 常用面板里只记录一下GridSplitter（实际不是Panel类），Grid中可以通过GridSplitter交互改变行列尺寸，哪个单元格尺寸会被影响取决于GridSplitter的对齐值HorizontalAlignment（默认是Right）和VerticalAlignment（默认是Stretch），《WPF揭秘》里有张图，贴在这里，另外ResizeDirection和ResizeBehavior属性也会影响GridSplitter改变单元格尺寸的行为

###### 2. TabPanel

> TabControl的默认样式用它来处理TabItem的布局；TabPanel仅支持从左往右的排列，从上往下的换行，当换行发生时它会平均拉伸元素，使所有的行占据面板的全部宽度

###### 3. ToolBarOverflowPanel

> 仅支持从左往右的排列、从上往下的换行，默认样式的ToolBar就是用它来显示无法在主区域显示的元素，有一个WrapWidth属性

###### 4. ToolBarTray

> 仅支持ToolBar子元素，它会以水平的方式排列ToolBar，并且可以拖动ToolBar生成其他行，或者压缩或扩展相邻的ToolBar

###### 5. UniformGrid

> 子元素按先行后列的顺序添加，并且行列的大小都是*（平均大小）

###### 6. VirtualizingStackPanel

> > 不同于以上的轻量级面板，当绑定大量数据的时候，VirtualizingStackPanel是首选，因为它会临时抛弃显示范围之外的元素以提高性能，ListBox的默认样式使用的就是这个面板

> > 处理内容溢出

> > 当父元素不能满足子元素尺寸需求的时候，子元素可能会拒绝在过小的空间呈现，这种情况下就会发生内容溢出

> > 父元素（Panel）在处理内容溢出的时候，有以下几种策略：

> 1. Clipping（剪辑）

> > UIElement用ClipToBounds属性控制自己是否剪辑超出边界的内容，但是WPF内置面板中只有Canvas支持这个属性，其他诸如Grid等面板设置这个属性也没有用

> > 另外Grid等面板中的子元素通过变换（Transform）超出边界的部分也会被剪辑

> 2. Scrolling（滚屏）

> > 把需要滚屏的元素作为ScrollViewer的子元素即可实现滚屏，但是不要为该元素设置宽度或高度，因为ScollViewer需要根据子元素的内容大小设置合适的水平和垂直滚动范围

> 3. Scaling（缩放）

> > 为了在给定空间中缩放任意元素（ScaleTransform搞不定），可以使用Viewbox，有两个重要属性：Stretch（控制子元素怎样在Viewbox的边界内缩放）、StretchDirection（控制是需要缩小还是放大子元素）。需要注意的是，Viewbox的缩放是在布局之后发生的

> 4. 其他

> > 还有两种策略是换行（Wrapping）和截断（Trimming），换行是WrapPanel用的策略，截断则是TextBlock和AccessText中内联文本使用的策略

### 元素绑定

> 数据绑定是种关系，告诉WPF从源对象提取信息设置目标对象的属性

> 源对象是WPF元素并且源属性是依赖项属性的数据绑定，这是最简单的数据绑定。 

#### 绑定表达式 

> 数据绑定表达式使用XAML扩展标记，以Binding开头，实际上是创建了System.Windows.Data.Binding类实例，且设置两个属性：ElementName属性（源元素）和Path属性（源元素中的属性）。 

#### 绑定错误

> WPF不会引发异常带来通知与数据绑定相关的问题。指定的元素或属性不存在，只是在目标属性中不能显示数据。WPF输出了绑定失败细节的跟踪信息。当调试应用程序时，该信息显示在Visual Studio的输出窗口中。

#### 绑定模式

> 数据绑定的特性是目标会被自动更新，而不管源是被如何修改的。Binding.Mode的所有枚举值：

> OneWay：当源属性变化时更新目标属性

> TwoWay：当源属性变化时更新目标属性，并且当目标属性变化时更新源属性

> OneTime：最初根据源属性设置目标属性。然而，在此之后的所有改变都会被忽略

> OneWayToSource：当目标属性变化时更新源属性

> Default：此类绑定依赖于目标属性，他既可以是双向的，也可以是单向的。

#### 代码创建绑定

> 实例化Binding对象，指定Source，Path，Mode

> 移除：BindingOperation类的ClearBinding()，ClearAllBindings(),都使用DependencyObject的ClearValue()

> 创建动态绑定——根据其他运行时信息修改绑定，或者根据环境创建不同的绑定

> 删除绑定——借助ClearBinding()或ClearAllBindings()方法。

> 创建自定义控件——更容易的修改控件的外观，将特定的细节从标记移到代码中。

> 检索绑定：1 BindingOperations.GetBinding() 2 BindingOperations.GetBingingExpression()

> 多绑定:Mode允许改变绑定方向，（双向绑定），创建多个设置同一属性的绑定表达式。例如TextBox.Text属性创建表达式以链接到TextBlock.FontSize属性，而TextBlock.FontSize又链接到Slider.Value属性的绑定表达式。

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

> Source：静态资源x:Static

> RelativeSource：还要创建嵌套的RelativeSource对象，更常用是使用Binding和RelativeSource标记扩展，将其合并到一个字符串中。{RelativeSource FindAncestor, AncestorType ={x:Type Window}}

> Self：表达式绑定到同一元素的另一个属性上

> FindAncestor：表达式绑定到父元素

> PreviousData：表达式绑定到数据绑定列表中的前一个数据项。在

> TemplateParent：表达式绑定到应用模板的元素

> DataContext属性：将大量元素绑定到同一对象。设置Binding.Source属性相同的方法设置元素的DataContext属性。

> 省略源信息时，为null，继续向上在元素树中查找第一个不为null的数据。Binding Path=Source

### 第三方控件库

> Telerik RadControrls WPF

> DEVExpress

> GrapCity ComponentOne

#### 工具

> Visual Studio 

> Blend

> ILSpy

> Snoop#

> > Snoop是一个开源的WPF UI探索工具，它可以浏览正在运行的WPF程序的可视树、改变它的属性、查看Triggers、设置断点等。虽然现在Visual Studio也可以做到差不多的功能，但Snoop依然是我最喜欢使用的WPF工具之一。

> DebugView

> > DebugView是一个很古老但依然实用的工具，它可以查看应用程序或驱动程序输出的调试信息，而且不仅能查看本地机器，还可以查看远程机器的调试信息。总而言之有了它可以方便查看程序的调试信息，对调试应用很有帮助。

> ReSharper

> > XAML的错误提示

> > 增强的XAML智能感知

> > 导航和查找XAML元素

> > XAML代码重构

> Visual UI Automation Verify

#### 自动化测试的协助工具

> 1、ResXManager

> > ResXManager是用于管理resx资源文件的Visual Studio扩展，它提供了在Visual Studio中统一管理所有资源文件的用户界面。小规模的程序用不上，但一旦资源和资源文件达到一定数量管理这些资源将十分痛苦，这时候ResXManager就必不可少。

> 2、dnSpy

> > dnSpy 是用于 .NET 调试的最有用的工具之一。它是一个很好的反编译器。但是它的主要用途是作为调试器。dnSpy允许你调试任何 .NET程序你，而无需考虑符号或者源代码。

> > 该工具的外观和感觉类似于Visual Studio。当你开始调试没有符号或者源代码的.NET进程时，dnSpy将向你显示反编译的代码。现在，这里有个魔术：你可以在反编译的代码本上中放置断点。遇到这些断点时，你将看到局部变量，线程，调用堆栈，并具有完整的调试经验。这使dnSpy成为调试第三方代码和调试生产环境的首选工具。

> > 如果你使用dnSpy启动进程，那么一切将正常运行。但是，如果你附加到正在运行的进程时，则已加载的模块将保持优化状态。优化代码后，将不会遇到某些断点，也不会显示某些局部变量。

> 3、dotPeek

> > dotPeek是JetBrains的免费.NET反编译器。它们的许多工具实际上进入了该列表。与两个反编译器（如ILSpy或JustDecompile）相比，我更喜欢dotPeek，这有两个原因：

> > dotPeek可以从任何程序集中创建符号服务区，即使没有符号或源代码也是如此。它像dnSpy一样，它或反编译代码并从中创建符号。借助dotPeek，Visual Studio就像dnSpy一样调试任何第三方代码。要查看准确程度，请参阅我的文章：在Visual Studio中调试没有符号的第三方.NET代码，后续会进行翻译。

> 4、dotTrace

> > dotTrace是JetBrains的另一个出色工具。这是我最喜欢的性能分析工具。dotTrance允许你“记录”应用程序的运行，然后分析记录的性能。你将能够看到每种调用方法花费了多长时间，数据库条用，HTTP请求以及垃圾回收期间花费的时间等等。

> > 上图显示了对Visual Studio的简短记录分析。你可以看到ShowWindow花费了155毫秒，其中包括HwndSourceHook（42ms），Convert（16ms）等方法用时。此方法的执行包括42%的WPF调用，20%的用户代码，12%的GC等待，10%的Collections代码，10%的反射和5%的系统代码。太好了吧？

> 5、SciTech's .NET Memory Profiler

> > 内存分析器是解决内存问题必不可少的另一类工具。这些可能是由于GC（GC压力）引起的内存泄露或性能影响。如果你有足够大的应用程序，那么迟早会遇到内存问题。我希望为你以后着想，因为这些类型的问题可能是毁灭性的。

> > 内存探查器可以拍摄“内存快照”，并让你对器进行调查。你将看到哪些对象占用最多的内存，谁引用了它们，以及为什么未进行垃圾回收。通过比较两个快照，可以发现内存泄露。

> 6、OzCode

> > OzCode是独特的Visual Studio扩展。其唯一目的是帮助你在Visual Studio中进行交互式调试。OzCode具有很多功能，可以分为4部分：

> > 1.上方显示 - OzCode在调试期间添加了一些有用的可视化功能。这包括红色/绿色突出显示并显示对象的选定属性：还有其他内容，例如将表达式分解成各个部分:

> > 2.LINQ调试 - LINQ在编写代码时很棒，但是很难调试。OzCode允许在调试过程中以几乎完美的方式研究LINQ表达式。

> > 要了解有关使用或不使用OzCode调试LINQ的更多信息，请查看我的文章：如何在C#中调试LINQ查询。

> > 3.数据提示 - 数据提示是将鼠标悬停在Visual Studio中的变量上时看到的弹出窗口。OzCode用自己的更好的数据提示替换了该窗口。它允许“收藏夹”属性，搜索，导出为JSON和其他功能。

> > 4.时间穿梭 - OzCode 4 添加了新的革命性调试功能。它可以预测未来而无需移动断点。也就是说，你将能够看到当前调试位置之后发生的代码行中发生的情况。不过，此功能并非在所有情况下都有效。例如，OzCode无法预测HTTP请求结果或SQL请求之类的事情，因为它必须为此执行它们。

> 7、SysInternals Suite

> > SysInternals是一套用于对Windows软件进行故障排除和监视的实用程序。它包括一些我们调试所需的最重要的工具。我建议下载整个套件并将其保存在易于命令行键入的位置，例如：C:\Sysinternals。有很多工具，其中一些比其他工具更有用。让我们列出一些.NET最重要的。

> > Process Explorer

> > Process Explorer就像类固醇上的Windows Task Manager。它具有许多对调试有用的功能，这里是其中的一些：

> > 查看加载的模块

> > 查看句柄

> > 创建Dump

> > 查看进程树

> > 查看性能计数器

> > Process Monitor

> > Process Monitor 也称为ProcMon，允许你监视流程活动事件。具体的说，你可以弹道注册表事件，文件事件，网络事件，线程活动和性能分析事件。如果你想找出你的过程涉及哪些文件或注册表，那么ProcMon可以为你提供帮助。

> > ProcDump

> > ProcDump是用于保存转储文件的命令行工具。它可以立即或在触发器上生成转储。例如，在崩溃或挂起时创建转储。这是我推荐的用于捕获转储的工具。以下是它的一些功能：

> > 立即创建转储

> > 创建具有特定间隔的多个转储（例如3个转储，相隔5秒）

> > 一旦超过CPU阈值，就创建转储

> > 如果进程挂起，则创建转储

> > 崩溃时创建转储

> > 若要查找有关ProcDump和Dump的更多信息，请参阅我的文章：2019年如果创建、使用和调试.NET 应用程序崩溃转储。

> 8、Performance Monitor (PerfMon)

> > Windows中有一种称为“性能计数器”的内置机制。这些计数器可让你根据计算机上发生的事情跟踪大量有用的指标。这些可能是系统范围内的指标，也可能是针对特定过程的指标。以下是一些可以使用性能计数器衡量的事情的示例：

> > CPU使用率

> > 内存使用率

> > 进程中引发的异常数

> > I/O字节的读写

> > 对你的asp.net应用程序的请求数

> > 在asp.net应用程序中请求响应时间

> > 你可能会监视成千上万种不同的计数器，它们会尽可能的具体。例如，如果你想了解进程的内存使用情况，则有以下计数器：私有字节，虚拟字节，工作集，私有工作集，Gen X 集合，GC时间百分比，大对象堆大小 等等。

> > 性能监视器是使你可以直观地看到这些计数器的工具（尽管也有其他工具）。它以在Windows设备预安装上了。要运行它，只需要在开始菜单中键入“Performance Monitor”，或在命令提示符下键入perfmon。

> 9、PerfView

> > PerfView是一个开源通用分析工具。它可以做很多事情，以下是其中一些：

> > 性能分析

> > 内存分析

> > 分析ETW事件

> > 从Linux导入性能快照

> > 有关应用程序行为的各种报告，包括JIT编译时间，垃圾回收时间等

> > 它的分析是基于Windows事件跟踪（ETW）事件。这是一个内置的日志记录系统，运行速度非常快，Windows的每个部分都可以使用它。一切都将事件记录到ETW，包括内核，Windows操作系统，CLR运行时，IIS，ASP.NEt框架，WPF等。

> > PerfView很容易成为此列表中最复杂的工具。但是它也非常强大。要开始使用PerfView，我建议在第九频道观看Vance Morrison的视频课程系统。

> 10、Fiddler

> > Fiddler是Progress Telerik的免费工具。这是我最喜欢的网络请求调试工具之一。它被称为HTTP代理服务器，仅此而已。它捕获所有HTTP请求，记录数据，并按其方式发送请求。

> > 对于每一个请求，你都可以查看流程，Headers，payload，response，status等所有的内容。

> > 对于调试，Fiddler具有两个有用功能：

> > 重新请求 - 你可以右键单击任何请求，然后单击“Replay”，这将再次发送完全相同的请求。在调试服务器端问题时非常有用。如果你要重现有问题的请求，Fiddler可以避免在客户端上重新运行方案以再次发送相同请求的麻烦。它还有助于处理难以重现的请求。

> > 编辑并重新请求 - 除了重新请求外，Fiddler允许我们修改请求。你可以更改标题，正文，甚至URL本身。你可以使用它来查看服务器端如何处理极端情况。或重现特定请求上发生的问题。

### VisualStateManager

> 要使用 VisualStateManager，需要定义 VisualState；在 VisualState 中定义控件的不同的状态以及每种状态下的样式，然后，在代码中合适的地方，我们可以使用 VisusalStateManager 类的 GoToState 来切换到对应的状态，从而实现样式的切换。

> 所以，总括地说，这里涉及了以下四个方面：

#### VisualState

> > 视图状态(Visual States)表示控件在一个特殊的逻辑状态下的样式、外观；

#### VisualStateGroup

> > 状态组由相互排斥的状态组成，状态组与状态组并不互斥；

#### VisualTransition

> > 视图转变 (Visual Transitions) 代表控件从一个视图状态向另一个状态转换时的过渡；

#### VisualStateManager

> > 由它负责在代码中来切换到不同的状态；

> 每个 VisualState 都属于一个状态组 (VisualStateGroup)，也即一个 VisualStateGroup 中可以定义多个 VisualState；并且，我们也可以定义多个 VisualStateGroup；需要再次强调的是：同一个 VisualStateGroup 中 VisualState 是互斥的，而不同的 VisualStateGroup 中的 VisualState 是在同一时刻是可以共存的。以 Button 为例：

> 我们看到，在它里面，定义了三个 VisualStateGroup，分别是 CommonStates（正常状态）、FocusStates（焦点状态）、ValidationStates（验证状态），而每个 VisualStateGroup 下又有若干个 VisualState。在 CommonStates 中，按钮可以是 Normal 、MouseOver 或 Pressed（只能是三者之一），但它却可以结合其它 VisualStateGroup 中的 VisualState 来显示，如按钮具有焦点时且鼠标移动到其上，这就结合了 MouseOver 与 Focused 两种状态。以下它的部分代码：

### 图形

#### 基本图形

> Line 直线段

> Rectangle 矩形

> Ellipse 椭圆

> Polygon 多边形

> Polyline 折线，不闭合

> Path 路径

#### 笔刷 Brush

> · SolidColorBrush：使用纯 Color 绘制区域。 

> · LinearGradientBrush：使用线性渐变绘制区域。 其中有个GradientStop属性，径向渐变也有可以查看msdn，我觉得上面说的还是比较清楚的。

> · RadialGradientBrush：使用径向渐变绘制区域。 

> · ImageBrush：使用图像（由 ImageSource 对象表示）绘制区域。

> · DrawingBrush：使用 Drawing 绘制区域。 绘图可能包含向量和位图对象。

> · VisualBrush：使用 Visual 对象绘制区域。 使用 VisualBrush 可以将内容从应用程序的一个部分复制到另一个区域，这在创建反射效果和放大局部屏幕时会非常有用。

#### 图形的效果与滤镜

> BevelBitmapEffect：斜角效果。

> BitmapEffectGroup：符合效果。

> BlurBitmapEffect:模糊效果。

> DropShadowBitmapEffect：投影效果。

> EmbossBitmapEffect：浮雕效果。

> OuterGlowBitmapEffect: 外发光效果。

### 变换

#### 图形的变形

> RenderTransform：呈现变形，定义在UIElement类中。

> LayoutTransform：布局变形，定义在FrameworkElement类中。

#### Transform 抽象类

> MatrixTransform：矩阵变形

> RotateTransform：旋转变形

> ScaleTransform：坐标变形

> SkewTransform：拉伸变形

> TranslateTransform：偏移变形

> TransformGroup：变形组

```

 <TextBlock.RenderTransform> 

  <RotateTransform Angle="0" x:Name="rt1"></RotateTransform> 

</TextBlock.RenderTransform> 

```

#### 变换（Transform）

> WPF元素还可以通过变换来改变尺寸和位置，有两种变换，RenderTransform和LayoutTransform

> RenderTransform（继承自UIElement）：在布局结束之后应用

> LayoutTransform：在布局前应用

> UIElement还有一个属性RenderTransformOrigin表示变换的原点，使用相对定位，（0,0）表示左上角，（1,1）表示右下角，显然RenderTransformOrigin只用于RenderTransform；LayoutTransform没有原点的概念是因为它要参与布局，被变换元素的位置由父元素的布局规则控制

> 1. RotateTransform

> > 控制变换的属性：Angle（旋转角度）、CenterX和CenterY（旋转中心点）；CenterX和CenterY使用的是绝对定位（像素无关单位），可以与RenderTransformOrigin组合起来使用，在缩放变换（ScaleTransform）和倾斜变换（SkewTransform）中都是这样

> 2. ScaleTransform

> > 控制变换的属性：ScaleX（水平方向的缩放因子）、ScaleY（垂直方向的缩放因子）、CenterX和CenterY（缩放的中心点）

> 3. SkewTransform

> > 控制变换的属性：AngleX（水平倾斜的角度）、AngleY（垂直倾斜的角度）、CenterX和CenterY（倾斜的中心点）

> 4. TranslateTransform

> > 控制变换的属性：X（水平偏移量）、Y（垂直偏移量）；与上面三种变换不同的是，TranslateTransform作为LayoutTransform应用时不起作用

> 5. MatrixTransform

> > 控制变换的属性：Matrix（3×3仿射变换矩阵），上面的4种变换都可以通过定义Matrix实现，并且可以直接在XAML里用一个字符串设置，比如下图的变换实现的是水平和垂直方向上放大两倍的效果

> 6. TransformGroup

> > 可以组合多个变换

### 动画

#### 动画基类

```

System.Windows.Media.Animation.BooleanAnimationBase

System.Windows.Media.Animation.ByteAnimationBase

System.Windows.Media.Animation.CharAnimationBase

System.Windows.Media.Animation.ColorAnimationBase

System.Windows.Media.Animation.DecimalAnimationBase

System.Windows.Media.Animation.DoubleAnimationBase

System.Windows.Media.Animation.Int16AnimationBase

System.Windows.Media.Animation.Int32AnimationBase

System.Windows.Media.Animation.Int64AnimationBase

System.Windows.Media.Animation.MatrixAnimationBase

System.Windows.Media.Animation.ObjectAnimationBase

System.Windows.Media.Animation.Point3DAnimationBase

System.Windows.Media.Animation.PointAnimationBase

System.Windows.Media.Animation.QuaternionAnimationBase

System.Windows.Media.Animation.RectAnimationBase

System.Windows.Media.Animation.Rotation3DAnimationBase

System.Windows.Media.Animation.SingleAnimationBase

System.Windows.Media.Animation.SizeAnimationBase

System.Windows.Media.Animation.StringAnimationBase

System.Windows.Media.Animation.ThicknessAnimationBase

System.Windows.Media.Animation.Vector3DAnimationBase

System.Windows.Media.Animation.VectorAnimationBase

```

> 以DoubleAnimationBase为基类展开，其他的再慢慢去了解和摸索。

> > 一种就是点到点的的动画DoubleAnimation，一种是可以分为帧的动画DoubleAnimationUsingKeyFrames，还有一种是按照路径来执行的DoubleAnimationUsingPath的动画。

简单动作由以下几个部分构成：变化起点（From属性），变化终点（To属性），变化幅度（By属性），变化时间（Duration属性）。

如果指定的有终点那么幅度就被忽略了，如果没有起点，就以当前元素所在位置为起点。

还是看个例子来的更易理解。下面演示一个按钮如果被点击了，在0.3s里，按钮朝着x，y轴上300个单位随机移动。下面给出代码

```

System.Windows.Media.Animation.BooleanAnimationBase

System.Windows.Media.Animation.ByteAnimationBase

System.Windows.Media.Animation.CharAnimationBase

System.Windows.Media.Animation.ColorAnimationBase

System.Windows.Media.Animation.DecimalAnimationBase

System.Windows.Media.Animation.DoubleAnimationBase

System.Windows.Media.Animation.Int16AnimationBase

System.Windows.Media.Animation.Int32AnimationBase

System.Windows.Media.Animation.Int64AnimationBase

System.Windows.Media.Animation.MatrixAnimationBase

System.Windows.Media.Animation.ObjectAnimationBase

System.Windows.Media.Animation.Point3DAnimationBase

System.Windows.Media.Animation.PointAnimationBase

System.Windows.Media.Animation.QuaternionAnimationBase

System.Windows.Media.Animation.RectAnimationBase

System.Windows.Media.Animation.Rotation3DAnimationBase

System.Windows.Media.Animation.SingleAnimationBase

System.Windows.Media.Animation.SizeAnimationBase

System.Windows.Media.Animation.StringAnimationBase

System.Windows.Media.Animation.ThicknessAnimationBase

System.Windows.Media.Animation.Vector3DAnimationBase

System.Windows.Media.Animation.VectorAnimationBase

```

```

<Grid>

<Button x:Name="btn" Content="Move!" HorizontalAlignment="Left" VerticalAlignment="top" Width="60" Height="60" Click="Button_Click">

    <Button.RenderTransform>

      <TranslateTransform x:Name="tt" X="0" Y="0"/>

    </Button.RenderTransform>

  </Button>

</Grid>

```

```

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

#### 关键帧动画 ：

> 先理解一下帧的概念，帧也就每次属性改变都会产生一个新画面，新画面就是一个帧。帧的连续播放产生了动画。

> DoubleAnimationUsingKeyFrames的实例中通常是含有多个DoubleKeyFrame类的帧，具体的有下面四种：　

##### LinearDoubleKeyFrame

> 线性帧，目标属性值的变化是直线型的，匀速的。

##### DiscreteDoubleKeyFrame

> 不连续变化的帧，目标属性值是跳跃的。

##### SplineDoubleKeyFrame

> 样条函数变化帧，目标属性值的速率是一条贝赛尔曲线。

##### EasingDoubleKeyFrame

> 缓冲式帧，目标属性值以某种缓冲形式变化。

```

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

```

> 前面已经介绍了路径绘图时的强大，那么我们能不能让我的动画按照我们制定的路径去表演呢，答案是可以的。

> 这就是我们要记录的DoubleAnimationUsingPath类。

> 注意它有三个属性很关键，其中Duration是每个动画必须有的，另外两个是Source属性和PathGeometry分别用来指定向那个方向移动和路径。

> 下面给出一个按钮沿路径移动的动画，构思如下：

```

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

```

```

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

```

#### 场景（Storyborad）

```

#####  <Border BorderBrush="Gray" BorderThickness="1" Grid.Row="1">

<Ellipse x:Name="ballG" Height="80" Width="80" Fill="Green" HorizontalAlignment="Left">

  <Ellipse.RenderTransform>

    <TranslateTransform x:Name="ttG"/>

  </Ellipse.RenderTransform>

</Ellipse>

    </Border>

```

对应的cs代码，注释已经给出：

```

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

```

### WPF 需要学习

第Ⅰ部分 基础知识

第1章 WPF概述 3

1.1 Windows图形演化 3

1.1.1 DirectX：新的图形引擎 4

1.1.2 硬件加速与WPF 4

1.2 WPF：高级API 4

1.3 分辨率无关性 5

1.3.1 WPF单位 6

1.3.2 系统DPI 7

1.3.3 位图和矢量图形 9

1.4 WPF体系结构 10

1.5 WPF 4.5 13

1.5.1 WPF工具包 14

1.5.2 Visual Studio 2012 14

1.6 小结 16

第2章 XAML 17

2.1 理解XAML 17

2.1.1 WPF之前的图形用户界面 17

2.1.2 XAML变体 19

2.1.3 XAML编译 19

2.2 XAML基础 20

2.2.1 XAML名称空间 21

2.2.2 代码隐藏类 22

2.3 XAML中的属性和事件 24

2.3.1 简单属性与类型转换器 25

2.3.2 复杂属性 26

2.3.3 标记扩展 28

2.3.4 附加属性 29

2.3.5 嵌套元素 30

2.3.6 特殊字符与空白 32

2.3.7 事件 34

2.3.8 完整的Eight Ball Answer示例 35

2.4 使用其他名称空间中的类型 36

2.5 加载和编译XAML 38

2.5.1 只使用代码 38

2.5.2 使用代码和未经编译的XAML 40

2.5.3 使用代码和编译过的XAML 42

2.5.4 只使用XAML 44

2.6 小结 45

第3章 布局 47

3.1 理解WPF中的布局 47

3.1.1 WPF布局原则 47

3.1.2 布局过程 48

3.1.3 布局容器 48

3.2 使用StackPanel面板进行简单

布局 50

3.2.1 布局属性 52

3.2.2 对齐方式 52

3.2.3 边距 53

3.2.4 小尺寸、尺寸以及显式地

设置尺寸 54

3.2.5 Border控件 56

3.3 WrapPanel和DockPanel面板 57

3.3.1 WrapPanel面板 57

3.3.2 DockPanel面板 58

3.3.3 嵌套布局容器 59

3.4 Grid面板 60

3.4.1 调整行和列 63

3.4.2 布局舍入 64

3.4.3 跨越行和列 65

3.4.4 分割窗口 66

3.4.5 共享尺寸组 69

3.4.6 UniformGrid面板 72

3.5 使用Canvas面板进行基于

坐标的布局 72

3.5.1 Z顺序 73

3.5.2 lnkCanvas元素 74

3.6 布局示例 76

3.6.1 列设置 76

3.6.2 动态内容 77

3.6.3 组合式用户界面 79

3.7 小结 80

第4章 依赖项属性 83

4.1 理解依赖项属性 83

4.1.1 定义依赖项属性 84

4.1.2 注册依赖项属性 84

4.1.3 添加属性包装器 86

4.1.4 WPF使用依赖项属性的方式 87

4.1.5 共享的依赖项属性 88

4.1.6 附加的依赖项属性 88

4.2 属性验证 90

4.2.1 验证回调 90

4.2.2 强制回调 91

4.3 小结 93

第5章 路由事件 95

5.1 理解路由事件 95

5.1.1 定义、注册和封装路由事件 95

5.1.2 共享路由事件 96

5.1.3 引发路由事件 96

5.1.4 处理路由事件 97

5.2 事件路由 99

5.2.1 RoutedEventArgs类 100

5.2.2 冒泡路由事件 100

5.2.3 处理挂起的事件 103

5.2.4 附加事件 103

5.2.5 隧道路由事件 105

5.3 WPF事件 106

5.3.1 生命周期事件 106

5.3.2 输入事件 108

5.4 键盘输入 108

5.4.1 处理按键事件 109

5.4.2 焦点 111

5.4.3 获取键盘状态 112

5.5 鼠标输入 113

5.5.1 鼠标单击 115

5.5.2 捕获鼠标 115

5.5.3 鼠标拖放 116

5.6 多点触控输入 118

5.6.1 多点触控的输入层次 119

5.6.2 原始触控 119

5.6.3 操作 122

5.6.4 惯性 124

5.7 小结 125

第Ⅱ部分 进一步研究WPF

第6章 控件 129

6.1 控件类 129

6.1.1 背景画刷和前景画刷 130

6.1.2 字体 132

6.1.3 鼠标光标 136

6.2 内容控件 137

6.2.1 Content属性 138

6.2.2 对齐内容 140

6.2.3 WPF内容原则 141

6.2.4 标签 142

6.2.5 按钮 142

6.2.6 工具提示 145

6.3 特殊容器 151

6.3.1 ScrollViewer 152

6.3.2 GroupBox 154

6.3.3 TabItem 154

6.3.4 Expander 155

6.4 文本控件 158

6.4.1 多行文本 158

6.4.2 选择文本 159

6.4.3 拼写检查 160

6.4.4 PasswordBox 162

6.5 列表控件 162

6.5.1 ListBox 163

6.5.2 ComboBox 166

6.6 基于范围的控件 166

6.6.1 Slider 167

6.6.2 ProgressBar 168

6.7 日期控件 169

6.8 小结 171

第7章 Application类 173

7.1 应用程序的生命周期 173

7.1.1 创建Application对象 173

7.1.2 派生自定义的Application类 174

7.1.3 应用程序的关闭方式 176

7.1.4 应用程序事件 177

7.2 Application类的任务 179

7.2.1 显示初始界面 179

7.2.2 处理命令行参数 180

7.2.3 访问当前Application对象 181

7.2.4 在窗口之间进行交互 182

7.2.5 单实例应用程序 184

7.3 程序集资源 189

7.3.1 添加资源 189

7.3.2 检索资源 190

7.3.3 pack URI 192

7.3.4 内容文件 193

7.4 本地化 193

7.4.1 构建能够本地化的用户界面 194

7.4.2 使应用程序为本地化做好准备 194

7.4.3 管理翻译过程 195

7.5 小结 200

第8章 元素绑定 201

8.1 将元素绑定到一起 201

8.1.1 绑定表达式 202

8.1.2 绑定错误 203

8.1.3 绑定模式 203

8.1.4 使用代码创建绑定 205

8.1.5 使用代码检索绑定 206

8.1.6 多绑定 207

8.1.7 绑定更新 210

8.1.8 绑定延迟 211

8.2 绑定到非元素对象 211

8.2.1 Source属性 212

8.2.2 RelativeSource属性 212

8.2.3 DataContext属性 213

8.3 小结 214

第9章 命令 215

9.1 理解命令 215

9.2 WPF命令模型 216

9.2.1 ICommand接口 217

9.2.2 RoutedCommand类 217

9.2.3 RoutedUICommand类 218

9.2.4 命令库 219

9.3 执行命令 220

9.3.1 命令源 220

9.3.2 命令绑定 221

9.3.3 使用多命令源 223

9.3.4 微调命令文本 224

9.3.5 直接调用命令 224

9.3.6 禁用命令 225

9.3.7 具有内置命令的控件 227

9.4 高级命令 229

9.4.1 自定义命令 229

9.4.2 在不同位置使用相同的命令 230

9.4.3 使用命令参数 232

9.4.4 跟踪和翻转命令 233

9.5 小结 237

第10章 资源 239

10.1 资源基础 239

10.1.1 资源集合 239

10.1.2 资源的层次 241

10.1.3 静态资源和动态资源 242

10.1.4 非共享资源 243

10.1.5 通过代码访问资源 244

10.1.6 应用程序资源 244

10.1.7 系统资源 245

10.2 资源字典 246

10.2.1 创建资源字典 246

10.2.2 使用资源字典 247

10.2.3 在程序集之间共享资源 248

10.3 小结 251

第11章 样式和行为 253

11.1 样式基础 253

11.1.1 创建样式对象 256

11.1.2 设置属性 257

11.1.3 关联事件处理程序 258

11.1.4 多层样式 259

11.1.5 通过类型自动应用样式 261

11.2 触发器 262

11.2.1 简单触发器 262

11.2.2 事件触发器 264

11.3 行为 266

11.3.1 获取行为支持 266

11.3.2 理解行为模型 267

11.3.3 创建行为 268

11.3.4 使用行为 270

11.3.5 Blend中的设计时行为支持 271

11.4 小结 271

第Ⅲ部分 图画和动画

第12章 形状、画刷和变换 275

12.1 理解形状 275

12.1.1 Shape类 276

12.1.2 矩形和椭圆 277

12.1.3 改变形状的尺寸和放置形状 278

12.1.4 使用Viewbox控件缩放形状 280

12.1.5 直线 282

12.1.6 折线 283

12.1.7 多边形 284

12.1.8 直线线帽和直线交点 286

12.1.9 点划线 287

12.1.10 像素对齐 288

12.2 画刷 289

12.2.1 SolidColorBrush画刷 290

12.2.2 LinearGradientBrush画刷 290

12.2.3 RadialGradientBrush画刷 292

12.2.4 ImageBrush画刷 294

12.2.5 平铺的ImageBrush画刷 295

12.2.6 VisualBrush画刷 297

12.2.7 BitmapCacheBrush画刷 298

12.3 变换 299

12.3.1 变换形状 300

12.3.2 变换元素 302

12.4 透明 303

12.4.1 使元素半透明 303

12.4.2 透明掩码 304

12.5 小结 306

第13章 几何图形和图画 307

13.1 路径和几何图形 307

13.1.1 直线、矩形和椭圆图形 308

13.1.2 使用GeometryGroup

组合形状 309

13.1.3 使用CombinedGeometry融合

几何图形 311

13.1.4 使用PathGeometry绘制曲线和

直线 313

13.1.5 微语言几何图形 318

13.1.6 使用几何图形进行剪裁 319

13.2 图画 320

13.2.1 显示图画 322

13.2.2 导出插图 324

13.3 小结 326

第14章 效果和可视化对象 327

14.1 可视化对象 327

14.1.1 绘制可视化对象 328

14.1.2 在元素中封装可视化对象 329

14.1.3 命中测试 332

14.1.4 复杂的命中测试 334

14.2 效果 338

14.2.1 BlurEffect类 338

14.2.2 DropShadowEffect类 339

14.2.3 ShaderEffect类 340

14.3 WriteableBitmap类 342

14.3.1 生成位图 342

14.3.2 写入WriteableBitmap对象 343

14.3.3 更高效的像素写入 345

14.4 小结 347

第15章 动画基础 349

15.1 理解WPF动画 349

15.1.1 基于时间的动画 349

15.1.2 基于属性的动画 350

15.2 基本动画 351

15.2.1 Animation类 351

15.2.2 使用代码创建动画 353

15.2.3 同时发生的动画 358

15.2.4 动画的生命周期 358

15.2.5 Timeline类 359

15.3 故事板 362

15.3.1 故事板 363

15.3.2 事件触发器 363

15.3.3 重叠动画 366

15.3.4 同步的动画 367

15.3.5 控制播放 367

15.3.6 监视动画进度 371

15.4 动画缓动 373

15.4.1 使用缓动函数 373

15.4.2 在动画开始时应用缓动与在动画

结束时应用缓动 374

15.4.3 缓动函数类 375

15.4.4 创建自定义缓动函数 377

15.5 动画性能 379

15.5.1 期望的帧率 380

15.5.2 位图缓存 382

15.6 小结 384

第16章 高级动画 385

16.1 动画类型回顾 385

16.1.1 动态变换 386

16.1.2 动态改变画刷 390

16.1.3 动态改变像素着色器 392

16.2 关键帧动画 393

16.2.1 离散的关键帧动画 395

16.2.2 缓动关键帧 395

16.2.3 样条关键帧动画 396

16.3 基于路径的动画 397

16.4 基于帧的动画 399

16.5 使用代码创建故事板 402

16.5.1 创建主窗口 403

16.5.2 创建Bomb用户控件 405

16.5.3 投弹 406

16.5.4 拦截炸弹 409

16.5.5 统计炸弹和清理工作 410

16.6 小结 412

第Ⅳ部分 模板和自定义元素

第17章 控件模板 417

17.1 理解逻辑树和可视化树 417

17.2 理解模板 422

17.2.1 修饰类 424

17.2.2 剖析控件 426

17.3 创建控件模板 428

17.3.1 简单按钮 429

17.3.2 模板绑定 430

17.3.3 改变属性的触发器 431

17.3.4 使用动画的触发器 434

17.4 组织模板资源 435

17.4.1 分解按钮控件模板 436

17.4.2 通过样式应用模板 438

17.4.3 自动应用模板 439

17.4.4 由用户选择的皮肤 440

17.5 构建更复杂的模板 442

17.5.1 嵌套的模板 443

17.5.2 修改滚动条 445

17.5.3 控件模板示例 450

17.6 可视化状态 451

17.7 小结 452

第18章 自定义元素 453

18.1 理解WPF中的自定义元素 454

18.2 构建基本的用户控件 456

18.2.1 定义依赖项属性 456

18.2.2 定义路由事件 459

18.2.3 添加标记 460

18.2.4 使用控件 462

18.2.5 命令支持 462

18.2.6 深入分析用户控件 465

18.3 创建无外观控件 466

18.3.1 修改颜色拾取器的代码 466

18.3.2 修改颜色拾取器的标记 467

18.3.3 精简控件模板 469

18.4 支持可视化状态 472

18.4.1 开始编写FlipPanel类 473

18.4.2 选择部件和状态 475

18.4.3 默认控件模板 476

18.4.4 使用FlipPanel控件 482

18.4.5 使用不同的控件模板 483

18.5 创建自定义面板 485

18.5.1 两步布局过程 485

18.5.2 Canvas面板的副本 488

18.5.3 更好的WrapPanel面板 489

18.6 自定义绘图元素 492

18.6.1 OnRender( )方法 493

18.6.2 评估自定义绘图 494

18.6.3 自定义绘图元素 495

18.6.4 创建自定义装饰元素 497

18.7 小结 498

第Ⅴ部分 数据

第19章 数据绑定 501

19.1 使用自定义对象绑定到

数据库 501

19.1.1 构建数据访问组件 502

19.1.2 构建数据对象 504

19.1.3 显示绑定对象 505

19.1.4 更新数据库 508

19.1.5 更改通知 508

19.2 绑定到对象集合 510

19.2.1 显示和编辑集合项 510

19.2.2 插入和移除集合项 513

19.2.3 绑定到ADO.NET对象 514

19.2.4 绑定到LINQ表达式 515

19.3 提高大列表的性能 518

19.3.1 虚拟化 518

19.3.2 项容器再循环 519

19.3.3 缓存长度 519

19.3.4 延迟滚动 520

19.4 验证 521

19.4.1 在数据对象中进行验证 521

19.4.2 自定义验证规则 526

19.4.3 响应验证错误 528

19.4.4 获取错误列表 529

19.4.5 显示不同的错误指示符号 530

19.4.6 验证多个值 533

19.5 数据提供者 535

19.5.1 ObjectDataProvider 536

19.5.2 XmlDataProvider 539

19.6 小结 541

第20章 格式化绑定的数据 543

20.1 数据绑定回顾 543

20.2 数据转换 544

20.2.1 使用StringFormat属性 545

20.2.2 值转换器简介 546

20.2.3 使用值转换器设置字符串

的格式 547

20.2.4 使用值转换器创建对象 549

20.2.5 应用条件格式化 551

20.2.6 评估多个属性 552

20.3 列表控件 554

20.4 列表样式 555

20.4.1 ItemContainerStyle 556

20.4.2 包含复选框或单选按钮的ListBox

控件 557

20.4.3 交替条目样式 559

20.4.4 样式选择器 561

20.5 数据模板 564

20.5.1 分离和重用模板 566

20.5.2 使用更高级的模板 567

20.5.3 改变模板 569

20.5.4 模板选择器 570

20.5.5 模板与选择 573

20.5.6 改变项的布局 577

20.6 ComboBox控件 578

20.7 小结 581

第21章 数据视图 583

21.1 View对象 583

21.1.1 检索视图对象 584

21.1.2 视图导航 584

21.1.3 以声明方式创建视图 587

21.2 过滤、排序与分组 588

21.2.1 过滤集合 588

21.2.2 过滤DataTable对象 591

21.2.3 排序 592

21.2.4 分组 593

21.2.5 实时成型 598

21.3 小结 599

第22章 列表、树和网格 601

22.1 ListView控件 601

22.1.1 使用GirdView创建列 602

22.1.2 创建自定义视图 606

22.2 TreeView控件 613

22.2.1 创建数据绑定的TreeView

控件 614

22.2.2 将DataSet对象绑定到TreeView

控件 617

22.2.3 即时创建节点 618

22.3 DataGrid控件 621

22.3.1 改变列的尺寸与重新安排列 622

22.3.2 定义列 623

22.3.3 设置列的格式和样式 628

22.3.4 设置行的格式 629

22.3.5 显示行细节 630

22.3.6 冻结列 631

22.3.7 选择 632

22.3.8 排序 632

22.3.9 编辑 633

22.4 小结 635

第Ⅵ 窗口、页面和富控件

第23章 窗口 639

23.1 Window类 639

23.1.1 显示窗口 641

23.1.2 定位窗口 642

23.1.3 保存和还原窗口位置 642

23.2 窗口交互 644

23.2.1 窗口所有权 646

23.2.2 对话框模型 647

23.2.3 通用对话框 648

23.3 非矩形窗口 649

23.3.1 简单形状窗口 649

23.3.2 具有形状内容的透明窗口 651

23.3.3 移动形状窗口 653

23.3.4 改变形状窗口的尺寸 653

23.3.5 组合到一起：窗口的自定义控件

模板 655

23.4 Windows 7任务栏编程 658

23.4.1 使用跳转列表 659

23.4.2 改变任务栏图标和预览 663

23.5 小结 667

第24章 页面和导航 669

24.1 基于页面的导航 669

24.2 基于页面的界面 670

24.2.1 创建一个具有导航窗口的基于

页面的简单应用程序 670

24.2.2 Page类 672

24.2.3 超链接 673

24.2.4 在框架中驻留页面 675

24.2.5 在另一个页面中驻留页面 677

24.2.6 在Web浏览器中驻留页面 678

24.3 页面历史 678

24.3.1 深入分析WPF中的URI 678

24.3.2 导航历史 679

24.3.3 维护自定义的属性 681

24.4 导航服务 682

24.4.1 通过编程进行导航 682

24.4.2 导航事件 683

24.4.3 管理日志 684

24.4.4 向日志添加自定义项 685

24.4.5 使用页函数 689

24.5 XAML浏览器应用程序 692

24.5.1 创建XBAP应用程序 692

24.5.2 部署XBAP应用程序 693

24.5.3 更新XBAP应用程序 695

24.5.4 XBAP应用程序的安全性 695

24.5.5 完全信任的XBAP应用程序 696

24.5.6 组合XBAP/独立应用程序 697

24.5.7 为不同的安全级别编写代码 697

24.5.8 在网页中嵌入XBAP

应用程序 702

24.6 WebBrowser控件 702

24.6.1 导航到页面 703

24.6.2 构建DOM树 704

24.6.3 使用.NET代码为网页添加

脚本 706

24.7 小结 708

第25章 菜单、工具栏和功能区 709

25.1 菜单 709

25.1.1 Menu类 710

25.1.2 菜单项 710

25.1.3 ContextMenu类 712

25.1.4 菜单分隔条 713

25.2 工具栏和状态栏 714

25.2.1 ToolBar控件 714

25.2.2 StatusBar控件 717

25.3 功能区 718

25.3.1 添加功能区 719

25.3.2 应用程序菜单 720

25.3.3 选项卡、组与按钮 722

25.3.4 富工具提示 724

25.3.5 带有快捷键提示的键盘访问 725

25.3.6 改变功能区的大小 726

25.3.7 快速访问工具栏 729

25.4 小结 730

第26章 声音和视频 731

26.1 播放WAV音频 731

26.1.1 SoundPlayer类 731

26.1.2 SoundPlayerAction类 733

26.1.3 系统声音 733

26.2 MediaPlayer类 734

26.3 MediaElement类 735

26.3.1 使用代码播放音频 736

26.3.2 处理错误 737

26.3.3 使用触发器播放音频 737

26.3.4 播放多个声音 739

26.3.5 改变音量、平衡、速度以及

位置 740

26.3.6 将动画同步到音频 742

26.3.7 播放视频 744

26.3.8 视频效果 744

26.4 语音 747

26.4.1 语音合成 747

26.4.2 语音识别 749

26.5 小结 751

第27章 3D绘图 753

27.1 3D绘图基础 753

27.1.1 视口 754

27.1.2 3D对象 754

27.1.3 摄像机 761

27.2 深入研究3D绘图 765

27.2.1 着色和法线 766

27.2.2 更复杂的形状 769

27.2.3 Model3DGroup集合 769

27.2.4 使用材质 771

27.2.5 纹理映射 773

27.3 交互和动画 777

27.3.1 变换 777

27.3.2 旋转 778

27.3.3 飞过 779

27.3.4 跟踪球 781

27.3.5 命中测试 782

27.3.6 3D表面上的2D元素 786

27.4 小结 789

第Ⅶ部分 文档和打印

第28章 文档 793

28.1 理解文档 793

28.2 流文档 794

28.2.1 流内容元素 795

28.2.2 设置内容元素的格式 796

28.2.3 创建简单的流文档 797

28.2.4 块元素 799

28.2.5 内联元素 804

28.2.6 通过代码与元素进行交互 809

28.2.7 文本对齐 812

28.3 只读流文档容器 813

28.3.1 缩放 814

28.3.2 创建页面和列 815

28.3.3 从文件加载文档 817

28.3.4 打印 818

28.4 编辑流文档 818

28.4.1 加载文件 819

28.4.2 保存文件 821

28.4.3 设置所选文本的格式 822

28.4.4 获取单个单词 824

28.5 固定文档 825

28.6 批注 826

28.6.1 批注类 827

28.6.2 启用批注服务 828

28.6.3 创建批注 829

28.6.4 检查批注 832

28.6.5 响应批注更改 835

28.6.6 在固定文档中保存批注 835

28.6.7 自定义便签的外观 836

28.7 小结 837

第29章 打印 839

29.1 基本打印 839

29.1.1 打印元素 840

29.1.2 变换打印输出 842

29.1.3 打印不显示的元素 844

29.1.4 打印文档 845

29.1.5 在文档打印输出中控制页面 848

29.2 自定义打印 851

29.2.1 使用可视化层中的类

进行打印 851

29.2.2 自定义多页打印 854

29.3 打印设置和管理 859

29.3.1 保存打印设置 859

29.3.2 打印页面范围 859

29.3.3 管理打印队列 860

29.4 通过XPS进行打印 863

29.4.1 为打印预览创建XPS文档 863

29.4.2 写入内存的XPS文档 864

29.4.3 通过XPS直接打印到

打印机 865

29.4.4 异步打印 866

29.5 小结 866

第Ⅷ部分 其他主题

第30章 与Windows窗体进行交互 869

30.1 访问互操作性 869

30.2 混合窗口和窗体 870

30.2.1 为WPF应用程序添加窗体 870

30.2.2 为Windows窗体应用程序

添加WPF窗口 870

30.2.3 显示模态窗口和窗体 871

30.2.4 显示非模态窗口和窗体 871

30.2.5 启用Windows窗体控件的

可视化风格 872

30.3 创建具有混合内容的窗口 872

30.3.1 WPF和Windows窗体

“空域” 873

30.3.2 在WPF中驻留Windows

窗体控件 874

30.3.3 使用WPF和Windows窗体

用户控件 876

30.3.4 在Windows窗体中驻留WPF

控件 877

30.3.5 访问键、助记码和焦点 879

30.3.6 属性映射 880

30.4 小结 882

第31章 多线程 883

31.1 了解多线程模型 883

31.1.1 Dispatcher类 884

31.1.2 DispatcherObject类 884

31.2 BackgroundWorker类 887

31.2.1 简单的异步操作 887

31.2.2 创建BackgroundWorker

对象 888

31.2.3 运行BackgroundWorker

对象 889

31.2.4 跟踪进度 891

31.2.5 支持取消 893

31.3 小结 894

第32章 插件模型 895

32.1 在MAF和MEF两者间

进行选择 895

32.2 了解插件管道 896

32.2.1 管道的工作原理 897

32.2.2 插件文件夹结构 898

32.2.3 为使用插件模型准备

解决方案 899

32.3 创建使用插件模型的

应用程序 900

32.3.1 协定 901

32.3.2 插件视图 901

32.3.3 插件 902

32.3.4 插件适配器 902

32.3.5 宿主视图 903

32.3.6 宿主适配器 904

32.3.7 宿主 904

32.3.8 更多插件 907

32.4 与宿主进行交互 908

32.5 可视化插件 912

32.6 小结 915

第33章 ClickOnce部署 917

33.1 理解应用程序部署 917

33.1.1 ClickOnce安装模型 918

33.1.2 ClickOnce部署的局限性 919

33.2 简单的ClickOnce发布 920

33.2.1 设置发布者和产品 920

33.2.2 启动发布向导 922

33.2.3 理解部署文件的结构 926

33.2.4 安装ClickOnce应用程序 926

33.2.5 更新ClickOnce应用程序 928

33.3 ClickOnce附加选项 928

33.3.1 发布版本 928

33.3.2 更新 929

33.3.3 文件关联 930

33.3.4 发布选项 931

33.4 小结 932

## WCF WebService

### WCF简介

> WCF顾明思义，就是在Windows平台下解决通信（C,Communication）的基础框架（F,Foundation）问题。 

> SOA 面向服务（Service Orientation，SO）。服务的自治原则要求单个服务在底层逻辑控制方面尽可能是独立和自包含的，服务尽可能不依赖于访问它的客户端和其他服务。服务可以独立地进行部署及实施版本策略和安全策略。

> SOA采用基于消息的通信方式。SOA采用XML，XSD及WSDL作为服务描述的“语言”。

> SOA支持跨平台

> SOA鼓励创建可组合的服务

> SOA鼓励服务的复用

> SOA强调松耦合

### 地址

> 终结点是WCF最为核心的对象，因为它承载了所有通信功能。服务通过相应的终结点发布出来，客户端通过与之匹配的终结点对服务进行调用。终结点由代表地址、绑定和契约的ABC三要素构成。 作为终结点的三要素之一的地址（Address）、在基于WCF的通信中不仅仅用于定位服务，还提供额外的寻址信息。除此之外，终结点还和安全有关系，因为它包含着用于进行服务认证的服务身份信息。

> 统一资源（URI）:Uniform Resource Identifier结构：传输协议://[主机名称|域名|IP地址]:[可选端口]/[资源路径]

> > HTTP/HTTPS

> > > HTTP全称为HyperText Transfer Protocol（超文本传输协议）,是建立在TCP/IP簇上的应用层协议。

> > > HTTPS全称为HyperText Transfer Protocol over Secure Socket Layer(安全超文本传输协议)，它是采用了SSL（Secure Socket Layer）的HTTP，而SSL是一个进行数据加密的协议，很多安全性要求较高的网站都采用HTTPS。

> > Net.TCP

> > > TCP全称为Transport Control Protocol（传输控制协议）,在整个TCP/IP簇中处于核心地位。

> > Net.Pipe

> > > 命名管道（Named Pipes）是Windows平台及UNIX系统下实现跨进程通信（Inter Process Communication，IPC）的标准实现方式。

> > Net.Msmq

> > > 消息队列（Message Queuing，也称MSMQ），是微软对消息服务领域的开创性尝试。

### 绑定

> 绑定是预先配置好的信道栈，它代表了服务器与客户端之间的通信约定，每个绑定都会指定了通信所应用到的传输协调、编码等属性。在Framework3.5中已经包含basicHttpBinding、wsHttpBinding、wsDualHttpBinding、webHttpBinding、netTcpBinding、netNamedPipeBinding、netMsmqBinding、netPeerTcpBinding、msmqIntegrationBinding、wsFedrationHttpBinding、ws2007HttpBinding、ws2007FederationHttpBinding等多种绑定。

> > 绑定类名称	传输	编码	消息版本	安全模式	可靠性会话	事务流

> > BasicHttpBinding	HTTP	文本	SOAP 1.1	无	不支持	不支持

> > WSHttpBinding	HTTP	文本	SOAP 1.2 WS-Addressing 1.0	消息	禁用	WS-AtomicTransactions

> > WSDualHttpBinding	HTTP	文本	SOAP 1.2 WS-Addressing 1.0	消息	启用	WS-AtomicTransactions

> > WSFederationHttpBinding	HTTP	文本	SOAP 1.2 WS-Addressing 1.0	消息	禁用	WS-AtomicTransactions

> > NetTcpBinding	TCP	二进制	SOAP 1.2	传输	禁用	OleTransactions

> > NetPeerTcpBinding	P2P	二进制	SOAP 1.2	传输	不支持	不支持

> > NetNamedPipesBinding	命名管道	二进制	SOAP 1.2	传输	不支持	OleTransactions

> > NetMsmqBinding	MSMQ	二进制	SOAP 1.2	消息	不支持	不支持

> > MsmqIntegrationBinding	MSMQ	不支持	不支持	传输	不支持	不支持

> > CustomBinding	自定义　	自定义　	自定义	自定义　　	自定义	自定义

>WCF内置的绑定。g功能简介

> > 绑定 描述

> > BasicHttpBinding 适用于与符合 WS-Basic Profile 的 Web 服务（例如基于 ASP.NET Web 服务 (ASMX) 的服务）进行的通信。此绑定使用 HTTP/HTTPS 作为传输协议，并使用文本/XML 作为默认的消息编码

> > BasicHttpContextBinding BasicHttpBinding的扩展，支持并使用HTTP Cookies来存储和传输上下文消息。

> > WS2007HttpBinding 一个安全且可互操作的绑定，可为 Security, ReliableSession 的正确版本和 TransactionFlow 绑定元素提供支持。关于细节，将在第七章中介绍。

> > WSHttpBinding 一个安全且可互操作的绑定，适合于非双工服务约

> > WSHttpContextBinding WSHttpBinding的扩展，实现了通过SOAP消息的头部信息来收发上下文消息。

> > WSDualHttpBinding 一个安全且可互操作的绑定，适用于双工服务协定或通过 SOAP 媒介进行的通信

> > WebHttpBinding 可用于为通过 HTTP 请求（而不是 SOAP 消息）公开的 WCF Web 服务配置终结点

> > WS2007FederationHttpBinding 一个安全且可互操作的绑定，它派生自 WS2007HttpBinding 并支持联合安全性。

> > WSFederationHttpBinding 一个安全且可互操作的绑定，支持 WS 联合协议并使联合中的组织可以高效地对用户进行身份验证和授权。

> > NetTcpBinding 一个安全且经过优化的绑定，适用于 WCF 应用程序之间跨计算机的通信

> > NetTcpContextBinding NetTcpBinding的扩展，实现了通过SOAP消息的头部信息来收发上下文消息。

> > NetNamePipeBinding 一个安全、可靠且经过优化的绑定，适用于 WCF 应用程序之间计算机上的通信

> > NetMsmqBinding 一个排队绑定，适用于 WCF 应用程序之间的跨计算机的通信

> > MsmqIntegrationBinding 适用于 WCF 应用程序和现有消息队列（也称为 MSMQ）应用程序之间跨计算机的通信

> 自定义绑定元素

> > 当预定义的绑定无法满足用户需求时，可以使用CustomBinding类开发自定义绑定，该类存在于System.ServiceModel.Channels命名空间。用户可以根据需要绑定以下属性： 事务（TransactionFlowBindingElement类）、可靠性会话（ReliableSessionBindingElement 类）、安全（ SecurityBindingElement 类）、流安全、单工双工工作模式、信息编码、传输绑定等，其中信息编码和传输绑定元素是自定义绑定的必要属性，其他属性用户可根据需求制定。

> > 传输绑定元素(必要），用户可选其中一种传输绑定模式。

> > 传输信道	传输绑定元素	绑定扩展	配置元素

> > TCP传输信道	TcpTransportBindingElement	TcpTransportElement	<tcpTransport>

> > HTTP传输信道	HttpTransportionBindingElement　　	HttpTransportElement　　	<httpTransport>

> > HTTPS传输信道	HttpTransportationBindingElement	HttpTransportElement	<httpTransport>

> > MSMQ传输信道	MSMQTransportBindingElement	MSMQTransportElement	<msmqTransport>

> > MSMQ集成传输信道	MSMQIntegrationBindingElement　　	MSMQIntegrationBindingElement	<msmqIntegration>

> > 命名管道传输信道	NamedPipeTransportBindingElement	NamedPipeTransportElement　　	<namedPipeTransport>

> > P2P传输信道　	PeerTransportBindingElement	PeerTransportElement	<peerTransport>

> > UDP传输信道	UdpTransportBindingElement	UdpTransportElement	<udpTransport>

> 信息编码（必要），用户可以选择其中一种信息编码形式

> > 1.TextMessageEncodingBindingElement，文本编码

> > 2.BinaryMessageEncodingBindingElement，二进制编码

> > 3.MtomMessageEncodingBindingElement，MOTM编码

> 流安全绑定元素（可选），用户可以选择其中一种安全绑定形式

> > 1.SslStreamSecurityBindingElement，SSL安全模式

> > 2.WindowsStreamSecurityBindingElement，Window安全模式

> 通信传输（可选），用户可以选择单工或双工其中一种模式

> > 1.CompositeDuplexBindingElement，双工传输模式

> > 2.OneWayBindingElement，单工传输模式

### 契约

> 一个正常的服务调用要求客户端和服务端对服务操作有一致的理解，WCF通过服务契约对服务操作进行抽象，以一种与平台无关的，能够被不同的厂商理解的方式对服务进行描述。同理，客户端和服务端进行有效的数据交换，同样要求交换双方对交换数据的结构达成共识，WCF通过数据契约来对交换的数据进行描述。与数据契约的定义相匹配，WCF采用新的序列化器——数据契约序列化器（DataContractSerializer）进行基于数据契约的序列化于反序列化操作。

> 服务契约

> 数据契约

> 序列化器

### 序列化

### 消息

> 消息交换是WCF进行通信的唯一手段，通过方法调用（Method Call）形式体现的服务访问需要转化成具体的消息，并通过相应的编码（Encoding）才能通过传输通道发送到服务端；服务操作执行的结果也只能以消息的形式才能被正常地返回到客户端。所以，消息在整个WCF体系结构中处于一个核心的地位，WCF可以看成是一个消息处理的管道。

### 服务寄宿 SelfHost

> 使用WAS寄宿WCF服务

> 在应用程序中寄宿WCF服务 ServiceHost ServiceHost对象的初始化过程：

> > ServieHost(Type serviceTpye, Uri[]baseAddresses) 实例化 ServiceHost

> > --> InitializeDescription(serviceType, new UriSchemekeyedCollection(baseaddressessed))Initializes a description of the service hosted based on its type and specified base addresses根据服务的类型和基本地址，实例化Servicehost

> > ---->base.InitializeDescription(baseAddresses); Creates and initializes the service host with the contract and service descriptions 创建和实例化ServieHost，并指定服务契约和服务描述

> >  ------>CreateDescription(out dictionary);创建Servicehost的描述

> > ------>ApplyConfiguration();从配置文件中加载服务描述信息，并应用到在WCF运行时已经创建的ServiceHost对象

> ServiceHost提供了一些事件，以供追踪ServieHost对象的状态。下表列出了这些事件：

> > 事件 描述

> > Opening当通信对象转换到正在打开状态时发生

> > Opened当通信对象转换到已打开状态时发生

> > Closing当通信对象转换到正在关闭状态时发生

> > Closed当通信对象转换到已关闭状态时发生

> > Faulted在通信对象转换到出错状态时发生

> > UnknownMessageReceived 接收未知消息时发生

### 客户端

> WCF通信机制由它自身复杂的体系结构所决定，但WCF服务给我们提供了两种不同的机制来创建客户端程序调用，一种是ClientBase<TChannel>类，另一种ChannelFactory<TChannel> 类。

> > ClientBase<TChannel>：创建客户端代理类的基类，客户端代理类通过继承该基类，调用WCF的内部通信机制来实现WCF客户端与服务端的通信。代理类是一个公开单个CLR接口来表示服务契约的CLR类，代理类和服务契约很相似，但是他有着附加的方法来管理代理的生命周期和连接服务。通过visual studio 右键添加服务引用和通过svcutil.exe命令行工具生成的客户端都属于这种方式。(如果不熟悉svcutil.exe，请参照WCF初探-1：认识WCF)

> > ChannelFactory<TChannel>：使用通道工厂类取决于你是否拥有描述服务契约的本地接口。最大的好处是你可以已扩展的方式更容易的修改通道的通信机制，如果你需要共享服务和客户端之间的契约组件，那么使用ChannelFactory<TChannel>可以更有效的节省时间，但客户端必须完成对服务契约组件的引用。

> > ClientBase<TChannel>和ChannelFactory<TChannel>的差异：

### 实例化与会话

### REST服务

### 异常处理

### 元数据

### 事务

> 通过服务契约决定事物流转（Transaction Flow）的策略；

> 通过绑定实施事务的流转；

> 通过服务行为控制事务的相关行为。

> 分布式事务

### 并发与限流

### 可靠会话

### 队列服务

### 传输安全

### 扩展

## .Net Core

### Ubuntu Linux下Dotnet 安装

> > 不正确安装会出现 A fatal error occurred. The folder [/usr/share/dotnet/host/fxr] does not exist

> > 卸载旧版

> sudo apt remove dotnet*

> sudo apt remove netstandard*

> sudo apt remove aspnetcore*

> > 安装

> sudo gedit /etc/apt/preferences.d/99microsoft-dotnet.pref

> > 文件内容

```
Package: *
Pin: origin "packages.microsoft.com"
Pin-Priority: 1001
```

> > # API transport for downloading via HTTPS

> sudo apt install apt-transport-https

> > # Download package information

> sudo apt update

> > # Install the .NET Core SDK

> sudo apt install dotnet-sdk-6.0

### Router

#### property router

> [Route("app/[controller]/actions/[action]/{id:weekday?}")]

#### 设置路由中间件

```

app.UseMvc(routes =>

{

  routes.MapRoute(

    name: "default",

    template: "{controller=Home}/{action=Index}/{id?}");

});

```

> 常规路由：routes.MapRoute(name: "default",template: "{controller=Home}/{action=Index}/{id?}"); 这是一个常规路由

#### 多路由 

```

app.UseMvc(routes =>

{

  routes.MapRoute("blog", "blog/{*article}",

    defaults: new { Controller = "Blog", Action = "Index" });

  routes.MapRoute(

    name: "default",

    template: "{controller=Home}/{action=Index}/{id?}");

});

```

#### 高级路由

```

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

```

### Session

```

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

```

### DI

> services.AddSingleton<IRepository, MemoryRepository>(); 单实例

> services.AddTransient<IModelStorage, DictionaryStorage>(); 每一次获取的对象都不是同一个

> services.AddScoped 请求开始-请求结束 在这次请求中获取的对象都是同一个；不用申明静态类；

### Filters

> > 子类Controller拦截器要先于父类Controller拦截器执行

> 最先执行的是全局声明的MyActionOneAttribute拦截器

> 然后执行的是声明在子Controller类HomeController上的MyActionThreeAttribute拦截器

> 接着执行的是声明在父Controller类BaseController上的MyActionTwoAttribute拦截器

> 最后执行的是声明在子Controller类HomeController的Index方法上的MyActionFourAttribute拦截器

```

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

```

> Usage:

```

  [MyFilter("This is the Controller-Scoped Filter", Order = 10)]

  public class HomeController : Controller {

    [MyFilter("This is the First Action-Scoped Filter", Order = 1)]

    [MyFilter("This is the Second Action-Scoped Filter", Order = -1)]

    public ViewResult Index() => View("Message",

      "This is the Index action on the Home controller");

  }

```

#### 授权过滤器 AuthorizeAttribute

```

 public class HttpsOnlyAttribute : Attribute, IAuthorizationFilter {

    public void OnAuthorization(AuthorizationFilterContext context) {

      if (!context.HttpContext.Request.IsHttps) {

        context.Result =

          new StatusCodeResult(StatusCodes.Status403Forbidden);

      }

    }

  }

```

#### 资源过滤器 IResourceFilter

```

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

```

#### 异常过滤器 IExceptionFilter

```

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

```

#### 操作过滤器 ActionFilterAttribute

```

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

```

```

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

```

#### 结果过滤器 ResultFilterAttribute

```

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

```

```

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

```

#### 结果过滤器 IFilterDiagnostics

```

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

```

#### IAsyncResultFilter

```

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

```

```

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

```

### Controllers

> [HttpGet("object/{format?}")]

>  [FormatFilter]

#### WebAPI

```

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

```

#### Controller

> 所有的动作结果都继承自ActionResult基类 ASP.NET MVC框架支持六种标准类型的动作结果：

> 动作名称 概述 方法名

> ViewResult 视图内容，HTML或标记 View

> EmptyResult 空内容

> RedirectResult 重定向到新的URL

> Redirect RedirectToRouteResult 重定向到新的控制器

> RedirectToAction/RedirectToRoute JsonResult 返回一个JSON（Javascript Object Notation）内容 Json ContentResult 返回文本内容 Content

```

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

```

#### Rezor View

```

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

```

```

services.AddMvc()

  .AddXmlDataContractSerializerFormatters()

  .AddMvcOptions(opts => {

    opts.EnableEndpointRouting = false;

    opts.FormatterMappings.SetMediaTypeMappingForFormat("xml",

      new MediaTypeHeaderValue("application/xml"));

    opts.RespectBrowserAcceptHeader = true;

    opts.ReturnHttpNotAcceptable = true;

  });

```

### ViewComponent

```

 public class PageSize : ViewComponent {

    public async Task<IViewComponentResult> InvokeAsync() {

      HttpClient client = new HttpClient();

      HttpResponseMessage response

        = await client.GetAsync("http://apress.com");

      return View(response.Content.Headers.ContentLength);

    }

  }

```

### Taghelper 

> 可以扩展一些自定义的标记 其实就是后台生成html代码的一种形式

> 扩展标记，可以从后台进行前端Html的配置

> HtmlTargetElement 属性中配置那些html元素，那些样式起作用

> 定义一个Taghelper formbutton 设置其属性

```

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

```

> View中用法

```

<formbutton>hello</formbutton>

```

> 本质上所有的mvc视图元素都是来自Taghelper 比如form

```

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

```

### SignalR

> 什么是 SignalR？

> > ASP.NET Core SignalR 是一个开放源代码库，可用于简化向应用添加实时 Web 功能。 实时 Web 功能使服务器端代码能够将内容推送到客户端。

> 适合 SignalR 的候选项：

> > 需要从服务器进行高频率更新的应用。 示例包括游戏、社交网络、投票、拍卖、地图和 GPS 应用。

> > 仪表板和监视应用。 示例包括公司仪表板、即时销售更新或旅行警报。

> > 协作应用。 协作应用的示例包括白板应用和团队会议软件。

> > 需要通知的应用。 社交网络、电子邮件、聊天、游戏、旅行警报和很多其他应用都需使用通知。

> > SignalR 提供用于创建服务器到客户端远程过程调用 (RPC) 的 API。 RPC 从服务器端 .NET Core 代码调用客户端上的函数。 提供多个受支持的平台，其中每个平台都有各自的客户端 SDK。 因此，RPC 调用所调用的编程语言有所不同。

> 以下是 ASP.NET Core SignalR 的一些功能：

> > 自动处理连接管理。

> > 同时向所有连接的客户端发送消息。 例如聊天室。

> > 向特定客户端或客户端组发送消息。

> > 对其进行缩放，以处理不断增加的流量。

> > SignalR 中心协议

> > 源托管在 GitHub 上的存储库中SignalR。

> 传输

> > SignalR 支持以下用于处理实时通信的技术（按正常回退的顺序）：

> > WebSockets

> > Server-Sent Events

> > 长轮询

> > SignalR 自动选择服务器和客户端能力范围内的最佳传输方法。

> 中心

> > SignalR 使用 中心 在客户端和服务器之间进行通信。

> > Hub 是一种高级管道，允许客户端和服务器相互调用方法。 SignalR 自动处理跨计算机边界的调度，并允许客户端调用服务器上的方法，反之亦然。 可以将强类型参数传递给方法，从而支持模型绑定。 SignalR 提供两个内置中心协议：基于 JSON 的文本协议和基于 MessagePack 的二进制协议。 与 ON 相比 JS，MessagePack 通常会创建较小的消息。 旧版浏览器必须支持 XHR 级别 2 才能提供 MessagePack 协议支持。

> > 中心通过发送包含客户端方法的名称和参数的消息来调用客户端代码。 作为方法参数发送的对象使用配置的协议进行反序列化。 客户端尝试将名称与客户端代码中的方法匹配。 当客户端找到匹配项时，它会调用该方法并将反序列化的参数数据传递给它。

> 不支持 ECMAScript 6 的浏览器 (ES6)

> > SignalR 面向 ES6。 对于不支持 ES6 的浏览器，请将库转译为 ES5。 有关详细信息，请参阅使用 ES6 入门 – 使用 Traceur 和 Babel 将 ES6 转为 ES5。

> SignalR 简单示例

> > 创建 Web 应用项目

> > > 创建 ASP.NET Core Web 应用

> > > 在“配置新项目”对话框中，为“项目名称”输入 SignalRChat。 请务必将项目命名为 SignalRChat（包括匹配大写），以便命名空间与教程中的代码匹配。

> > 添加 SignalR 客户端库

> > > ASP.NET Core 共享框架中包含 SignalR 服务器库。 JavaScript 客户端库不会自动包含在项目中。 对于此教程，使用库管理器 (LibMan) 从 unpkg 获取客户端库。 unpkg 是一个快速的全局内容分发网络，适用于 npm 上的所有内容。

> > > 在“解决方案资源管理器”>中，右键单击项目，然后选择“添加”“客户端库”。

> > > 在“添加客户端库”对话框中：

> > > 为“提供程序”选择“unpkg”

> > > 对于“库”，请输入 @microsoft/signalr@latest。

> > > 选择“选择特定文件”，展开“dist/browser”文件夹，然后选择 signalr.js 和 signalr.min.js。

> > > 将“目标位置”设置为 wwwroot/js/signalr/。

> > > 选择“安装” 。

> > > “添加客户端库”对话框 - 选择库

> > > LibMan 创建 wwwroot/js/signalr 文件夹并将所选文件复制到该文件夹。

> > 创建 SignalR 中心

> > > 中心是一个类，用作处理客户端 - 服务器通信的高级管道。

> > > 在 SignalRChat 项目文件夹中，创建 Hubs 文件夹。

> > > 在 Hubs 文件夹中，使用以下代码创建 ChatHub 类：

> > > C#

```

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

```

> > > ChatHub 类继承自 SignalRHub。 Hub 类管理连接、组和消息。

> > > 可通过已连接客户端调用 SendMessage，以向所有客户端发送消息。 本教程后面部分将显示调用该方法的 JavaScript 客户端代码。 SignalR 代码是异步模式，可提供最大的可伸缩性。

> > 配置 SignalR

> > > 必须将 SignalR 服务器配置为将 SignalR 请求传递给 SignalR。 将以下突出显示的代码添加到 Program.cs 文件。

C#

```

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

```

> > > 以上突出显示的代码将 SignalR 添加到 ASP.NET Core 依赖关系注入和路由系统。

> > 添加 SignalR 客户端代码

> > > CSHTML

```

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
```
> > > JavaScript

```
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

```

### consul

## Entity Framework

### EDM

> 实体数据模型，简称EDM，由三个概念组成。概念模型由概念架构定义语言文件 (.csdl)来定义，映射由映射规范语言文件 (.msl)，存储模型（又称逻辑模型）由存储架构定义语言文件 (.ssdl)来定义。这三者合在一起就是EDM模式。EDM模式在项目中的表现形式就是扩展名为.edmx的文件。这个包含EDM的文件可以使用Visual Studio中的EDM设计器来设计。由于这个文件本质是一个xml文件，可以手工编辑此文件来自定义CSDL、MSL与SSDL这三部分。

## DI（IoC）

> > DI(Dependency Injection)

> > IoC(Inverse of Control)

### Unity

> > 微软patterns&practicest团队开发的IOC依赖注入框架，支持AOP横切关注点。

```
static void Main(string[] args)
{
    UnityContainer container = new UnityContainer();//创建容器
    container.RegisterType<Test01.IWaterTool, Test01.PressWater>();//注册依赖对象
    Test01.IPeople people = container.Resolve<Test01.VillagePeople>();//返回调用者
    people.DrinkWater();//喝水
}
```

### MEF

> > （Managed Extensibility Framework）：是一个用来扩展.NET应用程序的框架，可开发插件系统。

```
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


```

### Spring.NET

> 依赖注入、面向方面编程(AOP)、数据访问抽象,、以及ASP.NET集成。

```
class Program
{
    static void Main(string[] args)
    {
        // 创建容器
        Spring.Context.Support.StaticApplicationContext context
            = new Spring.Context.Support.StaticApplicationContext();
             
        // 注册
        context.RegisterPrototype("Person", typeof(Student), null);
         
        // 注册一个单例类型
        context.RegisterSingleton("Alice", typeof(Person), null);
 
        Person person = context.GetObject("Person") as Person;
 
        Console.WriteLine(person);
    }
}
```

### Autofac

> 最流行的依赖注入和IOC框架，轻量且高性能，对项目代码几乎无任何侵入性。

```
//注册Autofac组件
ContainerBuilder builder = new ContainerBuilder();
//注册实现类Student，当我们请求IStudent接口的时候，返回的是类Student的对象。
builder.RegisterType<Student>().As<IStudent>();
//上面这句也可改成下面这句，这样请求Student实现了的任何接口的时候，都会返回Student对象。
//builder.RegisterType<Student>().AsImplementedInterfaces();
IContainer container = builder.Build();
//请求IStudent接口
IStudent student = container.Resolve<IStudent>();
student.Add("1001", "Hello");
```

### Ninject

> Ninject是一个快如闪电、超轻量级的基于.Net平台的开源依赖注入框架。

```
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Ninject; //引入命名空间
namespace RegisterNinject
{
    public class Register
    {
        private StandardKernel _kernel = new StandardKernel();
        // 在这里注册
        public Register()
        {
            _kernel.Bind<IDataAccess>().To<MySqlDataOrder>();
            //_kernel.Bind<IDataAccess>().To<SqlServerDataOrder>();
            //_kernel.Bind<IDataProduct>().To<SqlServerDataProduct>();
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RegisterNinject
{
    public class Order
    {
        private Register reg = new Register();
        public string QueryOrder()
        {
            return reg.Get<IDataAccess>().QueryOrder();
        }

    }
}

使用Xml文件（热插拔）

Register.xml

<?xml version="1.0" encoding="utf-8" ?> 
<module name="register">
  <bind service="XmlNinject.IDataAccess,XmlNinject" to="XmlNinject.SqlServerDataOrder,XmlNinject"/>
</module>
 
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
```

## 单元测试

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

## AOP框架

> AOP（Aspect-Oriented Programming，面向切面的编程），它是可以通过预编译方式和运行期动态代理实现在不修改源代码的情况下给程序动态统一添加功能的一种技术。它是一种新的方法论，它是对传统OOP编程的一种补充。OOP是关注将需求功能划分为不同的并且相对独立，封装良好的类，并让它们有着属于自己的行为，依靠继承和多态等来定义彼此的关系；AOP是希望能够将通用需求功能从不相关的类当中分离出来，能够使得很多类共享一个行为，一旦发生变化，不必修改很多类，而只需要修改这个行为即可。AOP是使用切面（aspect）将横切关注点模块化，OOP是使用类将状态和行为模块化。在OOP的世界中，程序都是通过类和接口组织的，使用它们实现程序的核心业务逻辑是十分合适。但是对于实现横切关注点（跨越应用程序多个模块的功能需求）则十分吃力，比如日志记录，权限验证，异常拦截等。

Castle
Encase 是C#编写开发的为.NET平台提供的AOP框架。Encase 独特的提供了把方面(aspects)部署到运行时代码，而其它AOP框架依赖配置文件的方式。这种部署方面(aspects)的方法帮助缺少经验的开发人员提高开发效率。
NKalore 是一款编程语言，它扩展了C#允许在.net平台使用AOP。NKalore的语法简单、直观，它的编译器是基于Mono C#编译器(MCS)。NKalore目前只能在命令行或#Develop内部使用。NKalore兼容公共语言规范CLS(Common Language Specification)，它可以在任何.NET开发环境中使用，包括微软的Visual Studio .NET。
PostSharp 读取.NET字节模块，转换成对象模型。让插件分析和转换这个模型并写回到MSIL。PostSharp使开发程序分析应用程序容易得像分析代码规则和设计模式，它使程序开发的思想变革为面向方面软件开发(AOSD/AOD)思想。
AspectDNG 的目标是为.NET开发人员提供简单而功能强大的AOP-GAOP实现。它效仿Java下的开源工具AspectJ 和 Spoon，成熟程度也很接近它们。
RAIL(Runtime Assembly Instrumentation Library) 开源项目可以在C#程序集加载和运行前进行处理控制调整和重新构建。C#在CLR中，我们已经能够动态加载程序集并且获得程序集中的类和方法，RAIL(Runtime Assembly Instrumentation Library)的出现填补了CLR处理过程中的一些空白。
SetPoint是一款.NET框架下的全功能(full-featured)AOP引擎.它着重为称为语义切点(semantic pointcuts)的定义依赖RDF/OWL的使用.它的功能为一个IL-level，highly dynamic weaver&LENDL,一个引人注目的定义语言、、、、、、
DotNetAOP为 CLR language提供AOP 框架基础属性。
NAop是一个DotNet下的AOP框架。
AspectSharp是DotNet下的免费AOP框架，它以Dynamic Proxies和XML作为配置文件。

## 认证授权

### 认证 Authentication 

> 身份验证是确定用户身份的过程。 授权是确定用户是否有权访问资源的过程。 在 ASP.NET Core 中，身份验证由身份验证服务 IAuthenticationService 负责，而它供身份验证中间件使用。 身份验证服务会使用已注册的身份验证处理程序来完成与身份验证相关的操作。 与身份验证相关的操作示例包括：对用户进行身份验证。在未经身份验证的用户试图访问受限资源时作出响应。

> 身份验证负责提供 ClaimsPrincipal 进行授权，以针对其进行权限决策。 可通过多种身份验证方案方法来选择使用哪种身份验证处理程序负责生成正确的声明集：

#### Session-Cookie认证

Session-Cookie 的认证流程如下：用户先使用用户名和密码登录，登录完成后后端将用户信息存在session 中，把sessionId 写到前端的cookie 中，后面每次操作带着cookie 去后端，只要后端判断sessionId 没问题且没过期就不需要再次登录。

使用这种方式进行认证，开发者可能面临的主要问题如下：

cookie 安全性问题，攻击者可以通过xss 获取cookie 中的sessinId，使用 httpOnly 在一定程度上提高安全性

cookie 不能跨域传输

session 存储在服务器中，所以session 过多会耗费较大服务器资源

#### Token认证

> 与上面的Session-Cookie 机制不同的地方在于，基于token 的用户认证是一种服务端无状态的认证方式，服务端可以不用存放token 数据，但是服务器可以验证token 的合法性和有效性。进行认证的方式这里主要介绍两种：SAML,JWT

##### SAML

> SAML (Security Assertion Markup Language) 

> > 未登录的用户通过浏览器访问资源网站（Service Provider，简称SP）

> > SP 发现用户未登录，将页面重定向至IdP（Identity Provider）

> > IdP 验证请求无误后，提供表单让用户进行登录

> > 用户登录成功后，IdP 生成并发送SAML token (一个很大的XML对象) 给SP

> > SP 对token 进行验证，解析获取用户信息，允许用户访问相关资源

##### JWT

> JWT 就是一种在用户登录后生成token 并把token 放在前端，后端不需要维护用户的状态信息但是可以验证token 有效性的认证及状态管理方式。 

#### SSO 与CAS 单点登录。

> 有若干云服务。包含项目管理、代码托管、代码检查、流水线、编译构建、部署、自动化测试等众多微服务的DevCloud（软件开发云） 正是其中之一，用户如果在使用任意一个服务没有登录的时候都可以去同一个地方进行登录认证，登录之后的一段时间内可以无需登录访问所有其他服务。

> CAS（Central Authentication Service，中文名是中央认证服务） 是一个被高频使用的解决方案。因此，这里介绍一下利用CAS 实现SSO。而CAS 的具体实现又可以依赖很多种协议，比如OpenID、OAuth、SAML 等，这里重点介绍一下CAS 协议。CAS 协议中的几个重要概念

> > CAS Server：用于认证的中心服务器

> > CAS Clients：保护CAS 应用，一旦有未认证的用户访问，重定向至CAS Server 进行认证

> > TGT & TGC：用户认证之后，CAS Server 回生成一个包含用户信息的TGT (Ticket Granting Ticket) 并向浏览器写一个cookie（TGC，Ticket Granting Cookie），有啥用后面流程会讲到

> > ST：在url 上作为参数传输的ticket，受保护应用可以凭借这个ticket 去CAS Server 确认用户的认证是否合法 

#### 多重身份验证

> 多重身份验证 (MFA) 是在登录事件期间请求用户进行其他形式的身份验证的过程。 此提示可以是输入手机中的代码、使用 FIDO2 密钥或提供指纹扫描。 需要进行另一种形式的身份验证时，安全性便得到了增强。 攻击者无法轻松获取或复制额外的因素。

> MFA TOTP（基于时间的一次性密码算法）

> > 使用 ASP.NET Core Identity时，默认支持使用 TOTP 的 MFA。 此方法可与任何合规的验证器应用一起使用，包括：

> > > Microsoft Authenticator

> > > Google Authenticator

> > 若要禁用对 MFA TOTP 的支持，请使用 AddIdentity 而不是 AddDefaultIdentity配置身份验证。 AddDefaultIdentity 在内部调用 AddDefaultTokenProviders ，这将注册多个令牌提供程序，包括一个用于 MFA TOTP 的令牌提供程序。 若要仅注册特定的令牌提供程序，请为每个所需的提供程序调用 AddTokenProvider 。 有关可用令牌提供程序的详细信息，请参阅 GitHub 上的 AddDefaultTokenProviders 源。

> > > MFA FIDO2 或无密码

> > > FIDO2 目前是：

> > > 实现 MFA 的最安全方法。唯一可防止钓鱼攻击的 MFA 流。

> > > 目前，ASP.NET Core 不能直接支持 FIDO2。 FIDO2 可用于 MFA 或无密码流。

> > > Azure Active Directory 提供对 FIDO2 和无密码流的支持。

> MFA 短信

> > 与密码身份验证（单因素）相比，使用短信的 MFA 大大提高了安全性。 但是，不再建议使用短信作为第二个因素。 此类型的实现存在太多已知攻击媒介。

#### .NET CORE身份验证方案

> > > 身份验证方案的身份验证操作负责根据请求上下文构造用户的身份。 它会返回一个 AuthenticateResult指示身份验证是否成功；若成功，则还在身份验证票证中指示用户的身份。 请参阅 AuthenticateAsync。 身份验证示例包括：

> > > > 根据 cookie 构造用户身份的 cookie 身份验证方案。

> > > > 对 JWT 持有者令牌进行反序列化和验证以构造用户身份的 JWT 持有者方案。

> > > 当未经身份验证的用户请求要求身份验证的终结点时，授权会发起身份验证挑战。 例如，当匿名用户请求受限资源或访问登录链接时，会引发身份验证挑战。 授权会使用指定的身份验证方案发起挑战；如果未指定任何方案，则使用默认方案。 请参阅 ChallengeAsync。 身份验证挑战示例包括：

> > > > 将用户重定向到登录页面的 cookie 身份验证方案。

> > > > 返回具有 www-authenticate: bearer 标头的 401 结果的 JWT 持有者方案。

> > > 身份验证处理程序：

> > > > 是一种实现方案行为的类型。

> > > > 派生自 IAuthenticationHandler 或 AuthenticationHandler<TOptions>。

> > > > 具有对用户进行身份验证的主要责任。

> > 默认身份验证方案。

> > 直接设置 HttpContext.User。

```
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

```

##### Identity

> Identity是一个一个 API，它支持用户界面 (UI) 登录功能。

> 管理用户、密码、配置文件数据、角色、声明、令牌、电子邮件确认等等。

> > 可以理解为.net core提供的一套用户管理系统，经过简单的配置就可以使用，当然也是可以自定义界面（需要添加基架标识(Scaffold Identity )） 

> > 使用Scaffold Identity 授权到MVC 项目

> > > 1.从解决方案资源管理器，右键单击该项目 >添加 > 新基架项。

> > > 2.从左窗格添加基架对话框中，选择标识 > 添加。

> > > 3.在中ADD 标识添加对话框中，选择所需的选项。

> 使用Identity主要步骤：

> 配置 Identity 服务 这些服务添加在 Program.cs 中。 包括配置数据库链接，典型模式是按以下顺序调用方法：

> > Add{Service}

> > builder.Services.Configure{Service}

> 构建 Register、Login、LogOut 和 RegisterConfirmation 的基架

### 授权

#### 授权  Authorize

> 简单授权

> > ASP.NET Core 中的授权由 AuthorizeAttribute 及其各种参数控制。 在其最基本的形式中，将 [Authorize] 属性应用于控制器、操作或 Razor 页面，将对该组件的访问权限限制为经过身份验证的用户。

> 基于角色的授权

> > 角色服务添加到 Identity 通过调用应用配置中的角色类型来AddRoles注册Program.cs基于角色的Identity授权服务。 以下示例中的角色类型为 IdentityRole：builder.Services.AddDefaultIdentity<IdentityUser>( ... ).AddRoles<IdentityRole>()

> > [Authorize(Roles = "HRManager,Finance")]

> > 基于 Policy 的角色检查

```
builder.Services.AddAuthorization(options =>
{
    options.AddPolicy("RequireAdministratorRole",
         policy => policy.RequireRole("Administrator"));

    options.AddPolicy("ElevatedRights", policy =>
        policy.RequireRole("Administrator", "PowerUser", "BackupAdministrator"));
});

[Authorize(Policy = "RequireAdministratorRole")]
```

> 基于声明的授权

> > 添加声明检查

```
builder.Services.AddAuthorization(options =>
{
   options.AddPolicy("EmployeeOnly", policy => policy.RequireClaim("EmployeeNumber"));
});
```

> > 使用 [Authorize] 属性上的 Policy 属性应用策略，以指定策略名称；[Authorize(Policy = "EmployeeOnly")]

> 基于策略的授权

> > IAuthorizationService

> > 典型的授权服务配置：

```
// Add all of your handlers to DI.
builder.Services.AddSingleton<IAuthorizationHandler, MyHandler1>();
// MyHandler2, ...

builder.Services.AddSingleton<IAuthorizationHandler, MyHandlerN>();

// Configure your policies
builder.Services.AddAuthorization(options =>
      options.AddPolicy("Something",
      policy => policy.RequireClaim("Permission", "CanViewPage", "CanViewAnything")));
```

> > > 将策略应用于 MVC 控制器 [Authorize(Policy = "AtLeast21")]

> 授权策略提供程序

> > 通常在使用基于策略的授权时，通过在授权服务配置中调用 AuthorizationOptions.AddPolicy 来注册策略。 在某些情况下，可能无法（或不可取）采用此方式注册所有授权策略。 在这些情况下，可以使用自定义 IAuthorizationPolicyProvider 来控制如何提供授权策略。

> > 自定义 IAuthorizationPolicyProvider 可能很有用的方案示例包括：

> > > 使用外部服务提供策略评估。

> > > 使用大范围的策略（例如对于不同房间号或年龄），因此使用 AuthorizationOptions.AddPolicy 调用添加每个单独授权策略没有意义。

> > > 在运行时基于外部数据源（如数据库）中的信息创建策略，或通过其他机制动态确定授权要求。

> 自定义 AuthorizationMiddleware 的行为

> 基于资源的授权

> > 使用命令性授权

授权作为服务 IAuthorizationService 实现，并在类中的服务集合 Startup 中注册。 该服务通过依赖项注入提供给页面处理程序或操作。

```
public class DocumentController : Controller
{
    private readonly IAuthorizationService _authorizationService;
    private readonly IDocumentRepository _documentRepository;

    public DocumentController(IAuthorizationService authorizationService,
                              IDocumentRepository documentRepository)
    {
        _authorizationService = authorizationService;
        _documentRepository = documentRepository;
    }
IAuthorizationService 有两个 AuthorizeAsync 方法重载：一个接受资源和策略名称，另一个接受资源和要评估的要求列表。

Task<AuthorizationResult> AuthorizeAsync(ClaimsPrincipal user,
                          object resource,
                          IEnumerable<IAuthorizationRequirement> requirements);
Task<AuthorizationResult> AuthorizeAsync(ClaimsPrincipal user,
                          object resource,
                          string policyName);

在以下示例中，要保护的资源将加载到自定义 Document 对象中。 系统调用 AuthorizeAsync 重载以确定是否允许当前用户编辑提供的文档。 自定义“EditPolicy”授权策略已纳入决策中。 有关创建授权策略的详细信息，请参阅基于自定义策略的授权。

以下代码示例假定身份验证已运行并设置了 User 属性。

public async Task<IActionResult> OnGetAsync(Guid documentId)
{
    Document = _documentRepository.Find(documentId);

    if (Document == null)
    {
        return new NotFoundResult();
    }

    var authorizationResult = await _authorizationService
            .AuthorizeAsync(User, Document, "EditPolicy");

    if (authorizationResult.Succeeded)
    {
        return Page();
    }
    else if (User.Identity.IsAuthenticated)
    {
        return new ForbidResult();
    }
    else
    {
        return new ChallengeResult();
    }
}
```

> > 编写基于资源的处理程序为基于资源的授权编写处理程序与编写普通的要求处理程序没有太大区别。 创建自定义要求类并实现要求处理程序类。 有关创建要求类的详细信息，请参阅要求。处理程序类指定要求和资源类型。 例如，使用 SameAuthorRequirement 和 Document 资源的处理程序如下所示：

```
public class DocumentAuthorizationHandler : 
    AuthorizationHandler<SameAuthorRequirement, Document>
{
    protected override Task HandleRequirementAsync(AuthorizationHandlerContext context,
                                                   SameAuthorRequirement requirement,
                                                   Document resource)
    {
        if (context.User.Identity?.Name == resource.Author)
        {
            context.Succeed(requirement);
        }

        return Task.CompletedTask;
    }
}

public class SameAuthorRequirement : IAuthorizationRequirement { }
在前面的示例中，假设 SameAuthorRequirement 是更泛型的 SpecificAuthorRequirement 类的特例。 SpecificAuthorRequirement 类（未显示）包含一个表示作者姓名的 Name 属性。 Name 属性可以设置为当前用户。

在 Program.cs 中注册要求和处理程序：

builder.Services.AddRazorPages();
builder.Services.AddControllersWithViews();

builder.Services.AddAuthorization(options =>
{
    options.AddPolicy("EditPolicy", policy =>
        policy.Requirements.Add(new SameAuthorRequirement()));
});

builder.Services.AddSingleton<IAuthorizationHandler, DocumentAuthorizationHandler>();
builder.Services.AddSingleton<IAuthorizationHandler, DocumentAuthorizationCrudHandler>();
builder.Services.AddScoped<IDocumentRepository, DocumentRepository>();
```

> > 如果要根据 CRUD 的结果做出决策， (创建、读取、更新、删除) 操作，请使用 OperationAuthorizationRequirement 帮助程序类。 借助此类，你可以编写单个处理程序，而不是为每种操作类型编写一个类。 若要使用它，请提供一些操作名称：

```
public static class Operations
{
    public static OperationAuthorizationRequirement Create =
        new OperationAuthorizationRequirement { Name = nameof(Create) };
    public static OperationAuthorizationRequirement Read =
        new OperationAuthorizationRequirement { Name = nameof(Read) };
    public static OperationAuthorizationRequirement Update =
        new OperationAuthorizationRequirement { Name = nameof(Update) };
    public static OperationAuthorizationRequirement Delete =
        new OperationAuthorizationRequirement { Name = nameof(Delete) };
}
```

> 基于视图的授权

> > 开发人员通常希望根据当前用户标识显示、隐藏或以其他方式修改 UI。 可以通过依赖项注入在 MVC 视图中访问授权服务。 若要将授权服务注入 Razor 视图，请使用 @inject 指令：

```
@using Microsoft.AspNetCore.Authorization
@inject IAuthorizationService AuthorizationService
如果要在每个视图中使用授权服务，请将 @inject 指令 _ViewImports.cshtml 放入 Views 目录的文件。 有关详细信息，请参阅视图中的依赖关系注入。

使用注入的授权服务调用 AuthorizeAsync，其方式与在基于资源的授权过程中检查的方式完全相同：

@if ((await AuthorizationService.AuthorizeAsync(User, "PolicyName")).Succeeded)
{
    <p>This paragraph is displayed because you fulfilled PolicyName.</p>
}
有时资源是视图模型。 调用 AuthorizeAsync 的方式与在基于资源的授权过程中检查的方式完全相同：

@if ((await AuthorizationService.AuthorizeAsync(User, Model, Operations.Edit)).Succeeded)
{
    <p><a class="btn btn-default" role="button"
        href="@Url.Action("Edit", "Document", new { id = Model.Id })">Edit</a></p>
}
```

> > 在前面的代码中，模型作为策略评估应考虑的资源传递。

> 按方案限制标识

> > 在某些情况下，例如单页应用程序 (SPA)，通常会使用多种身份验证方法。 例如，应用可能会针对登录使用基于 cookie 的身份验证，并使用 JWT 持有者身份验证来处理 JavaScript 请求。 在某些情况下，应用可能会有一个身份验证处理程序的多个实例。 例如，有两个 cookie 处理程序，一个包含基本标识，另一个是在多重身份验证 (MFA) 触发后创建的。 可能会触发 MFA，因为用户请求了需要额外安全性的操作。 有关当用户请求需要 MFA 的资源时强制执行 MFA 的详细信息，请参阅使用 MFA 保护部分这一 GitHub 问题。身份验证方案是在身份验证期间配置身份验证服务时命名的。 

```
// Authentication
builder.Services.AddAuthentication(options =>
{
    options.DefaultScheme = "B2C_OR_AAD";
    options.DefaultChallengeScheme = "B2C_OR_AAD";
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
.AddPolicyScheme("B2C_OR_AAD", "B2C_OR_AAD", options =>
{
    options.ForwardDefaultSelector = context =>
    {
        string authorization = context.Request.Headers[HeaderNames.Authorization];
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
```


#### WCF三种授权模式

> 安全主体具有两个基本的要素：身份与权限。身份在客户端经过认证之后已经确立下来，现在需要解决的问题就是如何获取被认证用户的权限。为了解决这个问题，WCF为我们提供了不同的方案，我们把这些方案成为不同的“安全主体权限模式（Principal Permission Mode）”。具体来说，WCF支持如下三种安全主体权限模式。

> > 采用Windows用户组：将经过认证的用户映射为同名的Windows帐号，将该帐号所在的用户组作为权限集；

> > 采用ASP.NET Roles提供程序：通过ASP.NET角色管理机制借助于某个RoleProvider获取基于当前认证用户的角色列表，并将其作为权限集；

> > 自定义权限模式：自定义权限解析和安全主体创建机制。

#### OAuth 授权

> OAuth 2 是一个授权框架，或称授权标准，它可以使第三方应用程序或客户端获得对HTTP服务上（例如 Google，GitHub ）用户帐户信息的有限访问权限。OAuth 2 通过将用户身份验证委派给托管用户帐户的服务以及授权客户端访问用户帐户进行工作。

> OAuth2 角色

> > 资源所有者（Resource Owner）在 OAuth 2 标准中，资源所有者即代表授权客户端访问本身资源信息的用户（User），也就是应用场景中的“开发者A”。

> > 资源服务器（Resource Server）资源服务器托管了受保护的用户账号信息。

> > 授权服务器（Authorization Server） 而授权服务器验证用户身份然后为客户端派发资源访问令牌。

> > 客户端（Client）客户端即代表意图访问受限资源的第三方应用

>  OAuth 2 的授权流程

> > Authrization Request 客户端向用户请求对资源服务器的authorization grant。

> > Authorization Grant（Get）如果用户授权该次请求，客户端将收到一个authorization grant。

> > Authorization Grant（Post）客户端向授权服务器发送它自己的客户端身份标识和上一步中的authorization grant，请求访问令牌。

> > Access Token（Get）如果客户端身份被认证，并且authorization grant也被验证通过，授权服务器将为客户端派发access token。授权阶段至此全部结束。

> > Access Token（Post && Validate）客户端向资源服务器发送access token用于验证并请求资源信息。

> > Protected Resource（Get）如果access token验证通过，资源服务器将向客户端返回资源信息。

## 插件式框架

### Main

#### Log4Net配置

> log4net.Config.XmlConfigurator.Configure();

#### Log4Net初始化

#### MEF初始化

> new Builder().Load();

### Plugin实现层

#### 服务实现层

##### CommonService

###### LoggerService

using DEVGIS.WPFAPP.Plugin.Interfaces;

using DEVGIS.WPFAPP.Plugin.Services;

using log4net;

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.Linq;

using System.Reflection;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.WPFAPP.CommonService

{

  [Export(typeof(ILogger))]

  public class LoggerService : ILogger

  {

    ILog logger;

    public LoggerService()

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

###### MessageService

using DEVGIS.WPFAPP.Plugin.Services;

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

using System.Windows;

namespace DEVGIS.WPFAPP.CommonService

{

  [Export(typeof(IMessageBox))]

  public class MessageService : IMessageBox

  {

    public string Title = "DEVGIS";

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

##### CommonViews

###### DebugPanel.xaml

<inplug:View x:Class="DEVGIS.WPFAPP.CommonViews.Views.DebugPanel"

       xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"

       xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"

       xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" 

       xmlns:d="http://schemas.microsoft.com/expression/blend/2008" 

       xmlns:local="clr-namespace:DEVGIS.WPFAPP.CommonViews.Views"

       xmlns:facontrols="clr-namespace:DEVGIS.WPFAPP.Controls;assembly=Controls"

       xmlns:localvm="clr-namespace:DEVGIS.WPFAPP.CommonViews.ViewModels"

       xmlns:inplug="clr-namespace:DEVGIS.WPFAPP.Plugin;assembly=FAPlugin"

       mc:Ignorable="d" 

       d:DesignHeight="300" d:DesignWidth="600" Width="600" Height="300" >

  <!--<inplug:View.DataContext>

    <localvm:DebugPanelViewModel/>

  </inplug:View.DataContext>-->

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

</inplug:View>

###### DebugPanelViewModel

using DEVGIS.WPFAPP.Plugin;

using DEVGIS.WPFAPP.Plugin.Services;

using System;

using System.Collections.Generic;

using System.Collections.ObjectModel;

using System.ComponentModel.Composition;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.WPFAPP.CommonViews.ViewModels

{

  [Export(typeof(IDebugOut))]

  [Export(typeof(ViewModel))]

  public class DebugPanelViewModel : ViewModel, IDebugOut

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

using DEVGIS.WPFAPP.Controls;

using DEVGIS.WPFAPP.Plugin;

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

namespace DEVGIS.WPFAPP.CommonViews.Views

{

  [Export(typeof(View))]

  /// <summary>

  /// SelectDevices.xaml 的交互逻辑

  /// </summary>

  public partial class DebugPanel:View

  {

    public DebugPanel():base("DebugPanelViewModel")

    {

      InitializeComponent();

    }

  }

}

#### 插件实现层

##### MyPlugin1

###### MyPlugin1

using DEVGIS.WPFAPP.Plugin;

using DEVGIS.WPFAPP.Plugin.Services;

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.Linq;

using System.Text;

using System.Threading;

using System.Threading.Tasks;

namespace DEVGIS.WPFAPP.MyPlugin1

{

  [Export(typeof(PluginBase))]

  public class MyPlugin1 : PluginBase

  {

    //ILogger Logger { get; set; }

    [ImportingConstructor]

    public MyPlugin1() //ILogger logger

    {

      this.ID = "MyPlugin1";

      this.Name = "MyPlugin1";

      this.Categorys = new List<Category>();

      ///Logger = logger;

    }

    public override void Init()

    {

      base.Init();

      

      this.MessageReceived += MyPlugin1_MessageReceived;

      //MessageBox.ShowInfo("MyPlugin1.Init()-MyPlugin1 inited!");

      this.PluginInited += MyPlugin1_PluginInited;

    }

    private void MyPlugin1_PluginInited(object sender, EventArgs e)

    {

      ThreadPool.QueueUserWorkItem(o =>

      {

        Thread.Sleep(10000);

        while (true)

        {

          SendMessage("MyPlugin2", "string", Encoding.UTF8.GetBytes("This is a test message from MyPlugin1 !"));

          Thread.Sleep(100);

        };

      });

      Logger.Info("MyPlugin1 inited! This message is from MYPlugin1.dll");

      //DebugOut.Debug("MyPlugin1 inited! This message is from MYPlugin1.dll");

    }

    private void MyPlugin1_MessageReceived(object sender, Plugin.Args.MessageReceivedEventArgs e)

    {

      Logger.Info($"MyPlugin1.MyPlugin1_MessageReceived()-Message from【{e.SenderID}】 type:{e.DataType} content:{Encoding.Default.GetString(e.Data)}");

      //MessageBox.ShowInfo($"MyPlugin1.MyPlugin1_MessageReceived()-Message from【{e.SenderID}】 type:{e.DataType} content:{e.Data.ToString()}");

      //DebugOut.Debug($"MyPlugin1.MyPlugin1_MessageReceived()-Message from【{e.SenderID}】 type:{e.DataType} content:{Encoding.Default.GetString(e.Data)}");

    }

  }

}

##### MyPlugin2

###### MyPlugin2

using DEVGIS.WPFAPP.Plugin;

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.Linq;

using System.Text;

using System.Threading;

using System.Threading.Tasks;

namespace DEVGIS.WPFAPP.MyPlugin2

{

  [Export(typeof(PluginBase))]

  public class MyPlugin2 : PluginBase

  {

    public MyPlugin2()

    {

      this.ID = "MyPlugin2";

      this.Name = "MyPlugin2";

    }

    public override void Init()

    {

      base.Init();

      this.MessageReceived += MyPlugin2_MessageReceived;

      try

      {

        throw new Exception("This is a test exception!");

      }

      catch(Exception ex)

      {

        Logger.Error("MyPlugin2.Init()-There is an error", ex);

        //DebugOut.Debug("MyPlugin2.Init()-There is an error:"+ex.Message);

      }

      this.PluginInited += MyPlugin2_PluginInited;

    }

    private void MyPlugin2_PluginInited(object sender, EventArgs e)

    {

      ThreadPool.QueueUserWorkItem(o =>

      {

        Thread.Sleep(10000);

        while (true)

        {

          SendMessage("MyPlugin1", "string", Encoding.UTF8.GetBytes("This is a test message from MyPlugin2 !"));

          Thread.Sleep(100);

        };

      });

    }

    private void MyPlugin2_MessageReceived(object sender, Plugin.Args.MessageReceivedEventArgs e)

    {

      Logger.Info($"MyPlugin2.MyPlugin2_MessageReceived()-Message from【{e.SenderID}】 type:{e.DataType} content:{Encoding.Default.GetString(e.Data)}");

      //MessageBox.ShowInfo($"MyPlugin2.MyPlugin2_MessageReceived()-Message from【{e.SenderID}】 type:{e.DataType} content:{e.Data.ToString()}");

      //DebugOut.Debug($"MyPlugin2.MyPlugin2_MessageReceived()-Message from【{e.SenderID}】 type:{e.DataType} content:{Encoding.Default.GetString(e.Data)}");

    }

  }

}

#### StaticData

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.ComponentModel.Composition.Hosting;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.WPFAPP.Plugin

{

  public class StaticData

  {

    public static CompositionContainer Container = null;

    //[ImportMany(typeof(View))]

    ////private IEnumerable<Lazy<View, IViewMetadata>> views { get; set; }

    //public static IEnumerable<View> Views { get; set; }

  }

}

### Controls

#### Conveter

##### ProjectVisableConverter

using DEVGIS.WPFAPP.Plugin;

using System;

using System.Collections.Generic;

using System.Globalization;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

using System.Windows;

using System.Windows.Data;

namespace DEVGIS.WPFAPP.Controls.Conveter

{

  [ValueConversion(typeof(Project), typeof(Visibility))]

  public class ProjectVisableConverter : IValueConverter

  {

    public object Convert(object value, Type targetType, object parameter, CultureInfo culture)

    {

      if (value!=null&&value is Project)

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

namespace DEVGIS.WPFAPP.Controls

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

#### Dialog

using System;

using System.Collections.Generic;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

using System.Windows;

using System.Windows.Data;

namespace DEVGIS.WPFAPP.Controls

{

  public class Dialog : Window

  {

    public Dialog()

    {

      this.WindowStyle = WindowStyle.ToolWindow;

      this.WindowStartupLocation = WindowStartupLocation.CenterScreen;

    }

  }

}

#### Window

using System;

using System.Collections.Generic;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

using System.Windows;

using System.Windows.Data;

namespace DEVGIS.WPFAPP.Controls

{

  public class Window:Window

  {

    public Window()

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

##### PluginBase

using DEVGIS.WPFAPP.Plugin.Args;

using DEVGIS.WPFAPP.Plugin.Services;

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.Threading;

namespace DEVGIS.WPFAPP.Plugin

{

  public class PluginBase:FAObject

  {

    public PluginBase()

    {

      

    }

    public bool Inited { get; set; } = false;

    public List<Category> Categorys { get; set; }

    public FAEquipmentType EquipmentType { get; set; }

    [Import]

    public ILogger Logger { get; set; }

    [Import]

    public IMessageBox MessageBox { get; set; }

    //[Import]

    //public IDebugOut DebugOut { get; set; }

    public virtual void Init()

    {

      ThreadPool.QueueUserWorkItem(o => {

        while (!Inited)

        {

          Thread.Sleep(100);

        }

        Logger.Info($"PluginBase.Init()-{this.ToString()} Inited!");

        //DebugOut.Debug($"PluginBase.Init()-{this.ToString()} Inited!");

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

##### View

using System;

using System.Collections.Generic;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

using System.Windows;

using System.Windows.Controls;

namespace DEVGIS.WPFAPP.Plugin

{

  public class View:UserControl

  {

    public View(string ViewModelName)

    {

      if(!string.IsNullOrEmpty(ViewModelName))

      {

        DataContext = StaticData.Container.GetExportedValues<ViewModel>().FirstOrDefault(v => v.Name.Equals(ViewModelName));

      }

    }

    public bool IsReadOnly { get; set; }

  }

}

##### ViewModel

using DEVGIS.WPFAPP.Plugin.Services;

using System;

using System.Collections.Generic;

using System.ComponentModel;

using System.ComponentModel.Composition;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.WPFAPP.Plugin

{

  public abstract class ViewModel:INotifyPropertyChanged

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

    private Project project = null;

    public Project Project

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

namespace DEVGIS.WPFAPP.Plugin.Services

{

  public interface IDebugOut

  {

    void Debug(string Message);

  }

}

##### ILogger

using DEVGIS.WPFAPP.Plugin.Interfaces;

using System;

using System.Collections.Generic;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.WPFAPP.Plugin.Services

{

  public interface ILogger: IFAService

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

##### IMessageBox

using System;

namespace DEVGIS.WPFAPP.Plugin.Services

{

  public interface IMessageBox 

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

namespace DEVGIS.WPFAPP.Plugin.Args

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

#### Builder

using DEVGIS.WPFAPP.Plugin;

using DEVGIS.WPFAPP.Plugin.Services;

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.ComponentModel.Composition.Hosting;

using System.IO;

using System.Linq;

using System.Text;

using System.Threading;

using System.Threading.Tasks;

namespace DEVGIS.WPFAPP.Core

{

  

  public class Builder

  {

    [ImportMany(typeof(PluginBase))]

    public static IEnumerable<PluginBase> Plugins { get; private set; }

    //[ImportMany(typeof(View))]

    ////private IEnumerable<Lazy<View, IViewMetadata>> views { get; set; }

    //public static IEnumerable<View> Views { get; private set; }

    [Import(typeof(ILogger))]

    public ILogger logger { get; set; }

    //private CompositionContainer container = null;

    public void Load()

    {

      var catalog = new DirectoryCatalog(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Plugins"), "*");

      StaticData.Container = new CompositionContainer(catalog);

      try

      {

        Plugins = StaticData.Container.GetExportedValues<PluginBase>();

        foreach (var plugin in Plugins)

        {

          plugin.Init();

          plugin.Inited = true;

          plugin.MessageSend += Plugin_MessageSend;

        }

      }

      catch (CompositionException compositionEx)

      {

        logger.Error("Builder.Load Plugins Failed!", compositionEx);

      }

      //try

      //{

      //  StaticData.Views = StaticData.Container.GetExportedValues<View>();

      //}

      //catch (CompositionException compositionEx)

      //{

      //  logger.Error("Builder.Load Views Failed!", compositionEx);

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

<facontrols:Dialog x:Class="DEVGIS.WPFAPP.Views.Views.CreateProject"

       xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"

       xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"

       xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" 

       xmlns:d="http://schemas.microsoft.com/expression/blend/2008" 

       xmlns:local="clr-namespace:DEVGIS.WPFAPP.Views.Views"

       xmlns:facontrols="clr-namespace:DEVGIS.WPFAPP.Controls;assembly=Controls"

       xmlns:localvm="clr-namespace:DEVGIS.WPFAPP.Views.ViewModels"

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

</facontrols:Dialog>

##### ViewModel

using DEVGIS.WPFAPP.Plugin;

using System;

using System.Collections.Generic;

using System.Collections.ObjectModel;

using System.IO;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.WPFAPP.Views.ViewModels

{

  public class CreateProjectViewModel : ViewModel

  {

    public Command CreateProjectCommand

    {

      get;

      set;

    }

    public CreateProjectViewModel()

    {

      Project = new Project(LanguageResource.Resource.DefaultProjectName);

      Project.BasePath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments),"Project", Project.Name);

      Project.Author = Environment.UserName;

      Project.Description = LanguageResource.Resource.DefaultProjectDescrption;

      CreateProjectCommand = new Command(o => {

        RaisePropertyChanged("Project");

        this.DialogResult = true;

        MessageBox.ShowInfo($"[{Project.Author}]创建项目[{Project.Name}]成功！");

        Logger.Info($"创建项目[{Project.Name}]成功！");

      });

    }

  }

}

#### MainWindow

##### Xaml

<facontrols:Window x:Class="DEVGIS.WPFAPP.Views.Views.MainWindow"

    xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"

    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"

    xmlns:d="http://schemas.microsoft.com/expression/blend/2008"

    xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"

    xmlns:local="clr-namespace:DEVGIS.WPFAPP.Views"

    xmlns:inplug="clr-namespace:DEVGIS.WPFAPP.Plugin;assembly=FAPlugin"

    xmlns:facontrols="clr-namespace:DEVGIS.WPFAPP.Controls;assembly=Controls"

    xmlns:lanrs="clr-namespace:DEVGIS.WPFAPP.LanguageResource;assembly=LanguageResource"

    xmlns:localvm="clr-namespace:DEVGIS.WPFAPP.Views.ViewModels"

    xmlns:facvt="clr-namespace:DEVGIS.WPFAPP.Controls.Conveter;assembly=Controls"

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

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="打开(_O)" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="移植项目(_M)" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="关闭(_C)" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="删除项目(_D)" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <Separator/>

        <MenuItem Header="保存(_S)" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="另存为(_A)" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="归档(_H)" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <Separator/>

        <MenuItem Header="项目服务器(_H)" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

          <MenuItem Header="管理项目服务器" >

          </MenuItem>

          <MenuItem Header="离线运行" >

            <MenuItem.Icon>

              <Image Source="/Views;Component/Images/Menu/Box.png" />

            </MenuItem.Icon>

          </MenuItem>

        </MenuItem>

        <Separator/>

        <MenuItem Header="读卡器/USB存储器" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="存储卡文件(_F)" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <Separator/>

        <MenuItem Header="启动完整性基本检查" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <Separator/>

        <MenuItem Header="推出(_X)" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

      </MenuItem>

      <MenuItem Header="编辑(_E)">

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

      </MenuItem>

      <MenuItem Header="视图(_V)">

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

      </MenuItem>

      <MenuItem Header="插入(_I)">

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

      </MenuItem>

      <MenuItem Header="在线(_O)">

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

      </MenuItem>

      <MenuItem Header="选项(_N)">

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

      </MenuItem>

      <MenuItem Header="工具(_T)">

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

      </MenuItem>

      <MenuItem Header="窗口(_W)">

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

        <MenuItem Header="子菜单1" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

          </MenuItem.Icon>

        </MenuItem>

      </MenuItem>

      <MenuItem Header="帮助(_H)">

        <MenuItem Header="显示帮助" >

          <MenuItem.Icon>

            <Image Source="/Views;Component/Images/Menu/Box.png" />

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

          <Image Source="/Views;Component/Images/ToolBar/BlueLarge.png" />

        </Button>

        <Button>

          <Image Source="/Views;Component/Images/ToolBar/BlueLarge.png" />

        </Button>

        <Button>

          <Image Source="/Views;Component/Images/ToolBar/BlueLarge.png" />

        </Button>

      </ToolBar>

      <ToolBar Band="1" BandIndex="2">

        <Button>

          <Image Source="/Views;Component/Images/ToolBar/BlueLarge.png" />

        </Button>

        <Button>

          <Image Source="/Views;Component/Images/ToolBar/BlueLarge.png" />

        </Button>

      </ToolBar>

      <ToolBar Band="1" BandIndex="3">

        <Button>

          <Image Source="/Views;Component/Images/ToolBar/BlueLarge.png" />

        </Button>

        <Button ToolTip="Help">

          <Image Source="/Views;Component/Images/ToolBar/BlueLarge.png" />

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

                IconSource="/Views;Component/Images/Blue.png" AutoHideWidth="150">

                  <TextBox Text="{Binding TestTimer, Mode=OneWay, StringFormat='AutoHide Attached to Timer ->\{0\}'}" />

                </LayoutAnchorable>

                <LayoutAnchorable Title="文件" ContentId="AutoHide2Content" AutoHideWidth="150">

                  <StackPanel Orientation="Vertical">

                    <TextBox />

                    <TextBox />

                  </StackPanel>

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

                IconSource="/Views;Component/Images/Blue.png">

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

</facontrols:Window>

##### ViewModel

using DEVGIS.WPFAPP.Core;

using DEVGIS.WPFAPP.Plugin;

using DEVGIS.WPFAPP.Plugin.Services;

using DEVGIS.WPFAPP.Views.Views;

using System;

using System.Collections.Generic;

using System.Collections.ObjectModel;

using System.ComponentModel.Composition;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

using System.Windows;

using System.Windows.Input;

namespace DEVGIS.WPFAPP.Views.ViewModels

{

  public class MainWindowViewModel : ViewModel

  {

    //[Import]

    //public static ViewLocator Locator;

    public Command TestCommand

    {

      get;

      set;

    }

    public Command SelectDevicesCommand

    {

      get;

      set;

    }

    public Command CreateProjectCommand

    {

      get;

      set;

    }

    public MainWindowViewModel()

    {

      

      TestCommand = new Command(ShowMessage);

      SelectDevicesCommand = new Command(SelectDevices);

      CreateProjectCommand = new Command((o) => {

        

        //Project = new Project(o.ToString());

        CreateProject CreateProjectWindow = new CreateProject();

        if (CreateProjectWindow.ShowDialog() == true)

        {

          Project = (CreateProjectWindow.DataContext as CreateProjectViewModel).Project;

          StaticData.Container.GetExportedValue<IDebugOut>().Debug($"{Project.Author}创建了项目：{Project.Name} ！");

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

      var items = new ObservableCollection<string>((from p in Builder.Plugins select p.Name).ToList());

      (selectDevices.DataContext as SelectDevicesViewModel).Categorys = items;

      selectDevices.ShowDialog();

    }

  }

}

#### SelectDevices

##### Xaml

<facontrols:Window x:Class="DEVGIS.WPFAPP.Views.Views.SelectDevices"

       xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"

       xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"

       xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006" 

       xmlns:d="http://schemas.microsoft.com/expression/blend/2008" 

       xmlns:local="clr-namespace:DEVGIS.WPFAPP.Views.Views"

       xmlns:facontrols="clr-namespace:DEVGIS.WPFAPP.Controls;assembly=Controls"

       xmlns:localvm="clr-namespace:DEVGIS.WPFAPP.Views.ViewModels"

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

    <ListView Name="lst" Grid.Row="0" ItemsSource ="{Binding Categorys}"/>

    <Button Grid.Row="1" Click="Button_Click"/>

  </Grid>

</facontrols:Window>

##### ViewModel

using DEVGIS.WPFAPP.Plugin;

using System;

using System.Collections.Generic;

using System.Collections.ObjectModel;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.WPFAPP.Views.ViewModels

{

  public class SelectDevicesViewModel:ViewModel

  {

    public ObservableCollection<string> faCategorys = null;

    public ObservableCollection<string> Categorys {

      get {

        return faCategorys;

      }

      set {

        faCategorys = value;

        RaisePropertyChanged("Categorys");

      }

    }

	}

}

#### ViewLocator

using DEVGIS.WPFAPP.Plugin;

using DEVGIS.WPFAPP.Plugin.Services;

using System;

using System.Collections.Generic;

using System.ComponentModel.Composition;

using System.Dynamic;

using System.Linq;

using System.Text;

using System.Threading.Tasks;

namespace DEVGIS.WPFAPP.Views

{

  //[Export(typeof(ViewLocator))]

  public class ViewLocator : DynamicObject, IPartImportsSatisfiedNotification

  {

    //[ImportMany(typeof(View))]

    ////private IEnumerable<Lazy<View, IViewMetadata>> views { get; set; }

    //public static IEnumerable<View> Views { get; set; }

    public ILogger Logger { get {

        return StaticData.Container.GetExportedValue<ILogger>();

      } }

    public override bool TryGetMember(GetMemberBinder binder, out object result)

    {

      string name = binder.Name;

      var views = StaticData.Container.GetExportedValues<View>();

      if (views == null)

      {

        result = null;

        return false;

      }

      var view = views.FirstOrDefault(v => v.GetType().Name.Equals(name));

      // Error handling

      if (null == view)

        Logger.Error("views is null at TryGetMember");

      result = view;

      return null != result;

    }

    public void OnImportsSatisfied()

    {

      Logger.Info($"{this.GetType()} Composition complete");

    }

  }

}

### 外部包依赖

> Dirkster.AvalonDock

> Dirkster.AvalonDock.Themes.VS2013

> Fluent.Ribbon

> log4net

> System.ComponentModel.Composition //MEF

> Dirkster.AvalonDock

> log4net

### LanguageResource实现多语言支持


