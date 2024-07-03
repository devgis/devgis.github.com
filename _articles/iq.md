---
layout: post
title: 面试题合集
description: 整理数据结构算法，程序，数据库相关面试中涉及的题目
date: 2022-10-01 09:01:01
updatedate: 2024-07-03 11:39:26
---

# 计算机操作系统

# 数据结构与算法

# .Net C#


1. 请简述async函数的编译方式
async/await是C# 5.0推出的异步代码编程模型，其本质是编译为状态机。只要函数前带上async，就会将函数转换为状态机。

2. 请简述Task状态机的实现和工作机制
CPS全称是Continuation Passing Style，在.NET中，它会自动编译为：

将所有引用的局部变量做成闭包，放到一个隐藏的状态机的类中；
将所有的await展开成一个状态号，有几个await就有几个状态号；
每次执行完一个状态，都重复回调状态机的MoveNext方法，同时指定下一个状态号；
MoveNext方法还需处理线程和异常等问题。
3. 请简述await的作用和原理，并说明和GetResult()有什么区别
从状态机的角度出发，await的本质是调用Task.GetAwaiter()的UnsafeOnCompleted(Action)回调，并指定下一个状态号。

从多线程的角度出发，如果await的Task需要在新的线程上执行，该状态机的MoveNext()方法会立即返回，此时，主线程被释放出来了，然后在UnsafeOnCompleted回调的action指定的线程上下文中继续MoveNext()和下一个状态的代码。

而相比之下，GetResult()就是在当前线程上立即等待Task的完成，在Task完成前，当前线程不会释放。

注意：Task也可能不一定在新的线程上执行，此时用GetResult()或者await就只有会不会创建状态机的区别了。

4. Task和Thread有区别吗？如果有请简述区别
Task和Thread都能创建用多线程的方式执行代码，但它们有较大的区别。

Task较新，发布于.NET 4.5，能结合新的async/await代码模型写代码，它不止能创建新线程，还能使用线程池（默认）、单线程等方式编程，在UI编程领域，Task还能自动返回UI线程上下文，还提供了许多便利API以管理多个Task，用表格总结如下：

区别	Task	Thread
.NET版本	4.5	1.1
async/await	支持	不支持
创建新线程	支持	支持
线程池/单线程	支持	不支持
返回主线程	支持	不支持
管理API	支持	不支持
TL;DR就是，用Task就对了。

5. 简述yield的作用
yield需配合IEnumerable<T>一起使用，能在一个函数中支持多次（不是多个）返回，其本质和async/await一样，也是状态机。

如果不使用yield，需实现IEnumerable<T>，它只暴露了GetEnumerator<T>，这样确保yield是可重入的，比较符合人的习惯。

注意，其它的语言，如C++/Java/ES6实现的yield，都叫generator（生成器），这相当于.NET中的IEnumerator<T>（而不是IEnumerable<T>）。这种设计导致yield不可重入，只要其迭代过一次，就无法重新迭代了，需要注意。

6. 利用IEnumerable<T>实现斐波那契数列生成
IEnumerable<int> GenerateFibonacci(int n)
{
	int current = 1, next = 1;

	for (int i = 0; i < n; ++i)
	{
		yield return current;
		next = current + (current = next);
	}
}
7. 简述stackless coroutine和stackful coroutine的区别，并指出C#的coroutine是哪一种
stackless和stackful对应的是协程中栈的内存，stackless表示栈内存位置不固定，而stackful则需要分配一个固定的栈内存。

在继续执行（Continuation/MoveNext()）时，stackless需要编译器生成代码，如闭包，来自定义继续执行逻辑；而stackful则直接从原栈的位置继续执行。

性能方面，stackful的中断返回需要依赖控制CPU的跳转位置来实现，属于骚操作，会略微影响CPU的分支预测，从而影响性能（但影响不算大），这方面stackless无影响。

内存方面，stackful需要分配一个固定大小的栈内存（如4kb），而stackless只需创建带一个状态号变量的状态机，stackful占用的内存更大。

骚操作方面，stackful可以轻松实现完全一致的递归/异常处理等，没有任何影响，但stackless需要编译器作者高超的技艺才能实现（如C#的作者），注意最初的C# 5.0在try-catch块中是不能写await的。

和已有组件结合/框架依赖方面，stackless需要定义一个状态机类型，如Task<T>/IEnumerable<T>/IAsyncEnumerable<T>等，而stackful不需要，因此这方面stackless较麻烦。

Go属于stackful，因此每个goroutine需要分配一个固定大小的内存。

C#属于stackless，它会创建一个闭包和状态机，需要编译器生成代码来指定继续执行逻辑。

总结如下：

功能	stackless	stackful
内存位置	不固定	固定
继续执行	编译器定义	CPU跳转
性能/速度	快	快，但影响分支预测
内存占用	低	需要固定大小的栈内存
编译器难度	难	适中
组件依赖	不方便	方便
嵌套	不支持	支持
举例	C#/js	Go/C++ Boost
8. 请简述SelectMany的作用
相当于js中数组的flatMap，意思是将序列中的每一条数据，转换为0到多条数据。

SelectMany可以实现过滤/.Where，方法如下：

public static IEnumerable<T> MyWhere<T>(this IEnumerable<T> seq, Func<T, bool> predicate)
{
    return seq.SelectMany(x => predicate(x) ? 
        new[] { x } : 
        Enumerable.Empty<T>());
}
SelectMany是LINQ中from关键字的组成部分，这一点将在第10题作演示。

9. 请实现一个函数Compose用于将多个函数复合
public static Func<T1, T3> Compose<T1, T2, T3>(this Func<T1, T2> f1, Func<T2, T3> f2)
{
    return x => f2(f1(x));
}
然后使用方式：

Func<int, double> log2 = x => Math.Log2(x);
Func<double, string> toString = x => x.ToString();

var log2ToString = log2.Compose(toString);

