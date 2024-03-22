---
layout: post
title: Java编程技术
description: JAVA相关技术基础SpringBoot,Spring Cloud等相关技术总结
date: 2022-10-01 09:01:01
updatedate: 2023-08-23 10:24:01
---

- [Java 基础](#java-基础)
  - [JDK下载](#jdk下载)
  - [Java 关键字](#java-关键字)
  - [Java 基本数据类型](#java-基本数据类型)
  - [Java 数组](#java-数组)
  - [Java运算符](#java运算符)
  - [Java 基础语句](#java-基础语句)
  - [Java 集合类型](#java-集合类型)
  - [JAVA 注解](#java-注解)
  - [Springboot Helloworld!](#springboot-helloworld)
  - [MVC 使用静态Html](#mvc-使用静态html)
  - [返回Json](#返回json)
  - [SpringSecurity + JWT 实现用户访问认证和授权](#springsecurity--jwt-实现用户访问认证和授权)
  - [集成Mybatis数据访问](#集成mybatis数据访问)
  - [集成 Swagger3 OpenAPI](#集成-swagger3-openapi)
  - [集成 Swagger3 OpenAPI](#集成-swagger3-openapi-1)
  - [集成 slf4j 日志](#集成-slf4j-日志)
- [JavaEE](#javaee)
- [Spring \& SpringBoot](#spring--springboot)
- [Spring Cloud](#spring-cloud)
- [Maven](#maven)

## Java 基础

### JDK下载

[JDK17](https://www.oracle.com/java/technologies/downloads/#jdk17-windows)

### Java 关键字

> abstract 、assert 、boolean、break、byte、case、catch、char、class、const、continue、default 、do、double、else、enum、extends、final、finally、float、for、goto、if、implements、import、instanceof、int、interface、long、native、new、package、private、protected、public、return、short 、static、strictfp、super、switch、synchronized、this 、throw、throws、transient 、try 、void、volatile、while

### Java 基本数据类型 

> 逻辑类型：boolean

> 整数类型：byte、short、int、long

> 浮点类型 ：float、double

> 字符类型：char

### Java 数组

> int[] nums = new int[] {1,2,3,4,5,6,7};

> String[] names = new String[4];

### Java运算符

> 算术

> > 单目：~（按位取反）、! (取非)、-（负号运算符）、 ++（自增）、 - -（自减）、

> > 双目：+ - * / %（取余）

> > 三目：a>b?true:false 说明：当a大于b的时候，为true（也就是冒号之前的值），否则为false；这整个运算符包括一个关系运算符（可以是“>”"<""!="等等），一个“？”，一个“：”，冒号前后需要有两个表达式或者是值或者是对象。

> 关系

> > 等于符号:==，不等于符号:!= ，大于符号:>， 小于符号:<，大于等于符号:>= ，小于等于符号:<= 。

> 位与逻辑

> > 位运算符　与（&）、非（~）、或（|）、异或（^）

> > &：双目运算符，运算时均把运算数转换为二进制再做比较，规则：当相同的位上均为1时结果为1，否则结 果为0.如：1010&1101，转为二进制：1111110010&10001001101，比较结果为：1000000转为十进制： 64。所以1010&1101=64；

> > | ：当两边操作数的位有一边为1时，结果为1，否则为0。如1100|1010=1110

> > ~：0变1,1变0

> > ^：两边的位不同时，结果为1，否则为0.如1100^1010=0110

> 逻辑运算符

> > 与（&&）、非（!）、或（||）

> 赋值

> > = += -= *= /= %= &= ^= |= <<= >>=

> instanceof 相当于c## 的is 

> > java 中也没有c## 中的as 

```
User user = null;
if(obj instanceof User) {
  user = (User) obj;
}
```

> > 该运算符是双目运算符，左面的操作元是一个对象，右面是一个类或接口。当左面的对象是右面的类(或右边类的子孙类)创建的对象、或者是右边接口的实现类(或实现类的子孙类)的对象时，该运算符运算结果是true，否则是false。

> 位移

> > << 带符号左移 >>带符号右移 >>> 无符号右移

> 运算符优先级

> > 按优先级从高到低排列如下：[ ] ( ) ++ -- ! ～ instanceof * / % + - << >> >>> <> < = > \ == != &^& & || ? := op= 。

### Java 基础语句

> if (){}else if(){} else{} 

> swith() {case : default:} 

> while(){;}

>  do{;}while();

>  for(；；){;}

> int a[ ][ ] = { {1,2,3},{4,5,6} };

> int[ ][ ] ints = new int[2][3];

### Java 集合类型

> List(有序、可重复)，有三种 ArrayList，Vector，LinkList

> > ArrayList是最常用的List实现类，内部是通过数组实现的，它允许元素进行随机访问，数组的缺点是每个元素间不能有间隙，当数组的大小不能满足需要增加存储能力，就要将已经有数组的数据复制到新的存储空间中。当从ArrayList的中间位置插入和删除元素时，需要对数组进行复制，移动代价比较高，它适合随机查找和遍历，不适合插入和删除。

> > Vector和ArrayList一样，也是通过数组实现，不同的是它支持线程同步，某一时刻只有一个线程能够写Vector，避免多线程同时写而引起的不一致性，但是实现同步需要更高的花费，因此，访问它比访问ArrayList慢。

> > LinkedList是用链表结构存储数据的，很适合数据的动态插入和删除，随机访问和遍历速度比较慢，另外，它还提供了List接口中没有定义的方法，专门用于操作表头和表尾元素，另外可以当作堆，队列和双向队列使用。

> Set(无序、不能重复)

> Map(键值对、键唯一、值不唯一) 其实就是C#中的字典类型

> > Map<String, String> m = new HashMap<String, String>();

> > m.put("1", "张三");

> > m.put("2", "王五");

> > m.put("3", "张三");

### JAVA 注解

> Java自带的标准注解
> > 包括@Override、@Deprecated、@SuppressWarnings等，使用这些注解后编译器就会进行检查。

> 元注解

> > 元注解是用于定义注解的注解，包括@Retention、@Target、@Inherited、@Documented、@Repeatable 等。

元注解也是Java自带的标准注解，只不过用于修饰注解，比较特殊。

> 自定义注解

> > 用户可以根据自己的需求定义注解。

### Springboot Helloworld!

> 本代码使用VS Code Java17

> > Spring Boot 常用注解

> 一、启动注解@SpringBootApplication

> > @SpringBootConfiguration 注解

> > @EnableAutoConfiguration 注解

> > @ComponentScan 注解

> 二、配置文件相关注解

> > @Configuration

> > @ComponentScan

> 三、Controller 相关注解

> > @Controller

> > @RestController 复合注解

> > @RequestBody

> > @ResponseBody

> > @RequestMapping

> > @GetMapping

> > @PostMapping

> > @RequestMapping 和 @GetMapping @PostMapping 区别

> 四、取请求参数值

> > @PathVariable

> > @Value

> > @RequestParam

> > @RequestHeader

> > @CookieValue

> 五、注入bean相关

> > @Bean

> > @Component

> > @controller

> > @Service

> > @Repository

> > @Scope作用域注解

> > @Entity

> > @Autowired

> > @Qualifier

> 六、导入配置文件

> > @PropertySource注解

> > @ImportResource导入xml配置文件

> > @Import 导入额外的配置信息

> 七、事务注解 @Transactional

> 八、全局异常处理

> > @ControllerAdvice 统一处理异常

> > @ExceptionHandler 声明异常处理方法

> > @ModelAttribute

> > @InitBinder

### MVC 使用静态Html

> Controller :PersonController

> 视图使用 Thymeleaf

> View :/resources/templates/views

> 页面访问地址：http://localhost:8080/persons/all

### 返回Json

> 使用阿里巴巴 fastjson

> Demo 地址在：http://localhost:8080/api/hello/list

### SpringSecurity + JWT 实现用户访问认证和授权

> > JSON Web Token（缩写 JWT）是目前最流行的跨域认证解决方案，本文介绍它的原理和用法。

> 登陆后会跳转到http://localhost:8080/doLogin  会输出相关信息

> > WebSecurityConfigurer 中 修改 .successForwardUrl("/index")//认证成功 forward 跳转路径 

> > 其中使用了BCryptPasswordEncoder是Spring Security中的一个加密方法。BCryptPasswordEncoder方法采用了SHA-256+随机盐+密钥对密码进行加密。

### 集成Mybatis数据访问

> 集成Mybatis 读写分离， 但是写的方法暂时没有用到

### 集成 Swagger3 OpenAPI

> 访问地址 ：http://localhost:8080/swagger-ui/index.html

> > Swagger 是一个 API文档维护组织，后来成为了 Open API 标准的主要定义者。现在最新的版本为17年发布的 Swagger3（Open Api3）。

### 集成 Swagger3 OpenAPI

### 集成 slf4j 日志

> 日志配置文件在 resources/logger-config.xml 部分内容在 application.properties中配置。

## JavaEE

> J2EE平台由一整套服务（Services）、应用程序接口（APIs）和协议构成，它对开发基于Web的多层应用提供了功能支持，下面对J2EE中的13种技术规范进行简单的描述(限于篇幅，这里只能进行简单的描述): 

> 1.JDBC(Java Database Connectivity): 

> > JDBC API为访问不同的数据库提供了一种统一的途径，象ODBC一样，JDBC对开发者屏蔽了一些细节问题，另外，JDCB对数据库的访问也具有平台无关性。 

> 2.JNDI(Java Name and Directory Interface): 

> > JNDI API被用于执行名字和目录服务。它提供了一致的模型来存取和操作企业级的资源如DNS和LDAP，本地文件系统，或应用服务器中的对象。 

> 3.EJB(Enterprise JavaBean): 

> > J2EE技术之所以赢得某体广泛重视的原因之一就是EJB。它们提供了一个框架来开发和实施分布式商务逻辑，由此很显著地简化了具有可伸缩性和高度复杂的企业级应用的开发。EJB规范定义了EJB组件在何时如何与它们的容器进行交互作用。容器负责提供公用的服务，例如目录服务、事务管理、安全性、资源缓冲池以及容错性。但这里值得注意的是，EJB并不是实现J2EE的唯一途径。正是由于J2EE的开放性，使得有的厂商能够以一种和EJB平行的方式来达到同样的目的。 

> 4.RMI(Remote Method Invoke): 

> > 正如其名字所表示的那样，RMI协议调用远程对象上方法。它使用了序列化方式在客户端和服务器端传递数据。RMI是一种被EJB使用的更底层的协议。 

> 5.Java IDL/CORBA: 

> > 在Java IDL的支持下，开发人员可以将Java和CORBA集成在一起。他们可以创建Java对象并使之可在CORBA ORB中展开, 或者他们还可以创建Java类并作为和其它ORB一起展开的CORBA对象的客户。后一种方法提供了另外一种途径，通过它Java可以被用于将你的新的应用和旧的系统相集成。 

> 6.JSP(Java Server Pages): 

> > JSP页面由HTML代码和嵌入其中的Java代码所组成。服务器在页面被客户端所请求以后对这些Java代码进行处理，然后将生成的HTML页面返回给客户端的浏览器。 

> 7.Java Servlet: 

> > Servlet是一种小型的Java程序，它扩展了Web服务器的功能。作为一种服务器端的应用，当被请求时开始执行，这和CGI Perl脚本很相似。Servlet提供的功能大多与JSP类似，不过实现的方式不同。JSP通常是大多数HTML代码中嵌入少量的Java代码，而servlets全部由Java写成并且生成HTML。 

> 8.XML(Extensible Markup Language): 

> > XML是一种可以用来定义其它标记语言的语言。它被用来在不同的商务过程中共享数据。XML的发展和Java是相互独立的，但是，它和Java具有的相同目标正是平台独立性。通过将Java和XML的组合，您可以得到一个完美的具有平台独立性的解决方案。 

> 9.JMS(Java Message Service): 

> > MS是用于和面向消息的中间件相互通信的应用程序接口(API)。它既支持点对点的域，有支持发布/订阅(publish/subscribe)类型的域，并且提供对下列类型的支持：经认可的消息传递,事务型消息的传递，一致性消息和具有持久性的订阅者支持。JMS还提供了另一种方式来对您的应用与旧的后台系统相集成。 

> 10.JTA(Java Transaction Architecture): 

> > JTA定义了一种标准的API，应用系统由此可以访问各种事务监控。 

> 11.JTS(Java Transaction Service): 

> > JTS是CORBA OTS事务监控的基本的实现。JTS规定了事务管理器的实现方式。该事务管理器是在高层支持Java Transaction API (JTA)规范，并且在较底层实现OMG OTS specification的Java映像。JTS事务管理器为应用服务器、资源管理器、独立的应用以及通信资源管理器提供了事务服务。 

> 12.JavaMail: 

> > JavaMail是用于存取邮件服务器的API，它提供了一套邮件服务器的抽象类。不仅支持SMTP服务器，也支持IMAP服务器。 

> 13.JAF(JavaBeans Activation Framework): 

> > JavaMail利用JAF来处理MIME编码的邮件附件。MIME的字节流可以被转换成Java对象，或者转换自Java对象。大多数应用都可以不需要直接使用JAF。

## Spring & SpringBoot

> spring框架及spring cloud框架主要组件

> > spring 顶级项目：

> > Spring IO platform:用于系统部署，是可集成的，构建现代化应用的版本平台，具体来说当你使用maven dependency引入spring jar包时它就在工作了。

> > Spring Boot:旨在简化创建产品级的 Spring 应用和服务，简化了配置文件，使用嵌入式web服务器，含有诸多开箱即用微服务功能，可以和spring cloud联合部署。

> > Spring Framework:即通常所说的spring 框架，是一个开源的Java/Java EE全功能栈应用程序框架，其它spring项目如spring boot也依赖于此框架。

> > Spring Cloud：微服务工具包，为开发者提供了在分布式系统的配置管理、服务发现、断路器、智能路由、微代理、控制总线等开发工具包。

> > Spring XD：是一种运行时环境（服务器软件，非开发框架），组合spring技术，如spring batch、spring boot、spring data，采集大数据并处理。

> > Spring Data：是一个数据访问及操作的工具包，封装了很多种数据及数据库的访问相关技术，包括：jdbc、Redis、MongoDB、Neo4j等。

> > Spring Batch：批处理框架，或说是批量任务执行管理器，功能包括任务调度、日志记录/跟踪等。

> > Spring Security：是一个能够为基于Spring的企业应用系统提供声明式的安全访问控制解决方案的安全框架。

> > Spring Integration：面向企业应用集成（EAI/ESB）的编程框架，支持的通信方式包括HTTP、FTP、TCP/UDP、JMS、RabbitMQ、Email等。

> > Spring Social：一组工具包，一组连接社交服务API，如Twitter、Facebook、LinkedIn、GitHub等，有几十个。

> > Spring AMQP：消息队列操作的工具包，主要是封装了RabbitMQ的操作。

> > Spring HATEOAS：是一个用于支持实现超文本驱动的 REST Web 服务的开发库。

> > Spring Mobile：是Spring MVC的扩展，用来简化手机上的Web应用开发。

> > Spring for Android：是Spring框架的一个扩展，其主要目的在乎简化Android本地应用的开发，提供RestTemplate来访问Rest服务。

> > Spring Web Flow：目标是成为管理Web应用页面流程的最佳方案，将页面跳转流程单独管理，并可配置。

> > Spring LDAP：是一个用于操作LDAP的Java工具包，基于Spring的JdbcTemplate模式，简化LDAP访问。

> > Spring Session：session管理的开发工具包，让你可以把session保存到redis等，进行集群化session管理。

> > Spring Web Services：是基于Spring的Web服务框架，提供SOAP服务开发，允许通过多种方式创建Web服务。

> > Spring Shell：提供交互式的Shell可让你使用简单的基于Spring的编程模型来开发命令，比如Spring Roo命令。

> > Spring Roo：是一种Spring开发的辅助工具，使用命令行操作来生成自动化项目，操作非常类似于Rails。

> > Spring Scala：为Scala语言编程提供的spring框架的封装（新的编程语言，Java平台的Scala于2003年底/2004年初发布）。

> > Spring BlazeDS Integration：一个开发RIA工具包，可以集成Adobe Flex、BlazeDS、Spring以及Java技术创建RIA。

> > Spring Loaded：用于实现java程序和web应用的热部署的开源工具。

> > Spring REST Shell：可以调用Rest服务的命令行工具，敲命令行操作Rest服务。

## Spring Cloud

> Spring cloud子项目包括：

> > Spring Cloud Config：配置管理开发工具包，可以让你把配置放到远程服务器，目前支持本地存储、Git以及Subversion。

> > Spring Cloud Bus：事件、消息总线，用于在集群（例如，配置变化事件）中传播状态变化，可与Spring Cloud Config联合实现热部署。

> > Spring Cloud Netflix：针对多种Netflix组件提供的开发工具包，其中包括Eureka、Hystrix、Zuul、Archaius等。

> > Netflix Eureka：云端负载均衡，一个基于 REST 的服务，用于定位服务，以实现云端的负载均衡和中间层服务器的故障转移。

> > Netflix Hystrix：容错管理工具，旨在通过控制服务和第三方库的节点,从而对延迟和故障提供更强大的容错能力。

> > Netflix Zuul：边缘服务工具，是提供动态路由，监控，弹性，安全等的边缘服务。

> > Netflix Archaius：配置管理API，包含一系列配置管理API，提供动态类型化属性、线程安全配置操作、轮询框架、回调机制等功能。

> > Spring Cloud for Cloud Foundry：通过Oauth2协议绑定服务到CloudFoundry，CloudFoundry是VMware推出的开源PaaS云平台。

> > Spring Cloud Sleuth：日志收集工具包，封装了Dapper,Zipkin和HTrace操作。

> > Spring Cloud Data Flow：大数据操作工具，通过命令行方式操作数据流。

> > Spring Cloud Security：安全工具包，为你的应用程序添加安全控制，主要是指OAuth2。

> > Spring Cloud Consul：封装了Consul操作，consul是一个服务发现与配置工具，与Docker容器可以无缝集成。

> > Spring Cloud Zookeeper：操作Zookeeper的工具包，用于使用zookeeper方式的服务注册和发现。

> > Spring Cloud Stream：数据流操作开发包，封装了与Redis,Rabbit、Kafka等发送接收消息。

> > Spring Cloud CLI：基于 Spring Boot CLI，可以让你以命令行方式快速建立云组件。

> Spring Cloud核心组件：

> 注册发现中心(Eureka)。

> > 将各个微服务注册到一起，从而使它们间相互认识。

> 调用中心(Fegin)。

> > 将微服务联系起来，使它们之间可以实现相互调用，由此组合成一个整体。

> 负载均衡——Netflix Ribbon

> > Ribbon，主要提供客户侧的软件负载均衡算法。Ribbon 客户端组件提供一系列完善的配置选项，比如连接超时、重试、重试算法等。Ribbon 内置可插拔、可定制的负载均衡组件。

> 熔断器(Hystrix)。

> > 当某个微服务瘫痪时可以将它从调用链中踢除出去，从而保证调用链上其他微服务的正常运作。

> 微服务网关(Zuul)。

> > 为不同的微服务提供一个统一的访问端口。

> 云配置中心(Cloud Config)。

> > 将一个项目所需的配置文件都放到云端统一管理，从而做到一个项目只有一套配置文件。

> 消息总线(Cloud Bus)。

> > 修改配置文件时，可以在不停止服务运行的情况下重新加载配置。

## Maven

> ubuntu 使用 sudo apt install maven 安装

> 默认路径为/usr/share/maven 可以使用 whereis maven 查看

> vscode 中 maven路径为 /usr/share/maven/bin

> 配置文件为/usr/share/maven/conf/settings.xml

> 使用阿里源，找到mirrors块，添加阿里云源。

<mirror>
    <id>alimaven</id>
    <mirrorOf>central</mirrorOf>
    <name>aliyun maven</name>
    <url>http://maven.aliyun.com/nexus/content/repositories/central/</url>
</mirror>
