---
layout: post
title: Armbian与Openwrt等嵌入式系统
description: Arm架构的Armbian，Openwrt，Cloreelec等机顶盒路由器刷机研究
date: 2023-01-02 15:43:01
updatedate: 2023-10-31 16:26:01
---

- [嵌入式操作系统基础](#嵌入式操作系统基础)
  - [Uboot](#uboot)
  - [rootfs](#rootfs)
  - [kernel](#kernel)
  - [Busybox](#busybox)
- [Openwrt相关](#openwrt相关)
  - [软件源](#软件源)
    - [阿里](#阿里)
    - [官方](#官方)
  - [系统存储控件的扩容](#系统存储控件的扩容)
    - [安装 工具](#安装-工具)
    - [cfdisk 划分空间](#cfdisk-划分空间)
    - [执行扩容脚本](#执行扩容脚本)
    - [使用外置硬盘](#使用外置硬盘)
  - [配置 AdguardHome 广告拦截插件](#配置-adguardhome-广告拦截插件)
- [咪咕MGV3000研究](#咪咕mgv3000研究)
  - [刷机教程：](#刷机教程)
  - [固件下载链接：](#固件下载链接)
  - [DiskInitial命令出错 问题解决](#diskinitial命令出错-问题解决)
  - [hdmi短接器厂家给的意见](#hdmi短接器厂家给的意见)
- [咪咕MGV3200研究 GK6323芯片](#咪咕mgv3200研究-gk6323芯片)
  - [ADB 卡刷](#adb-卡刷)
  - [通过ADB修改DNS](#通过adb修改dns)
- [Root android 9](#root-android-9)
  - [Root Android 9.0 via Magisk](#root-android-90-via-magisk)
  - [Root Android 9.0 via Magisk Manager](#root-android-90-via-magisk-manager)
  - [Root Android 9.0 via SuperSU](#root-android-90-via-supersu)
  - [Root Android 9.0 via KingoRoot](#root-android-90-via-kingoroot)
    - [Android App](#android-app)
    - [Windows Application](#windows-application)
- [网心云 OneCloud 研究Openwrt研究](#网心云-onecloud-研究openwrt研究)
  - [目前概述](#目前概述)
  - [未测试的方法](#未测试的方法)
- [魔百盒M401a玩转Coreelec](#魔百盒m401a玩转coreelec)
  - [下载写镜像改dub.img](#下载写镜像改dubimg)
  - [U盘启动](#u盘启动)
  - [写入emmc](#写入emmc)
  - [使用docket加载天翼网盘 阿里云盘](#使用docket加载天翼网盘-阿里云盘)
    - [安装docker](#安装docker)
    - [设置SMB共享](#设置smb共享)
    - [CoreELEC的缓存设置](#coreelec的缓存设置)
    - [启动 clouddrive](#启动-clouddrive)
  - [samba4 共享文件不能访问问题](#samba4-共享文件不能访问问题)
  - [蓝牙遥控](#蓝牙遥控)
    - [mbh文件](#mbh文件)
    - [rc\_maps\_cfg文件添加行](#rc_maps_cfg文件添加行)
  - [蓝牙遥控确认键问题](#蓝牙遥控确认键问题)
  - [蓝牙重启后失效](#蓝牙重启后失效)
    - [reinstalled both TVheadend and all OK](#reinstalled-both-tvheadend-and-all-ok)
    - [See below](#see-below)
  - [蓝牙遥控启动](#蓝牙遥控启动)
  - [直播源配置](#直播源配置)
- [M401a刷Armbian进Emmc](#m401a刷armbian进emmc)
  - [下载Armbian S905L3a镜像](#下载armbian-s905l3a镜像)
  - [U盘启动](#u盘启动-1)
  - [SSH连接系统并执行重启](#ssh连接系统并执行重启)
- [魔百盒M401A刷Openwrt](#魔百盒m401a刷openwrt)
  - [下载rom](#下载rom)
  - [使用balenaEtcher 把上面得Image 文件写入U盘](#使用balenaetcher-把上面得image-文件写入u盘)
  - [重新插入u盘修改](#重新插入u盘修改)
  - [打开盒子链接到网络。开启盒子得ADB](#打开盒子链接到网络开启盒子得adb)
  - [从U盘启动 Openwrt](#从u盘启动-openwrt)
  - [连接u盘系统。](#连接u盘系统)
  - [写入 emmc](#写入-emmc)
  - [然后自己随心所欲玩吧，玩法太多了](#然后自己随心所欲玩吧玩法太多了)
- [斐讯K2刷Breed和潘多拉固件记录](#斐讯k2刷breed和潘多拉固件记录)
- [F1 RK3399 研究](#f1-rk3399-研究)
  - [RK刷机基础](#rk刷机基础)
  - [Fastboot 解锁](#fastboot-解锁)
  - [外网有人解决 不知道适用不](#外网有人解决-不知道适用不)
  - [maskrom xrock](#maskrom-xrock)
  - [【官方开发文档】RK3399 Efuse 操作指南](#官方开发文档rk3399-efuse-操作指南)
- [ZN-M2 IPQ60xx系列路由器](#zn-m2-ipq60xx系列路由器)
  - [09-18](#09-18)
  - [09-18](#09-18-1)
- [SQUASHFS镜像直接扩容的方案](#squashfs镜像直接扩容的方案)
- [中兴F4610U 光猫](#中兴f4610u-光猫)
  - [Telnet命令](#telnet命令)
  - [中兴光猫隐藏URL](#中兴光猫隐藏url)
  - [全部是个人尝试切换地区后读取转载请备注出处](#全部是个人尝试切换地区后读取转载请备注出处)
  - [陕西西安联通手动更换升级光猫](#陕西西安联通手动更换升级光猫)
- [LINKSYS EA8500 TTL 降级](#linksys-ea8500-ttl-降级)
  - [备份系统信息](#备份系统信息)
- [IPQ5018 Openwrt TTL NOTEST](#ipq5018-openwrt-ttl-notest)
- [OneCloud](#onecloud)
  - [DD](#dd)
  - [Packrepack](#packrepack)
  - [portainer](#portainer)
  - [clouddriver](#clouddriver)

## Openwrt相关

### 软件源

> （23.03.3X86 要注意版本和处理器架构，不然可能会出现不兼容的问题）

> 从官方软件园下载相关.img文件,一定要注意平台架构。

> 启动WinPE，用DiskGenius删除索要安装硬盘的所有分区，确定。不要进行分区操作。

> 下载physdiskwrite和img文件放在一个目录下，然后cmd进入相关目录，执行 physdiskwrite -u xxx.img。 然后按需输入磁盘号和输入yes 。

> 完毕后重启，硬盘引导即可进入系统进行相关配置。

#### 阿里 

> （似乎缺少一些系统工具，例如block-mount ）

```
src/gz ali_core https://mirrors.aliyun.com/openwrt/releases/22.03.3/targets/x86/64/packages

src/gz ali_base https://mirrors.aliyun.com/openwrt/releases/22.03.3/packages/x86_64/base

src/gz ali_luci https://mirrors.aliyun.com/openwrt/releases/22.03.3/packages/x86_64/luci

src/gz ali_packages https://mirrors.aliyun.com/openwrt/releases/22.03.3/packages/x86_64/packages

src/gz ali_routing https://mirrors.aliyun.com/openwrt/releases/22.03.3/packages/x86_64/routing

src/gz ali_telephony https://mirrors.aliyun.com/openwrt/releases/22.03.3/packages/x86_64/telephony
```

#### 官方

> 速度比较慢，尤其是安装大点的软件更慢，建议国内软件园没有相关软件时切换到官方软件源，否则就不要使用官方软件源。

```
src/gz openwrt_core https://downloads.openwrt.org/releases/22.03.3/packages/x86_64/packages

src/gz openwrt_base https://downloads.openwrt.org/releases/22.03.3/packages/x86_64/base

src/gz openwrt_luci https://downloads.openwrt.org/releases/22.03.3/packages/x86_64/luci

src/gz openwrt_packages https://downloads.openwrt.org/releases/22.03.3/packages/x86_64/packages

src/gz openwrt_routing https://downloads.openwrt.org/releases/22.03.3/packages/x86_64/routing

src/gz openwrt_telephony https://downloads.openwrt.org/releases/22.03.3/packages/x86_64/telephony
```

### 系统存储控件的扩容

> （使用系统剩余未分区空间）

#### 安装 工具

> opkg update

> opkg install cfdisk fdisk e2fsprogs

> opkg install block-mount 官方的Openwrt默认不带这个

#### cfdisk 划分空间

> 执行运行 cfdisk 进行磁盘花粉，把剩余磁盘化分完整 比如我直接划分剩余空间为/dev/sda3 ，类型为Primary

> fdisk -l 可以检查是否划分成功

> mkfs.ext4 /dev/sda3 具体按你的分区

> block-mount 挂载 /sda3 作为根文件系统使用。 Save and Apply

#### 执行扩容脚本

> （block-mount挂在后又提示 mount /dev/sda3 /tmp/extroot这句种的设备改成你的就好了）

```
mkdir -p /tmp/introot
mkdir -p /tmp/extroot
mount --bind / /tmp/introot
mount /dev/sda3 /tmp/extroot
tar -C /tmp/introot -cvf - . | tar -C /tmp/extroot -xf -
umount /tmp/introot
umount /tmp/extroot
reboot
```

#### 使用外置硬盘

> 跟这个过程一致只是你挂在的事另一块而已，注意设别名称即可

### 配置 AdguardHome 广告拦截插件

> Adguardhome是非常好的一款广告拦截软件。其原理就是对广告请求的dns进行拦截，当然了其功能十分强大，还需继续研究。这里只从简单的那幢说起。

> 安装  luci-app-adguardhome

> 更新核心 这里记住不需要单独去安装adguardhome更新核心后会自动安装。

> AdGuardHome 未运行未重定向 这时候在后台ssh执行

```
chmod 755 /etc/init.d/AdGuardHome
service AdGuardHome restart
```

> AdGuardHome 运行中未重定向 核心版本:v0.102.0 没有配置文件no core没有核心

```
这时候登录http://192.168.2.1:3000/install.html进行配置既可。，注意ip改成你自己的ip。
网页端口改 所有3000
dns服务 所有55你也可以自己改 默认的53端口已经被占用
```

> 配置成功后会有如下提示:

```
配置您的设备
为保证 AdGuard Home 可以开始正常工作，您需要在设备上对其进行配置。
AdGuard Home DNS 服务器正在监听以下地址:
127.0.0.1:55
192.168.0.50:55
192.168.2.1:55
[::1]:55
[fdad:ca6e:cd0b::1]:55


恭喜
AdGuardHome 运行中已重定向
```

> 这时候在openwrt后台查看 AdGuardHome 已经正常运行了。

## 咪咕MGV3000研究

> 暫時沒有找到開啓ADB的方法

> https://www.znds.com/tv-1222451-1-1.html

> 江苏咪咕电视盒子刷机这个教程大家都比较需要，本次楼主带来了江苏咪咕MGV3000_YST代工_S905L3_线刷固件包，文中附固件下载链接，有需要的千万不要错过了。

### 刷机教程：

> 1、准备好一根双公头USB线刷刷机线，长度30-50CM长度最佳，同时准备一台电脑，拆开盒子；

> 2、电脑上安装好刷机工具Amlogic USB Burning Tool v2.1.6软件→打开软件→文件→导入烧录包→把【擦除flash】和【擦除bootloader】两项勾选→点击【开始】；

> 3、盒子接电源线→电源关闭→把USB线一端插上盒子→保持短接→USB另一端插上电脑→通电开机。

> 就可以看到进度条在跑了（此时松开短接），耐心等待进度条跑完；等待提示成功字样后，关闭电源，拔掉刷机线，把机顶盒接上电视机，通电开机，首次开机稍微会有点慢，耐心等待初始化完成即可。

> 江苏咪咕MGV3000_YST代工_S905L3_线刷固件包

### 固件下载链接：

> 链接: https://pan.baidu.com/s/104NHWG0t_33yjy3FCSg78Q 提取码:imuq

> MGV3000_CJZM_线刷.img.zip 已经转存

> https://www.znds.com/tv-1222182-1-1.html

> 其它固件大全 https://www.znds.com/tv-1181374-1-1.html

### DiskInitial命令出错 问题解决

> 方法1(无效)： 打开烧录软件；2、导入烧录包；3、去掉“擦除”两个对号，4、点击开始。5、机顶盒连接电源；6、机顶盒连接双公头USB；7、（最关键）立即使用牙签等按住机顶盒复位按钮（不同机顶盒复位按钮位置不一样，大多在AV孔内），中途不能松手，直至刷机完

> 方法2(未试)： 7%有个办法，就是 先打开软件，短接识别盒子，然后在选择刷机包，点开始，松开短接，有一定几率过7%

> 方法3(未试)： 刷YS（M）的包，可能之前的故件是错的


> 以下方法都未试：

```
第一种方法：先短接，再连数据线，让刷机软件能识别，，松开短接，选好固件，开刷。
第二种方法：先短接，再连数据线，让刷机软件能识别，，松开短接，选好固件，开刷。出现错误，再短接，拔出电脑端，usb线口再插上。电脑会显示刷机，就松开短接。

第三种方法：先短接，再连数据线，让刷机软件能识别，，不松开短接，选好固件，开刷。
第四种方法：先短接，再连数据线，让刷机软件能识别，，不松开短接，选好固件，开刷。出现错误，拔出电脑端，usb线口再插上。电脑会显示刷机，就松开短接。
```


### hdmi短接器厂家给的意见

刷机百分几错程原因1
首先说明：连接成功后，刷机时出现的错程和短接没任何关系
1：固件不对应型号或对应代工厂版本
2：刷机软件版本不对应，28NM S905用2.2之前版本，12NM S905L3A用2.2版本，不要使用过老或过新版本
3：刷机线不是USB2.0多股铜也会不识别，刷机线不能用USB3.0。3.0都会弱化2.0，也不能使用过长的线，线过长会不稳定

刷机百分几错程原因2
4：主机使用前面的USB口因为供电不足，要使用后面USB口，有USB2.0就尽量使用2.0，没有就用原生3.0，非原生3.0也不稳定
5: 盒子一定要接电源，不接电源能识别，但刷写过程容易出错误

## 咪咕MGV3200研究 GK6323芯片

> 目前已测试 完整的破解模式 无需刷机

> > 在MGV3200上启用ADB 或者叫USB调试

> > 接USB键盘鼠标，等到机顶盒启动后连续F2 F3交替按 很快就会进入安卓本上的launcher 典籍打开全部应用 可以看到一个 AdbConsole。进去后点击打开既可。

> > 或者MGV3200自带的两个设置程序里边也有，可以进去找找，具体记得不清了。


>  使用 ADB 卸载和安装程序，adb程序自己在网上下载，非常多。

> > ADB链接，MGV3200连网线的情况下，去路由器找到机顶盒的IP 比如我的是192.168.0.174

> > 首先 执行 cd命令进入你的adb.exe所在的目录下。

> > 那么连接就是 adb connect 192.168.0.174 正常链接后会有提示：connected to 192.168.0.174:5555，这时候就可以进行卸载了。

```
C:\ADB>adb connect 192.168.0.174
```

> 我的卸载列表如下（可以执行 adb shell pm list packages查看当前系统中有哪些程序），照着一行一行执行既可，有些可能你的机子不一定有：

```
adb shell pm uninstall -k --user 0 com.cmcc.dlna
adb shell pm uninstall -k --user 0 package:com.cmcc.mid.softdetector
adb shell pm uninstall -k --user 0 com.yst.whitebox
adb shell pm uninstall -k --user 0 com.chinamobile.middleware.auth
adb shell pm uninstall -k --user 0 com.huawei.oot.order
adb shell pm uninstall -k --user 0 com.istv.appstore
adb shell pm uninstall -k --user 0 com.android.chinamobile.zj.ott.adpro
adb shell pm uninstall -k --user 0 com.um.tvlauncher
adb shell pm uninstall -k --user 0 com.cmcc.mid.softdetector
adb shell pm uninstall -k --user 0 com.homecdn.pservice
adb shell pm uninstall -k --user 0 com.komect.video.plive
adb shell pm uninstall -k --user 0 com.huawei.iptv.myapp
adb shell pm uninstall -k --user 0 com.um.tvlauncher
```

> 卸载成功后均有 Success 的提示消息

> 安装程序，讲apk安装包提前下载好放到adb目录下，然后执行类似下列的命令，apk名称替换为你的：

```
C:\ADB>adb install dangbeimarket_4.4.0_288_znds.apk
C:\ADB>adb shell install dbzm_4.1.6_dangbei.apk
C:\ADB>adb sinstall dbzm_4.1.6_dangbei.apk
C:\ADB>adb install dbzm_4.1.6_dangbei.apk
```
> 安装成功后均有 Success 的提示消息

> ADB的配置 查看IP，首先在系统中进入adb shell ping ip地址是可以的，但是ping域名不通，显然是运营商动了手脚，这时候我们就需要破解dns，也是很简单的

> 这时候需要以root执行 因此需要执行 adb root，正常情况下返回空行: 

```
C:\ADB>adb root
```

然后进入shell 模式

```
C:\ADB>adb shell
```

> 这时候如果你的机器显示 GK6323V100C:/ # 那说明你已经以root方式进入了shell。这时候我们执行getprop |grep dns 会得到以下输出：

```
GK6323V100C:/ # getprop |grep dns
[dhclient.eth0.dns1]: [fdad:ca6e:cd0b::1]
[net.dns1]: [2409:8028:2000::2222]
[net.dns2]: [2409:8028:2000::1111]
[net.dns3]: [211.140.13.188]
[net.dns4]: [211.140.188.188]
```

> 很显然net.dns3 和net.dns4 被运营商绑定成他们自己了，比如我这个是移动，我联通的宽带自然就不行了。因此我需要修改 net.dns3 net.dns4 ,命令如下：

```
GK6323V100C:/ # setprop net.dns3 192.168.0.1
GK6323V100C:/ # setprop net.dns4 8.8.8.8
```

> 正常也不会有提示 ，这时候我们Ping一个域名发现就可以ping通了。

```
GK6323V100C:/ # ping www.baidu.com
PING www.a.shifen.com (110.242.68.4) 56(84) bytes of data.
64 bytes from 110.242.68.4: icmp_seq=1 ttl=53 time=26.2 ms
64 bytes from 110.242.68.4: icmp_seq=2 ttl=53 time=26.3 ms
64 bytes from 110.242.68.4: icmp_seq=3 ttl=53 time=26.0 ms
64 bytes from 110.242.68.4: icmp_seq=4 ttl=53 time=26.0 ms
64 bytes from 110.242.68.4: icmp_seq=5 ttl=53 time=26.1 ms
64 bytes from 110.242.68.4: icmp_seq=6 ttl=53 time=25.9 ms
64 bytes from 110.242.68.4: icmp_seq=7 ttl=53 time=26.1 ms
64 bytes from 110.242.68.4: icmp_seq=8 ttl=53 time=26.1 ms
^C
--- www.a.shifen.com ping statistics ---
8 packets transmitted, 8 received, 0% packet loss, time 7008ms
rtt min/avg/max/mdev = 25.922/26.125/26.316/0.118 ms
```

> 然后执行reboot重启机顶盒：

```
127|GK6323V100C:/ # reboot
```

> 过一阵去看你的机顶盒已经可以正常上网，里边的各种app网络访问也正常了，这时候你的机顶盒已经成全网通的了。

> 当然这时候你得手动设置默认桌面，在系统 应用管理中 找到默认应用  进去设置默认启动器既可。

> 注意，这种方式如果你还原了系统，那么就得重新再这么配置一次了，不过你要熟悉了整个过程也是很简单。

### ADB 卡刷

> 可以卡刷 403G 固件九联unt403G机顶盒6323处理器刷机教程；

九联unt403G机顶盒6323处理器刷机教程；

下载固件之前请先确认您的盒子是否能正常打开adb功能；

打开方法：点此查看；能正常打开就接着往下看，打不开的

请联系本站的在线客服求助；

优盘1个别大于8G最佳，将其格式化为fat32格式备好；

如您没合适的优盘可点此处到麒麟商城下单1个专用优盘；

点此下载专用解压工具安装至电脑；

刷机固件：请点击最上面的固件下载按钮获取固件并下载解压备好；

将机顶盒的网线插到路由器上，不要插到猫的iptv口；

将固件内update.zip、YueMe_BOX文件夹一同拷贝到U盘根目录；

然后电脑上运行固件包里的***rec.exe程序，见下图

adb.jpg

然后输入机顶盒网络里的ip地址 然后回车键

（可根据程序内的提示进行操作）；

然后将复制号文件的U盘插机顶盒，盒子会自动复制文件并刷机；
刷机完成后盒子会自动重启，优化系统程序完成启动到主界面会自动安装应用市场，
自己手上有什么好用的电视app可以放在优盘的YueMe_BOX文件夹
插入优盘开机后系统会自动帮你安装好；


### 通过ADB修改DNS

> adb connect 192.168.0.222

> adb root

>  有时候会输出restarting adbd as rooting

> adb root 有时会输出 restarting adbd as root，有的时候什么也没有提示，这个时候通过adb shell进入shell命令行，查看命令提示符是否变成#

> 有些设备root后也无法通过adb root命令让adbd以root权限执行，adb root会输出adbd cannot run as root in production builds，此时可以先安装adbd insecure，然后再尝试

添加DNS服务器地址到盒子里，杭州电信的DNS是202.101.172.35
202.101.172.46
202.101.172.47
所在地的dns服务器地址自己查询
10.0.0.139是我路由器的IP地址
查看DNS服务器的命令是 adb shell 后
输入 getprop |grep dns
修改DNS服务器的命令是
setprop
例如：setprop net.dns3 xx.xx.xx.xx
最后修改成下面的地址就行。没改动的地址可以保留我就添加了3条，2条是电信的DNS，一条是路由器IP地址

> 恢复adbd为非root权限 命令：adb unroot


>  可以参考：https://www.yisu.com/zixun/203183.html


## Root android 9

Root Android 9.0 (Pie) Device in 2021 – A Step by Step guide
Hello guys, how you all doing? Bought a new android phone and that too has the latest Pie version? I know that you can’t live without rooting your phone and gaining superuser access to it.

And since rooting Android Pie is a tough task so we have come up with some tricks to root Android 9.0 Pie. Yes in this article we will tell you 3 ways to root Android Pie 9.0 using SuperSU, Magisk, and Kingo Root easily in 2021.

Contents  hide 
1 Root Android 9.0 (Pie) Device in 2021 – A Step by Step guide
2 Root Android 9.0 via Magisk
2.1 Root Android 9.0 via Magisk Manager
3 Root Android 9.0 via SuperSU
4 Root Android 9.0 via KingoRoot
4.1 Root Android 9.0 via KingoRoot Android App
4.2 Root Android 9.0 via KingoRoot Windows Application
Must Read: How to Root any Android 10 Q Device in 2021 the Easy Way?

### Root Android 9.0 via Magisk

Magisk was introduced as an alternative to SuperSU root, which was the only rooting solution at that time. SuperSU modifies system files to provide root access to Android devices. Magisk made rooting easy with systemless root. It roots the system without modifying the core code. It is a godsend for people using Financial apps on their Android device. Magisk is the latest method to root android 9 devices. It can be done through two different ways

root android 9, How to Root Any Android 9.0 Device &#8211; The Right Way


### Root Android 9.0 via Magisk Manager
First of all, download the Magisk Manager and place it in your phone’s storage. 
Download Magisk Manager
Now you have to boot your device into a custom recovery like the TWRP Recovery. If you haven’t installed one then search on Google or Youtube for proper instruction on how to install a custom recovery for your Android 9 Device.
Click on the Install button and then select the Magisk.zip file that you had already transferred to your device storage in Step 1.
Root Android 9
Root any Android 10 Device with Magisk
After you had selected the .zip file now Swipe to Confirm Flash on the bottom side of your mobile screen to start the flashing process.
Root any Android 10 Device with Magisk
Once Magisk is flashed, you’ll get the Reboot System option, select it.
After the device reboots, open a file manager application and then go to the folder where you transferred the Magisk Manager Apk file in Step 1. Install it.
root android 9, How to Root Any Android 9.0 Device &#8211; The Right Way
Open the Magisk Manager app and check your device’s root status. That’s All.
root android 9, How to Root Any Android 9.0 Device &#8211; The Right Way


### Root Android 9.0 via SuperSU

root android 9, How to Root Any Android 9.0 Device &#8211; The Right Way
First of all download the SuperSU zip file from the link given below.
Download SuperSU
Now you have to boot your device into a custom recovery like the TWRP Recovery. If you haven’t installed one then search on Google or Youtube for proper instruction on how to install a custom recovery.
Now from the Recovery Menu click on Install and select the zip file SuperSU that you have downloaded from in Step 1.
root android 9, How to Root Any Android 9.0 Device &#8211; The Right Way
root android 9, How to Root Any Android 9.0 Device &#8211; The Right Way
After you have selected the SuperSU .zip file, Swipe to Confirm Flash on the bottom of the screen to start the flashing process.
root android 9, How to Root Any Android 9.0 Device &#8211; The Right Way
After the SuperSU is flashed in your device you will get Reboot System and Wipe cache/Dalvik. Click on Wipe cache/Dalvik and then on Reboot System. On the Next Reboot, you will have full root access.
root android 9, How to Root Any Android 9.0 Device &#8211; The Right Way


### Root Android 9.0 via KingoRoot


#### Android App

> Step 1. Download the KingoRoot Apk file from the button given below:

> Step 2. Locate the downloaded file on your Android 10 smartphone and install the apk.

> Step 3. If you get “Install Blocked” message, follow these few steps:

Open Settings.
Go to Security and then to Unknown sources and enable it.
root android 9, How to Root Any Android 9.0 Device &#8211; The Right Way
root android 9, How to Root Any Android 9.0 Device &#8211; The Right Way
root android 9, How to Root Any Android 9.0 Device &#8211; The Right Way


> Step 4. Open the app and tap on “One Click Root”.

root android 9, How to Root Any Android 9.0 Device &#8211; The Right Way

> Step 5. The result will be displayed as “Success” or “Failure”.

> Step 6. If it fails, try the process again a few number of times.

#### Windows Application

> Step 1. Download the KingoRoot PC Software from the button below:

Download KingoRoot PC Software
root android 9, How to Root Any Android 9.0 Device &#8211; The Right Way

> Step 2. Install the KingoRoot PC Software downloaded above. After the installation is complete, launch the app.

> Step 3. Connect your Android device to your PC. Make sure to enable the USB Debugging on your Android device.

root android 9, How to Root Any Android 9.0 Device &#8211; The Right Way

> Step 4. Click on “Root” to begin the rooting process.

> Step 5. The result of root will be displayed when the process is complete.

Root Android 9
You can check the status of the root on your Android device. The root status should display as rooted. Check for root by downloading any root checking app from the play store.This way you can root any android 10 device

## 网心云 OneCloud 研究Openwrt研究

### 目前概述

> 目前网上的教程openwrt 18 可以顺利刷入 emmc 但是版本太老

<hr/>

###  未测试的方法

OneCloud eMMC installation script
This repository helps you with the installation of the latest Armbian image to the eMMC partition of a Xunlei OneCloud device. Tested with OneCloud hardware version v1.0.

How to use
Before you start, please make sure you have met all the following requirements:

You have installed aml_burn_tool and know how to use it.
You have flashed s805_flash_snail.img to your OneCloud device. You may download from here (PW：2091).
You have a usb2ttl converter and can get the tty output work via Putty.
Pre-steps before Image Compilation
Thanks to hzyitc, the official repository of armbian has now add support for OneCloud (see this link). You may now build the official image for OneCloud.

To make the image boot, several modifications are needed (see here):

Add boot-onecloud.cmd script at /<armbian_src>/config/bootscripts/boot-onecloud.cmd;
Modify meson_common.inc at /<armbian_src>/config/sources/families/include/meson_common.inc;
Add onecloud.txt at /<armbian_src>/config/bootenv/onecloud.txt;
Post-steps after Image Compilation
After the modification, build the image and burn the image to a USB stick with your preferred tool (e.g. rufus).

Insert the USB stick to your PC and mount the boot partition, and copy the whole folder to the boot partition. Then your file tree should look like:

|--install
|  |--mkfs
|  |  |--mkfs.fat
|  |  |--mkfs.msdoc
|  |  |--mkfs.vfat
|  |--install.sh
|  |--...
|--armbianEnv.txt
|--boot.cmd
|--boot.scr
|--...
Now your USB stick should be ready to go.

Prepare your bootloader
If you have flashed s805_flash_snail.img, then your u-boot will try to boot by locating s805_autoscript from any connected device (usb/mmc).

You may check the u-boot scripts with the following steps:

Jump into the u-boot by hitting enter after plugging the power cable.
Type print in the u-boot console.
Type the following lines one by one to make the u-boot adapt to the new boot format (lines that start with # are comments and should be ignored):

 setenv bootfromrecovery 0
 setenv bootfromnand 0

  set a script called start_mmc_autoscript, which tries to load boot.scr from mmc 0 first, if failed, then from mmc 1
 setenv start_mmc_autoscript 'if fatload mmc 0 11000000 boot.scr; then autoscr 11000000; fi; if fatload mmc 1 11000000 boot.scr; then autoscr 11000000; fi;'

 set a script called start_usb_autoscript, which tries to load boot.scr from usb 0 first, if failed, then from usb 1
 setenv start_usb_autoscript "if fatload usb 0 11000000 boot.scr; then autoscr 11000000; fi; if fatload usb 1 11000000 boot.scr; then autoscr 11000000; fi;"
 
 set a script called start_autoscript, which checks if any usb device is connected. If so, call start_usb_autoscript; otherwise, call start_mmc_autoscript
 setenv start_autoscript 'if usb start; then run start_usb_autoscript; fi; if mmcinfo 1; then run start_mmc_autoscript; fi;'

 setenv bootcmd 'run start_autoscript; run storeboot'
 setenv firstboot 1

 saveenv
Now your u-boot should be ready to go. Insert your USB stick to the OneCloud and type reset to restart. Your device should be able to boot from the USB stick. After logging, navigate to /boot/install, and run

./install.sh
You will be notified to restart when finished.

Unplug your USB stick and restart the system. Now the OS has been installed to your eMMC. Enjoy!


## 魔百盒M401a玩转Coreelec

### 下载写镜像改dub.img

> 19.5以前版本需要修改根目录下 uEnv.txt文件中得FDT 为： FDT=/dtb/amlogic/meson-g12a-s905l3a-m401a.dtb

> 20以上是从 "device_trees" 拷贝正确的dtb 文件到上级根目录并且改名为 "dtb.img".

> 版本升级会清除旧的数据，包括之前安装的Docker和其他插件都丢失了。

### U盘启动

> adb reboot update 后瞬间插入u盘

### 写入emmc

> 打开系统 ssh 功能，电脑 ssh 连接后同样使用 ceemmc -x 命令，然后按喜好设置既可 默认密码 root coreelec

### 使用docket加载天翼网盘 阿里云盘

#### 安装docker 

```
输入 docker info 确认有正常运行

输入 docker pull cloudnas/clouddrive  拉取安装文件
```

#### 设置SMB共享

```
CE设置-服务-改为SMB1

/storage/.config/samba.conf，增加以下：

[CloudDrive]

  path = /storage/Clouddrive/CloudDrive/

  available = yes

  browseable = yes

  public = yes

  writeable = yes

```

#### CoreELEC的缓存设置

> /storage/.kodi/userdata/Advancedsettings.xml 文件内容如下，2G内存的设备可以设置300M缓存

```
<advancedsettings>
  <cache>
    <buffermode>1</buffermode>
    <memorysize>314572800</memorysize>
    <readfactor>25</readfactor>
  </cache>
</advancedsettings>
```

#### 启动 clouddrive

```
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

然后就可以通过 Ip 9798端口访问 例如我的就是
http://192.168.0.179:9798/

docker rm 9cd7796a669d054f3634e8ac8427508b5e48c32094923034c3d9c0c1045246f1

docker rm  "/clouddrive"

docker  rm $(docker ps -a -q)
```

### samba4 共享文件不能访问问题

> > 1、设置共享用户密码,刚开始口令文件是不存在的，先touch，再增加一个用户，ssh输入以下命令：

> > touch /etc/samba/smbpasswd

> > smbpasswd  -a root

> 2、修改Samba模板,把字符集设置一下，启用root用户访问。

> > 在invalidusers = root前加#

> 3、重启服务等

> > service samba4 restart 

> > service samba4 stop 

> > service samba4 start

### 蓝牙遥控

#### mbh文件

```
# table mbh, type: NEC
0x22dc KEY_POWER #电源
0x22ca KEY_UP #向上
0x2299 KEY_LEFT #向左
0x22c1 KEY_RIGHT #向右
0x22d2 KEY_DOWN #向下
0x2292 KEY_1
0x2293 KEY_2
0x22cc KEY_3
0x228e KEY_4
0x228f KEY_5
0x22c8 KEY_6
0x228a KEY_7
0x228d KEY_8
0x22c4 KEY_9
0x2287 KEY_0
0x22f0 KEY_DOT #M键/点号
0x22d0 KEY_BACKSPACE #删除
0x2288 KEY_HOME #主页
0x2282 KEY_CONTEXT_MENU #菜单
0x22ce KEY_ENTER #选中/确定
0x2295 KEY_ESC #返回
0x228d KEY_CONFIG #设置
0x22da KEY_STOP #按键区的电源键
0x2281 KEY_VOLUMEDOWN #音量-
0x2280 KEY_VOLUMEUP #音量+
0x229c KEY_MUTE #静音
0x2285 KEY_PLAYPAUSE #播放停止按键区的TV/AV键
```
#### rc_maps_cfg文件添加行

···
meson-ir	*		mbh
···

### 蓝牙遥控确认键问题

```
I: Bus=0005 Vendor=0416 Product=0300 Version=0505
N: Name="CMCC_Voice_Remote"
P: Phys=12:00:00:a8:e5:10
S: Sysfs=/devices/virtual/misc/uhid/0005:0416:0300.0003/input/input7
U: Uniq=0c:f3:cc:31:2d:e9
H: Handlers=sysrq kbd leds mouse1 event6
B: PROP=0
B: EV=12001f
B: KEY=3007f 0 0 0 0 483ffff 17aff32d bf544446 0 0 70001 130ff3 8b17c007 ffff7bfa d9415fff febeffdf ffefffff ffffffff fffffffe
B: REL=143
B: ABS=1 0
B: MSC=10
B: LED=1f
```

```
systemctl stop kodi
systemctl stop eventlircd
evtest /dev/input/event6(需要安装 system tools 插件)

Event: time 1673748252.082007, type 20 (EV_REP), code 0 (REP_DELAY), value 500
Event: time 1673748252.082007, type 4 (EV_MSC), code 4 (MSC_SCAN), value 70066
Event: time 1673748252.082007, type 1 (EV_KEY), code 116 (KEY_POWER), value 1
Event: time 1673748252.082007, -------------- SYN_REPORT ------------
Event: time 1673748252.281985, type 4 (EV_MSC), code 4 (MSC_SCAN), value 70066
Event: time 1673748252.281985, type 1 (EV_KEY), code 116 (KEY_POWER), value 0
Event: time 1673748252.281985, -------------- SYN_REPORT ------------
Event: time 1673748307.050762, type 4 (EV_MSC), code 4 (MSC_SCAN), value c0041
Event: time 1673748307.050762, type 1 (EV_KEY), code 353 (KEY_SELECT), value 1
Event: time 1673748307.050762, -------------- SYN_REPORT ------------
Event: time 1673748307.250770, type 4 (EV_MSC), code 4 (MSC_SCAN), value c0041
Event: time 1673748307.250770, type 1 (EV_KEY), code 353 (KEY_SELECT), value 0
Event: time 1673748307.250770, -------------- SYN_REPORT ------------

开关机 70066
确定 C0041

/etc/udev/hwdb.d/*..hwdb

evdev:input:b0005v0416p0300*
 KEYBOARD_KEY_c0041=enter
 KEYBOARD_KEY_70066=sleep
 
 
配置生效

重启服务

systemd-hwdb update

udevadm trigger

systemctl start eventlircd

systemctl start kodi

输入确定按键生效命令：

udevadm info /dev/input/event4 | grep KEYBOARD_KEY 

```

> https://discourse.coreelec.org/t/alfawise-z1-bluetooth-remote-configuration/2955

I have an Alfawise Z1 (2/16) and there was a problem under CE, the BT remote OK button cant working only when i switch to mouse mode. With this little mod i able to use as expected.

First, create /etc/udev/hwdb.d/10-btok.hwdb file and fill with:

_evdev:input:b0005v2B54p1603e*_
_KEYBOARD_KEY_c0041=enter_
Save, reinitialize hwdb and reboot system:

_systemd-hwdb update_
_reboot_
The remote controller use the following codes:

Mute c00e2
Menu 70065
Ok c0041
Up c0042
Down c0043
Left c0044
Right c0045
Home c0223
Back c0224
Mic c0221
Vol+ c00e9
Vol- c00ea
Prev c00b4
Next c00b3

Mouse mode
Ok 90001

### 蓝牙重启后失效

> udevadm info /sys/bus/sdio/devices/sdio* | paste

#### reinstalled both TVheadend and all OK

> killall -9 hciattach

> /usr/bin/hciattach -n -s 115200 /dev/ttyS1 bcm43xx 2000000

> systemctl unmask brcmfmac_sdio-firmware-aml


> echo "ln -s /usr/lib/kernel-overlays/base/lib/firmware/brcm/BCM4335_V0343.0353.hcd /var/lib/firmware/brcm/BCM4335AO.hcd" >> /storage/.config/autostart.sh

> reboot

> There is no reason your device should not be working as the firmware is there.Revert the previous command with the following.

```
systemctl unmask brcmfmac_sdio-firmware-aml
reboot
```

> When your device comes back up paste the output of hciconfig -a.


Hi @Newoski, I had the same problem with a Harmony Hub before and used this:

> https://discourse.coreelec.org/t/odroid-n2-bluetooth-wont-auto-reconnect-after-reboot/7702/3

> \# /storage/.config/system.d/harmony.service
[Unit]
Description=Connect to Harmony on BT on startup and resume
After=suspend.target bluetooth.service

[Service]
Type=oneshot
ExecStart=/usr/bin/sh -c "for i in 1 2 3 4 5; do if bluetoothctl connect 00:04:20:F4:F1:22; then exit; else if [ $i -eq 5 ]; then exit $?; else sleep 5; fi; fi; done"
TimeoutSec=0

[Install]
WantedBy=multi-user.target sleep.target
But it seems to do be doing fine without it for a while now (I’m at 9.2.0 on a generic S905X2 box with an external BT dongle).


Created /storage/.config/system.d/harmony.service
then
chmod a+x /storage/.config/system.d/harmony.service
then
Added contents you shared with my bluetooth address

Is that right? Which dongle are you using? Do you know a model?


Saviq
Nov '19
chmod a+x /storage/.config/system.d/harmony.service

FWIW this was wrong, the right way to enable the systemd service is using systemctl:

systemctl enable harmony.service


Hi I know it’s an old thread but I have the same issue.
I have an Odroid N2 with the generic Bluetooth dongle sold by Ameridroid and Harmony hub.
I lost connection on reboot (Mac address change ?)

I try Saviq solution with no success

All idea are welcome

#### See below

> https://discourse.coreelec.org/t/solved-bluetooth-not-working/6983/72?filter=summary


### 蓝牙遥控启动

> 暂无解决

### 直播源配置

> 安装PVR IPTV Simple Client 插件
> 网上下载m3u8配置文件并导入
> 目前直播普遍比较卡顿 待优化

## M401a刷Armbian进Emmc

### 下载Armbian S905L3a镜像

> s905L3a 处理器的机器无需做任何修改，写入U盘后就可以启动

### U盘启动

> adb reboot update 后瞬间插入u盘

### SSH连接系统并执行重启

```
login as: root
root@192.168.0.229's password:
    _              _        ___   ___  ____  _ _____
   / \   _ __ ___ | |  ___ / _ \ / _ \| ___|| |___ /  __ _
  / _ \ | '_ ` _ \| | / __| (_) | | | |___ \| | |_ \ / _` |
 / ___ \| | | | | | | \__ \\__, | |_| |___) | |___) | (_| |
/_/   \_\_| |_| |_|_| |___/  /_/ \___/|____/|_|____/ \__,_|

Welcome to Armbian 23.02.0-trunk Jammy with Linux 6.1.6-happy-new-year

System load:   172%             Up time:       11 min
Memory usage:  10% of 1.90G     IP:            192.168.0.230
192.168.0.229
CPU temp:      41°C             Usage of /:    82% of 2.4G
storage/:      57% of 252M

Last login: Mon Jan 16 13:18:04 2023 from 192.168.0.1
```

> 运行armbian-install执行写入emmc操作

```
root@armbian:~# armbian-install
[ STEPS ] Start install armbian to emmc...
[ INFO ] Custom setting parameters: [  ]
[ STEPS ] Start initializing the environment...
[ INFO ] Use mainline u-boot: [ no ]
[ INFO ] Using the Ampart tool: [ yes ]
[ INFO ] Show all lists: [ no ]
[ INFO ] The device eMMC name: [ /dev/mmcblk2 ]
[ STEPS ] Start selecting device...
--------------------------------------------------------------------------------------
ID    SOC        MODEL                          DTB                             
--------------------------------------------------------------------------------------
301   s905x2     X96-Max-4GB/Tx5-Max            meson-g12a-x96-max.dtb          
302   s905x2     X96-Max-2GB/A95X-F2            meson-g12a-x96-max-rmii.dtb     
303   s905x2     MECOOL-KM3-4G                  meson-g12a-sei510.dtb           
304   s905l3a    E900V22C-D                     meson-g12a-s905l3a-e900v22c.dtb 
305   s905l3a    CM311-1a-YST                   meson-g12a-s905l3a-cm311.dtb    
306   s905l3a    M401A/ZTE-B863AV3.2-M          meson-g12a-s905l3a-m401a.dtb    
0     Other      Customize                      Enter-custom-dtb-name           
--------------------------------------------------------------------------------------
```

> 输入306，其他设备请按实际型号来既可

```
[ OPTIONS ] Please Input ID: 306
[ INFO ] Input Box ID: [ 306 ]
[ INFO ] FDTFILE: [ meson-g12a-s905l3a-m401a.dtb ]
[ INFO ] MAINLINE_UBOOT: [  ]
[ INFO ] BOOTLOADER_IMG:  [  ]
[ INFO ] UBOOT_OVERLOAD: [ u-boot-e900v22c.bin ]
[ INFO ] K510: [ 1 ]
[ STEPS ] Start selecting file system type...
-----------------------------------------------
ID  TYPE
-----------------------------------------------
1   ext4
2   btrfs
-----------------------------------------------
```

> 输入1，分区选择 ext4 然后就是漫长的耐心等待

```
[ OPTIONS ] Please Input ID: 1
[ INFO ] Input Type ID: [ 1 ]
[ INFO ] The type of file system: [ ext4 ]
[ STEPS ] Start creating eMMC partition...
[ INFO ] Start backup default bootloader.
4+0 records in
4+0 records out
4194304 bytes (4.2 MB, 4.0 MiB) copied, 10.8834 s, 385 kB/s
1+0 records in
1+0 records out
512 bytes copied, 0.0023275 s, 220 kB/s
[ STEPS ] Use ampart partition successfully.
[ INFO ] Start create MBR and partittion.
[ INFO ] Restore the mybox bootloader: [ /usr/lib/u-boot/mybox-bootloader.img ]
444+0 records in
444+0 records out
444 bytes copied, 0.0156965 s, 28.3 kB/s
8191+0 records in
8191+0 records out
4193792 bytes (4.2 MB, 4.0 MiB) copied, 0.606319 s, 6.9 MB/s
[ STEPS ] Start processing the bootfs partition...
[ INFO ] Formatting BOOTFS partition.
mkfs.fat 4.2 (2021-01-31)
[ INFO ] Start copy BOOTFS partition data.
[ INFO ] Generate the new [ uEnv.txt ] file.
[ INFO ] Copy [ u-boot-e900v22c.bin ] to u-boot.emmc
[ STEPS ] Start processing the rootfs partition...
[ INFO ] Formatting ROOTFS partition.
[ INFO ] Start copy ROOTFS partition data.
[ INFO ] Copy the [ etc ] directory.
tar: etc: file changed as we read it
[ INFO ] Copy the [ home ] directory.
[ INFO ] Copy the [ lib64 ] directory.
[ INFO ] Copy the [ opt ] directory.
[ INFO ] Copy the [ root ] directory.
[ INFO ] Copy the [ selinux ] directory.
[ INFO ] Copy the [ srv ] directory.
[ INFO ] Copy the [ usr ] directory.
```

> 上面这个是因为使用了不合格优盘 拷贝到 usr之后就异常了，后边又换了个好u盘 执行OK 结果如下：

```
[ OPTIONS ] Please Input ID: 1
[ INFO ] Input Type ID: [ 1 ]
[ INFO ] The type of file system: [ ext4 ]
[ STEPS ] Start creating eMMC partition...
[ INFO ] Start backup default bootloader.
4+0 records in
4+0 records out
4194304 bytes (4.2 MB, 4.0 MiB) copied, 0.829114 s, 5.1 MB/s
1+0 records in
1+0 records out
512 bytes copied, 0.00125406 s, 408 kB/s
[ STEPS ] Use ampart partition successfully.
[ INFO ] Start create MBR and partittion.
[ INFO ] Restore the mybox bootloader: [ /usr/lib/u-boot/mybox-bootloader.img ]
444+0 records in
444+0 records out
444 bytes copied, 0.0160725 s, 27.6 kB/s
8191+0 records in
8191+0 records out
4193792 bytes (4.2 MB, 4.0 MiB) copied, 0.535158 s, 7.8 MB/s
[ STEPS ] Start processing the bootfs partition...
[ INFO ] Formatting BOOTFS partition.
mkfs.fat 4.2 (2021-01-31)
[ INFO ] Start copy BOOTFS partition data.
[ INFO ] Generate the new [ uEnv.txt ] file.
[ INFO ] Copy [ u-boot-e900v22c.bin ] to u-boot.emmc
[ STEPS ] Start processing the rootfs partition...
[ INFO ] Formatting ROOTFS partition.
[ INFO ] Start copy ROOTFS partition data.
[ INFO ] Copy the [ etc ] directory.
[ INFO ] Copy the [ home ] directory.
[ INFO ] Copy the [ lib64 ] directory.
[ INFO ] Copy the [ opt ] directory.
[ INFO ] Copy the [ root ] directory.
[ INFO ] Copy the [ selinux ] directory.
[ INFO ] Copy the [ srv ] directory.
[ INFO ] Copy the [ usr ] directory.
[ INFO ] Copy the [ var ] directory.
[ INFO ] Generate the new fstab file.
[ INFO ] Update the relevant parameters.
[ SUCCESS ] Successful installed, please unplug the USB, re-insert the power supply to start the armbian.
```

> 很明显后边又[ SUCCESS ] 成功的标记，这时候执行poweroff 关机后拔掉U盘，重启机顶盒，在路由器找到机顶盒ip 既可登录了。

> 经过漫长安装后系统在安装完成后会自动重启，可以关注路由器里边的设备列表，重启后IP地址会发生改变，重新登陆既可。进入后线关机，拔出U盘，重新启动既可。

## 魔百盒M401A刷Openwrt

### 下载rom

> 从 https://github.com/ophub/amlogic-s9xxx-openwrt 下载 openwrt_official_s905l3a_k5.15.86_2023.01.08.img.gz 这个包

> 用rar 解压出来一个Image 文件

### 使用balenaEtcher 把上面得Image 文件写入U盘

### 重新插入u盘修改

> 修改 根目录下 uEnv.txt文件中得FDT 为： FDT=/dtb/amlogic/meson-g12a-s905l3a-m401a.dtb

### 打开盒子链接到网络。开启盒子得ADB

### 从U盘启动 Openwrt

> adb connet 盒子ip 
> 链接成功后 执行adb reboot update .
> 命令执行完毕后立刻将U盘插入电视盒子usb接口。

### 连接u盘系统。

> 找根网线笔记本直连 电视盒子网口

> 这时候笔记本会自动获取到IP  直接192.168.1.1 在浏览器中打开盒子。

### 写入 emmc 

> 如果想永久体验 那么就需要写入 

> 这时候在u盘系统得后台找到 系统 -> 晶晨宝盒 ->安装Openwrt 选择设备型号 [306]M401A/ZTE-B863AV3.2-M

> 点击安装，弹出框直接确认即可，稍等几分钟，系统提示成功后，直接关机，拔出U盘，然后重启，就可以进入到路由器了。

### 然后自己随心所欲玩吧，玩法太多了



## 斐讯K2刷Breed和潘多拉固件记录

> 数年前通过0元购搞了两台斐讯K2，之后因为掉包问题一直闲置没怎么用。这几天收视垃圾，发现了这玩意，感觉做工依然很棒。所以感觉不应该白白扔掉啊，折腾折腾，上网研究研究。

> 上网搜了下可以刷机，于是本着废物利用的想法下载了刷机包。这机器居然可以通刷许多第三方固件，当然了首先得刷BREED。网上得资料和固件以及刷机工具都相当齐全。先刷Breed，只要用工具简单设置一下密码就可以了。

> 后从Breed中写ROM，一路很顺利，刚开始由于下错ROM结果刷成其他牌子的，一直没发现问题，联网中继也不成功。后来发现问题后及时刷成斐讯K2适配的潘多拉，运行，设置中继都很顺利，果然废物利用了。

> 刷完后简单评测了一下，做K2刷潘多拉中继延迟非常小，但是似乎下载速度没有我TP的AC900强，但是延迟比TP小一些。总之运行非常稳定，也似乎不掉了。看来有时候还是得动动手，第三方的东西还是有不少好动的。但是其他第三方ROM还没有体验过，以后有机会了继续折腾玩一下。

## F1 RK3399 研究

### RK刷机基础

瑞芯微最新Rkbatch刷机工具分享 (支持RK3288) 附教程

Rkbatch是瑞芯微芯片的量产工具，可用于修复固件、升级固件、切换设备模式等。通过这个刷机工具加载固件后还可以会显示固件版本、BOOT版本、固件创建时间与BOOT创建时间，支持的芯片等。今天搬运一下最新的v2.3版本Rkbatch和Rkbatch工具使用官方教程。

一、工具下载

1. 下载镜像

下载镜像页实现旧版 Android 工具的所有功能，并维持原有的操作方式

瑞芯微最新Rkbatch刷机工具分享 (支持RK3288) 附教程

1.1.升级配置区

升级配置区主要完成升级项的编辑、升级配置的导入导出和当前升级项的选择，通过右击鼠标可以进行如下配置：

瑞芯微最新Rkbatch刷机工具分享 (支持RK3288) 附教程

添加项:增加一个升级项

删除项：删除选中的升级项，如果当前选中的项则删除最后一项

清空所有项：清空除 Loader 外的所有升级项

上移和下移:上移和下移升级项

导入配置：导入之前保存的升级配置信息，导入导出功能方便使用者在不同项目间的配置切换

导出配置:导出当前配置区内的所有升级项信息。

选择升级项对应文件:点击红色箭头区域

瑞芯微最新Rkbatch刷机工具分享 (支持RK3288) 附教程

修改升级项的 Flash 偏移:双击红色箭头区域进行输入

瑞芯微最新Rkbatch刷机工具分享 (支持RK3288) 附教程

选择是否下载此升级项:勾选表示下载，没有勾选表示不下载

瑞芯微最新Rkbatch刷机工具分享 (支持RK3288) 附教程

1.2.执行区

瑞芯微最新Rkbatch刷机工具分享 (支持RK3288) 附教程

Loader 显示当前选中 loader 的版本信息

执行:下载升级配置区中所有勾选的升级项

切换:Msc 状态转换到 Rockusb 烧录模式

低格:擦除固件区所有数据,只在”Loader”状态下有效，执行后所有用户区的数据会被全部清除

清空:清空右边升级信息区的内容

1.3.设备区

瑞芯微最新Rkbatch刷机工具分享 (支持RK3288) 附教程

设备区用来告诉用户当前设备连接情况，比如没有发现设备，发现一个设备和发现多个设备点击执行之前，先确认好升级设备是否已经连接并进入烧录模式。设备类型:

Loader 设备:可升级设备(属于烧录模式,且有 IDBlock 系统块存在)

Maskrom 设备:可升级设备(属于烧录模式,Flash 内没有发现 IDBlock 系统块)

Msc 设备:不可直接升级设备,需要先切换到烧录模式

2. 升级固件

旧的开发工具无法升级统一固件，这使得开发人员又要开量产工具，带来了极大不便。新工具将支持统一固件的升级和相关功能。

瑞芯微最新Rkbatch刷机工具分享 (支持RK3288) 附教程

2.1.升级统一固件(update.img)

选择固件，点击【固件】按钮 ，加载固件要较长时间，因为要完成固件完整校验

连接升级设备，进入烧录模式(如果是 Msc 模式，先点击”切换”)

执行升级，点击【升级】按钮

如果升级后需要让 Demo 拷贝到用户盘，则在点击”升级”前，勾选 Demo

2.2.擦除 Flash

选择固件或者 Loader 文件，点击【固件】按钮

连接升级设备，进入烧录模式

点击 【擦除Flash】按钮，执行

擦除 Flash 不仅会擦除固件区的所有数据，同时还会擦除 IDBLOCK 系统块，某些情况一直升级不过时，可以尝试先擦除 Flash 再做升级。

3. 高级功能

高级功能主要是为工程师排查问题提供帮忙，本文档只介绍常用的两个功能”解包统一固件” 和”获取 Flash 信息”

瑞芯微最新Rkbatch刷机工具分享 (支持RK3288) 附教程

3.1.解包统一固件

此可以将统一固件(update.img),解包出 loader、boot.img、recovery.img、kernel.img 和system.img，解包的文件放在工具的 Temp 目录下。

瑞芯微最新Rkbatch刷机工具分享 (支持RK3288) 附教程

占击”…”选择统一固件,然后点击”解包”

3.2.读取 Flash 信息

当出现“准备 IDB 失败”时，可以先通过此功能确认一下 Loader 是否可以正确读取 Flash信息。

连接升级设备，进入烧录模式

如果是 Loader 设备，跳过此步，Maskrom 设备，则需要先下载 Boot,点击”…”选择 loader或者固件，点击”下载”

瑞芯微最新Rkbatch刷机工具分享 (支持RK3288) 附教程

点击”读取 Flash 信息”，执行成功如下图：

瑞芯微最新Rkbatch刷机工具分享 (支持RK3288) 附教程

4. 配置文件（config.ini）

4.1.识别 Msc 设备

某些项目可能使用自己的 Msc 的 vid 和 pid，此时，使用工具之前需求正确设置MSC_VID和 MSC_PID 的值。

MSC_VID:MSC 设备产商 ID

MSC_PID:MSC 设备产品 ID

例：MSC_VID=0x0bb4
      MSC_PID=0x0c02

4.2.修改语言

目前工具支持中文和英文，通过修改 LANGUAGE 下的 Selected 项实现。

Selected:值=1 为中文，值=2 为英文4.3.修改搜索设备模式

目前工具支持两种搜索模式：只搜索高速 usb 设备和搜索所有 usb 设备，默认搜索高速 usb设备，模式选择可以通过设置 SUPPORTLOWUSB 项实现。

SUPPORTLOWUSB:值=TRUE 搜索所有 usb 设备,其他值搜索高速 usb 设备

4.4.设置默认升级配置

默认升级配置在每次工具启动时加载指定的升级配置，避免每次都要选择升级配置的麻烦。

DEFAULT_IMAGE_CONFIG:值=升级配置文件所在的路径,配置文件是通过导出配置功能导出的文件

三、注意事项

在非中文操作系统中使用时，请确保工具所在路径上只存在英文目录，同时将显示语言选择到英文。

在 win7 及其之后的系统，需要右击工具选择以管理员权限运行工具。

修改配置文件 config.in 后，需要重启工具才能生效。

### Fastboot 解锁

```
fastboot 锁住状态下，不允许烧写及执行 oem 命令，初始状态为锁住。
解锁流程大致如下：
1、执行 fastboot oem unlock
2、5 秒内继续执行 fastboot oem unlock_accept
3、机器会重启进入 recovery 恢复出厂设置
4、再次进入 fastboot，则 fastboot getvar unlocked 应该返回"yes"（设备已解锁）
如果设备进入 fastboot 状态后，fastboot 命令提示未发现设备，则需要在命令中加入-i 参数
指定设备 vid，例如 fastboot -i 0x2207 getvar unlocked
```

### 外网有人解决 不知道适用不

SOLUTION:

Alright, this was a ride! It took me about two weeks to find the solution. No matter what I flashed from the recovery, the unit would still be on bootloop, but the last thing I flashed was an update.zip I found on the internet from some guy, and that made my unit completely hard bricked and irrecoverable (no access to recovery). So here's what I did.

Apparently, reading around Rocketchips (PX3,PX5,PX6) have like a "if everything else fails" kind of mode, for stupid people like me, called MASKROM Mode. It's the last resort mode that lets you flash something on the unit when everything fails. That mode is not flashable (you can't mess it up). It's kind of like if a computer had an integrated last resort in case you mess up and break the BIOS.

To get to it though, it is kind of complicated. You need to get to the PX6/5/3 board, which is basically the heart of your radio. So start unscrewing!
The board will look something like this one:
https://sc01.alicdn.com/kf/HTB1f6tCE.R1BeNjy0Fmq6z0wVXaC.jpg
Where the top part is a heatsink that you might also have to remove. PX5s and PX3s may not look exactly like so, but look for something of more or less the same characteristics and form factor, you'll know when you see it.

Go ahead and remove the board from the unit VERY CAREFULLY (the female pin sockets break VERY VERY EASILY from what I've heard, so be very careful).

Next, we will need to connect the PX6/5/3 to the computer through USB. For that, we will have to make a custom cable. Here's the link to the forum where they explain how to make that cable in detail: https://forum.xda-developers.com/an...px3-5-headunit-mod-recover-flash-som-t3766892
Shoutout to @marchnz , he's a genius and without his help I certainly would have wasted my $400 I spent on the headunit.

So long story short, take a USB to something cable (the ones for your phone, for instance), strip it, and solder some resistances to it in the EXACT SAME WAY as in the pictures in the first post of the forum.
Now, connect the cable in the same way as the pictures if you have a PX5 or PX3.

IF YOU HAVE A PX6 find out which pins to connect in PAGE 2 of https://forum.xda-developers.com/an...s-development/px6-maskrom-mode-t3989407/page2 , in the pictures of a post by @oton .

Now download Androidtool here: https://github.com/rockchip-linux/tools/blob/rk3399/windows/AndroidTool_Release_v2.52.zip . This is the software that is going to let us access the mode I was talking about earlier.
Once you have it install, restart and plug in your USB end of the cable. Open the device manager on windows. If you see an Unrecognized device pop up, or a malfunctioning USB, you will need to install the drivers. Here's the link to where you can find an autoinstaller: https://github.com/rockchip-linux/tools .

If, after all, you still are having issues with the drivers, you'll need to install them manually. So right-click on the unrecognized device, update driver, browse my computer, let me pick, Have Disk, and then you find the drivers that we just downloaded (unzip them, of course). Choose the driver, and close and re-open Androidtool.
If you see Maskrom device detected on the bottom, you're all set! If you see recovery device detected, you'll have to put it on Maskrom, for good measure. It might work on recovery, but I'd put it in maskrom mode anyway. To do that, you'll have to disconnect the usb from the computer (while the other end with the cables is still hooked to the board), short two pins on the other side of the board (where the heatsink was) (for a PX6, you can find out which ones here https://forum.xda-developers.com/showpost.php?p=80641439&postcount=435) (for a PX5, I belive it will be on the thumbnails of the first post here: https://forum.xda-developers.com/an...px3-5-headunit-mod-recover-flash-som-t3766892) (if you can't figure out which ones, google search for pins to put your unit in maskrom). While you are shorting those pins (maybe with some metallic tweezers), plug in the usb, stop shorting the pins, and the unit should show up in maskrom.

Now dowload an update.img from the following repository: https://yadi.sk/d/umCvHqCDzHccr/RockChip PX5 Android 9/YB . If it tells you to download something, just click on the file until you get to the .rar screen and click on the download arrow on the top right of the screen.
Important: FOR MY UNIT, I HAD TO DOWNLOAD MANY UPDATE.IMG BEFORE 1 WORKED. ONLY ANDROID 8.1 WORKED FOR ME, SO KEEP TRYING! YOU'RE ALMOST THERE!
ALSO, DO NOT DOWNLOAD ANY OTGs (update.zip), ONLY DOWNLOAD IMAGES (update.img).

Now go to upgrade firmware on Androidtool, click on firmware, choose the update.img you downloaded, and start flashing it!
You'll get a progress readout on the right side, and you'll know when its done. Now it's time to put everything back together and hook up the unit and see if it worked. If it didn't or if it's in bootlooop, download another image from the repository and try again. The only one that worked for me was android 8.1.

Okay, so now everything worked and you got your Head Unit back! But what if you had to downgrade android for it?
Here's how to bring it back to its former glory:
From where I stood (android 8.1), the android 8.1 recovery wouldn't allow for android 9 or android 10 flashing. And I found some info on how to flash PX5s recoveries, but nothing on PX6, so I went to Hal9k's website and purchased his modinstaller 2 and followed instructions. Through there, you'll have the chance to update to android 9 or 10 (up to you), by running his apk that will install a new recovery on your machine, and then flashing any update.zip you want. In my case, I decided to also go for his ROM, because of the features it offered. The whole process was 10 bucks but I think it was completely worth it (honest opinion, not sponsored). You can also opt for installing and Android 10 ROM, as I had at the beginning, but I've heard they're pretty unstable.

So that's all! Not an easy project, but at the end you'll have your unit back and running!

###  maskrom xrock


### 【官方开发文档】RK3399 Efuse 操作指南

> http://www.nnewn.com/page238?article_id=338

## ZN-M2 IPQ60xx系列路由器

### 09-18

> 原来家里用的主路由（Wifi）+ 旁路由 + 千兆交换机，交换机位于电视柜主要给电视机附近的设备供网。发现最近网络性能下降，于是做了整改。

> 现在发现50块钱的ZN-M2路由器使用IPQ6000性能不错，可以刷成Openwrt ,连旁路由都可以去掉了，于是就买了个。网络上多对这款路由器修改内存，扩大到1G，但是对于我256M足够了，于是我就买的未改版。同时又买了个RAX 3000Q路由器作为AP使用。这个RAX 3000Q配置也很简单，Wan口连M2 Lan后上网方式设置为桥接既可。

> 整改前网络拓扑如下：

> 整改后网络拓扑如下：

> 后续是ZN-M2刷机教程。

> 按照网上教程 直接在官方后台升级openwrt-ipq60xx-generic-cmiot_ax18-squashfs-nand-factory.bin，启动后没问题，然后没问题，系统可以正常启动，不过是openwrt 19.07的版本有点老。

> 于是 ssh 进入备份 并刷入uboot uboot uboot-cmiot-ax18.bin，这一部也没什么问题。

> >  没有进行扩容(ax18-mibib.bin和uboot-cmiot-ax18-mod-partition.bin)，更多空间给安装插件

> 长按reset 启动uboot也正常，向用uboot 刷入比较新的版本Openwrt 但是悲剧了，一直转圈，重启后发现系统已经不能正常进入，但是uboot可以进入。在uboot中试了好多固件依然是只转圈圈。

> 拆机 ttl 连电脑开机也没反映，不指导是不是这台电脑的问题。准备下次更换win10的电脑试验一下。

### 09-18

> 于是我又更换了个pl2303的usb转ttl就可以连接了。

> 然后用ttl 连接路由器 刷入mtd17

```
setenv ipaddr 192.168.1.1
setenv serverip 192.168.1.100  # tftp服务器地址
tftpboot mtd16
flash rootfs
saveenv
```

> 刷完后重启就可以进入官方原版系统。 然后重新用升级的方式刷入过渡固件uboot-cmiot-ax18-mod-partition.bin。

```
#刷uboot合并分区：rootfs 分区达 96m
mtd write /tmp/ax18-mibib.bin /dev/mtd1
mtd write /tmp/uboot-cmiot-ax18-mod.bin /dev/mtd13
```

> 然后长按reset 开机 十秒左右进入uboot

> 这个大分区uboot 可以刷网络上的系统，并且剩余空间很多。

> 切记不要再刷入小分区的uboot了，没有什么用，根本不能刷入任何版本的固件。网上说的znm2需要使用340的usbttl也未必正确，我这个用pl2303的才可以。

> 网上销售的运营商路由器真是不错，自己很便宜，自己买来改造改造还是很不错的设备。

> > 附所有的固件软件等：链接: https://pan.baidu.com/s/1aACgMgZuR0XH8AGbquLElQ?pwd=veab 提取码: veab 复制这段内容后打开百度网盘手机App，操作更方便哦

## SQUASHFS镜像直接扩容的方案

> 下载OpenWRT的gz镜像之后，解压

> > gzip -d openwrt-22.03.2-x86-64-generic-squashfs-combined.img.gz

> 解压这后，给这个img镜像增加空间

> > dd if=/dev/zero bs=1M count=5000 >> openwrt-22.03.2-x86-64-generic-squashfs-combined.img

> 用dd命令，2M即一次增加2M的空间，增加1024次，也就是2G的空间

> 用parted命令进入img镜像，把刚才增加的空间扩展进去

> > parted openwrt-22.03.2-x86-64-generic-squashfs-combined.img

> 用print查看一下分区

> > print

> 发现有两个区，第二个分区还是原始的空间，下面把增加的空间扩展给第二个分区

> > resizepart 2 100%

> 完成，退出

> > quit

> OPENWRT squashfs镜像扩容完成。

> > dd if=/dev/zero bs=2M count=3096 >> openwrt-09.24.2023-x86-64-generic-squashfs-combined.img

## 中兴F4610U 光猫

### Telnet命令

> telnet下命令修改模式和地区

> > setmac 1 40960 6 改为xgpon

> cat /etc/init.d/regioncode #显示地区

> upgradetest sdefconf 328#修改地区为西安咸阳

> 再次登录光猫，上传配置文件至电脑。tftp -p -l userconfig/cfg/db_user_cfg.xml -r db_user_cfg.xml 192.168.1.2

> 修改user用户权限为管理员

> > sendcmd 1 DB set DevAuthInfo 1 Level 1（user用户提权为管理员）

> > sendcmd 1 DB set WLANCfg 0 ESSIDPrefix ""（设置2.4G的ssid前缀为空）

> > sendcmd 1 DB set WLANCfg 4 ESSIDPrefix ""（设置5G的ssid前缀为空）

> > sendcmd 1 DB save （手工保存配置文件）

> > 重新启动光猫后，user用户登录后可看到并修改全部菜单，并且ssid可以随便修改了，没有了缺省的前缀”CMCC-“

> 打开任意网页自动跳转LOID注册页面—

> > sendcmd 1 DB set PDTCTUSERINFO 0 Status 0

> > sendcmd 1 DB set PDTCTUSERINFO 0 Result 1

> > sendcmd 1 DB save

> 更改telnet用户密码sendcmd 1 DB set TelnetCfg 0 TS_UPwd 

> > ooxxsendcmd 1 DB set TelnetCfg 0 TSLan_UPwd 

> 说明几点：

> > tr69远程控制必须去掉，因为限制会被重新加上使破解失效。最简明的方法是把 服务器 URL 改掉：比如http://devacs.edatahome.../那个，改成 http://127.0.0.1

### 中兴光猫隐藏URL

> 恢复出厂：http://192.168.1.1/return2factory.html

> 切换地域：http://192.168.1.1/hidden_version_switch.gch

> 固件升级：http://192.168.1.1/getpage.gch?pid=1001&logout=1&hidden=upgrade

> 网页恢复出场设置

> > http://192.168.1.1/return2factory.html 

> > 管理员用户名：CMCCAdmin，口令：aDm8H%MdA

> 打开浏览器http://192.168.1.1/web_shell_cmd.gch


> > 输入 sendcmd 1 DB p UserInfo #查看用户名密码，默认为telecomadmin/telecomadmin+数字

> > 输入 sendcmd 1 DB set UserInfo 0 Username admin #修改用户名为admin

> > 输入 sendcmd 1 DB set UserInfo 0 Password admin #修改密码为admin

> > 输入 sendcmd 1 DB save #修改保存

> 修改远程控制，防止远程修改你的超级账号，对一些功能做出限制

> > 打开浏览器http://192.168.1.1/web_shell_cmd.gch

> > 输入 sendcmd 1 DB p MgtServer  #查看一下当前的电信远程控制

> > 输入 sendcmd 1 DB set MgtServer 0 URL http://123.0.0.1 （ #简明的方法是把服务器 URL 改掉

> > 输入 sendcmd 1 DB set MgtServer 0 Tr069Enable 0  #禁用TR069远程控制

> > 输入 sendcmd 1 DB save  #修改保存

> 开启光猫自动拨号

> > 新建WAN连接，勾上LAN1、3、4和SSID1，LAN2和SSID2由于绑定ITV，所以不能勾上，否则ITV看不了。在用户名和密码框填上家里
上网账号和密码，然后点创建或保存，搞定。

> > sendcmd 1 DB set FTPServerCfg  0 FtpEnable 0

> > sendcmd 1 DB set DHCPSHostCfg 0 DNSServers1 #你想改的DNS地址1 电信DNS 61.128.128.68 61.128.192.68

> > *注意空格和大小写

### 全部是个人尝试切换地区后读取转载请备注出处

> 北京 无 192.168.1.1

> 上海 CUAdmin CUAdmin 192.168.1.1

> 天津 CUAdmin CUAdmin 192.168.18.1

> 征订 cqunicom cqunicom 192.168.1.1

> 安徽 CUAdmin CUAdmin 192.168.1.1

> 福建 CUAdmin CUAdmin 192.168.1.1

> 甘肃 CUAdmin CUAdmin 192.168.1.1

> 广东 CUAdmin CUAdmin 192.168.1.1

> 广西 CUAdmin CUAdmin 192.168.1.1

> 贵州 CUAdmin CUAdmin 192.168.1.1

> 海南 cuadmin cu@HNunicom 192.168.1.1

> 河北 cuadmin cuadmin 192.168.1.1

> 河南 CUAdmin CUAdmin 192.168.1.1

> 湖北 CUAdmin CUAdmin 192.168.1.1

> 湖南 CUAdmin CUAdmin#HGU 192.168.1.1

> 吉林 CUAdin CUAdmin 192.168.1.1

> 江苏 CUAdin CUAdmin 192.168.1.1

> 江西 CUAdin CUAdmin 192.168.1.1

> 辽宁 lnadmin lnadmin 192.168.2.1

> 宁夏 CUAdmin CUAdmin 192.168.1.1

> 青海 CUAdmin CUAdmin 192.168.1.1

> 山东 CUAdmin CUAdmin 192.168.1.1

> 山西 CUAdmin CUAdmin 192.168.1.1

> 陕西 CUAdmin CUAdmin 192.168.1.1

> 四川 CUAdmin CUAdmin 192.168.1.1

> 西藏 CUAdmin CUAdmin 192.168.1.1

> 新疆 CUAdmin CUAdmin 192.168.1.1

> 云南 CUAdmin CUAdmin 192.168.1.1

> 浙江 CUAdmin CUAdmin 192.168.1.1

> 黑龙江 hljcuadmin 8MCU@HLJ 192.168.1.1

> 内蒙古 CUAdmin CUAdmin 192.168.1.1

### 陕西西安联通手动更换升级光猫

> 其实目前所用光猫是华为的千兆光猫，性能目前来说也是足够用的。但是为什么要更换呢，这是因为这个光猫实际有两个LAN口，其中一个千兆，另一个只有百兆。而实际我现在在弱电箱中放了一个无线路由器，还有一个旁路路由。当然为什么要这么复杂呢，这里就不解释了。

> 并且光猫，主路由，旁路由三个一起放在弱电箱。（除此以外从弱电箱中引出一条线路皆交换机为电视机，机顶盒等设备有线提供网络。）为什么一起放在弱电箱，这跟我家的布局有关系，弱电箱里的wifi信号正好可以覆盖全屋。三个设备放一起，导致里边的温度十分高，所以了就一直在研究怎么优化网络。

> 偶然在网上看到一款中兴的万兆光猫，四千兆口，并且AX3000wifi ,完全满足了我的需要啊，如果这玩意能配置上，岂不是可以把弱电箱中的设备少放一个，只要光猫连旁路由就可以了。想法是好的，理论的功课也作了一些。顺道小黄鱼上找便宜的拿下。在跟一个北京老板掰扯了好几天，终于以很低的价格给了我。

> 然后很快这个万兆路由猫就到货了。于是上网找工具，首先合理优化系统，使他可以适应我秦人需求。毕竟虽然同是联通，但人首都网络设备的和秦网设备不能通用啊。这是必然的，这个工具找起来也很容易，我朝老百姓不就爱整这些工具吗。工具人家当然是免费让你用几次，再浪费了几次宝贵的免费机会终于搞定了设备上的这些优化。

> 这里主要涉及到改模式，北京联通是10g epon,西安联通则是 10g gpon。不修改则是默认的，不会连接成功。

> 注意陕西西安（咸阳）地区的注册码应该使用"328:xian"。其中还有"315:shanxi","321:shanxi2"其中那个是陕西那个是山西我也搞不清，正常的陕西的拼英应该是“shaanxi”，不知道中兴为什么不能走标准的，非要搞个“shanxi","shanxi2"。更改地区码之后就会自动重启了。进入后台后可以在设备状态页检查当前地区修改是否正确了。

> 然后开始正式折腾，接上我的网络，用电脑跟猫连好，输入LOID,密码开始注册设备，看着字母变了几次。凡是都有然后呀，然后就卡到30%，什么无法获取管理IP的错误。这下可难了，只能换回老的设备。然后网上搜了一大堆，也不明白所以然啊。

> 后来检查这个光猫，有些配置数据已经下发了，但是就是不能链接网络。然后自己仔细看每个没配置页面，把老光猫的配置全部截屏保存到手机，相关配置一项一项检查。改了机箱，尤其是链接信息里的VLANID,还有就是RMS服务器地质原来是.cn的域名改成.com。因为我发现.cn那个地址不能访问，怀疑是RMS服务器的问题。总之主要就是这两处嫌疑最大，其他无关紧要。

> 晚上家人睡下后，还是感觉有些不甘心。直接换上光猫，结果wlan已经显示网络可用了。就这么的好了。然后登录后台，查看状态，一切OK呀。当然了自己更换光猫还是得懂上那么点知识，其实我对光网络也不懂，只是几年前联通工程师安装调试网络的时候看了点，然后自己又网上了解了下，加上实践就成功了！

> 经过简单的测试，这个万兆光猫的性能也是非常好，现在手机上网也是非常丝滑。并且可以省掉一个设备，大大减少弱电箱里的温度。四个千兆口基本可以满足我的需求了，连现在的路由器都可以去黄鱼卖掉了。#长假读书清单#

> 附光猫命令

> > free 查看剩余内存等

> > setmac 1 40960 6 设置为gpon模式 5 设置为epon模式 

> > cat /etc/init.d/regioncode 查看区域码

> > upgradetest sdefconf 321 设置区域为西安

> > display lanmac #显示mac

> > display sn #显示sn

> > su #进入特权模式

> > quit #退出

> > exit #从shell中退出

> > set lanmac MAC xxx #xxx为旧猫的MAC地址

> > set sn snid xxx #xxx为旧猫的sn

> > SU_WAP>load pack by tftp svrip 192.168.1.2 remotefile allshell2.bin 华为广袤刷机补全

## LINKSYS EA8500 TTL 降级

> setenv flashimg 'tftp $loadaddr $image;nand erase $prikern $imgsize;nand write $loadaddr $prikern $filesize'  
 
> setenv flashimg2 'tftp $loadaddr $image;nand erase $altkern $imgsize;nand write $loadaddr $altkern $filesize'
 
> saveenv
 
> setenv image FW_EA8500_1.1.3.166845_prod.img

> setenv ipaddr 192.168.1.1

> setenv serverip 192.168.1.2
 
> setenv autostart no

> run flashimg
 
> run flashimg2
 
> reset

### 备份系统信息

> printenv

```
altkern=3780000
auto_recovery=yes
baudrate=115200
boot_part=1
boot_part_ready=3
boot_ver=1.0.12
bootargs=console=ttyHSL1,115200n8
bootcmd=bootipq
bootdelay=2
ethact=eth0
ethaddr=00:06:3b:01:41:00
flashimg=tftp $loadaddr $image;nand erase $prikern $imgsize;nand write $loadaddr                                                                                                  $prikern $filesize
flashimg2=tftp $loadaddr $image;nand erase $altkern $imgsize;nand write $loadadd                                                                                                 r $altkern $filesize
image=wraith.bin
imgsize=2800000
ipaddr=192.168.1.1
loadaddr=42000000
machid=1260
netmask=255.255.255.0
partbootargs=console=ttyHSL1,115200n8 init=/sbin/init rootfstype=squashfs root=3                                                                                                 1:14
partbootargs2=console=ttyHSL1,115200n8 init=/sbin/init rootfstype=squashfs root=                                                                                                 31:16
prikern=f80000
serverip=192.168.1.254
stderr=serial
stdin=serial
stdout=serial
```

> Environment size: 804/262140 bytes

## IPQ5018 Openwrt TTL NOTEST

> TTL 打开PuTTY 选择串口 串行口选刚才的COM端口号速度固定115200

> 然后插电  开始跑码  开始跑码的时候快速按ESC中断会显示IPQ5018# 来不及的话重新拔电插电ESC中断

> 网线插入路由器WAN口手动配置IP确定保存

> 打开tftp64 设置服务器IP为刚才配置的IP  如图

> setenv serverip 192.168.1.100

> setenv ipaddr 192.168.1.1

> tftpboot 1.img

> 1.bin  1是固件名，bin是拓展名，按需更改，如我放在包里的集客固件就是 1.img

> 写入闪存

> flash rootfs

> flash rootfs_1

> 两个分区都写，防止重启还原

> 显示写入完成就OK了

> 拔电 插电 回到网络配置

> 改成自动获取IP地址(集客固件改成6.6.6.7)


> > 以下教程是OpenWrt

> 等启动成功 浏览器登录192.168.1.1

> 密码是admin

> 刷机完成 固件没有可玩性，不过能用有160MHZ频宽，但是改不了80

> 固件来自slienna/about-AX300M-WiFi6-ROUTER: about-AX300M-WiFi6-ROUTER (github.com)


## OneCloud 

> > Make a img

### DD

```
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ fdisk openwrt-10.13.2023-meson-meson8b-thunder-onecloud-ext4-sdcard.img
 
Welcome to fdisk (util-linux 2.37.2).
Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.
 
 
Command (m for help): p
Disk openwrt-10.13.2023-meson-meson8b-thunder-onecloud-ext4-sdcard.img: 1 GiB, 1077936128 bytes, 2105344 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x5452574f
 
Device                                                             Boot Start     End Sectors  Size Id Type
openwrt-10.13.2023-meson-meson8b-thunder-onecloud-ext4-sdcard.img1 *     8192   40959   32768   16M  c W95 
openwrt-10.13.2023-meson-meson8b-thunder-onecloud-ext4-sdcard.img2      49152 2105343 2056192 1004M 83 Linu
 
Command (m for help): q
 
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ ls /dev/loop*
/dev/loop0   /dev/loop13  /dev/loop18  /dev/loop4  /dev/loop9
/dev/loop1   /dev/loop14  /dev/loop19  /dev/loop5  /dev/loop-control
/dev/loop10  /dev/loop15  /dev/loop2   /dev/loop6
/dev/loop11  /dev/loop16  /dev/loop20  /dev/loop7
/dev/loop12  /dev/loop17  /dev/loop3   /dev/loop8
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ losetup /dev/loop26 openwrt-10.13.2023-meson-meson8b-thunder-onecloud-ext4-sdcard.img
losetup: /dev/loop26: failed to set up loop device: No such file or directory
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ sudo losetup -fP openwrt-10.13.2023-meson-meson8b-thunder-onecloud-ext4-sdcard.img
[sudo] password for usernam: 
Sorry, try again.
[sudo] password for usernam: 
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ lsblk
NAME       MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
loop0        7:0    0     4K  1 loop /snap/bare/5
loop1        7:1    0  55.7M  1 loop /snap/core18/2790
loop2        7:2    0  61.9M  1 loop /snap/core20/1405
loop3        7:3    0  63.5M  1 loop /snap/core20/2015
loop4        7:4    0  73.9M  1 loop /snap/core22/858
loop5        7:5    0  73.9M  1 loop /snap/core22/864
loop6        7:6    0 233.5M  1 loop /snap/glaxnimate/719
loop7        7:7    0 349.7M  1 loop /snap/gnome-3-38-2004/143
loop8        7:8    0 248.8M  1 loop /snap/gnome-3-38-2004/99
loop9        7:9    0  91.7M  1 loop /snap/gtk-common-themes/1535
loop10       7:10   0  81.3M  1 loop /snap/gtk-common-themes/1534
loop11       7:11   0 289.8M  1 loop /snap/kde-frameworks-5-core18/35
loop12       7:12   0  45.9M  1 loop /snap/snap-store/575
loop13       7:13   0  12.3M  1 loop /snap/snap-store/959
loop14       7:14   0  40.8M  1 loop /snap/snapd/20092
loop15       7:15   0  40.9M  1 loop /snap/snapd/20290
loop16       7:16   0   284K  1 loop /snap/snapd-desktop-integration/10
loop17       7:17   0   452K  1 loop /snap/snapd-desktop-integration/83
loop18       7:18   0 320.4M  1 loop /snap/vlc/3078
loop19       7:19   0 321.1M  1 loop /snap/vlc/3721
loop20       7:20   0     1G  0 loop 
├─loop20p1 259:0    0    16M  0 part 
└─loop20p2 259:1    0  1004M  0 part 
sda          8:0    0 465.8G  0 disk 
├─sda1       8:1    0   260M  0 part 
├─sda2       8:2    0    16M  0 part 
├─sda3       8:3    0   196G  0 part 
├─sda4       8:4    0 260.5G  0 part /media/usernam/新加卷
└─sda5       8:5    0    99M  0 part 
sdb          8:16   0 223.6G  0 disk 
├─sdb1       8:17   0   513M  0 part /boot/efi
├─sdb2       8:18   0    16M  0 part 
├─sdb3       8:19   0 133.1G  0 part /media/usernam/Win10
├─sdb4       8:20   0   7.5G  0 part 
└─sdb5       8:21   0  82.5G  0 part /
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ dd if=/dev/loop20p2 of=/media/usernam/新加卷/OneCloud/rootfs.img
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ ls /dev/loop*
/dev/loop0  /dev/loop10  /dev/loop12  /dev/loop14  /dev/loop16  /dev/loop18  /dev/loop2   /dev/loop20p1  /dev/loop3  /dev/loop5  /dev/loop7  /dev/loop9
/dev/loop1  /dev/loop11  /dev/loop13  /dev/loop15  /dev/loop17  /dev/loop19  /dev/loop20  /dev/loop20p2  /dev/loop4  /dev/loop6  /dev/loop8  /dev/loop-control
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ sudo losetup -fP openwrt-10.13.2023-meson-meson8b-thunder-onecloud-ext4-sdcard.img
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ lsblk
NAME       MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
loop0        7:0    0     4K  1 loop /snap/bare/5
loop1        7:1    0  55.7M  1 loop /snap/core18/2790
loop2        7:2    0  61.9M  1 loop /snap/core20/1405
loop3        7:3    0  63.5M  1 loop /snap/core20/2015
loop4        7:4    0  73.9M  1 loop /snap/core22/858
loop5        7:5    0  73.9M  1 loop /snap/core22/864
loop6        7:6    0 233.5M  1 loop /snap/glaxnimate/719
loop7        7:7    0 349.7M  1 loop /snap/gnome-3-38-2004/143
loop8        7:8    0 248.8M  1 loop /snap/gnome-3-38-2004/99
loop9        7:9    0  91.7M  1 loop /snap/gtk-common-themes/1535
loop10       7:10   0  81.3M  1 loop /snap/gtk-common-themes/1534
loop11       7:11   0 289.8M  1 loop /snap/kde-frameworks-5-core18/35
loop12       7:12   0  45.9M  1 loop /snap/snap-store/575
loop13       7:13   0  12.3M  1 loop /snap/snap-store/959
loop14       7:14   0  40.8M  1 loop /snap/snapd/20092
loop15       7:15   0  40.9M  1 loop /snap/snapd/20290
loop16       7:16   0   284K  1 loop /snap/snapd-desktop-integration/10
loop17       7:17   0   452K  1 loop /snap/snapd-desktop-integration/83
loop18       7:18   0 320.4M  1 loop /snap/vlc/3078
loop19       7:19   0 321.1M  1 loop /snap/vlc/3721
loop20       7:20   0     1G  0 loop 
├─loop20p1 259:0    0    16M  0 part 
└─loop20p2 259:1    0  1004M  0 part 
loop21       7:21   0     1G  0 loop 
├─loop21p1 259:2    0    16M  0 part 
└─loop21p2 259:3    0  1004M  0 part 
sda          8:0    0 465.8G  0 disk 
├─sda1       8:1    0   260M  0 part 
├─sda2       8:2    0    16M  0 part 
├─sda3       8:3    0   196G  0 part 
├─sda4       8:4    0 260.5G  0 part /media/usernam/新加卷
└─sda5       8:5    0    99M  0 part 
sdb          8:16   0 223.6G  0 disk 
├─sdb1       8:17   0   513M  0 part /boot/efi
├─sdb2       8:18   0    16M  0 part 
├─sdb3       8:19   0 133.1G  0 part /media/usernam/Win10
├─sdb4       8:20   0   7.5G  0 part 
└─sdb5       8:21   0  82.5G  0 part /
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ losetup -d /dev/loop20
losetup: /dev/loop20: detach failed: Permission denied
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ sudo losetup -d /dev/loop20
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ sudo losetup -d /dev/loop21
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
loop0    7:0    0     4K  1 loop /snap/bare/5
loop1    7:1    0  55.7M  1 loop /snap/core18/2790
loop2    7:2    0  61.9M  1 loop /snap/core20/1405
loop3    7:3    0  63.5M  1 loop /snap/core20/2015
loop4    7:4    0  73.9M  1 loop /snap/core22/858
loop5    7:5    0  73.9M  1 loop /snap/core22/864
loop6    7:6    0 233.5M  1 loop /snap/glaxnimate/719
loop7    7:7    0 349.7M  1 loop /snap/gnome-3-38-2004/143
loop8    7:8    0 248.8M  1 loop /snap/gnome-3-38-2004/99
loop9    7:9    0  91.7M  1 loop /snap/gtk-common-themes/1535
loop10   7:10   0  81.3M  1 loop /snap/gtk-common-themes/1534
loop11   7:11   0 289.8M  1 loop /snap/kde-frameworks-5-core18/35
loop12   7:12   0  45.9M  1 loop /snap/snap-store/575
loop13   7:13   0  12.3M  1 loop /snap/snap-store/959
loop14   7:14   0  40.8M  1 loop /snap/snapd/20092
loop15   7:15   0  40.9M  1 loop /snap/snapd/20290
loop16   7:16   0   284K  1 loop /snap/snapd-desktop-integration/10
loop17   7:17   0   452K  1 loop /snap/snapd-desktop-integration/83
loop18   7:18   0 320.4M  1 loop /snap/vlc/3078
loop19   7:19   0 321.1M  1 loop /snap/vlc/3721
sda      8:0    0 465.8G  0 disk 
├─sda1   8:1    0   260M  0 part 
├─sda2   8:2    0    16M  0 part 
├─sda3   8:3    0   196G  0 part 
├─sda4   8:4    0 260.5G  0 part /media/usernam/新加卷
└─sda5   8:5    0    99M  0 part 
sdb      8:16   0 223.6G  0 disk 
├─sdb1   8:17   0   513M  0 part /boot/efi
├─sdb2   8:18   0    16M  0 part 
├─sdb3   8:19   0 133.1G  0 part /media/usernam/Win10
├─sdb4   8:20   0   7.5G  0 part 
└─sdb5   8:21   0  82.5G  0 part /
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$  sudo losetup -o 4194304  openwrt-10.13.2023-meson-meson8b-thunder-onecloud-ext4-sdcard.img
losetup: openwrt-10.13.2023-meson-meson8b-thunder-onecloud-ext4-sdcard.img: failed to use device: No such device
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ sudo losetup -fP -o 4194304  openwrt-10.13.2023-meson-meson8b-thunder-onecloud-ext4-sdcard.img
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
loop0    7:0    0     4K  1 loop /snap/bare/5
loop1    7:1    0  55.7M  1 loop /snap/core18/2790
loop2    7:2    0  61.9M  1 loop /snap/core20/1405
loop3    7:3    0  63.5M  1 loop /snap/core20/2015
loop4    7:4    0  73.9M  1 loop /snap/core22/858
loop5    7:5    0  73.9M  1 loop /snap/core22/864
loop6    7:6    0 233.5M  1 loop /snap/glaxnimate/719
loop7    7:7    0 349.7M  1 loop /snap/gnome-3-38-2004/143
loop8    7:8    0 248.8M  1 loop /snap/gnome-3-38-2004/99
loop9    7:9    0  91.7M  1 loop /snap/gtk-common-themes/1535
loop10   7:10   0  81.3M  1 loop /snap/gtk-common-themes/1534
loop11   7:11   0 289.8M  1 loop /snap/kde-frameworks-5-core18/35
loop12   7:12   0  45.9M  1 loop /snap/snap-store/575
loop13   7:13   0  12.3M  1 loop /snap/snap-store/959
loop14   7:14   0  40.8M  1 loop /snap/snapd/20092
loop15   7:15   0  40.9M  1 loop /snap/snapd/20290
loop16   7:16   0   284K  1 loop /snap/snapd-desktop-integration/10
loop17   7:17   0   452K  1 loop /snap/snapd-desktop-integration/83
loop18   7:18   0 320.4M  1 loop /snap/vlc/3078
loop19   7:19   0 321.1M  1 loop /snap/vlc/3721
loop20   7:20   0     1G  0 loop 
sda      8:0    0 465.8G  0 disk 
├─sda1   8:1    0   260M  0 part 
├─sda2   8:2    0    16M  0 part 
├─sda3   8:3    0   196G  0 part 
├─sda4   8:4    0 260.5G  0 part /media/usernam/新加卷
└─sda5   8:5    0    99M  0 part 
sdb      8:16   0 223.6G  0 disk 
├─sdb1   8:17   0   513M  0 part /boot/efi
├─sdb2   8:18   0    16M  0 part 
├─sdb3   8:19   0 133.1G  0 part /media/usernam/Win10
├─sdb4   8:20   0   7.5G  0 part 
└─sdb5   8:21   0  82.5G  0 part /
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ sudo losetup -d /dev/loop20
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ sudo losetup -fP -o 25165824 openwrt-10.13.2023-meson-meson8b-thunder-onecloud-ext4-sdcard.img
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ lsblk
NAME   MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
loop0    7:0    0     4K  1 loop /snap/bare/5
loop1    7:1    0  55.7M  1 loop /snap/core18/2790
loop2    7:2    0  61.9M  1 loop /snap/core20/1405
loop3    7:3    0  63.5M  1 loop /snap/core20/2015
loop4    7:4    0  73.9M  1 loop /snap/core22/858
loop5    7:5    0  73.9M  1 loop /snap/core22/864
loop6    7:6    0 233.5M  1 loop /snap/glaxnimate/719
loop7    7:7    0 349.7M  1 loop /snap/gnome-3-38-2004/143
loop8    7:8    0 248.8M  1 loop /snap/gnome-3-38-2004/99
loop9    7:9    0  91.7M  1 loop /snap/gtk-common-themes/1535
loop10   7:10   0  81.3M  1 loop /snap/gtk-common-themes/1534
loop11   7:11   0 289.8M  1 loop /snap/kde-frameworks-5-core18/35
loop12   7:12   0  45.9M  1 loop /snap/snap-store/575
loop13   7:13   0  12.3M  1 loop /snap/snap-store/959
loop14   7:14   0  40.8M  1 loop /snap/snapd/20092
loop15   7:15   0  40.9M  1 loop /snap/snapd/20290
loop16   7:16   0   284K  1 loop /snap/snapd-desktop-integration/10
loop17   7:17   0   452K  1 loop /snap/snapd-desktop-integration/83
loop18   7:18   0 320.4M  1 loop /snap/vlc/3078
loop19   7:19   0 321.1M  1 loop /snap/vlc/3721
loop20   7:20   0  1004M  0 loop 
sda      8:0    0 465.8G  0 disk 
├─sda1   8:1    0   260M  0 part 
├─sda2   8:2    0    16M  0 part 
├─sda3   8:3    0   196G  0 part 
├─sda4   8:4    0 260.5G  0 part /media/usernam/新加卷
└─sda5   8:5    0    99M  0 part 
sdb      8:16   0 223.6G  0 disk 
├─sdb1   8:17   0   513M  0 part /boot/efi
├─sdb2   8:18   0    16M  0 part 
├─sdb3   8:19   0 133.1G  0 part /media/usernam/Win10
├─sdb4   8:20   0   7.5G  0 part 
└─sdb5   8:21   0  82.5G  0 part /
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ dd if=/dev/loop20 of=/media/usernam/新加卷/OneCloud/rootfs.img
dd: failed to open '/dev/loop20': Permission denied
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ sudodd if=/dev/loop20 of=/media/usernam/新加卷/OneCloud/rootfs.img
sudodd: command not found
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ sudo dd if=/dev/loop20 of=/media/usernam/新加卷/OneCloud/rootfs.img
2056192+0 records in
2056192+0 records out
1052770304 bytes (1.1 GB, 1004 MiB) copied, 25.5339 s, 41.2 MB/s
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ sudo dd if=/dev/loop20 of=/media/usernam/新加卷/OneCloud/rootfs.PARTITION
2056192+0 records in
2056192+0 records out
1052770304 bytes (1.1 GB, 1004 MiB) copied, 20.0554 s, 52.5 MB/s
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/New$ 
```

### Packrepack

```
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/linux-amlogic-toolkit$ ./bin/build
[sudo] password for usernam: 
umount: output/system: no mount point specified.
make: Entering directory '/media/usernam/新加卷/OneCloud/linux-amlogic-toolkit/bin/src/simg2img'
rm -f -f *.o *.a simg2img simg2simg img2simg append2simg .depend
make: Leaving directory '/media/usernam/新加卷/OneCloud/linux-amlogic-toolkit/bin/src/simg2img'
make: Entering directory '/media/usernam/新加卷/OneCloud/linux-amlogic-toolkit/bin/src/abootimg'
rm -f abootimg *.o version.h
make: Leaving directory '/media/usernam/新加卷/OneCloud/linux-amlogic-toolkit/bin/src/abootimg'
Cleanup done
make: Entering directory '/media/usernam/新加卷/OneCloud/linux-amlogic-toolkit/bin/src/simg2img'
cc -c -O2 -Wall -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE=1 -Iinclude backed_block.c -o backed_block.o
cc -c -O2 -Wall -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE=1 -Iinclude output_file.c -o output_file.o
cc -c -O2 -Wall -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE=1 -Iinclude sparse.c -o sparse.o
cc -c -O2 -Wall -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE=1 -Iinclude sparse_crc32.c -o sparse_crc32.o
cc -c -O2 -Wall -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE=1 -Iinclude sparse_err.c -o sparse_err.o
cc -c -O2 -Wall -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE=1 -Iinclude sparse_read.c -o sparse_read.o
ar rc libsparse.a backed_block.o output_file.o sparse.o sparse_crc32.o sparse_err.o sparse_read.o
ranlib libsparse.a
cc -O2 -Wall -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE=1 -Iinclude -o simg2img simg2img.c -L. -lsparse -lm -lz
cc -O2 -Wall -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE=1 -Iinclude -o simg2simg simg2simg.c -L. -lsparse -lm -lz
cc -O2 -Wall -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE=1 -Iinclude -o img2simg img2simg.c -L. -lsparse -lm -lz
cc -O2 -Wall -D_FILE_OFFSET_BITS=64 -D_LARGEFILE64_SOURCE=1 -Iinclude -o append2simg append2simg.c -L. -lsparse -lm -lz
make: Leaving directory '/media/usernam/新加卷/OneCloud/linux-amlogic-toolkit/bin/src/simg2img'
make: Entering directory '/media/usernam/新加卷/OneCloud/linux-amlogic-toolkit/bin/src/abootimg'
fatal: No names found, cannot describe anything.
if [ ! -f version.h ]; then \
if [ -d .git ]; then \
echo '#define VERSION_STR ""' > version.h; \
else \
echo '#define VERSION_STR ""' > version.h; \
fi \
fi
cc -O3 -Wall -DHAS_BLKID  -c -o abootimg.o abootimg.c
abootimg.c: In function ‘write_bootimg’:
abootimg.c:696:3: warning: ignoring return value of ‘ftruncate’ declared with attribute ‘warn_unused_result’ [-Wunused-result]
  696 |   ftruncate (fileno(img->stream), img->size);
      |   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
cc   abootimg.o  -lblkid -o abootimg
make: Leaving directory '/media/usernam/新加卷/OneCloud/linux-amlogic-toolkit/bin/src/abootimg'
Build done
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/linux-amlogic-toolkit$ ./bin/unpack openwrt-07.29.2023-diy-for-cheng-burn-by-cheng.img
Cleaning up...
umount: output/system: not mounted.
Unpacking image openwrt-07.29.2023-diy-for-cheng-burn-by-cheng.img...
[Msg]Image package version 0x2
[Msg]Unpack item [USB         ,              DDR] to (output/image/DDR.USB) size:11824 bytes
[Msg]Unpack item [USB         ,       UBOOT_COMP] to (output/image/UBOOT_COMP.USB) size:313240 bytes
[Msg]Unpack item [ini         ,     aml_sdc_burn] to (output/image/aml_sdc_burn.ini) size:190 bytes
[Msg]Unpack item [conf        ,         platform] to (output/image/platform.conf) size:116 bytes
[Msg]Unpack item [PARTITION   ,       bootloader] to (output/image/bootloader.PARTITION) size:346008 bytes
[Msg]Unpack item [PARTITION   ,         resource] to (output/image/resource.PARTITION) size:691392 bytes
[Msg]Unpack item [PARTITION   ,             boot] to (output/image/boot.PARTITION) size:48533728 bytes
[Msg]Unpack item [PARTITION   ,           rootfs] to (output/image/rootfs.PARTITION) size:1157552628 bytes
[Msg]Write config file "output/image/image.cfg" OK!
Image unpack OK!
Converting system.PARTITION to system.img...
Cannot open input file output/image/system.PARTITION
Mounting system image...
mount: /media/usernam/新加卷/OneCloud/linux-amlogic-toolkit/output/system: wrong fs type, bad option, bad superblock on /dev/loop20, missing codepage or helper program, or other error.
Unpacking logo...
./bin/unpack: 27: bin/logo_img_packer: not found
Unpacking boot...
boot.img: no Android Magic Value
boot.img: not a valid Android Boot Image.
 
Done
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/linux-amlogic-toolkit$ ./bin/repack myop.img
./bin/repack: 9: bin/recreate: Permission denied
Packing image to myop.img...
[Msg]Pack Item[USB         ,              DDR] from (output/image/DDR.USB),sz[0x2e30]B,
[Msg]Pack Item[USB         ,       UBOOT_COMP] from (output/image/UBOOT_COMP.USB),sz[0x4c798]B,ft[normal]   
[Msg]Pack Item[ini         ,     aml_sdc_burn] from (output/image/aml_sdc_burn.ini),sz[0xbe]B,
[Msg]Pack Item[PARTITION   ,             boot] from (output/image/boot.PARTITION),sz[0x2e490e0]B,ft[sparse] 
[Msg]Pack Item[VERIFY      ,             boot] from (output/image/boot.PARTITION),vry[sha1sum 73c432e6efc6c0412c256be31bf83d8c0cd7677c] 
[Msg]Pack Item[PARTITION   ,       bootloader] from (output/image/bootloader.PARTITION),sz[0x54798]B,ft[normal] 
[Msg]Pack Item[VERIFY      ,       bootloader] from (output/image/bootloader.PARTITION),vry[sha1sum e770dd884adf759e56fef21ca8401583c04e9fe6]   
[Msg]Pack Item[conf        ,         platform] from (output/image/platform.conf),sz[0x74]B,
[Msg]Pack Item[PARTITION   ,         resource] from (output/image/resource.PARTITION),sz[0xa8cc0]B,ft[normal]   
[Msg]Pack Item[VERIFY      ,         resource] from (output/image/resource.PARTITION),vry[sha1sum 26a0e54485d7d2d46b203c6c71afade3406e96ae] 
[Msg]Pack Item[PARTITION   ,           rootfs] from (output/image/rootfs.PARTITION),sz[0x44fed9f4]B,ft[sparse]  
[Msg]Pack Item[VERIFY      ,           rootfs] from (output/image/rootfs.PARTITION),vry[sha1sum 955b01921d1c2520e3129249dae12e31ebc31d35]   
[Msg]version:0x2 crc:0x714cd7f4 size:1207456296 bytes[1151MB]
Pack image[myop.img] OK
Done
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/linux-amlogic-toolkit$ sudo ./bin/repack myop_noreplaceboot.img
[sudo] password for usernam: 
./bin/repack: 9: bin/recreate: Permission denied
Packing image to myop_noreplaceboot.img...
[Msg]Pack Item[USB         ,              DDR] from (output/image/DDR.USB),sz[0x2e30]B,
[Msg]Pack Item[USB         ,       UBOOT_COMP] from (output/image/UBOOT_COMP.USB),sz[0x4c798]B,ft[normal]   
[Msg]Pack Item[ini         ,     aml_sdc_burn] from (output/image/aml_sdc_burn.ini),sz[0xbe]B,
[Msg]Pack Item[PARTITION   ,             boot] from (output/image/boot.PARTITION),sz[0x2e490e0]B,ft[sparse] 
[Msg]Pack Item[VERIFY      ,             boot] from (output/image/boot.PARTITION),vry[sha1sum 73c432e6efc6c0412c256be31bf83d8c0cd7677c] 
[Msg]Pack Item[PARTITION   ,       bootloader] from (output/image/bootloader.PARTITION),sz[0x54798]B,ft[normal] 
[Msg]Pack Item[VERIFY      ,       bootloader] from (output/image/bootloader.PARTITION),vry[sha1sum e770dd884adf759e56fef21ca8401583c04e9fe6]   
[Msg]Pack Item[conf        ,         platform] from (output/image/platform.conf),sz[0x74]B,
[Msg]Pack Item[PARTITION   ,         resource] from (output/image/resource.PARTITION),sz[0xa8cc0]B,ft[normal]   
[Msg]Pack Item[VERIFY      ,         resource] from (output/image/resource.PARTITION),vry[sha1sum 26a0e54485d7d2d46b203c6c71afade3406e96ae] 
[Msg]Pack Item[PARTITION   ,           rootfs] from (output/image/rootfs.PARTITION),sz[0x44fed9f4]B,ft[sparse]  
[Msg]Pack Item[VERIFY      ,           rootfs] from (output/image/rootfs.PARTITION),vry[sha1sum 955b01921d1c2520e3129249dae12e31ebc31d35]   
[Msg]version:0x2 crc:0x714cd7f4 size:1207456296 bytes[1151MB]
Pack image[myop_noreplaceboot.img] OK
Done
usernam@usernam-ubuntu:/media/usernam/新加卷/OneCloud/linux-amlogic-toolkit$ 
```

### portainer

```
portainer http://192.168.0.110:9000/#!/2/docker/images

root@aml-s812:~# docker pull portainer/portainer
Using default tag: latest
latest: Pulling from portainer/portainer
772227786281: Pull complete
96fd13befc87: Pull complete
a38f639c9d7e: Pull complete
40d27ec7417c: Pull complete
Digest: sha256:47b064434edf437badf7337e516e07f64477485c8ecc663ddabbe824b20c672d
Status: Downloaded newer image for portainer/portainer:latest
root@aml-s812:~# docker run -d --name myPortainer -p 9000:9000 --restart=always -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer
764e3e39044889be2c6801820bac1d03e6bcf5cbc7e8a09a3722a2033adc6f38
root@aml-s812:~# sudo mkdir -p /etc/systemd/system/docker.service.d/
root@aml-s812:~# sudo cat <<EOF > /etc/systemd/system/docker.service.d/clear_mount_propagation_flags.conf

[Service]
MountFlags=shared
EOF
root@aml-s812:~# sudo systemctl restart docker.service
Warning: The unit file, source configuration file or drop-ins of docker.service changed on disk. Run 'systemctl daemon-reload' to reload units.
root@aml-s812:~# 'systemctl daemon-reload
exit
^C
root@aml-s812:~# sudo systemctl daemon-reload

```

### clouddriver 

```
clouddriver http://192.168.0.110:19798/

docker run -d 
--name clouddrive 
--restart unless-stopped 
--env CLOUDDRIVE_HOME=/Config 
-v /mnt/clouddrive:/CloudNAS:shared 
-v /mnt/clouddrive:/Config 
-v /mnt/clouddrive:/media:shared 
--network host 
--pid host 
--privileged 
--device /dev/fuse:/dev/fuse 
cloudnas/clouddrive2
login as: root
root@192.168.0.110's password:
Access denied
root@192.168.0.110's password:

Welcome to Armbian 20.12 Buster with Linux 5.9.0-rc7-aml-s812
No end-user support: built from trunk
System load:   3%               Up time:       13 min
Memory usage:  11% of 989M      IP:            192.168.0.110
CPU temp:      39°C             Usage of /:    22% of 6.5G
[ 0 security updates available, 147 updates total: apt upgrade ]
Last check: 2023-09-02 11:16
[ General system configuration (beta): armbian-config ]
Last login: Sat Sep  2 09:28:36 2023 from 192.168.0.109

root@aml-s812:~# cd mnt
-bash: cd: mnt: No such file or directory
root@aml-s812:~# cd /mnt
root@aml-s812:/mnt# ls
root@aml-s812:/mnt# mkdir clouddrive
root@aml-s812:/mnt# sudo mount --make-shared $(df -P /mnt/clouddrive | tail -1 | awk '{ print $6 }')
root@aml-s812:/mnt# docker run -d 
--name clouddrive 
--restart unless-stopped 
-v /mnt/clouddrive:/Config 
-v /mnt/clouddrive:/media:shared 
--network host 
--pid host 
--env CLOUDDRIVE_HOME=/Config 
-v /mnt/clouddrive:/CloudNAS:shared 
-v /mnt/clouddrive:/Config 
-v /mnt/clouddrive:/media:shared 
--network host 
--pid host 
--privileged 
--device /dev/fuse:/dev/fuse 
cloudnas/clouddrive2
Unable to find image 'cloudnas/clouddrive2:latest' locally
latest: Pulling from cloudnas/clouddrive2
f8dec92eec42: Pull complete
15e408f70265: Pull complete
21312d4b79f9: Extracting  2.556MB/6.824MB
646e50c09835: Downloading  180.8kB/8.879MB
bfe795606f12: Download complete
9a5279ce3328: Waiting
^C
root@aml-s812:/mnt# docker run -d     --name clouddrive     --restart unless-stopped     --env CLOUDDRIVE_HOME=/Config     -v /mnt/clouddrive:/CloudNAS:shared     -v /mnt/clouddrive:/Config     -v /mnt/clouddrive:/media:shared     --network host     --pid host     --privileged     --device /dev/fuse:/dev/fuse     cloudnas/clouddrive2
Unable to find image 'cloudnas/clouddrive2:latest' locally
latest: Pulling from cloudnas/clouddrive2
f8dec92eec42: Pull complete
15e408f70265: Pull complete
21312d4b79f9: Pull complete
646e50c09835: Pull complete
bfe795606f12: Pull complete
9a5279ce3328: Pull complete
Digest: sha256:8cc940f539ac4260b4d3efded82726a3d16923de1d5ab073fc8af9916ba4d2de
Status: Downloaded newer image for cloudnas/clouddrive2:latest
6da3532a218eae42e61ad91835da8685387f1de3e50a5ccef4465c5a02390d75
root@aml-s812:/mnt# docker run -d 
--name clouddrive 
--restart unless-stopped 
--name clouddrive 
--env CLOUDDRIVE_HOME=/Config 
--restart unless-stopped 
--env CLOUDDRIVE_HOME=/Config 
-v /mnt/clouddrive:/CloudNAS:shared 
-v /mnt/clouddrive:/Config 
-v /mnt/clouddrive:/media:shared 
--network host 
--pid host 
--privileged 
--device /dev/fuse:/dev/fuse 
docker run -d \    cloudnas/clouddrive2
--name clouddrive 
--restart unless-stopped 
--env CLOUDDRIVE_HOME=/Config 
-v /mnt/clouddrive:/CloudNAS:shared 
-v /mnt/clouddrive:/Config 
-v /mnt/clouddrive:/media:shared 
--network host 
--pid host 
--privileged 
--device /dev/fuse:/dev/fuse 
cloudnas/clouddrive2Unable to find image 'docker:latest' locally
latest: Pulling from library/docker
docker: no matching manifest for unknown in the manifest list entries.
See 'docker run --help'.
root@aml-s812:/mnt#     --name clouddrive 
--restart unless-stopped 
--env CLOUDDRIVE_HOME=/Config 
-v /mnt/clouddrive:/CloudNAS:shared 
-v /mnt/clouddrive:/Config 
-v /mnt/clouddrive:/media:shared 
--network host 
--pid host 
--privileged 
--device /dev/fuse:/dev/fuse 
cloudnas/clouddrive2
```