Console.WriteLine(log2ToString(16)); // 4
10. 实现Maybe<T> monad，并利用LINQ实现对Nothing（空值）和Just（有值）的求和
本题比较难懂，经过和大佬确认，本质是要实现如下效果：

void Main()
{
	Maybe<int> a = Maybe.Just(5);
	Maybe<int> b = Maybe.Nothing<int>();
	Maybe<int> c = Maybe.Just(10);

	(from a0 in a from b0 in b select a0 + b0).Dump(); // Nothing
	(from a0 in a from c0 in c select a0 + c0).Dump(); // Just 15
}
按照我猴子进化来的大脑的理解，应该很自然地能写出如下代码：

public class Maybe<T> : IEnumerable<T>
{
	public bool HasValue { get; set; }
	public T Value { get; set;}
	
	IEnumerable<T> ToValue()
	{
		if (HasValue) yield return Value;
	}

	public IEnumerator<T> GetEnumerator()
	{
		return ToValue().GetEnumerator();
	}

	IEnumerator IEnumerable.GetEnumerator()
	{
		return ToValue().GetEnumerator();
	}
}

public class Maybe
{
	public static Maybe<T> Just<T>(T value)
	{
		return new Maybe<T> { Value = value, HasValue = true};
	}
	
	public static Maybe<T> Nothing<T>()
	{
		return new Maybe<T>();
	}
}
这种很自然，通过继承IEnumerable<T>来实现LINQ to Objects的基本功能，但却是错误答案。

正确答案：

public struct Maybe<T>
{
	public readonly bool HasValue;
	public readonly T Value;

	public Maybe(bool hasValue, T value)
	{
		HasValue = hasValue;
		Value = value;
	}

	public Maybe<B> SelectMany<TCollection, B>(Func<T, Maybe<TCollection>> collectionSelector, Func<T, TCollection, B> f)
	{
		if (!HasValue) return Maybe.Nothing<B>();

		Maybe<TCollection> collection = collectionSelector(Value);
		if (!collection.HasValue) return Maybe.Nothing<B>();

		return Maybe.Just(f(Value, collection.Value));
	}

	public override string ToString() => HasValue ? $"Just {Value}" : "Nothing";
}

public class Maybe
{
	public static Maybe<T> Just<T>(T value)
	{
		return new Maybe<T>(true, value);
	}

	public static Maybe<T> Nothing<T>()
	{
		return new Maybe<T>();
	}
}
注意：
首先这是一个函数式编程的应用场景，它应该使用struct——值类型。

其次，不是所有的LINQ都要走IEnumerable<T>，可以用手撸的LINQ表达式——SelectMany来表示。（关于这一点，其实特别重要，我稍后有空会深入聊聊这一点。）
 

7.简单介绍下ADO.NET和ADO主要有什么改进？

答：ADO以Recordset存储,而ADO.NET则以DataSet表示，ADO.NET提供了数据集和数据适配器，有利于实现分布式处理，降低了对数据库服务器资源的消耗。
 

7.2 C#中的委托是什么？事件是不是一种委托？

答：委托本质上是一种“方法接口”，它相当于C/C++中的函数指针，当然它比函数指针安全，在C#中通常用于事件处理。事件不是委托，不过由于事件的性质决定了处理它的程序逻辑能访问的参数，因此，在C#中处理事件的逻辑都包装为委托。

 

8.如何把一个array复制到arrayist里

答：foreach( object arr in array)arrayist.Add(arr);

 

8.1 列举ADO.NET中的五个主要对象，并简单描述

答：Connection连接对象，Command执行命令和存储过程，DataReader向前只读的数据流，DataAdapter适配器，支持增删查询，DataSet数据级对象，相当与内存里的一张或多张表。

 

9.概述三层结构体系

答：表示层(UI),业务逻辑层(BLL),数据访问层(DAL)

 

10.什么是装箱和拆箱？什么是重载？

答：装箱就是把值类型转成引用类型，拆箱相反把引用转换成值类型。

　　重载就是指一个方法名相同,参数个数不相同,返回值可以相同的方法。

 

11.简述WebService

答：WebService服务可以描述为可以在web上部署并可以被任何应用程序或其他服务调用的功能。所谓服务就是系统提供一组接口，并通过接口使用系统提供的功能，WebService服务可以提供任何企业到客户，企业到企业，点对点或部门对部门通讯所需的服务，比如一个公司可以通过网络连接到另一个公司的服务，从而直接传递订购单。

 

12.面向对象的思想主要包括什么？

答：继承、封装、多态

 

13.列举一下你所了解的XM技术及其应用

答：xml可以用来做网页(xslt)、可以当作数据库、可以用来保存对象的系列化(web服务好象是基于这个的)。

 

14.C#中的接口和类有什么异同。

答：接口,是可以多继承,类只有单继承.接口强调了你必须实现,而没有具本实现的方法和虚类有点相似。

 

15.new 关键字用法

答：(1)new 运算符 用于创建对象和调用构造函数。

    (2)new 修饰符 用于向基类成员隐藏继承成员。

    (3)new 约束   用于在泛型声明中约束可能用作类型参数的参数的类型。

 

14.DataGrid的Datasouse可以连接什么数据源

答：DataTabe，DataView，DataSet，DataViewManager，任何实现IListSource接口的组件，任何实现IList接口的组件

 

15.概述反射和序列化

答：反射：公共语言运行库加载器管理应用程序域。这种管理包括将每个程序集加载到相应的应用程序域以及控制每个程序集中类型层次结构的内存布局。程序集包含模块，而模块包含类型，类型又包含成员。反射则提供了封装程序集、模块和类型的对象。您可以使用反射动态地创建类型的实例，将类型绑定到现有对象，或从现有对象中获取类型。然后，可以调用类型的方法或访问其字段和属性。

　　序列化：序列化是将对象状态转换为可保持或传输的格式的过程。与序列化相对的是反序列化，它将流转换为对象。这两个过程结合起来，可以轻松地存储和传输数据。

 

