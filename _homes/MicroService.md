---
layout: post
title: 微服务技术框架
description: 微服务相关内容
date: 2023-07-18 10:21:01
updatedate: 2023-07-18 10:21:01
---

## 微服务概述

> 服务注册与发现：通过服务注册中心（如 Eureka、Consul）管理微服务的注册与发现，实现微服务之间的调用。

> > Eureka 目前已经停止更新

> > 通过HTTP API查看存在哪些服务（自定义服务发现客户端）通过consul agent内置的DNS服务（如果是windows系统可以下载dig工具，发现dns服务，ps. Windows系统不建议作为server）　可以根据服务check的实时状态动态调整available服务节点列表　　dig @127.0.0.1 -p 8600 web3.service.consul SRV

> 配置中心：通过配置中心（如 Spring Cloud Config）统一管理微服务的配置信息，实现动态的配置更新和灰度发布等功能。

> Feign的目标 feign是声明式的web service客户端,它让微服务之间的调用变得更简单了,类似controller调用service。Spring Cloud集成了Ribbon和Eureka,可在使用Fe...

> 负载均衡：通过负载均衡算法（如 Ribbon）实现请求的分发，提高系统的可用性和性能。

> 熔断器：通过熔断器（如 Hystrix）实现服务的自动降级和恢复，避免服务雪崩现象。

> API 网关：通过 API 网关（如 Zuul、Spring Cloud Gateway）实现微服务的统一访问入口，对请求进行路由、限流、安全验证等处理。

> 分布式追踪：通过分布式追踪系统（如 Zipkin）实现微服务调用链的跟踪和监控，提高系统的可观测性和调试效率。

> 分布式事务：通过分布式事务框架（如 Spring Cloud Alibaba 的 Seata）实现跨服务的事务管理，保证数据的一致性和可靠性。

> 服务网格：通过服务网格（如 Istio）实现微服务的流量管理、安全控制、智能路由等功能，提高系统的稳定性和可维护性。


## 服务治理：服务注册与发现

> 通过服务注册中心（如 Eureka、Consul）管理微服务的注册与发现，实现微服务之间的调用。

> > Eureka 目前已经停止更新

> > 通过HTTP API查看存在哪些服务（自定义服务发现客户端）通过consul agent内置的DNS服务（如果是windows系统可以下载dig工具，发现dns服务，ps. Windows系统不建议作为server）　可以根据服务check的实时状态动态调整available服务节点列表　　dig @127.0.0.1 -p 8600 web3.service.consul SRV

### Zookeeper

Zookeeper是一个分布式的调服务，可以用于实现分布式应用的协调和管理。Zookeeper提供了一个分布式的文件系统，可以用于存储和管理配置信息、命名服务、分布式锁等。在微服务架构中，Z可以用作服务注册中心，帮助服务提供将自己的服务注册到中心，并帮助消费者发现并调用服务。

Z的优点是：

可以实现高可性和可扩展性；
可以提供分布式锁等高级功能；
可以提供可靠的消息传递机制。
Zookeeper的缺点是：

部署和维护比较复杂；
性能较差。

### Eureka

Eureka是Netflix开源的一款服务发现框架，可以用于实现服务注册和发现。Eureka提供了一个RESTful API，可以用于注册和发现服务。在微服务架构中，Eureka可以用作服务注册心，帮助服务提供者将自己的服务注册到中心，并帮助服务消费者发现并调用服务。

Eureka的优点是：

部署和维护比较简单；
性能较好；
可以提供可靠的服务注册和发现功能。
Eureka的缺点是：

可用性和可扩展性不如Zookeeper。

> dotnet core 中使用 dotnet add package Steeltoe.Eureka.Client

> spring cloud  

```
<dependencies>

        <dependency>

            <groupId>org.springframework.cloud</groupId>

            <artifactId>spring-cloud-starter-eureka-server</artifactId>

        </dependency>

        <dependency>

            <groupId>org.springframework.boot</groupId>

            <artifactId>spring-boot-starter-test</artifactId>

            <scope>test</scope>

        </dependency>

    </dependencies>
```

### Consul

