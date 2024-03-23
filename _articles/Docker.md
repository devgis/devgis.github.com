---
layout: post
title: Docker容器技术
description: Docker 研究学习
date: 2022-10-01 09:01:01
updatedate: 2023-10-31 16:12:01
---

- [Docker](#docker)
  - [ubuntu 下安装](#ubuntu-下安装)
  - [Docker 安装 \& 配置镜像加速器](#docker-安装--配置镜像加速器)
  - [container容器](#container容器)
    - [共享数据](#共享数据)
      - [DataVolume](#datavolume)
  - [镜像](#镜像)
  - [Docker Run](#docker-run)
  - [Docker 网络](#docker-网络)
  - [DockFile](#dockfile)
  - [daemon D](#daemond)
  - [Docker Server ](#docker-server)
    - [Job](#job)
  - [Docker 镜像 \& 加速](#docker-镜像--加速)
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
  - [查看docker镜像](#查看docker镜像)
- [容器编排](#容器编排)
  - [Docker Compose](#docker-compose-1)
    - [Ubuntu 安装使用](#ubuntu-安装使用)
    - [命令说明](#命令说明)
    - [Compose clouddrive2](#compose-clouddrive2)
  - [Kubernetes（K8s）](#kubernetesk8s)
    - [Kubernetes的基本概念](#kubernetes的基本概念)
    - [Kuberntes本地部署](#kuberntes本地部署)
- [OP Armbian 中的docker](#op-armbian-中的docker)
  - [Armbina安装Docker](#armbina安装docker)
  - [OP安装Docker](#op安装docker)
  - [启动重启后启动所有docker 容器](#启动重启后启动所有docker-容器)
  - [CloudDrive](#clouddrive)
  - [Run](#run)
  - [启动重启后启动所有docker 容器](#启动重启后启动所有docker-容器-1)
  - [配置 smaba](#配置-smaba)
  - [cloudnas/clouddrive2-unstable](#cloudnasclouddrive2-unstable)


## Docker  

### ubuntu 下安装

> sudo apt update

> sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common


> > 使用下面的 curl 导入源仓库的 GPG key：

> curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


> > 将 Docker APT 软件源添加到你的系统：

> sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"


> > 01.想要安装 Docker 最新版本，运行下面的命令。如果你想安装指定版本，跳过这个步骤，并且跳到下一步。

> sudo apt update

> sudo apt install docker-ce docker-ce-cli containerd.io


> > 想要以非 root 用户执行 Docker 命令，你需要将你的用户添加到 Docker 用户组，该用户组在 Docker CE 软件包安装过程中被创建。想要这么做，输入：

> sudo usermod -aG docker $USER


> > $USER是一个环境变量，代表当前用户名。


> > 验证 安装 docker container run hello-world


> > 可以参考 https://zhuanlan.zhihu.com/p/143156163


### Docker 安装 & 配置镜像加速器

> step 1：安装必要的一些系统工具


> > apt update


> > apt -y install apt-transport-https ca-certificates curl software-properties-common

> step 2：安装 GPG 证书


> > curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | apt-key add -

> Step 3：写入软件源信息


> > add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"

> Step 4：更新并安装 Docker-CE


> > apt -y update


> > apt -y install docker-ce


> > mkdir -p /etc/docker


> > tee /etc/docker/daemon.json <<-'EOF'


> > {


> > "registry-mirrors": ["https://jrzzvzok.mirror.aliyuncs.com"]


> > }


> > EOF


> > systemctl daemon-reload


> > systemctl restart docker

### container容器

#### 共享数据

##### DataVolume

### 镜像

> 镜像是只读的

> 镜像中包含有需要运行的文件

> 镜像用来创建container，一个镜像可以运行多个container；

> 镜像可以通过Dockerfile创建，也可以从Docker hub/registry上下载

### Docker Run

> Usage: docker run [OPTIONS] IMAGE [COMMAND] [ARG...]

> > -a, --attach=[]            登录容器（以docker run -d启动的容器）

> > -c, --cpu-shares=0         设置容器CPU权重，在CPU共享场景使用

> > --cap-add=[]               添加权限，权限清单详见：http://linux.die.net/man/7/capabilities

> > --cap-drop=[]              删除权限，权限清单详见：http://linux.die.net/man/7/capabilities

> > --cidfile=""               运行容器后，在指定文件中写入容器PID值，一种典型的监控系统用法

> > --cpuset=""                设置容器可以使用哪些CPU，此参数可以用来容器独占CPU

> > -d, --detach=false         指定容器运行于前台还是后台 

> > --device=[]                添加主机设备给容器，相当于设备直通

> > --dns=[]                   指定容器的dns服务器

> > --dns-search=[]            指定容器的dns搜索域名，写入到容器的/etc/resolv.conf文件

> > -e, --env=[]               指定环境变量，容器中可以使用该环境变量

> > --entrypoint=""            覆盖image的入口点

> > --env-file=[]              指定环境变量文件，文件格式为每行一个环境变量

> > --expose=[]                指定容器暴露的端口，即修改镜像的暴露端口

> > -h, --hostname=""          指定容器的主机名

> > -i, --interactive=false    打开STDIN，用于控制台交互

> > --link=[]                  指定容器间的关联，使用其他容器的IP、env等信息

> > --lxc-conf=[]              指定容器的配置文件，只有在指定--exec-driver=lxc时使用

> > -m, --memory=""            指定容器的内存上限

> > --name=""                  指定容器名字，后续可以通过名字进行容器管理，links特性需要使用名字

> > --net="bridge"             容器网络设置，待详述

> > -P, --publish-all=false    指定容器暴露的端口，待详述

> > -p, --publish=[]           指定容器暴露的端口，待详述

> > --privileged=false         指定容器是否为特权容器，特权容器拥有所有的capabilities

> > --restart=""               指定容器停止后的重启策略，待详述

> > --rm=false                 指定容器停止后自动删除容器(不支持以docker run -d启动的容器)

> > --sig-proxy=true           设置由代理接受并处理信号，但是SIGCHLD、SIGSTOP和SIGKILL不能被代理

> > -t, --tty=false            分配tty设备，该可以支持终端登录

> > -u, --user=""              指定容器的用户

> > -v, --volume=[]            给容器挂载存储卷，挂载到容器的某个目录

> > --volumes-from=[]          给容器挂载其他容器上的卷，挂载到容器的某个目录

> > -w, --workdir=""           指定容器的工作目录

### Docker 网络

> Docker的网络模式


> > Host： 容器不会虚拟出自己的网卡，配置主机的IP等,而是使用宿主机的IP和端口


> > Container： 创建的容器不会创建自己的网卡，配置自己的IP，而是和一个指定的容器共享IP，端口范围


> > None： 该模式关闭了容器的网络功能。


> > Bridge： 默认为该模式，此模式会为每一个容器分配，设置IP等，并将容器连接到一个docker0 的虚拟网桥，通过docker 0 网桥以及iptables nat 表配置与宿主机通信。


> > 自定义网络在安装Docker 时，它会自动创建三个网络：bridge（创建容器默认连接到此网络），none，host。

> 查看docker 的网络列表


> > docker network ls 或者 docker network list

### DockFile

### daemon D

> ocker Daemon是Docker架构中运行在后台的守护进程

### Docker Server  

> Server模块接受Docker Client的请求

> Engine Engine中处理请求，然后根据请求类型，创建出指定的Job并运行

> 向Docker Registry获取镜像，通过graphdriver执行容器镜像的本地化操作，通过networkdriver执行容器网络环境的配置，通过execdriver执行容器内部运行的执行工作等。

#### Job

### Docker 镜像 & 加速

> 默认情况，将从docker hub（https://hub.docker.com/）下载docker镜像太慢，一般都会配置镜像加速器；

> 中国科学技术大学(ustc)是老牌的linux镜像服务提供者了，还在遥远的ubuntu 5.04版本的时候就在用。ustc的docker镜像加速器速度很快。ustc docker mirror的优势之一就是不需要注册，是真正的公共服务。

> 编辑该文件：

> vim /etc/docker/daemon.json

> 在该文件中输入如下内容：

```
{
"registry-mirrors": ["https://docker.mirrors.ustc.edu.cn"]
}
```

> 方案二：阿里云

```
{
"registry-mirrors": ["https://3ad96kxd.mirror.aliyuncs.com"]
}
```

> 必须要注册，每个人分配一个免费的docker镜像加速地址，速度极快

> 配置完成记得刷新配置

> sudo systemctl daemon-reload

> sudo systemctl restart docker

### client

> Docker引擎可以直观理解为就是在某一台机器上运行的Docker程序，实际上它是一个C/S结构的软件，有一个后台守护进程在运行，每次运行docker命令的时候实际上都是通过RESTful Remote API来和守护进程进行交互的，即使是在同一台机器上也是如此。

### Swarm

### Machine

### Compose

### LXC

#### NameSpace

### repository

#### DockerHub

#### 私有仓库

### 优点

#### 快速，一致地交付您的应用程序

#### 响应式部署和扩展

#### 在同一硬件上运行更多工作负载

### Dockerfile 详解

> Docker 的架构很有魅力，他拥有类似于虚拟机性质的隔离机制，但并不是严格意义上的虚拟机。我还是喜欢拿货轮举例，以前我们是一条小船运一个集装箱的货物，现在可以把 N 个集装箱扔到一条大货轮上。每个容器（集装箱）共用宿主机（货轮）的内核（运载力），Dockerfile 就像是每个集装箱中的货物清单和说明书，一般由以下五部分构成：

> 2.1 基础指令


> > FROM： 指定基础镜像，且必须位于第一行，使用格式如下：


> > FROM <image>


> > FROM <image>:<tag>


> > FROM <image>@<digest>


> > Docker 的原理基于 Linux 内核的隔离技术，且 Linux From Scratch，因此 FROM scratch 是 docker 中最基础的镜像，debian、ubuntu 和 centos 等都基于 scratch 之上。在实际的运用中，如果必须从零开始搭建镜像的一般都选择 FROM debian 作为基础镜像，不过大多数情况下一般都会以如下：FROM python、FROM nginx、FROM java 等为基础镜像。


> > MAINTAINER：指定维护者信息，例：MAINTAINER user user@mail.com。

> 2.2 控制指令


> > RUN： 在构建的过程中指定需要被执行的命令，使用格式如下：


> > RUN command param1 param2 # 更推荐


> > RUN ["executable","param1","param2"]


> > WORKDIR： 用于切换构建过程中的工作目录，例：WORKDIR project。可配合环境变量使用，例：


> > ENV BASEDIR /project


> > WORKDIR $BASEDIR/test


> > ONBUILD: 在当前镜像被当做基础镜像时，执行其携带指令，例：ONBUILD RUN echo "hello world" “hello world”会在子镜像被构建的过程中输出。

> 2.3 引入指令


> > COPY： 拷贝文件或目录，格式：


> > COPY <src> <dest>


> > COPY ["<src>","<dest>"]


> > ADD： 在COPY的基础之上，ADD可识别压缩文件，例：ADD rootfs.tar.xz /。理论上也可添加网络地址，但还是建议在 RUN 指令中执行 wget 或 curl 命令，感觉这样更加可控。实际应用中我喜欢将 COPY 用于文件，ADD 用于目录（仅我个人的使用习惯）。

> 2.4 执行指令


> > CMD： 容器启动时需要执行的命令，格式：


> > CMD ["executable","param1","param2"] # 更推荐


> > CMD ["param1","param2"]


> > CMD command param1 param2 


> > 若在 docker run 中指定启动命令，则 CMD 将被覆盖。


> > ENTRYPOINT：主程序启动前的准备指令，用于启动主程序所依赖的服务，格式同CMD（基本上没用过就不介绍了，而且容易出错，不推荐使用）。

> 2.5 配置指令


> > EXPOSE： 暴露容器端口，格式：EXPOSE <port> [<port>...]，注意此处的暴露端口和docker run 中-p指定的映射端口是两个概念。


> > ENV： 声明环境变量，格式：ENV <key>=<value> ...。


> > LABEL： 标记，格式：LABEL <key>=<value>...。


> > USER： 设置启动容器的用户，格式：USER daemo。


> > ARG： 设置变量，格式同ENV。


> > STOPSIGNAL： 容器停止时给应用程序发出的信号，例：STOPSIGNAL SIGKELL。


> > SHELL： 指定shell，例：SHELL ["bash","-c"]。

#### Docker 命令详解

> 为了避免喧宾夺主，此处仅摘录我个人操作中较为常用的命令。

> 3.1 生命周期管理


> > run： 创建并运行容器，格式：docker run [OPTIONS] IMAGE [COMMAND] [ARG...]，参数说明：


> > -d , --detach      # 后台运行


> > -it, --interactive tty  # 交互终端形式运行


> > -p , --publish list   # 指定端口


> > -v , --volume list    # 挂载存储卷


> > 		 --name string    # 定义名字


> > 		 --rm        # 容器终止后自动删除（不支持在后台运行的容器）


> > 		 --restart string  # no、on-failure（非正常退出时重启，on-failure:3 最多重启三次）、always、unless-stopped


> > docker run 的参数甚多，可通过 --help 查询，后续这些复杂的配置都会移交给 Docker Compose，以上几个足以应用70%~80%的场景，例：

> 类似 ubuntu 这类容器必须以 -it 交互终端形式运行，否则无法在后台保留


> > docker run -it -d --name my-ubuntu ubuntu

> 端口映射和挂载数据卷


> > docker run -d \


> > -p 8080:80 \


> > -v /data/www:/usr/share/nginx/html\


> > --name my-nginx nginx


> > start/stop/restart：docker start/stop/restart my-container。


> > rm：移除容器，格式：docker rm [OPTIONS] CONTAINER [CONTAINER...]，参数说明：


> > -f, --force   Force the removal of a running container


> > -l, --link   Remove the specified link


> > -v, --volumes  Remove the volumes associated with the container


> > exec：在运行的容器中执行命令，不过更常用的还是先进入容器再执行命令，例子:docker exec -it my-nginx bash。

> 3.2 容器操作


> > ps： 列出容器，常用：docker ps -anq，参数说明：all、n last（最新 n 个容器）、quiet（只显示容器编号）。


> > top： 查看容器中的进程信息，例：docker top my-container。


> > logs： 查看容器日志，常用：docker logs -f --tail，参数说明：follow、--tail n（最新条日志）。


> > port：查看端口映射情况，例：docker port my-container。

> 3.3 镜像仓库


> > login/logout： 镜像仓库的登录和退出，格式：


> > docker login [OPTIONS] [SERVER]


> > docker logout [SERVER]


> > 如果是Docker Hub，则示例如下：


> > docker login -u username -p passward


> > docker logout


> > 在生产环境中，我们一般会选择使用云厂商的镜像仓库，例：


> > docker login -u yo****@qq.com -p ****** registry-vpc.cn-hangzhou.aliyuncs.com


> > docker logout registry-vpc.cn-hangzhou.aliyuncs.com 


> > pull： 拉取镜像，最常用的命令之一，格式：docker pull [OPTIONS] NAME[:TAG|@DIGEST]。


> > push： 上传镜像，格式：docker push [OPTIONS] NAME[:TAG]。

> 3.4 本地镜像管理


> > images： 列出本地镜像，常用 docker images -q，参数说明：quiet（只显示image Id）。


> > rmi： 删除本地镜像，常用 docker rmi -f，参数说明：force。


> > tag： 标记镜像，归入仓库，格式：docker tag [OPTIONS] IMAGE[:TAG] [REGISTRYHOST/][USERNAME/]NAME[:TAG]，例：docker tag ubuntu youclk/my-ubuntu:v1。


> > build： 使用Dockerfile创建镜像，格式：docker build [OPTIONS] PATH | URL | -，参数说明：-t tag 例：docker build -t youclk/my-ubuntu:v1 .。


> > Install :sudo apt-get -y install docker.io

> Other


> > docker image ls # 列出当前环境下的镜像


> > docker images  # 列出当前环境下的镜像


> > docker image rm ididididid   # 安装id删除镜像


> > 操作容器


> > docker run -i -t --rm centos /bin/bash  # 启动一个centos容器并进入，此时容器是干干净净，没有一点东西的，do everything


> > docker container kill container_id  # 杀掉这个容器，强行终止


> > docker container rm container_id   # 删除这个容器


> > docker container ls      # 查找当前容器


> > docker ps // 查看所有正在运行容器


> > docker stop containerId // containerId 是容器的ID


> > docker ps -a // 查看所有容器


> > docker ps -a -q // 查看所有容器ID


> > docker stop $(docker ps -a -q) // stop停止所有容器


> > docker rm $(docker ps -a -q) //  remove删除所有容器

### Docker-compose 

#### 一，Docker-compose简介

> 1，Docker-compose简介


> > Docker-Compose项目是Docker官方的开源项目，负责实现对Docker容器集群的快速编排。 Docker-Compose将所管理的容器分为三层，分别是工程（project），服务（service）以及容器（container）。Docker-Compose运行目录下的所有文件（docker-compose.yml，extends文件或环境变量文件等）组成一个工程，若无特殊指定工程名即为当前目录名。一个工程当中可包含多个服务，每个服务中定义了容器运行的镜像，参数，依赖。一个服务当中可包括多个容器实例，Docker-Compose并没有解决负载均衡的问题，因此需要借助其它工具实现服务发现及负载均衡。 Docker-Compose的工程配置文件默认为docker-compose.yml，可通过环境变量COMPOSE_FILE或-f参数自定义配置文件，其定义了多个有依赖关系的服务及每个服务运行的容器。 使用一个Dockerfile模板文件，可以让用户很方便的定义一个单独的应用容器。在工作中，经常会碰到需要多个容器相互配合来完成某项任务的情况。例如要实现一个Web项目，除了Web服务容器本身，往往还需要再加上后端的数据库服务容器，甚至还包括负载均衡容器等。 Compose允许用户通过一个单独的docker-compose.yml模板文件（YAML 格式）来定义一组相关联的应用容器为一个项目（project）。 Docker-Compose项目由Python编写，调用Docker服务提供的API来对容器进行管理。因此，只要所操作的平台支持Docker API，就可以在其上利用Compose来进行编排管理。


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

#### 二，Docker-compose常用命令

> 1，Docker-compose命令格式


> > docker-compose [-f <arg>...] [options] [COMMAND] [ARGS...]


> > 命令选项如下


> > 


> > -f --file FILE指定Compose模板文件，默认为docker-compose.yml


> > -p --project-name NAME 指定项目名称，默认使用当前所在目录为项目名


> > --verbose 输出更多调试信息


> > -v，-version 打印版本并退出


> > --log-level LEVEL 定义日志等级(DEBUG, INFO, WARNING, ERROR, CRITICAL)

> 2，docker-compose up


> > docker-compose up [options] [--scale SERVICE=NUM...] [SERVICE...]


> > 选项包括：


> > -d 在后台运行服务容器


> > -no-color 不是有颜色来区分不同的服务的控制输出


> > -no-deps 不启动服务所链接的容器


> > --force-recreate 强制重新创建容器，不能与-no-recreate同时使用


> > –no-recreate 如果容器已经存在，则不重新创建，不能与–force-recreate同时使用


> > –no-build 不自动构建缺失的服务镜像


> > –build 在启动容器前构建服务镜像


> > –abort-on-container-exit 停止所有容器，如果任何一个容器被停止，不能与-d同时使用


> > -t, –timeout TIMEOUT 停止容器时候的超时（默认为10秒）


> > –remove-orphans 删除服务中没有在compose文件中定义的容器

> 3，docker-compose ps


> > docker-compose ps [options] [SERVICE...]


> > 列出项目中所有在运行的容器

> 4，docker-compose stop


> > docker-compose stop [options] [SERVICE...]


> > 选项包括


> > -t, –timeout TIMEOUT 停止容器时候的超时（默认为10秒）


> > docker-compose stop


> > 停止正在运行的容器，可以通过docker-compose start 再次启动

> 5，docker-compose -h


> > docker-compose -h


> > 查看帮助

> 6，docker-compose down


> > docker-compose down [options]


> > 停止和删除容器、网络、卷、镜像。


> > 选项包括：


> > –rmi type，删除镜像，类型必须是：all，删除compose文件中定义的所有镜像；local，删除镜像名为空的镜像


> > -v, –volumes，删除已经在compose文件中定义的和匿名的附在容器上的数据卷


> > –remove-orphans，删除服务中没有在compose中定义的容器


> > docker-compose down


> > 停用移除所有容器以及网络相关

> 7，docker-compose logs


> > docker-compose logs [options] [SERVICE...]


> > 查看服务容器的输出。默认情况下，docker-compose将对不同的服务输出使用不同的颜色来区分。可以通过–no-color来关闭颜色。


> > docker-compose logs


> > 查看服务容器的输出 


> > -f 跟踪日志输出

> 8，docker-compose bulid


> > docker-compose build [options] [--build-arg key=val...] [SERVICE...]


> > 构建（重新构建）项目中的服务容器。


> > 选项包括：


> > –compress 通过gzip压缩构建上下环境


> > –force-rm 删除构建过程中的临时容器


> > –no-cache 构建镜像过程中不使用缓存


> > –pull 始终尝试通过拉取操作来获取更新版本的镜像


> > -m, –memory MEM为构建的容器设置内存大小


> > –build-arg key=val为服务设置build-time变量


> > 服务容器一旦构建后，将会带上一个标记名。可以随时在项目目录下运行docker-compose build来重新构建服务

> 9，docker-compose pull


> > docker-compose pull [options] [SERVICE...]


> > 拉取服务依赖的镜像。


> > 选项包括：


> > –ignore-pull-failures，忽略拉取镜像过程中的错误


> > –parallel，多个镜像同时拉取


> > –quiet，拉取镜像过程中不打印进度信息


> > docker-compose pull


> > 拉取服务依赖的镜像

> 10，docker-compose restart


> > docker-compose restart [options] [SERVICE...]


> > 重启项目中的服务。


> > 选项包括：


> > -t, –timeout TIMEOUT，指定重启前停止容器的超时（默认为10秒）


> > docker-compose restart


> > 重启项目中的服务 

> 11，docker-compose rm


> > docker-compose rm [options] [SERVICE...]


> > 删除所有（停止状态的）服务容器。


> > 选项包括：


> > –f, –force，强制直接删除，包括非停止状态的容器


> > -v，删除容器所挂载的数据卷


> > docker-compose rm


> > 删除所有（停止状态的）服务容器。推荐先执行docker-compose stop命令来停止容器。

> 12，docker-compose start


> > docker-compose start [SERVICE...]


> > docker-compose start


> > 启动已经存在的服务容器。

> 13，docker-compose run


> > docker-compose scale web=3 db=2


> > 设置指定服务运行的容器个数。通过service=num的参数来设置数量

> 14，docker-compose scale


> > docker-compose scale web=3 db=2


> > 设置指定服务运行的容器个数。通过service=num的参数来设置数量

> 15，docker-compose pause


> > docker-compose pause [SERVICE...]


> > 暂停一个服务容器

> 16，docker-compose kill


> > docker-compose kill [options] [SERVICE...]


> > 通过发送SIGKILL信号来强制停止服务容器。 


> > 支持通过-s参数来指定发送的信号，例如通过如下指令发送SIGINT信号：


> > docker-compose kill -s SIGINT

> 17，docker-compose config


> > docker-compose config [options]


> > 验证并查看compose文件配置。


> > 选项包括：


> > –resolve-image-digests 将镜像标签标记为摘要


> > -q, –quiet 只验证配置，不输出。 当配置正确时，不输出任何内容，当文件配置错误，输出错误信息


> > –services 打印服务名，一行一个


> > –volumes 打印数据卷名，一行一个

> 18，docker-compose create


> > docker-compose create [options] [SERVICE...]


> > 为服务创建容器。


> > 选项包括：


> > –force-recreate：重新创建容器，即使配置和镜像没有改变，不兼容–no-recreate参数


> > –no-recreate：如果容器已经存在，不需要重新创建，不兼容–force-recreate参数


> > –no-build：不创建镜像，即使缺失


> > –build：创建容器前　　，生成镜像

> 19，docker-compose exec


> > docker-compose exec [options] SERVICE COMMAND [ARGS...]


> > 选项包括：


> > -d 分离模式，后台运行命令。


> > –privileged 获取特权。


> > –user USER 指定运行的用户。


> > -T 禁用分配TTY，默认docker-compose exec分配TTY。


> > –index=index，当一个服务拥有多个容器时，可通过该参数登陆到该服务下的任何服务，例如：docker-compose exec –index=1 web /bin/bash ，web服务中包含多个容器

> 20，docker-compose port


> > docker-compose port [options] SERVICE PRIVATE_PORT


> > 显示某个容器端口所映射的公共端口。


> > 选项包括：


> > –protocol=proto，指定端口协议，TCP（默认值）或者UDP


> > –index=index，如果同意服务存在多个容器，指定命令对象容器的序号（默认为1）

> 21，docker-compose push


> > docker-compose push [options] [SERVICE...]


> > 推送服务依的镜像。


> > 选项包括：


> > –ignore-push-failures 忽略推送镜像过程中的错误

> 22，docker-compose stop


> > docker-compose stop [options] [SERVICE...]


> > 停止运行的容器

> 23，docker-compose uppause


> > docker-compose unpause [SERVICE...]


> > 恢复处于暂停状态中的服务。

#### 三，Docker-compose模板文件

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


> >  - 8080


> > networks:


> >  - front-tier


> >  - back-tier


> > 


> > redis:


> > image: redis


> > links:


> >  - web


> > networks:


> >  - back-tier


> > 


> > lb:


> > image: dockercloud/haproxy


> > ports:


> >  - 80:80


> > links:


> >  - web


> > networks:


> >  - front-tier


> >  - back-tier


> > volumes:


> >  - /var/run/docker.sock:/var/run/docker.sock 


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


> >   image: hello-world

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

> 7,container_name


> > Compose的容器名称格式是：<项目名称><服务名称><序号>


> > 可以自定义项目名称、服务名称，但如果想完全控制容器的命名，可以使用标签指定：


> > 


> > container_name: app

> 8,depends_on


> > 在使用Compose时，最大的好处就是少打启动命令，但一般项目容器启动的顺序是有要求的，如果直接从上到下启动容器，必然会因为容器依赖问题而启动失败。例如在没启动数据库容器的时候启动应用容器，应用容器会因为找不到数据库而退出。depends_on标签用于解决容器的依赖、启动先后的问题


> > 


> > version: '2'


> > services:


> > web:


> > build: .


> > depends_on:


> >  - db


> >  - redis


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


> > 使用HOST:CONTAINER格式或者只是指定容器的端口，宿主机会随机映射端口。


> > 


> > ports:


> > /- "3000"


> > /- "8000:8000"


> > /- "49100:22"


> > /- "127.0.0.1:8001:8001"


> > 当使用HOST:CONTAINER格式来映射端口时，如果使用的容器端口小于60可能会得到错误得结果，因为YAML将会解析xx:yy这种数字格式为60进制。所以建议采用字符串格式。


> > 

> 11,extra_hosts


> > 添加主机名的标签，会在/etc/hosts文件中添加一些记录。


> > 


> > extra_hosts:


> > /- "somehost:162.242.195.82"


> > /- "otherhost:50.31.209.229"


> > 启动后查看容器内部hosts：


> > 

> 162.242.195.82 somehost

> 50.31.209.229  otherhost

> 12,volumes


> > 挂载一个目录或者一个已存在的数据卷容器，可以直接使用 [HOST:CONTAINER]格式，或者使用[HOST:CONTAINER:ro]格式，后者对于容器来说，数据卷是只读的，可以有效保护宿主机的文件系统。 Compose的数据卷指定路径可以是相对路径，使用 . 或者 .. 来指定相对目录。 数据卷的格式可以是下面多种形式


> > 


> > volumes:


> > // 只是指定一个路径，Docker 会自动在创建一个数据卷（这个路径是容器内部的）。


> > /- /var/lib/mysql


> > // 使用绝对路径挂载数据卷


> > /- /opt/data:/var/lib/mysql


> > // 以 Compose 配置文件为中心的相对路径作为数据卷挂载到容器。


> > /- ./cache:/tmp/cache


> > // 使用用户的相对路径（~/ 表示的目录是 /home/<用户目录>/ 或者 /root/）。


> > /- ~/configs:/etc/configs/:ro


> > // 已经存在的命名的数据卷。


> > /- datavolume:/var/lib/mysql


> > 如果不使用宿主机的路径，可以指定一个volume_driver。


> > 

> 13,volumes_from


> > 从另一个服务或容器挂载其数据卷：


> > 


> > volumes_from:


> > - service_name  


> > - container_name

> 14,dns


> > 自定义DNS服务器。可以是一个值，也可以是一个列表。


> > 


> > dns：8.8.8.8


> > dns：


> > - 8.8.8.8  


> >  - 9.9.9.9

> 15,expose


> > 暴露端口，但不映射到宿主机，只允许能被连接的服务访问。仅可以指定内部端口为参数，如下所示：


> > 


> > expose:


> > - "3000"


> > - "8000"

> 16,links


> > 链接到其它服务中的容器。使用服务名称（同时作为别名），或者服务名称:服务别名（如 SERVICE:ALIAS），例如


> > 


> > links:


> > - db


> > - db:database


> > - redis

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


> >  - "6061:80"


> > container_name: "web1"


> > networks:


> >  - dev


> > web2:


> > image: nginx


> > ports: 


> >  - "6062:80"


> > container_name: "web2"


> > networks:


> >  - dev


> >  - pro


> > web3:


> > image: nginx


> > ports: 


> >  - "6063:80"


> > container_name: "web3"


> > networks:


> >  - pro


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


> > http://127.0.0.1:6061


> > http://127.0.0.1:6062


> > http://127.0.0.1:6063

### Dpcler-Kubernetes

> Kubernetes 也称为 K8s，是用于自动部署、扩缩和管理容器化应用程序的开源系统。

#### kubernetes 概述

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

Worker Node:集群工作节点，运行用户业务应用容器；Worker Node 包含 `

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

#### 核心概念

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


> > > 生命周期回调函数：PostStart（容器创建成功后调研该回调函数）、PreStop（在容器被终止前调用该回调函数）。以下示例中，定义了一个Pod，包含一个JAVA的web应用容器，其中设置了PostStart和PreStop回调函数。即在容器创建成功后，复制/sample.war到/app文件夹中。而在容器终止之前，发送HTTP请求到http://monitor.com:8080/waring，即向监控系统发送警告。具体示例如下：

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


> > > 举例，当你在RC的yaml文件中定义了该RC的selector中的label为app:my-web，那么这个RC就会去关注Pod-->metadata-->labeks中label为app:my-web的Pod。修改了对应Pod的Label，就会使Pod脱离RC的控制。同样，在RC运行正常的时候，若试图继续创建同样Label的Pod，是创建不出来的。因为RC认为副本数已经正常了，再多起的话会被RC删掉的。


> > 弹性伸缩


> > > 弹性伸缩是指适应负载变化，以弹性可伸缩的方式提供资源。反映到Kubernetes中，指的是可根据负载的高低动态调整Pod的副本数量。调整Pod的副本数是通过修改RC中Pod的副本是来实现的，示例命令如下：


> > > 扩容Pod的副本数目到10


> > > > $ kubectl scale relicationcontroller yourRcName --replicas=10


> > > 缩容Pod的副本数目到1


> > > > $ kubectl scale relicationcontroller yourRcName --replicas=1

 


> > 滚动升级


> > > 滚动升级是一种平滑过渡的升级方式，通过逐步替换的策略，保证整体系统的稳定，在初始升级的时候就可以及时发现、调整问题，以保证问题影响度不会扩大。Kubernetes中滚动升级的命令如下：

$ kubectl rolling-update my-rcName-v1 -f my-rcName-v2-rc.yaml --update-period=10s


> > > 升级开始后，首先依据提供的定义文件创建V2版本的RC，然后每隔10s（--update-period=10s）逐步的增加V2版本的Pod副本数，逐步减少V1版本Pod的副本数。升级完成之后，删除V1版本的RC，保留V2版本的RC，及实现滚动升级。


> > > 升级过程中，发生了错误中途退出时，可以选择继续升级。Kubernetes能够智能的判断升级中断之前的状态，然后紧接着继续执行升级。当然，也可以进行回退，命令如下：

$ kubectl rolling-update my-rcName-v1 -f my-rcName-v2-rc.yaml --update-period=10s --rollback

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


> > > Service同RC一样，都是通过Label来关联Pod的。当你在Service的yaml文件中定义了该Service的selector中的label为app:my-web，那么这个Service会将Pod-->metadata-->labeks中label为app:my-web的Pod作为分发请求的后端。当Pod发生变化时（增加、减少、重建等），Service会及时更新。这样一来，Service就可以作为Pod的访问入口，起到代理服务器的作用，而对于访问者来说，通过Service进行访问，无需直接感知Pod。


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


> > > NodePort，在之前的Guestbook示例中，已经延时了NodePort的用法。NodePort的原理是，Kubernetes会在每一个Node上暴露出一个端口：nodePort，外部网络可以通过（任一Node）[NodeIP]:[NodePort]访问到后端的Service。


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

$ kubectl set image deployment/nginx-deployment2 nginx=nginx:1.9

deployment "nginx-deployment2" image updated


> > > 第二种方法，直接edit：


> > > > $ kubectl edit deployment/nginx-deployment


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


> > > > $ kubectl describe deployments #查询详细信息，获取升级进度


> > > > $ kubectl rollout pause deployment/nginx-deployment2 #暂停升级


> > > > $ kubectl rollout resume deployment/nginx-deployment2 #继续升级


> > > > $ kubectl rollout undo deployment/nginx-deployment2 #升级回滚


> > > > $ kubectl scale deployment nginx-deployment --replicas 10 #弹性伸缩Pod数量


> > > 关于多重升级，举例，当你创建了一个nginx1.7的Deployment，要求副本数量为5之后，Deployment Controller会逐步的将5个1.7的Pod启动起来；当启动到3个的时候，你又发出更新Deployment中Nginx到1.9的命令；这时Deployment Controller会立即将已启动的3个1.7Pod杀掉，然后逐步启动1.9的Pod。Deployment Controller不会等到1.7的Pod都启动完成之后，再依次杀掉1.7，启动1.9。

 

> Volume


> > 在Docker的设计实现中，容器中的数据是临时的，即当容器被销毁时，其中的数据将会丢失。如果需要持久化数据，需要使用Docker数据卷挂载宿主机上的文件或者目录到容器中。在Kubernetes中，当Pod重建的时候，数据是会丢失的，Kubernetes也是通过数据卷挂载来提供Pod数据的持久化的。Kubernetes数据卷是对Docker数据卷的扩展，Kubernetes数据卷是Pod级别的，可以用来实现Pod中容器的文件共享。目前，Kubernetes支持的数据卷类型如下：


> > > 1)    EmptyDir


> > > 2)    HostPath


> > > 3)    GCE Persistent Disk


> > > 4)    AWS Elastic Block Store


> > > 5)    NFS


> > > 6)    iSCSI


> > > 7)    Flocker


> > > 8)    GlusterFS


> > > 9)    RBD


> > > 10)  Git Repo


> > > 11)  Secret


> > > 12)  Persistent Volume Claim


> > > 13)  Downward API


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


> > > 1)    准备：系统管理员规划或创建一批Persistent Volume；


> > > 2)    绑定：用户通过创建Persistent Volume Claim来声明存储请求，Kubernetes发现有存储请求的时候，就去查找符合条件的Persistent Volume（最小满足策略）。找到合适的就绑定上，找不到就一直处于等待状态；


> > > 3)    使用：创建Pod的时候使用Persistent Volume Claim；


> > > 4)    释放：当用户删除绑定在Persistent Volume上的Persistent Volume Claim时，Persistent Volume进入释放状态，此时Persistent Volume中还残留着上一个Persistent Volume Claim的数据，状态还不可用；


> > > 5)    回收：是否的Persistent Volume需要回收才能再次使用。回收策略可以是人工的也可以是Kubernetes自动进行清理（仅支持NFS和HostPath）


> > 信息数据卷

　　


> > >Kubernetes中有一些数据卷，主要用来给容器传递配置信息，我们称之为信息数据卷，比如Secret（处理敏感配置信息，密码、Token等）、Downward API（通过环境变量的方式告诉容器Pod的信息）、Git Repo（将Git仓库下载到Pod中），都是将Pod的信息以文件形式保存，然后以数据卷方式挂载到容器中，容器通过读取文件获取相应的信息。

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

#### kubernetes 集群搭建(kubeadm 方式)

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

第二， 将 Node节点加入到当前集群中 $ kubeadm join <Master 节点的 IP 和端口 >

安装要求

在开始之前，部署 Kubernetes 集群机器需要满足以下几个条件：

一台或多台机器，操作系统 CentOS7.x-86_x64

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


> > 访问地址：http://NodeIP:Port

#### 安装方法二

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


> > wget https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml


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


> > 访问地址：http://NodeIP:Port

```

http://192.168.26.128:30340/

```

#### kubernetes 集群搭建（二进制）

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


> > > 下载地址： https://github.com/etcd-io/etcd/releases/download/v3.4.9/etcd-v3.4.9-linux-amd64.tar.gz

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

#### kubernetes 集群 YAML 文件详解

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

metadata.labels	map[string]string	键值数据，常被用作挑选条件	

spec	Object 详细定义对象，固定值就写Spec		

spec.containers[]		List	这里是Spec对象的容器列表定义，是个列表

spec.containers[].name	String	这里定义容器的名字	

spec.containers[].image	String	这里定义要用到的镜像名称，如果镜像的标签是 latest，每次使用该镜像都会从远程下载	

### 查看docker镜像

> 方法一：使用Docker命令行工具

> > 你可以使用Docker命令行工具来查看Docker镜像文件的内容。这需要先在本地文件系统中提取镜像文件的所有内容，然后您可以查看这些文件的内容。

> > 首先，使用以下命令列出所有镜像：

> > docker images

> > 使用inspect命令可以获取镜像的详细信息，包括制作者、适应架构、各层的数字摘要等。

> > docker inspect image_name

> > 然后，使用以下命令将镜像文件导出到本地文件系统中：

> > docker save -o image.tar image_name

> > 接下来，使用以下命令来提取镜像文件的所有内容：

> > tar -xvf image.tar

> > 接着，您可以使用less命令查看文件的内容。例如，使用以下命令查看/etc/passwd文件的内容：

> > less image.tar/etc/passwd

> > less 命令是 Unix 和 Linux 系统中的一个用于查看文件内容的命令。它可以显示文件的全部内容，并且可以进行搜索、滚动、翻页等操作，比 cat 命令更加强大和灵活。

> 方法二：使用Dive工具

> > Dive是一个开源工具，可以帮助用户浏览和查看Docker镜像的内容。它类似于查看Git代码的工具，可以帮助您快速检查Docker镜像的层，文件以及其他资源。

> > 首先，使用以下命令安装Dive工具：

> > brew install dive

> > 安装完成后，使用以下命令查看Docker镜像的内容：

> > dive image_name

> > Dive将会显示您要查看的镜像的内容。您可以使用箭头键浏览不同的图层，查看其所包含的内容。

> 方法三：使用Ct工具

> > Ct是另一个开源工具，它可以帮助您查看Docker镜像的内容和结构。与Dive不同，Ct并不需要您在本地提取镜像文件内容。它可以直接在镜像文件中查看内容。

> > 首先，使用以下命令安装Ct工具：

> > curl -L0 https://github.com/coreos/container-linuxpconfig-transpiler/release/download/v0.9.0/ct-v0.9.0-x86_64-unknown-linux-gnu

> > chmod +x ct-v0.9.0-x86_64-unknown-linux-gnu

> > sudo mv ct-v0.9.0-x86_64-unknown-linux-gnu /usr/local/bin/ct

> > 安装完成后，使用以下命令查看Docker镜像的内容：

> > ct config_content image_name | less

> > 这将会显示Docker镜像的所有配置内容，您可以使用箭头键浏览不同的配置项。

## 容器编排

### Docker Compose

#### Ubuntu 安装使用 

> sudo apt install docker-compose 

> docker-compose -v

#### 命令说明

一、docker-compose命令对象与格式

二、命令选项

三、命令使用说明

> build 构建（重新构建）项目中的服务容器

> config 检测compose文件的错误

> up 启动服务


> > docker-compose up 本质是docker-compose logs -f，它会收集所有容器的日志输出直到退出命令，或者容器都停止运行。


> > docker-compose up -d 以后台的方式运行容器。不会在终端上打印运行日志

> down 停止容器

> images 列出项目中所包含的镜像

> logs 查看服务容器的日志

> kill 发送 SIGKILL 信号来强制停止服务容器

> port 查看某个容器端口所映射的公共端口

> ps 列出项目中目前的所有容器

> restart 重启项目中的服务

> rm 删除所有停止状态的服务容器

> run 在指定服务上运行一个命令

> scale 设置指定服务运行的容器个数

> stop 停止处于运行状态的容器

> start 启动被stop的服务容器

> top 查看各个服务容器内运行的进程

> pause 暂停一个服务容器

> unpause 恢复处于暂停状态中的服务

> docker-compose术语：

> 服务（service）：一个应用容器，实际上可以运行多个相同镜像的实例。

> 项目（project）：由一组关联的应用容器组成的一个完整业务单元。

一个项目可以由多个服务（容器）关联而成，Compose面向项目进行管理。

#### Compose clouddrive2

> mkdir /mnt/cloudnas

> sudo mount --make-shared $(df -P /mnt/cloudnas | tail -1 | awk '{ print $6 }')

> sudo docker-compose up -d

>  docker-compose.yml

```
version: "2.1"
services:
  cloudnas:
    image: cloudnas/clouddrive2
    container_name: clouddrive2
    environment:
      - TZ=Asia/Shanghai
      - CLOUDDRIVE_HOME=/Config
    volumes:
      - /mnt/cloudnas:/CloudNAS:shared
      - /mnt/cloudnas:/Config
      - /mnt/cloudnas:/media:shared #optional media path of host
    devices:
      - /dev/fuse:/dev/fuse
    restart: unless-stopped
    pid: "host"
    privileged: true
    network_mode: "host"
```

> Docker CLI
```
docker run -d \
    --name clouddrive \
    --restart unless-stopped \
    --env CLOUDDRIVE_HOME=/Config \
    -v <path to accept cloud mounts>:/CloudNAS:shared \
    -v <path to app data>:/Config \
    -v <other local shared path>:/media:shared \
    --network host \
    --pid host \
    --privileged \
    --device /dev/fuse:/dev/fuse \
    cloudnas/clouddrive2
```
> vist http://localhost:19798/

### Kubernetes（K8s）


> > Kubernetes是Google开发的开源项目，是一个容器编排系统，可以自动化部署、扩展和管理容器化的应用程序。Kubernetes可以跨多个主机管理容器，并提供自动化负载均衡、弹性伸缩、自我修复和滚动更新等功能。


> > Kubernetes的基本架构由Master和Node组成。Master是集群控制中心，负责管理集群状态、控制应用程序部署和监控应用程序状态。Node是集群的工作节点，运行应用程序容器并将它们与Master通信。

#### Kubernetes的基本概念


> > Pod：是Kubernetes的最小部署单元，通常包含一个或多个容器。Pod中的容器共享网络和存储，并在同一个主机上运行。


> > Deployment：是一种Kubernetes资源对象，用于管理Pod的副本数，并支持滚动更新。


> > Service：是一种Kubernetes资源对象，用于将一组Pod公开为一个网络服务，并提供负载均衡。


> > Namespace：是一种Kubernetes资源对象，用于隔离不同应用程序或团队的资源。


> > ConfigMap：是一种Kubernetes资源对象，用于将应用程序配置信息与容器分离。


> > Secret：是一种Kubernetes资源对象，用于存储敏感信息，如密码和API密钥。

#### Kuberntes本地部署

> Kubernetes有多种安装方式：minikube、kubeadm和二进制包。


> > minikube：是一种在本地环境中部署Kubernetes的工具，它可以在单个虚拟机中运行一个Kubernetes集群，一般用于开发、测试环境搭建。


> > microk8s：MicroK8s 是 CNCF 认证的 Kubernetes 发行版，由 Ubuntu 背后的商业公司 Canonical 开发和维护。它和完整版的 Kubernetes 一样支持高可用特性（HA），支持快速组建 K8s 集群。适合用于边缘计算、IoT、以及使用 KubeFlow 的 MLOps 机器学习场景。

当然，也适合用于开发者本地环境，以轻量的资源消耗、简单的运维成本获得几乎完整的 Kubernetes 生态体验。本篇文章，我们来聊聊如何通过它来快速组建一个本地集群。


> > kubeadm：是一种在物理机或虚拟机中快速部署Kubernetes集群的工具，已被证明可以应用于生成环境的集群搭建。


> > 二进制包：手工安装，流程复杂，容易出错，不建议。

## OP Armbian 中的docker

### Armbina安装Docker 

> armbian安装docker非常简单 执行 armbian-docker选择安装源既可，然后就是漫长的等待

```
root@armbian:~# armbian-docker
[ INFO ] Welcome to the docker management tool.
[ STEPS ] Initialize the docker installation environment...
[ INFO ] VERSION_CODEID: [ ubuntu ]
[ INFO ] VERSION_CODENAME: [ jammy ]
[ STEPS ] Start selecting docker source...
-----------------------------------------------
ID  SOURCE
-----------------------------------------------
1   docker.com (default)
2   aliyun.com
3   ustc.edu.cn
4   tencent.com
-----------------------------------------------
```

> 我选择用力阿里的源因此直接输入2

```
[ OPTIONS ] Please Input ID: 2
Get:1 http://ports.ubuntu.com jammy InRelease [270 kB]
Get:2 http://ports.ubuntu.com jammy-security InRelease [110 kB]
Get:3 http://ports.ubuntu.com jammy-updates InRelease [114 kB]
Get:4 http://ports.ubuntu.com jammy-backports InRelease [99.8 kB]
Get:5 http://ports.ubuntu.com jammy/restricted arm64 Packages [24.2 kB]
Get:6 http://ports.ubuntu.com jammy/universe arm64 Packages [17.2 MB]
Get:7 http://ports.ubuntu.com jammy/multiverse armhf Packages [199 kB]
Get:8 http://ports.ubuntu.com jammy/main arm64 Packages [1,758 kB]
Get:9 http://ports.ubuntu.com jammy/multiverse arm64 Packages [224 kB]
Get:10 http://ports.ubuntu.com jammy/restricted armhf Packages [13.3 kB]
Get:11 http://ports.ubuntu.com jammy/universe armhf Packages [16.8 MB]
Get:12 http://ports.ubuntu.com jammy/main armhf Packages [1,701 kB]
Get:13 http://ports.ubuntu.com jammy-security/multiverse armhf Packages [594 B]
Get:14 http://ports.ubuntu.com jammy-security/main arm64 Packages [634 kB]
Get:15 http://ports.ubuntu.com jammy-security/restricted arm64 Packages [282 kB]
Get:16 http://ports.ubuntu.com jammy-security/universe arm64 Packages [653 kB]
Get:17 http://ports.ubuntu.com jammy-security/universe armhf Packages [491 kB]
Get:18 http://ports.ubuntu.com jammy-security/restricted armhf Packages [9,804 B]
Get:19 http://ports.ubuntu.com jammy-security/main armhf Packages [414 kB]
Get:20 http://ports.ubuntu.com jammy-updates/main arm64 Packages [937 kB]
Get:21 http://ports.ubuntu.com jammy-updates/restricted arm64 Packages [295 kB]
Get:22 http://ports.ubuntu.com jammy-updates/universe arm64 Packages [852 kB]
Get:23 http://ports.ubuntu.com jammy-updates/universe armhf Packages [690 kB]
Get:24 http://ports.ubuntu.com jammy-updates/main armhf Packages [693 kB]
Get:25 http://ports.ubuntu.com jammy-updates/restricted armhf Packages [10.2 kB]
Get:26 http://ports.ubuntu.com jammy-updates/multiverse arm64 Packages [3,452 B]
Get:27 http://ports.ubuntu.com jammy-updates/multiverse armhf Packages [1,333 B]
Get:28 http://ports.ubuntu.com jammy-backports/main armhf Packages [3,503 B]
Get:29 http://ports.ubuntu.com jammy-backports/universe arm64 Packages [7,297 B]
Get:30 http://ports.ubuntu.com jammy-backports/main arm64 Packages [3,511 B]
Get:31 http://ports.ubuntu.com jammy-backports/universe armhf Packages [7,289 B]
Fetched 44.5 MB in 2min 2s (366 kB/s)
Reading package lists... Done
Reading package lists... Done
Building dependency tree... Done
E: Unable to locate package docker-engine
Reading package lists... Done
Building dependency tree... Done
lsb-release is already the newest version (11.1.0ubuntu4).
ca-certificates is already the newest version (20211016ubuntu0.22.04.1).
gnupg is already the newest version (2.2.27-3ubuntu2.1).
The following additional packages will be installed:
  libcurl4
The following NEW packages will be installed:
  apt-transport-https
The following packages will be upgraded:
  curl libcurl4
2 upgraded, 1 newly installed, 0 to remove and 15 not upgraded.
Need to get 475 kB of archives.
After this operation, 169 kB of additional disk space will be used.
Get:1 http://ports.ubuntu.com jammy-updates/universe arm64 apt-transport-https all 2.4.8 [1,506 B]
Get:2 http://ports.ubuntu.com jammy-security/main arm64 curl arm64 7.81.0-1ubuntu1.7 [190 kB]
Get:3 http://ports.ubuntu.com jammy-security/main arm64 libcurl4 arm64 7.81.0-1ubuntu1.7 [284 kB]
Fetched 475 kB in 7s (68.1 kB/s)
Selecting previously unselected package apt-transport-https.
(Reading database ... 37403 files and directories currently installed.)
Preparing to unpack .../apt-transport-https_2.4.8_all.deb ...
Unpacking apt-transport-https (2.4.8) ...
Preparing to unpack .../curl_7.81.0-1ubuntu1.7_arm64.deb ...
Unpacking curl (7.81.0-1ubuntu1.7) over (7.81.0-1ubuntu1.6) ...
Preparing to unpack .../libcurl4_7.81.0-1ubuntu1.7_arm64.deb ...
Unpacking libcurl4:arm64 (7.81.0-1ubuntu1.7) over (7.81.0-1ubuntu1.6) ...
Setting up apt-transport-https (2.4.8) ...
Setting up libcurl4:arm64 (7.81.0-1ubuntu1.7) ...
Setting up curl (7.81.0-1ubuntu1.7) ...
Processing triggers for man-db (2.10.2-1) ...
Processing triggers for libc-bin (2.35-0ubuntu3.1) ...
[ STEPS ] Install docker related packages...
Get:1 https://mirrors.aliyun.com/docker-ce/linux/ubuntu jammy InRelease [48.9 kB]
Hit:2 http://ports.ubuntu.com jammy InRelease
Get:3 https://mirrors.aliyun.com/docker-ce/linux/ubuntu jammy/stable arm64 Packages [11.4 kB]
Hit:4 http://ports.ubuntu.com jammy-security InRelease
Hit:5 http://ports.ubuntu.com jammy-updates InRelease
Hit:6 http://ports.ubuntu.com jammy-backports InRelease
Fetched 60.2 kB in 3s (18.5 kB/s)
Reading package lists... Done
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Suggested packages:
  cgroupfs-mount | cgroup-lite
Recommended packages:
  apparmor docker-ce-rootless-extras libltdl7 pigz
The following NEW packages will be installed:
  containerd.io docker-ce docker-ce-cli docker-compose-plugin
0 upgraded, 4 newly installed, 0 to remove and 15 not upgraded.
Need to get 78.1 MB of archives.
After this operation, 345 MB of additional disk space will be used.
Get:1 https://mirrors.aliyun.com/docker-ce/linux/ubuntu jammy/stable arm64 containerd.io arm64 1.6.15-1 [19.9 MB]
Get:2 https://mirrors.aliyun.com/docker-ce/linux/ubuntu jammy/stable arm64 docker-ce-cli arm64 5:20.10.22~3-0~ubuntu-jammy [37.2 MB]
35% [2 docker-ce-cli 9,702 kB/37.2 MB 26%]                    121 kB/s 6min 40s^36% [2 docker-ce-cli 9,939 kB/37.2 MB 27%]                    121 kB/s 6min 38s^Get:3 https://mirrors.aliyun.com/docker-ce/linux/ubuntu jammy/stable arm64 docker-ce arm64 5:20.10.22~3-0~ubuntu-jammy [12.7 MB]
Get:4 https://mirrors.aliyun.com/docker-ce/linux/ubuntu jammy/stable arm64 docker-compose-plugin arm64 2.14.1~ubuntu-jammy [8,182 kB]
Fetched 78.1 MB in 10min 6s (129 kB/s)
Selecting previously unselected package containerd.io.
(Reading database ... 37407 files and directories currently installed.)
Preparing to unpack .../containerd.io_1.6.15-1_arm64.deb ...
Unpacking containerd.io (1.6.15-1) ...
Selecting previously unselected package docker-ce-cli.
Preparing to unpack .../docker-ce-cli_5%3a20.10.22~3-0~ubuntu-jammy_arm64.deb ...
Unpacking docker-ce-cli (5:20.10.22~3-0~ubuntu-jammy) ...
Selecting previously unselected package docker-ce.
Preparing to unpack .../docker-ce_5%3a20.10.22~3-0~ubuntu-jammy_arm64.deb ...
Unpacking docker-ce (5:20.10.22~3-0~ubuntu-jammy) ...
Selecting previously unselected package docker-compose-plugin.
Preparing to unpack .../docker-compose-plugin_2.14.1~ubuntu-jammy_arm64.deb ...
Unpacking docker-compose-plugin (2.14.1~ubuntu-jammy) ...
Setting up containerd.io (1.6.15-1) ...
Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /lib/systemd/system/containerd.service.
Setting up docker-compose-plugin (2.14.1~ubuntu-jammy) ...
Setting up docker-ce-cli (5:20.10.22~3-0~ubuntu-jammy) ...
Setting up docker-ce (5:20.10.22~3-0~ubuntu-jammy) ...
Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /lib/systemd/system/docker.service.
Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /lib/systemd/system/docker.socket.
Processing triggers for man-db (2.10.2-1) ...
[ STEPS ] Install docker accelerator...
[ SUCCESS ] Docker installed successfully.
```


### OP安装Docker 

> 在openwrt中挂载一个 /opt 分区作为储存Docker数据分区；

> 重启openwrt reboot 。

> 手动更新软件包 opkg update ；

> 手动安装Docker opkg install docker ，opkg install dockerd ；

> 手动启动运行Docker /etc/init.d/dockerd start ；

> 设置自启动，通过 ssh 输入 ln -s /etc/init.d/dockerd /etc/rc.d/S100docker 。

### 启动重启后启动所有docker 容器

> 在系统启动项中加入以下脚本：

```
mount --make-shared /
docker start $(docker ps -a | awk '{ print $1 }' | tail -n +2)
```

### CloudDrive

> 这个版本有时候会被阿里之类的厂家封杀，因此有时候不能正常看视频，这时候可以试下unstable版本，但是却不稳定

> Docker pull  clouddrive

> https://registry.hub.docker.com/r/cloudnas/clouddrive/tags

> arm32: docker pull cloudnas/clouddrive:arm32

> arm: docker pull cloudnas/clouddrive:arm64

> x86：docker pull cloudnas/clouddrive:amd64

### Run 

```
docker run -d --name clouddrive --restart unless-stopped -v /opt/CloudNAS:/CloudNAS:shared -v /opt/CloudNAS/Config:/Config -p 9798:9798 --privileged --device /dev/fuse:/dev/fuse cloudnas/clouddrive

root@OpenWrt:~# docker run -d --name clouddrive --restart unless-stopped -v /opt/CloudNAS:/CloudNAS:shared -v /opt/CloudNAS/Config:/Config -p 9798:9798 --privileged --device /dev/fuse:/dev/fuse cloudnas/clouddrive
74860fdddf7fcd95a33325750a9ee7a95836080d7abd25951458ad4848bcb9ca
docker: Error response from daemon: path /opt/CloudNAS is mounted on / but it is not a shared mount.
root@OpenWrt:~#  Error response from daemon: path /opt/CloudNAS is mounted on / but it is not a shared mount.

docker run -d \
--name clouddrive \
--restart unless-stopped \
-v /storage/Clouddrive:/CloudNAS:shared \
-v /storage/Clouddrive/Config:/Config \
--network host \
--pid host \
--privileged \
--device /dev/fuse:/dev/fuse \
cloudnas/clouddrive

mount --make-shared /
mount --make-shared /Clouddrive


docker run -d \
--name clouddrive \
--restart unless-stopped \
-v /opt/Clouddrive:/CloudNAS:shared \
-v /opt/Clouddrive/Config:/Config \
--network host \
--pid host \
--privileged \
--device /dev/fuse:/dev/fuse \
cloudnas/clouddrive

```

> 有时候运行clouddrive容器会出现挂载私有问题 需要执行

```
mount --make-shared /
```

> 内核版本有问题出现过错误

```
24f9eb7da835: Extracting  14.97MB/14.97MB
CloudDrive failed to register layer: operation not supported
```

### 启动重启后启动所有docker 容器

> 在系统启动项中加入以下脚本：

```
mount --make-shared /
docker start $(docker ps -a | awk '{ print $1 }' | tail -n +2)
```


### 配置 smaba

> /etc/samba/smb.conf

```
[CloudDrive]

  path = /storage/Clouddrive/CloudDrive/

  available = yes

  browseable = yes

  public = yes

  writeable = yes

24f9eb7da835: Extracting  14.97MB/14.97MB

CloudDrive failed to register layer: operation not supported
```

### cloudnas/clouddrive2-unstable

> docker pull cloudnas/clouddrive2-unstable

```
docker run -d \
--name clouddrive2-unstable \
--restart unless-stopped \
-v /opt/Clouddrive:/CloudNAS:shared \
-v /opt/Clouddrive/Config:/Config \
--network host \
--pid host \
--privileged \
--device /dev/fuse:/dev/fuse \
cloudnas/clouddrive2-unstable
```

> Then access 19798 port such as http://localhost:19798/