16.概述O/R Mapping 的原理

答：利用反射，配置将对象和数据库表映射。

 

17.可访问性级别有哪几种

答：pubic 访问不受限制。

　　protected 访问仅限于包含类或从包含类派生的类型。

　　internal 访问仅限于当前程序集。

　　protected internal 访问仅限于从包含类派生的当前程序集或类型。

　　private 访问仅限于包含类型。

 

18.sealed修饰符有什么特点

答：sealed 修饰符可以应用于类、实例方法和属性。

    密封类不能被继承；

　　密封方法会重写基类中的方法，但其本身不能在任何派生类中进一步重写。当应用于方法或属性时，sealed 修饰符必须始终与 override一起使用。

 

19.列举ADO.NET中的共享类和数据库特定类

答：共享类：DataSet，DataTable，DataRow，DataColumn，DataRealtion，Constraint，DataColumnMapping，DataTableMapping

　　特定类：(x)Connection，(x)Command，(x)CommandBuilder，(x)DataAdapter，(x)DataReader，(x)Parameter，(x)Transaction

 

20.C#中，string str = null 与 string str =""，请尽量用文字说明区别

答：string str=""初始化对象分配空间，而stringstr=null初始化对象

 

21.详述.NET里class和struct的异同

答：结构与类共享几乎所有相同的语法，但结构比类受到的限制更多：尽管结构的静态字段可以初始化，结构实例字段声明还是不能使用初始值设定项。

　　结构不能声明默认构造函数（没有参数的构造函数）或析构函数。

　　结构的副本由编译器自动创建和销毁，因此不需要使用默认构造函数和析构函数。实际上，编译器通过为所有字段赋予默认值（参见默认值表）来实现默认构造函数。

　　结构不能从类或其他结构继承。

　　结构是值类型 -- 如果从结构创建一个对象并将该对象赋给某个变量，变量则包含结构的全部值。复制包含结构的变量时，将复制所有数据，对新副本所做的任何修改都不会改变旧副本的数据。

　　由于结构不使用引用，因此结构没有标识 -- 具有相同数据的两个值类型实例是无法区分的。C# 中的所有值类型本质上都继承自ValueType，后者继承自 Object。编译器可以在一个称为装箱的过程中将值类型转换为引用类型。

 

结构具有以下特点：

　　结构是值类型，而类是引用类型。

　　向方法传递结构时，结构是通过传值方式传递的，而不是作为引用传递的。

　　与类不同，结构的实例化可以不使用 new 运算符。

　　结构可以声明构造函数，但它们必须带参数。

　　一个结构不能从另一个结构或类继承，而且不能作为一个类的基。所有结构都直接继承自 System.ValueType，后者继承自 System.Object。

　　结构可以实现接口。

　　在结构中初始化实例字段是错误的。

 

22.什么叫应用程序域？什么是托管代码？什么是强类型系统？什么是装箱和拆箱？什么是重载？ CTS、CLS和CLR分别作何解释？

答：应用程序域：应用程序域为安全性、可靠性、版本控制以及卸载程序集提供了隔离边界。应用程序域通常由运行库宿主创建，运行库宿主负责在运行应用程序之前引导公共语言运行库。应用程序域提供了一个更安全、用途更广的处理单元，公共语言运行库可使用该单元提供应用程序之间的隔离。

　　托管代码：使用基于公共语言运行库的语言编译器开发的代码称为托管代码；托管代码具有许多优点，例如：跨语言集成、跨语言异常处理、增强的安全性、版本控制和部署支持、简化的组件交互模型、调试和分析服务等。

　　强类型：C# 是强类型语言；因此每个变量和对象都必须具有声明类型。

　　装箱和拆箱：装箱和拆箱使值类型能够被视为对象。对值类型装箱将把该值类型打包到 Object 引用类型的一个实例中。这使得值类型可以存储于垃圾回收堆中。拆箱将从对象中提取值类型。

　　重载：每个类型成员都有一个唯一的签名。方法签名由方法名称和一个参数列表（方法的参数的顺序和类型）组成。只要签名不同，就可以在一种类型内定义具有相同名称的多种方法。当定义两种或多种具有相同名称的方法时，就称作重载。

　　CTS通用类型系统 (common type system) ：一种确定公共语言运行库如何定义、使用和管理类型的规范。

　　CLR公共语言运行库：.NET Framework 提供了一个称为公共语言运行库的运行时环境，它运行代码并提供使开发过程更轻松的服务。

　　CLS公共语言规范：要和其他对象完全交互，而不管这些对象是以何种语言实现的，对象必须只向调用方公开那些它们必须与之互用的所有语言的通用功能。为此定义了公共语言规范 (CLS)，它是许多应用程序所需的一套基本语言功能。

 

23.值类型和引用类型的区别？

答：基于值类型的变量直接包含值。将一个值类型变量赋给另一个值类型变量时，将复制包含的值。这与引用类型变量的赋值不同，引用类型变量的赋值只复制对对象的引用，而不复制对象本身。

　　所有的值类型均隐式派生自 System.ValueType。与引用类型不同，从值类型不可能派生出新的类型。但与引用类型相同的是，结构也可以实现接口。

　　与引用类型不同，值类型不可能包含 null 值。然而，可空类型功能允许将null 赋给值类型。 每种值类型均有一个隐式的默认构造函数来初始化该类型的默认值。

　　值类型主要由两类组成：结构、枚举； 结构分为以下几类：Numeric（数值）类型、整型、浮点型、decimal、bool、用户定义的结构。

　　引用类型的变量又称为对象，可存储对实际数据的引用。声明引用类型的关键字：class、interface、delegate、内置引用类型： object、string

 

24.如何理解委托

答：委托类似于 C++ 函数指针，但它是类型安全的。委托允许将方法作为参数进行传递。委托可用于定义回调方法。委托可以链接在一起；例如，可以对一个事件调用多个方法。方法不需要与委托签名精确匹配。有关更多信息，请参见协变和逆变。C# 2.0 版引入了匿名方法的概念，此类方法允许将代码块作为参数传递，以代替单独定义的方法。

 