Consul是一开源的服务发现和配置管理工具，可以用于实现服务注册和发现。Consul提供了一个HTTP API，可以用于注册和发现服务。在微服务架构中，Consul可以用作服务注册中心帮助服务提供者将自己的服务注册到中心，并帮助服务消费者发现并调用服务。

Consul的优点是：

-以供高可用性和可扩展性；
- 可以提供可靠的服务注册和发现功能；
- 可以提供健康检查和故障转移功能。

Consul的缺点是：

部署和维护比较。

### 服务调用

> Feign的目标 feign是声明式的web service客户端,它让微服务之间的调用变得更简单了,类似controller调用service。Spring Cloud集成了Ribbon和Eureka,可在使用Fe...

> .net java 中都有Feigh实现可供调用

> .net 中还有 WebApiClientCore，refit 方案

> > Refit 是一个类型安全的 REST 开源库，是一套基于 RESTful 架构的 .NET 客户端实现，内部使用 HttpClient 类封装，可通过 Refit 更加简单安全地访问 Web API 接口，要使用 Refit 框架，只需要在项目中通过 NuGet 包安装器安装即可。Install-Package refit

### 回退、熔断、重试、超时？

> 回退：通俗来说就是备胎，如果方法调用报错了，比如调用的服务挂了，调用超时了等，就返回备胎里面的内容。定义回退类QueryEmployeeFallBack，该类也要实现IQueryEmployee接口

## 配置中心

> 通过配置中心（如 Spring Cloud Config）统一管理微服务的配置信息，实现动态的配置更新和灰度发布等功能。

> > 流程： 把配置文件放在Git Repository中。Config Server从Git repository中读取配置信息。其他客户端再从Config Server中加载配置文件

> Nacos 可任意代替 Spring Cloud Config

> > 服务（Service）是 Nacos 世界的一等公民。Nacos 支持几乎所有主流类型的“服务”的发现、配置和管理：Kubernetes Service,gRPC & Dubbo RPC Service,Spring Cloud RESTful Service

## 负载均衡

> 通过负载均衡算法（如 Ribbon）实现请求的分发，提高系统的可用性和性能。

### Ribbon

> 负载均衡，英文名称为Load Balance，其含义就是指将负载（工作任务）进行平衡、分摊到多个操作单元上进行运行，例如FTP服务器、Web服务器、企业核心应用服务器和其它主要任务服务器等，从而协同完成工作任务。负载均衡构建在原有网络结构之上，它提供了一种透明且廉价有效的方法扩展服务器和网络设备的带宽、加强网络数据处理能力、增加吞吐量、提高网络的可用性和灵活性。

> 能跟Sprig Cloud里的多个组件（eureka、feign、gateway、zuul、hystrix）搭配使用;此外，Ribbon可以脱离SpringCloud应用在一般项目中。

> 当Eureka接到Http请求时，此时Eureka虽然拥有所有服务节点的信息，但它不知道该如何选择才能满足负载均衡，所以Eureka将请求转到Ribbon。

IPing：IPing是Ribbon的healthcheck机制，检查目标节点是否还在线，一般不会主动向服务节点发起healthcheck，而是Ribbon后台静默处理。
IRule: Ribbon 组件库，各种负载均衡策略都继承自IRule接口。所有经过Ribbon的请求，都会先请求IRule，由IRule通过负载均衡策略选择指定的目标机器。
3.Ribbon负载均衡七龙珠之底层七种负载均衡策略
Ribbon的LoadBalancer的更底层内置了7中负载均衡策略
第一种：随机策略（RandomRule），自然是随性而为，随机选择服务名称对应的服务节点。
第二种：轮询策略（RoundRobinRule），一个一个来，谁不用急，底层使用了CAS+自旋锁的方式来保证线程安全。
第三种：重试策略（RetryRule），一次不行再来第二次，使用了类似于装饰器设计模式，相当于重试+实际模式的方式，所以需要指定真正被执行的负载均衡策略。
第四种：权重策略（WeightedResponseTimeRule），谁响应快，那么谁被选中的几率就高，该规则会自动根据服务节点的响应时间来计算权重，响应快则权重高。该Rule继承自RoundRobinRule，所以服务器刚启动时采用轮询策略，当权重数据积累足够后才使用WeightedResponseTimeRule模式。
第五种：空闲策略（BestAvailableRule），谁最闲谁先来，在过滤掉故障服务后，选择过去30分钟类并发量最小的服务节点。当然服务器刚启动时，统计结果未生成时，依然使用轮询的方式。
第六种：下限策略（AvailabilityFilteringRule），基于RoundRobinRule来选择服务节点，但必须满足它的最低要求，否在不予采纳，10次以内选择种为止。
第七种：自主策略（ZoneAvoidanceRule），以机房大区（Zone）和可用性作为过滤条件，选择可用的服务节点。满足大区要求，且服务可用且并发量不大的节点才会被选中。