25.C#中的接口和类有什么异同？

答：异：不能直接实例化接口。

　　　　接口不包含方法的实现。

　　　　接口、类和结构可从多个接口继承。但是C#类只支持单继承：类只能从一个基类继承实现。类定义可在不同的源文件之间进行拆分。

　　同：接口、类和结构可从多个接口继承。

　　　　接口类似于抽象基类：继承接口的任何非抽象类型都必须实现接口的所有成员。

　　　　接口可以包含事件、索引器、方法和属性。

 

26.ASP.net的身份验证方式有哪些？

答：Windows 身份验证提供程序：提供有关如何将Windows 身份验证与Microsoft Internet 信息服务 (IIS) 身份验证结合使用来确保 ASP.NET 应用程序安全的信息。

　　Forms 身份验证提供程序：提供有关如何使用您自己的代码创建应用程序特定的登录窗体并执行身份验证的信息。使用 Forms 身份验证的一种简便方法是使用 ASP.NET 成员资格和 ASP.NET 登录控件，它们一起提供了一种只需少量或无需代码就可以收集、验证和管理用户凭据的方法。

　　Passport 身份验证提供程序：提供有关由Microsoft 提供的集中身份验证服务的信息，该服务为成员站点提供单一登录和核心配置

 

27.活动目录的作用

答：Active Directory存储了有关网络对象的信息，并且让管理员和用户能够轻松地查找和使用这些信息。

　　Active Directory使用了一种结构化的数据存储方式，并以此作为基础对目录信息进行合乎逻辑的分层组织。

 

28.解释一下UDDI、WSDL的意义及其作用

答：UDDI：统一描述、发现和集成协议(UDDI, Universa Description, Discovery and Integration)是一套基于Web的、分布式的、为Web服务提供的信息注册中心的实现标准规范，同时也包含一组使企业能将自身提供的Web服务注册以使得别的企业能够发现的访问协议的实现标准。UDDI 提供了一组基于标准的规范用于描述和发现服务，还提供了一组基于因特网的实现。

　　WSDL：WSDL描述Web服务的公共接口。这是一个基于XML的关于如何与Web服务通讯和使用的服务描述；

　　作用： 服务 URL 和命名空间 ：网络服务的类型（可能还包括SOAP 的函数调用，正像我所说过的，WSDL足够自如地去描述网络服务的广泛内容）。有效函数列表，每个函数的参数，每个参数的类型 ，每个函数的返回值及其数据类型。

 

29.什么是SOAP？

答：SOAP（Simpe Object Access Protoco ）简单对象访问协议是在分散或分布式的环境中交换信息并执行远程过程调用的协议，是一个基于XML的协议。使用SOAP，不用考虑任何特定的传输协议（最常用的还是HTTP协议），可以允许任何类型的对象或代码，在任何平台上，以任何一直语言相互通信。

　　SOAP 是一种轻量级协议，用于在分散型、分布式环境中交换结构化信息。 SOAP 利用 XML 技术定义一种可扩展的消息处理框架，它提供了一种可通过多种底层协议进行交换的消息结构。这种框架的设计思想是要独立于任何一种特定的编程模型和其他特定实现的语义。

　　SOAP 定义了一种方法以便将 XML 消息从 A 点传送到 B 点。为此，它提供了一种基于 XML且具有以下特性的消息处理框架：1) 可扩展，2) 可通过多种底层网络协议使用，3) 独立于编程模型。

 

30.如何部署一个ASP.net页面？

答：VS 2005和VS 2003都有发布机制。2003可以发布然后再复制部署。VS2005基本上可以直接部署到对应位置。

 

31.如何理解.net中的垃圾回收机制？

答：.NETFramework 的垃圾回收器管理应用程序的内存分配和释放。每次您使用 new 运算符创建对象时，运行库都从托管堆为该对象分配内存。只要托管堆中有地址空间可用，运行库就会继续为新对象分配空间。但是，内存不是无限大的。最终，垃圾回收器必须执行回收以释放一些内存。垃圾回收器优化引擎根据正在进行的分配情况确定执行回收的最佳时间。当垃圾回收器执行回收时，它检查托管堆中不再被应用程序使用的对象并执行必要的操作来回收它们占用的内存。

 

32.概述.NET中的GC机制。

答：GC的全称是garbage collection，中文名称垃圾回收，是.NET中对内存管理的一种功能。垃圾回收器跟踪并回收托管内存中分配的对象，定期执行垃圾回收以回收分配给没有有效引用的对象的内存。当使用可用内存不能满足内存请求时，GC会自动进行。

　　在进行垃圾回收时，垃圾回收器会首先搜索内存中的托管对象，然后从托管代码中搜索被引用的对象并标记为有效，接着释放没有被标记为有效的对象并收回内存，最后整理内存将有效对象挪动到一起

 

33.ASP.NET中常见内置对象？

答：Response、Request、Server、Session、Application、Cookie

 

34.死锁的必要条件？怎么克服？

答：系统的资源不足，进程的推进的顺序不合适，资源分配不当，一个资源每次只能被一个进程使用，一个资源请求资源时，而此时这个资源已阻塞，对已获得资源不放，进程获得资源时，未使用完前，不能强行剥夺。

 

35.接口是否可以继承接口？抽象类是否可以实现接口？抽象类是否可以继承实体类？

答：接口是可以继承接口的，抽象类是可以实现接口的，抽象类可以继承实体类，但是有个条件，条件是，实体类必须要有明确的构造函数。

 

36.构造器Constructor是否可以被继承？是否可以被Override?

答：Constructor不可以被继承，因此不能被重写（Overriding），但可以被重载(Overloading).

 

37.是否可以继承String类？

答：因为String类是final类所以不可以继承string类。

 

38.当一个线程进入一个对象的方法后，其它线程是否可以进入该对象的方法？

答：不可以，一个对象的方法只能由一个线程访问。

 

39.用最有效的方法算出2乘以8等于几？

答：2<<3.

 

40.C#是否可以对内存直接进行操作？

答：C#是可以对内存进行直接操作的，虽然很少用到指针，但是C#是可以使用指针的，在用的时候需要在前边加unsafe,，在.net中使用了垃圾回收机制（GC）功能，它替代了程序员，不过在C#中不可以直接使用finalize方法，而是在析构函数中调用基类的finalize()方法。

 

41.数组有没有Length()这和方法？string有没有这个方法？

答：数组中没有这个方法，但有这个属性，string中有这个方法。

 

42.Error和Exception有是区别？

答：error表示恢复不是不可能，但是很困难，exception表示一种实际或实现问题，它表示程序运行正常不可以发生的。

 

43.HashMap和Hashtable区别？

答：HashMap是Hashtable的轻量级实现，非线程安全的实现他们都实现了map接口，主要区别是HashMap键值可以为空null,效率可以高于Hashtable。

 

44.Collection和Collections的区别？

答：Collection是集合类的上级接口，Collections是针对集合类的一个帮助类，它提供一系列静态方法来实现对各种集合的搜索，排序，线程安全化操作。

 

45.Override, Overload,的区别？

答：Override是重写的意思，它表示重写基类的方法，而且方法的名称，返回类型，参数类型，参数个数要与基类相同。

　　Overload是重载是意思，它也表示重写基类的方法，但是只要方法名相同，别的可以不同。

 

46.在一个BS结构中需要传递变量值时，不能使用session,cookie,application,你有几中方法？

答：this.server.Transfer,Querystring.

 

47.C#种索引器实现过程，是否只能根据数字索引？

答：不是的，可以是任意类型。

 

48.Const和ReadOnly？

答：Const用来申明编程时申明常量，ReadOnly用来申明运行时常量。

 

49.UDP和TCP连接有和异同？

答：TCP是传输控制协议，提供的是面向连接的，是可靠的，字节流服务，当用户和服务器彼此进行数据交互的时候，必须在他们数据交互前要进行TCP连接之后才能传输数据。TCP提供超时重拨，检验数据功能。

　　UDP是用户数据报协议，是一个简单的面向数据报的传输协议，是不可靠的连接。

 

50.进程和线程分别该怎么理解？

答：进程是比线程大的程序运行单元，都是由操作系统所体会的系统运行单元

    一个程序中至少要有一个进程，有一个进程中，至少要有一个线程，线程的划分尺度要比进程要小，进程拥有独立的内存单元，线程是共享内存，从而极大的提高了程序的运行效率同一个进程中的多个线程可以并发执行。

 

51.在.NET中所有类的基类是？

答：object。

 

52.能用foreach遍历访问的对象需要实现？

答：需要实现IEnumerable接口和GetEnumerator()方法。

 

53.Heap与stack的差别？

答：Heap是堆，空间是由手动操作分配和释放的，它的存储区很大的自由存储区。

　　Stack是栈，是由是操作系统自动分配和释放的，栈上的空间是有限的。程序在编译期间变量和函数分配内存都是在栈上进行的，且在运行时函数调用时的参数的传递也是在栈上进行的。

 

54.请编程遍历页面上所有TextBox控件并给它赋值为string.Empty？

答：foreach(System.Windows.Forms.Control control in this.Controls)

　　{

　　　　if (control isSystem.Windows.Forms.TextBox)

　　　　{

　　　　　　System.Windows.Forms.TextBox tb =(System.Windows.Forms.TextBox)control ;

　　　　　　 tb.Text = String.Empty ;

　　　　}

　　}

 

55.请编程实现一个冒泡排序算法？

答：int [] array= new int [*] ;

　　int temp = 0 ;

　　for (int i = 0 ; i < array.Length - 1 ;i++)

　　{

　　　　for (int j = i + 1 ; j < array.Length ;j++)

　　　　{

　　　　　　if (array[j] < array[i])

　　　　　　{

　　　　　　　　temp = array[i] ;

　　　　　　　　array[i] = array[j] ;

　　　　　　　　array[j] = temp ;

　　　　　　}

　　　　}

　　}

 

56.求以下表达式的值，写出您想到的一种或几种实现方法： 1-2+3-4+……+m

答：int Num =this.TextBox1.Text.ToString() ;

　　int Sum = 0 ;

　　for (int i = 0 ; i < Num + 1 ; i++)

　　{

　　　　if((i%2) == 1)

　　　　{

　　　　　　Sum += i ;

　　　　}

　　　　else

　　　　{

　　　　　　Sum = Sum - i ;

　　　　}

　　}

　　Console.WriteLine(Sum.ToString());

　　Console.ReadLine() ;

 

57.什么叫应用程序域？

答：应用程序域可以理解为一种轻量级进程。起到安全的作用。占用资源小。

 

58.什么是受管制的代码？

答：unsafe：非托管代码。不经过CLR运行。

 

59.在.net中，配件的意思是？

答：程序集。（中间语言，源数据，资源，装配清单）

 

60.常用的调用WebService的方法有哪些？

答：1.使用WSDL.exe命令行工具。

    2.使用VS.NET中的Add Web Reference菜单选项

 

61. .net Remoting 的工作原理是什么？

答：服务器端向客户端发送一个进程编号，一个程序域编号，以确定对象的位置。

 

62.根据线程安全的相关知识，分析以下代码，当调用test方法时i>10时是否会引起死锁?并简要说明理由。

public void test(int i)

{

　　lock(this)

　　{

　　　　if (i>10)

　　　　{

　　　　　　i--;

　　　　　　test(i);

　　　　}

　　}

}

答：不会发生死锁，（但有一点int是按值传递的，所以每次改变的都只是一个副本，因此不会出现死锁。但如果把int换做一个object，那么死锁会发生）

 

63.简要谈您对微软.NET 构架下remoting和webservice两项技术的理解以及实际中的应用。