> dotnet 中可以利用 Ocelot实现负载均衡

### 基于Nginx 的负载均衡

nginx配置如下

```
#user  nobody;
worker_processes  1;
events {
    worker_connections  1024;
}


http {
    include       mime.types;
    default_type  application/octet-stream;

    sendfile        on;
    #tcp_nopush     on;

    #keepalive_timeout  0;
    keepalive_timeout  65;

    #gzip  on;
    
    #项目发布的地址
    upstream myredis.run {   
      server 127.0.0.1:8081;
      server 127.0.0.1:8082;
    }
    
    server {
        listen       8084;  #端口
        server_name  localhost; #网址
        location / {
            root   html;
            index  index.html index.htm;
            proxy_pass  http://myredis.run; #需要与upstream后面的一致
        }
        #error_page  404              /404.html;
    }

}
```

## 熔断器

> 通过熔断器（如 Hystrix）实现服务的自动降级和恢复，避免服务雪崩现象。

## API 网关

> 通过 API 网关（如 Zuul、Spring Cloud Gateway）实现微服务的统一访问入口，对请求进行路由、限流、安全验证等处理。

> dotnet core 使用Ocelot


OpenResty Api Gateway（ Kong,Orage,Tyk ） 主要是安全 限流 缓存 日志 监控认证等服务
从左至右 HTTP 请求先由DNS在拿到第一手流量后负载均衡到基于 OpenResty 的 API Gataway 网关集群，在这个流程我们可以使用像 Kong,Orage,Tyk 这些开源的支持高并发高访问量 API 网关程序在做第一层流量的防护，在这一级我们可以做一些像身份认证，安全，监控，日志，流控等策略。除了这些我们还可以做一些服务的发现和注册（这个要看不同网关的支持程度），接口的版本控制，路由重写等。

Aggr Api Gateway（用相关.net java 等语言自己实现） 超时 缓存 熔断 重试 查询聚合
然后再由这些 API 网关把请求再负载到不同的 Aggr Api Gateway，在这里我们做聚合服务这个操作，具体体现也就是图中的黄色区域是需要由各个语言的开发人员来需要写代码实现的。具体流程也就是我们可以引入像 Ocelot 这种和语言相关的 API 网关开源项目，然后通过 NuGet 包引入之后通过 Json配置+聚合代码的方式来整合后端的各个微服务提供聚合查询等操作。这期间对于有需求的接口，我们可以应用超时，缓存，熔断，重试等策略。

从 Aggr Api Gateway 到后端微服务集群这中间就属于内部的通讯了，我们可以使用对内部友好的通讯协议比如 gRPC 或者 AMQP 等，然后进行 RPC调用提高通讯性能。



## 分布式追踪

> 通过分布式追踪系统（如 Zipkin）实现微服务调用链的跟踪和监控，提高系统的可观测性和调试效率。

## 分布式事务

> 通过分布式事务框架（如 Spring Cloud Alibaba 的 Seata）实现跨服务的事务管理，保证数据的一致性和可靠性。

## 服务网格

> 通过服务网格（如 Istio）实现微服务的流量管理、安全控制、智能路由等功能，提高系统的稳定性和可维护性。

## RPC

经典的 RPC 协议
1.HTTP/REST(synchronous)
2.TCP
3.UDP
4.Dubbo
5. Netty
6. RMI
7. Hessian
8. gRPC
9.Webservice SOAP
10.Thrift
11.Memcached
12. Redis
13.AMQP (asynchronous)
14.MQTT
DUBBO