答：WS主要是可利用HTTP，穿透防火墙。而Remoting可以利用TCP/IP，二进制传送提高效率。

　　remoting是.net中用来跨越machine,process, appdomain进行方法调用的技术,对于三成结构的程序，就可以使用remoting技术来构建．它是分布应用的基础技术.相当于以前的DCOM。

　　Web Service是一种构建应用程序的普通模型，并能在所有支持internet网通讯的操作系统上实施。Web Service令基于组件的开发和web的结合达到最佳，基于组件的对象模型。

 

64.公司要求开发一个继承System.Windows.Forms.ListView类的组件，要求达到以下的特殊功能：点击ListView各列列头时，能按照点击列的每行值进行重排视图中的所有行 (排序的方式如DataGrid相似)。根据您的知识，请简要谈一下您的思路

答：根据点击的列头,包该列的ID取出,按照该ID排序后,在给绑定到ListView中。

 

65.给定以下XML文件，完成算法流程图。

<FileSystem>

　　< DriverC >

　　　　<Dir DirName=”MSDOS622”>

　　　　　　<File FileName =” Command.com”></File>

　　　　</Dir>

　　　　<File FileName =”MSDOS.SYS” ></File>

　　　　<File FileName =” IO.SYS”></File>

　　</DriverC>

</FileSystem>

请画出遍历所有文件名（FileName）的流程图(请使用递归算法)。

答：voidFindFile( Directory d )

　  {

　　　　FileOrFolders = d.GetFileOrFolders();

　　　　foreach( FileOrFolder fof in FileOrFolders)

　　　　{

　　　　　　if(fof  is  File)

　　　　　　　　You Found a file;

　　　　　　else if (fof is Directory)

　　　　　　　　FindFile( fof );

　　　　}

　　}

 

66.String s = new String("xyz");创建了几个String Object?

答：两个对象，一个是“xyx”,一个是指向“xyx”的引用对像s。

 

67.abstract class和interface有什么区别?

答：声明方法的存在而不去实现它的类被叫做抽像类（abstract class），它用于要创建一个体现某些基本行为的类，并为该类声明方法，但不能在该类中实现该类的情况。不能创建abstract 类的实例。然而可以创建一个变量，其类型是一个抽像类，并让它指向具体子类的一个实例。不能有抽像构造函数或抽像静态方法。Abstract 类的子类为它们父类中的所有抽像方法提供实现，否则它们也是抽像类为。取而代之，在子类中实现该方法。知道其行为的其它类可以在类中实现这些方法。

　　接口（interface）是抽像类的变体。在接口中，所有方法都是抽像的。多继承性可通过实现这样的接口而获得。接口中的所有方法都是抽像的，没有一个有程序体。接口只可以定义static final成员变量。接口的实现与子类相似，除了该实现类不能从接口定义中继承行为。当类实现特殊接口时，它定义（即将程序体给予）所有这种接口的方法。然后，它可以在实现了该接口的类的任何对像上调用接口的方法。由于有抽像类，它允许使用接口名作为引用变量的类型。通常的动态联编将生效。引用可以转换到接口类型或从接口类型转换，instanceof 运算符可以用来决定某对象的类是否实现了接口。

 

68.启动一个线程是用run()还是start()?

答：启动一个线程是调用start()方法，使线程所代表的虚拟处理机处于可运行状态，这意味着它可以由JVM调度并执行。这并不意味着线程就会立即运行。

　　run()方法可以产生必须退出的标志来停止一个线程。

 

69.两个对像值相同(x.equals(y)== true)，但却可有不同的hashcode，这句话对不对?

答：不对，有相同的hashcode。

 

70.swtich是否能作用在byte上，是否能作用在long上，是否能作用在String上?

答：switch（expr1）中，expr1是一个整型，字符或字符串，因此可以作用在byte和long上，也可以作用在string上。

 

71.当一个线程进入一个对象的一个synchronized方法后，其它线程是否可进入此对象的其它方法?

答：不能，一个对象的一个synchronized方法只能由一个线程访问。

 

72.abstract的method是否可同时是static,是否可同时是native，是否可同时是synchronized?

答：都不能。

 

73.List, Set, Map是否继承自Collection接口?

答：List，Set是Map不是

 

74.Set里的元素是不能重复的，那么用什么方法来区分重复与否呢? 是用==还是equals()? 它们有何区别?

答：Set里的元素是不能重复的，那么用iterator()方法来区分重复与否。equals()是判读两个Set是否相等。

　　equals()和==方法决定引用值是否指向同一对像equals()在类中被覆盖，为的是当两个分离的对象的内容和类型相配的话，返回真值。

 

75.sleep() 和 wait() 有什么区别?

答：sleep()方法是将当前线程挂起指定的时间。

　　wait()释放对象上的锁并阻塞当前线程，直到它重新获取该锁。

 

76.short s1 = 1; s1 = s1 + 1;有什么错? short s1 = 1; s1 += 1;有什么错?

答：short s1 =1; s1 = s1 + 1;有错，

　　s1是short型，s1+1是int型,不能显式转化为short型。可修改为s1=(short)(s1 + 1) 。short s1 = 1;s1 += 1正确。

 

77.谈谈final,finally, finalize的区别。

答：final－修饰符（关键字）如果一个类被声明为final，意味着它不能再派生出新的子类，不能作为父类被继承。因此一个类不能既被声明为 abstract的，又被声明为final的。将变量或方法声明为final，可以保证它们在使用中 不被改变。被声明为final的变量必须在声明时给定初值，而在以后的引用中只能读取，不可修改。被声明为 final的方法也同样只能使用，不能重载

　　finally－再异常处理时提供 finally 块来执行任何清除操作。如果抛出一个异常，那么相匹配的 catch 子句就会执行，然后控制就会进入 finally 块（如果有的话）。

　　finalize－方法名。Java 技术允许使用finalize() 方法在垃圾收集器将对像从内存中清除出去之前做必要的清理工作。这个方法是由垃圾收集器在确定这个对象没有被引用时对这个对象调用的。它是在 Object 类中定义的 ，因此所有的类都继承了它。子类覆盖 finalize() 方法以整理系统资源或者执行其他清理工作。finalize() 方法是在垃圾收集器删除对像之前对这个对象调用的。

 

78.如何处理几十万条并发数据？

答：用存储过程或事务。取得最大标识的时候同时更新。注意主键不是自增量方式这种方法并发的时候是不会有重复主键的。取得最大标识要有一个存储过程来获取.

 

79.Session有什么重大BUG，微软提出了什么方法加以解决？

答：是iis中由于有进程回收机制，系统繁忙的话Session会丢失，可以用Sate server或SQL Server数据库的方式存储Session不过这种方式比较慢，而且无法捕获Session的END事件。

 

80.成员变量和成员函数前加static的作用？

答：它们被称为常成员变量和常成员函数，又称为类成员变量和类成员函数。分别用来反映类的状态。比如类成员变量可以用来统计类实例的数量，类成员函数负责这种统计的动作。

 

81.请说明在.net中常用的几种页面间传递参数的方法，并说出他们的优缺点。

答：session(viewstate)简单，但易丢失

　　application 全局

　　cookie 简单，但可能不支持，可能被伪造

　　input type="hidden" 简单，可能被伪造

　　url参数简单，显示于地址栏，长度有限

　　数据库稳定，安全，但性能相对弱

 

82.请指出GAC的含义？

答：全局程序集缓存。

 

83.向服务器发送请求有几种方式？

答：get,post。get一般为链接方式，post一般为按钮方式。

 

84.软件开发过程一般有几个阶段？每个阶段的作用？

答：需求分析，架构设计，代码编写，QA，部署

 

85.在c#中using和new这两个关键字有什么意义，请写出你所知道的意义？using 指令 和语句 new 创建实例 new 隐藏基类中方法。

答：using 引入名称空间或者使用非托管资源

　　new 新建实例或者隐藏父类方法

 

86.需要实现对一个字符串的处理,首先将该字符串首尾的空格去掉,如果字符串中间还有连续空格的话,仅保留一个空格,即允许字符串中间有多个空格,但连续的空格数不可超过一个.

答：string inputStr=" xx xx ";

　　inputStr = Regex.Replace(inputStr.Trim(),"*"," ");

 

87.什么叫做SQL注入，如何防止？请举例说明。

答：利用sql语言漏洞获得合法身份登陆系统。如身份验证的程序设计成：

　　SqlCommand com=new SqlCommand("Select* from users where username='"+t_name.text+"' andpwd='"+t_pwd.text+"'");

　　object obj=com.ExcuteScale();

　　if(obj!=null)

    {

      //通过验证

    }

　　这段代码容易被sql注入。如用户在t_name中随便输入，在t_pwd中输入1' and 1='1  就可以进入系统了。

 

88.什么是反射？

答：动态获取程序集信息

 

89.用Singleton如何写设计模式

答：static属性里面new ,构造函数private

 

90.什么是ApplicationPool？

答：Web应用，类似Thread Pool，提高并发性能。

 

91.什么是虚函数？什么是抽像函数？

答：虚函数：可由子类继承并重写的函数。

　　抽像函数：规定其非虚子类必须实现的函数，必须被重写。

 

92.什么是XML？

答：XML即可扩展标记语言。eXtensible Markup Language.标记是指计算机所能理解的信息符号，通过此种标记，计算机之间可以处理包含各种信息的文章等。如何定义这些标记，即可以选择国际通用的标记语言，比如HTML，也可以使用象XML这样由相关人士自由决定的标记语言，这就是语言的可扩展性。XML是从SGML中简化修改出来的。它主要用到的有XML、XSL和XPath等。

 

94.什么是ASP.net中的用户控件？

答：用户控件一般用在内容多为静态,或者少许会改变的情况下.用的比较大.类似ASP中的include.但是功能要强大的多。

 

95.列举一下你所了解的XML技术及其应用

答：xml用于配置,用于保存静态数据类型.接触XML最多的是web Services和config

 

96.什么是code-Behind技术。

答：aspx,resx和cs三个后缀的文件，这个就是代码分离.实现了HTML代码和服务器代码分离.方便代码编写和整理.

 

97.C#中 property 与 attribute的区别，他们各有什么用处，这种机制的好处在哪里？

答：一个是属性，用于存取类的字段，一个是特性，用来标识类，方法等的附加性质

 

98.XML 与 HTML 的主要区别

答：1. XML是区分大小写字母的，HTML不区分。

　　2. 在HTML中，如果上下文清楚地显示出段落或者列表键在何处结尾，那么你可以省略</p>或者</li>之类的结束 标记。在XML中，绝对不能省略掉结束标记。

　　3. 在XML中，拥有单个标记而没有匹配的结束标记的元素必须用一个 / 字符作为结尾。这样分析器就知道不用查找结束标记了。

　　4. 在XML中，属性值必须分装在引号中。在HTML中，引号是可用可不用的。

　　5. 在HTML中，可以拥有不带值的属性名。在XML中，所有的属性都必须带有相应的值。

 

99.类成员有_____种可访问形式？

答：this.; newClass().Method;

 

100.在Asp.net中所有的自定义用户控件都必须继承自________?

答：Control。

 

101.在.Net中所有可序列化的类都被标记为_____?

答：[serializable]

 

102.在.Net托管代码中我们不用担心内存漏洞，这是因为有了______?

答：GC。

 

103.在.Net中，类System.Web.UI.Page 可以被继承么？

答：可以。

 

104..net的错误处理机制是什么？

答：.net错误处理机制采用try->catch->finally结构，发生错误时，层层上抛，直到找到匹配的Catch为止。

 

105.利用operator声明且仅声明了==，有什么错误么?

答：要同时修改Equale和GetHash() ? 重载了"==" 就必须重载 "!="

 

106.某一密码仅使用K、L、M、N、O共5个字母，密码中的单词从左向右排列，密码单词必须遵循如下规则：

（1） 密码单词的最小长度是两个字母，可以相同，也可以不同

（2） K不可能是单词的第一个字母

（3） 如果L出现，则出现次数不止一次

（4） M不能使最后一个也不能是倒数第二个字母

（5） K出现，则N就一定出现

（6） O如果是最后一个字母，则L一定出现

 

问题一：下列哪一个字母可以放在LO中的O后面，形成一个3个字母的密码单词？

A) K B)L C) M D) N

答案:B

 

问题二：如果能得到的字母是K、L、M，那么能够形成的两个字母长的密码单词的总数是多少？

A)1个 B)3个 C)6个 D）9个

答案:A

 

问题三：下列哪一个是单词密码？

A) KLLN B) LOML C) MLLO D)NMKO

答案:C

 

107.C#中 property 与 attribute的区别，他们各有什么用处，这种机制的好处在哪里？

答：attribute:自定义属性的基类;property :类中的属性

 

108.C#可否对内存进行直接的操作？

答：在.net下，.net引用了垃圾回收（GC）功能，它替代了程序员不过在C#中，不能直接实现Finalize方法，而是在析构函数中调用基类的Finalize()方法

 

109.ADO.NET相对于ADO等主要有什么改进？

答：1:ado.net不依赖于ole db提供程序,而是使用.net托管提供的程序,

　　2:不使用com

　　3:不在支持动态游标和服务器端游

　　4:,可以断开connection而保留当前数据集可用

　　5:强类型转换

　　6:xml支持

 

110.大概描述一下ASP.NET服务器控件的生命周期

答：初始化 加载视图状态处理回发数据 加载 发送回发更改通知 处理回发事件 预呈现 保存状态 呈现 处置 卸载

 

111.Anonymous Inner Class (匿名内部类) 是否可以extends(继承)其它类，是否可以implements(实现)interface(接口)?

答：不能，可以实现接口

 

112.Static Nested Class 和 Inner Class的不同，说得越多越好

答：StaticNested Class是被声明为静态（static）的内部类，它可以不依赖于外部类实例被实例化。而通常的内部类需要在外部类实例化后才能实例化。

 

113.&和&&的区别

答：&是位运算符，表示按位与运算，&&是逻辑运算符，表示逻辑与（and）.

 

114.<%# %> 和 <% %> 有什么区别？

答：<%# %>表示绑定的数据源，<% %>是服务器端代码块

 

115.你觉得ASP.NET 2.0（VS2005）和你以前使用的开发工具（.Net 1.0或其他）有什么最大的区别？你在以前的平台上使用的哪些开发思想（pattern/ architecture）可以移植到ASP.NET2.0上 (或者已经内嵌在ASP.NET 2.0中)

答：1、ASP.NET2.0把一些代码进行了封装打包,所以相比1.0相同功能减少了很多代码。

　　2、同时支持代码分离和页面嵌入服务器端代码两种模式,以前1.0版本,.NET提示帮助只有在分离的代码文件,无 法 在页面嵌入服务器端代码获得帮助提示。

　　3、代码和设计界面切换的时候,2.0支持光标定位.这个我比较喜欢。

　　4、在绑定数据,做表的分页.UPDATE,DELETE,等操作都可以可视化操作,方便了初学者。

　　5、在ASP.NET中增加了40多个新的控件,减少了工作量。

 

116.重载与覆盖的区别？

答：1、方法的覆盖是子类和父类之间的关系，是垂直关系；方法的重载是同一个类中方法之间的关系，是水平关系。

　　2、覆盖只能由一个方法，或只能由一对方法产生关系；方法的重载是多个方法之间的关系。

　　3、覆盖要求参数列表相同；重载要求参数列表不同。

　　4、覆盖关系中，调用那个方法体，是根据对象的类型（对像对应存储空间类型）来决定；重载关系，是根据调用时的实参表与形参表来选择方法体的。

 

117.什么是WSE？目前最新的版本是多少？

答：WSE (WebService Extension)包来提供最新的WEB服务安全保证，最新版本2.0。

 

118.a=10,b=15，在不用第三方变量的前提下，把a,b的值互换

答：a=a+b;b=a-b;a=a-b;

 

119.还有变态要求，需要代码最短呢。有两个结果：

1) a^=b^(b^=a^b); // 13个字节

2) a=b+(b=a)*0; // 11个字节

 

120.请简述面向对象的多态的特性及意义！

答：面向对象的编程使用了派生继承以及虚函数机制.一个本来指向基类的对象指针可以指向其派生类的.并访问从基类继承而来的成员变量和函数.而虚函数是专门为这个特性设计的,这个函数在每个基类的派生类中都是同一个名字,但函数体却并不一定相同,派生类往往为实现自己的功能而修改这个虚函数.这样用一个指针就能够实现对多种不同的派生类的访问, 并实现其派生类的特定功能(代码 )

 

121.session喜欢丢值且占内存，Cookis不安全，请问用什么办法代替这两种原始的方法

答：用ViewState，stateserver

 

122.对数据的并发采用什么办法进行处理较好。

答：可以控制连接池的连接数量,条件好的话可以用负载平衡

 

123.ADO.NET处理数据并发的方法和步骤?

答：开放式并发，没有用到数据库的锁，而依靠SQL语句判断数据是否已经变化了。

    步骤：通常使用VS提供的工具生成SQL语句，工具生成的结果实在不符合要求，才手工写SQL语句。

 

124.动态创建的控件PostBack后是否可以保存下来,为什么?

答：ASP.NET框架不会为你保存，但可以手工保存到ViewState

 

125.T-SQL中is null和null 的区别?

答：is null 和 null 区别相当于 "是空盒子" 和 "空盒子"的区别

# Java 

# C/C++

# Python

# GO

# SQL Server

# Oracle

# 其他数据库

# 其他



