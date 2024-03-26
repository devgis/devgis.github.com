---
layout: post
title: Web程序相关编程总结
description: 包括Js,css,等各种web相关技术以及Vue等新兴UI框架的学习总结。
date: 2022-10-01 09:01:01
updatedate: 2024-03-26 11:06:26
---

- [HTML 5](#html-5)
- [模块化](#模块化)
- [Javascript](#javascript)
  - [ES8\_新特性](#es8_新特性)
  - [async函数](#async函数)
  - [await函数](#await函数)
  - [async和await结合](#async和await结合)
  - [对象方法扩展](#对象方法扩展)
- [ 字符串填充](#字符串填充)
  - [Promise](#promise)
    - [取消一个 `Promise`](#取消一个promise)
    - [迭代器的应用](#迭代器的应用)
- [JQuery](#jquery)
  - [GET](#get)
  - [POST](#post)
  - [AJAX](#ajax)
- [Angular](#angular)
- [React](#react)
- [Vue.js](#vuejs)
  - [命令式编程\&声明式编程](#命令式编程声明式编程)
- [1. Vue.js是什么?](#1-vuejs是什么)
- [2. 基本使用](#2-基本使用)
- [3. Vue对象的选项](#3-vue对象的选项)
- [1). el](#1-el)
- [2). data](#2-data)
- [3). methods](#3-methods)
- [4). computed](#4-computed)
- [5). watch](#5-watch)
- [4. 过渡动画](#4-过渡动画)
- [5. 生命周期](#5-生命周期)
- [6. 自定义过滤器](#6-自定义过滤器)
- [1). 理解](#1-理解)
- [2). 编码](#2-编码)
- [7. vue内置指令](#7-vue内置指令)
- [8. 自定义指令](#8-自定义指令)
- [1). 注册全局指令](#1-注册全局指令)
- [2). 注册局部指令](#2-注册局部指令)
- [3). 使用指令](#3-使用指令)
- [Bootstrap学习总结](#bootstrap学习总结)
  - [Bootstrap 基础](#bootstrap-基础)
    - [媒体查询（css3特性）](#媒体查询css3特性)
      - [媒体类型](#媒体类型)
      - [媒体特性](#媒体特性)
  - [Bootstrap 布局](#bootstrap-布局)
    - [包装容器](#包装容器)
    - [响应断点](#响应断点)
    - [堆叠顺序 z-index](#堆叠顺序-z-index)
    - [网格系统](#网格系统)
  - [Bootstrap 版式](#bootstrap-版式)
    - [文档案](#文档案)
    - [图片](#图片)
    - [表格](#表格)
    - [代码](#代码)
  - [Bootstrap 通用样式](#bootstrap-通用样式)
    - [文本](#文本)
    - [颜色](#颜色)
    - [边框](#边框)
    - [定位浮动](#定位浮动)
    - [代码弹性盒子](#代码弹性盒子)
    - [其它 对齐等](#其它-对齐等)
  - [Bootstrap 组件](#bootstrap-组件)
    - [按钮](#按钮)
    - [按钮组](#按钮组)
    - [下拉](#下拉)
    - [媒体对象](#媒体对象)
    - [表单](#表单)
    - [进度条](#进度条)
    - [导航栏](#导航栏)
    - [列表组](#列表组)
    - [面包屑](#面包屑)
    - [分页](#分页)
    - [加载指示器（转圈圈）](#加载指示器转圈圈)
    - [按钮卡片](#按钮卡片)
  - [Sass](#sass)
    - [变量](#变量)
    - [嵌套归斥责](#嵌套归斥责)
    - [导入](#导入)
    - [SASS 混合器 混合器继承](#sass-混合器-混合器继承)
- [Font Awesome](#font-awesome)

# HTML 5

# 模块化

什么是模块化？
或根据功能、或根据数据、或根据业务，将一个大程序拆分成互相依赖的小文件，再用简单的方式拼装起来。
模块化要解决的问题：

*   如何包装一个模块的的代码，使之不污染模块外的代码；
*   如何唯一标识一个模块；
*   如何在不增加全局变量的情况下将模块的 API 暴露出去；
    AMD
*   JS 的模块化规范，也主要应用于浏览器端
*   异步
*   AMD 是 RequireJS 
*   运行时加载
*   采用require()它要求两个参数
    require(\['./math', './utils'], function (math, utils) { math.add(2, 3); utils.request(); });
    CMD
*   JS 的模块化规范，也主要应用于浏览器端
*   同步
*   CMD 是 SeaJS 
*   运行时加载
*   与AMD比较两者的区别：CMD 推崇依赖就近，AMD 推崇依赖前置
    // AMD // 依赖必须一开始就写好 // AMD 也支持依赖就近，但 RequireJS 作者和官方文档都是优先推荐依赖前置写法。 define(\['./utils'], function(utils) { utils.request(); }); // CMD define(function(require) { // 依赖可以就近书写 var utils = require('./utils'); utils.request(); });
    CommonJS
    前面说了， AMD、CMD 主要用于浏览器端，随着 node 诞生，服务器端的模块规范 CommonJS 被创建出来。
*   node 的模块化规范，也主要应用于服务器端
*   同步
*   使用 module.exports  require() 
*   运行时加载
    // 暴露模块： const students = {}; const teachers = {}; module.exports = { students, teachers }; // 引用模块： // 引用的整个模块会初始化为一个Module对象； const { teachers } = require('./info.js');
    模块内 module、exports、module.exports、require() 的含义:
*   module 
*   module.exports 
*   exports 
*   require()require() 引用模块的原理
    ESM（ES6 module）
    AMD 、 CMD 等都是在原有JS语法的基础上二次封装的一些方法来解决模块化的方案，ES6 module（在很多地方被简写为 ESM）是语言层面的规范，ES6 module 旨在为浏览器和服务器提供通用的模块解决方案。长远来看，未来无论是基于 JS 的 WEB 端，还是基于 node 的服务器端或桌面应用，模块规范都会统一使用 ES6 module。
*   编译时加载（“静态加载”）import()是运行时加载
*   利用编译时加载，可以对代码做很多之前无法完成的优化：
*   导出接口使用
    export
    import
    // 导出 // config.js const prefix = '<https://github.com>'; const api = \`\${prefix}/ronffy\`; export { prefix, api, } // 导入 import { api as myApi } from './config.js';
    使用import()实现按需加载：
    function foo() { import('./config.js') .then(({ api }) => { }); } const modulePath = './utils' + '/api.js'; import(modulePath);

# Javascript

## [ES8\_新特性](https://www.cnblogs.com/wxf1314/p/16189486.html)

async和await

async和 await两种语法结合可以让异步代码像同步代码一样

## async函数

1\. async函数的返回值为promise对象

2\. promise对象的结果由async函数执行的返回值决定

3.async函数没有返回值不会报错，直接返回undefined

[![复制代码](https://common.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码")

    <script>
        //async 函数
        async function fn(){
            // 返回一个字符串
            // return '哈哈';
            // 返回的结果不是一个 Promise 类型的对象, 返回的结果就是成功 Promise 对象
            // return;
            //抛出错误, 返回的结果是一个失败的 Promise
            // throw new Error('出错啦!');
            //返回的结果如果是一个 Promise 对象
            return new Promise((resolve, reject)=>{
                resolve('成功的数据');
                // reject("失败的错误");
            });
        }
        const result = fn();
        //调用 then 方法
        result.then(value => {
            console.log(value);
        }, reason => {
            console.warn(reason);
        })
    </script>

[![复制代码](https://common.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码")

## await函数

1\. await必须写在async函数中

2\. await右侧的表达式一般为promise对象

3\. await返回的是promise成功的值

4\. await的 promise失败了 , 就会抛出异常 , 需要通过 try...catch捕获处理

[![复制代码](https://common.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码")

    <script>
        //创建 promise 对象
        const p = new Promise((resolve, reject) => {
            // resolve("用户数据");
            reject("失败啦!");
        })

        // await 要放在 async 函数中.
        async function main() {
            try {
                let result = await p;
                console.log(result);
            } catch (e) {
                console.log(e);
            }
        }
        //调用函数
        main();
    </script>

[![复制代码](https://common.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码")

## async和await结合

[![复制代码](https://common.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码")

    <script>
        // 发送 AJAX 请求, 返回的结果是 Promise 对象
        function sendAJAX(url) {
            return new Promise((resolve, reject) => {
                //1. 创建对象
                const x = new XMLHttpRequest();
                //2. 初始化
                x.open('GET', url);
                //3. 发送
                x.send();
                //4. 事件绑定
                x.onreadystatechange = function() {
                    if (x.readyState === 4) {
                        if (x.status >= 200 && x.status < 300) {
                            //成功啦
                            resolve(x.response);
                        } else {
                            //如果失败
                            reject(x.status);
                        }
                    }
                }
            })
        }

        //promise then 方法测试
        // sendAJAX("https://xxx").then(value=>{
        //     console.log(value);
        //     return sendAJAX(`https://${value}`)
        // }).then(value => {
        //     console.log(value);
        // })

        // async 与 await 测试  axios
        async function main() {
            //发送 AJAX 请求
            let result = await sendAJAX("https://xxx");
            //再次测试
            let tianqi = await sendAJAX(`https://${result}`)
            console.log(tianqi);
        }
        main();
    </script>

[![复制代码](https://common.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码")

## 对象方法扩展

1\. Object.values()方法返回一个给定对象的所有可枚举属性值的数组\
2\. Object.entries()方法返回一个给定对象自身可遍历属性 \[key,value] 的数组\
3\. Object.getOwnPropertyDescriptors该方法返回指定对象所有自身属性的描述对象

[![复制代码](https://common.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码")

    <script>
        //声明对象
        const school = {
            name:"IT大学",
            cities:['北京','上海','深圳'],
            xueke: ['前端','Java','大数据','运维']
        };

        //获取对象所有的键
        console.log(Object.keys(school));
        //获取对象所有的值
        console.log(Object.values(school));
        //entries
        console.log(Object.entries(school));
        //创建 Map
        const m = new Map(Object.entries(school));
        console.log(m.get('cities'));

        //对象属性的描述对象
        console.log(Object.getOwnPropertyDescriptors(school));

        // const obj = Object.create(null, {
        //     name: {
        //         //设置值
        //         value: '尚硅谷',
        //         //属性特性
        //         writable: true,
        //         configurable: true,
        //         enumerable: true
        //     } 
        // });
    </script>

[![复制代码](https://common.cnblogs.com/images/copycode.gif "复制代码")](javascript\:void\(0\); "复制代码")

![](https://img2022.cnblogs.com/blog/2237503/202204/2237503-20220425113159781-166021548.png)

#  字符串填充

padStart()、padEnd()方法可以使得字符串达到固定长度，有两个参数，字符串目标长度和填充内容。

    'react'.padStart(10, 'm')      //'mmmmmreact'
    'react'.padEnd(10, 'm')       //' reactmmmmm'
    'react'.padStart(3, 'm')     // 'react'

## Promise

```javascript
<script>
    /*
    function runAsync(){
        var p = new Promise(function(resolve, reject){
            //做一些异步操作
            setTimeout(function(){
                console.log('执行完成');
                resolve('随便什么数据');
            }, 2000);
        });
        return p;            
    }
    runAsync()
        .then(function(data){
            console.log(data);
            //后面可以用传过来的数据做些其他操作
            resolve('有数据吗');
            //......
        })
        .then(function(data){
            console.log(data);
            //后面可以用传过来的数据做些其他操作
            //......
        });
        */
        //resolve是执行成功的方法，reject是执行失败的方法
        //.then 用于链式回调
        function getNumber(){
            var p = new Promise(function(resolve, reject){
                //做一些异步操作
                setTimeout(function(){
                    var num = Math.ceil(Math.random()*10); //生成1-10的随机数
                    if(num<=5){
                        resolve(num);
                    }
                    else{
                        reject('数字太大了');
                    }
                }, 2000);
            });
            return p;            
        }

        //then接受resolve的回调，Catch用来指定reject的回调
        getNumber()
        .then(
            function(data){
                console.log('resolved111');
                console.log(data);
            }, 
            function(reason, data){
                console.log('rejected222');
                console.log(reason);
            }
        );

        

        function runAsync1(){
            var p = new Promise(function(resolve, reject){
                //做一些异步操作
                setTimeout(function(){
                    console.log('异步任务1执行完成');
                    resolve('随便什么数据1');
                }, 1000);
            });
            return p;            
        }
        function runAsync2(){
            var p = new Promise(function(resolve, reject){
                //做一些异步操作
                setTimeout(function(){
                    console.log('异步任务2执行完成');
                    resolve('随便什么数据2');
                }, 2000);
            });
            return p;            
        }
        function runAsync3(){
            var p = new Promise(function(resolve, reject){
                //做一些异步操作
                setTimeout(function(){
                    console.log('异步任务3执行完成');
                    resolve('随便什么数据3');
                }, 2000);
            });
            return p;            
        }
        Promise
        .all([runAsync1(), runAsync2(), runAsync3()]) //all方法的效果实际上是「谁跑的慢，以谁为准执行回调」，那么相对的就有另一个方法「谁跑的快，以谁为准执行回调」，这就是race方法，这个词本来就是赛跑的意思。race的用法与all一样，我们把上面runAsync1的延时改为1秒来看一下：
        .then(function(results){
            console.log(results);
        });

        Promise
        .race([runAsync1(), runAsync2(), runAsync3()]) 
        .then(function(results){
            console.log(results);
        });
</script>
```

### 取消一个 `Promise`

当执行一个超级久的异步请求时，若超过了能够忍受的最大时长，往往需要取消此次请求，但是 `Promise` 并没有类似于 `cancel()` 的取消方法，想结束一个 `Promise` 只能通过 `resolve` 或 `reject` 来改变其状态，社区已经有了满足此需求的开源库 [Speculation](https://github.com/ericelliott/speculation)。

或者利用 `Promise.race()` 的机制来同时注入一个会超时的异步函数，但是 `Promise.race()` 结束后主程序其实还在 `pending` 中，占用的资源并没有释放。

```
Promise.race([anAsyncFn(), timeout(5000)])

```

### 迭代器的应用

若想按顺序执行一堆异步程序，可使用 `reduce`。每次遍历返回一个 `Promise` 对象，在下一轮 `await` 住从而依次执行。相同的场景，也可以使用递归实现，但是在 JavaScript 中随着数量增加，超出调用栈最大次数，便会报错。

    function wasteTime(ms) {
      return new Promise(resolve => setTimeout(() => {
        resolve(ms)
        console.log('waste', ms)
      }, ms))
    }

    // 依次浪费 3 4 5 3 秒 === 15 秒
    const arr = [3000, 4000, 5000, 3000]
    arr.reduce(async (last, curr) => {
      await last
      return wasteTime(curr)
    }, undefined)

你能描述一下渐进增强和优雅降级之间的不同吗?
优雅降级：Web站点在所有新式浏览器中都能正常工作，如果用户使用的是老式浏览器，则代码会检查以确认它们是否能正常工作。由于IE独特的盒模型布局问题，针对不同版本的IE的hack实践过优雅降级了,为那些无法支持功能的浏览器增加候选方案，使之在旧式浏览器上以某种形式降级体验却不至于完全失效.
渐进增强：从被所有浏览器支持的基本功能开始，逐步地添加那些只有新式浏览器才支持的功能,向页面增加无害于基础浏览器的额外样式和功能的。当浏览器支持时，它们会自动地呈现出来并发挥作用。
3.说说你对语义化的理解？
1.去掉或样式丢失的时候能让页面呈现清晰的结构：html本身是没有表现的，我们看到例如
是粗体，字体大小2em，加粗；是加粗的，不要认为这是html的表现，这些其实html默认的css样式在起作用，所以去掉或样式丢失的时候能让页面呈现清晰的结构不是语义化的HTML结构的优点，但是浏览器都有有默认样式，默认样式的目的也是为了更好的表达html的语义，可以说浏览器的默认样式和语义化的HTML结构是不可分割的。
2.屏幕阅读器（如果访客有视障）会完全根据你的标记来“读”你的网页。
3.PDA、手机等设备可能无法像普通电脑的浏览器一样来渲染网页（通常是因为这些设备对CSS的支持较弱）。
4.有利于SEO：和搜索引擎建立良好沟通，有助于爬虫抓取更多的有效信息：爬虫依赖于标签来确定上下文和各个关键字的权重。
5.便于团队开发和维护，语义化更具可读性，是下一步吧网页的重要动向，遵循W3C标准的团队都遵循这个标准，可以减少差异化。
4.你如何对网站的文件和资源进行优化？
期待的解决方案包括：文件合并文件最小化/文件压缩使用CDN托管缓存的使用（多个域名来提供缓存）其他。
5.为什么利用多个域名来提供网站资源会更有效？

*   1.CDN缓存更方便
*   2.突破浏览器并发限制（一般每个域名建立的链接不超过6个）
*   3.Cookieless，节省带宽，尤其是上行带宽一般比下行要慢
*   4.对于UGC的内容和主站隔离，防止不必要的安全问题(上传js窃取主站cookie之类的)。正是这个原因要求用户内容的域名必须不是自己主站的子域名，而是一个完全独立的第三方域名。
*   5.数据做了划分，甚至切到了不同的物理集群，通过子域名来分流比较省事。这个可能被用的不多。 
    PS:关于Cookie的问题，带宽是次要的，安全隔离才是主要的。关于多域名，也不是越多越好，虽然服务器端可以做泛解释，浏览器做dns解释也是耗时间的，而且太多域名，如果要走https的话，还有要多买证书和部署的问题。
    6.请说出三种减少页面加载时间的方法。（加载时间指感知的时间或者实际加载时间）
*   1.优化图片
*   2.图像格式的选择（GIF：提供的颜色较少，可用在一些对颜色要求不高的地方）
*   3.优化CSS（压缩合并css，如margin-top,margin-left…)
*   4.网址后加斜杠（如www\.campr.com/目录，会判断这个“目录是什么文件类型，或者是目录。）
*   5.标明高度和宽度（如果浏览器没有找到这两个参数，它需要一边下载图片一边计算大小，如果图片很多，浏览器需要不断地调整页面。这不但影响速度，也影响浏览体验。当浏览器知道了高度和宽度参数后，即使图片暂时无法显示，页面上也会腾出图片的空位，然后继续加载后面的内容。从而加载时间快了，浏览体验也更好了。）
*   6.减少http请求（合并文件，合并图片）。
    7.如果你参与到一个项目中，发现他们使用Tab来缩进代码，但是你喜欢空格，你会怎么做？
    建议这个项目使用像EditorConfig(<http://editorconfig.org/)>之类的规范 
    为了保持一致性，接受项目原有的风格 
    直接使用VIM的retab命令
    8.请写一个简单的幻灯效果页面
    如果不使用JS来完成，可以加分。（如：纯CSS实现的幻灯片效果）
    9.你都使用哪些工具来测试代码的性能？
    Profiler,JSPerf（<http://jsperf.com/nexttick-vs-setzerotimeout-vs-settimeout>）,Dromaeo。
    10.如果今年你打算熟练掌握一项新技术，那会是什么？
    nodejs，html5，css3，less等。
    11.请谈一下你对网页标准和标准制定机构重要性的理解。
    w3c存在的意义就是让浏览器兼容性问题尽量小，首先是他们对浏览器开发者的约束，然后是对开发者的约束。
    12.什么是FOUC（无样式内容闪烁）？你如何来避免FOUC？
    FOUC(Flash Of Unstyled Content)–文档样式闪烁
    而引用CSS文件的@import就是造成这个问题的罪魁祸首。IE会先加载整个HTML文档的DOM，然后再去导入外部的CSS文件，因此，在页面DOM加载完成到CSS导入完成中间会有一段时间页面上的内容是没有样式的，这段时间的长短跟网速，电脑速度都有关系。解决方法简单的出奇，只要在之间加入一个或者
        
    this is first p
        add
    运行后，你会发现新增的p元素，并没用被绑定click事件。你可以改成.live(“click”)方式解决此问题，代码如下：
     `$(function() {
         $`("p").live("click",function() {
             // 改成live方式
             alert(`$(this).text());
         });
     
         $`("button").click(function() {
             `$("
    this is second p
    ").appendTo("body");
         });
    })
    但我并不建议大家这么做，我想用另一种方式去解决这个问题，代码如下：
     $`(function() {
         `$("p").click(function() {
             alert($`(this).text());
         });
     
         `$("button").click(function() {
             $`("
    this is second p
    ").click(function() {
                 // 为新增的元素重新绑定一次
                 alert(`$(this).text());
            }).appendTo("body");
        });
    })
    虽然我把绑定事件重新写了一次，代码多了点，但这种方式的效率明显高于live()方式，特别是在频繁的DOM操作中，这点非常明显。
    80.请解释.end()的用途。
    在官方的API上是这样描述end()方法的：“回到最近的一个”破坏性”操作之前。即，将匹配的元素列表变为前一次的状态。”；看样子好像是找到最后一次操作的元素的上一元素，在如下的例子中：html代码：
    复制代码代码如下:
    测试内容1
    测试内容2
    jQuery代码：
    复制代码代码如下:
    $`('
    新增内容
    ').appendTo('div').addClass('c1').end().addClass('c2');
    复制代码代码如下:
    测试内容1
        新增内容
    测试内容2
        新增内容
    这里我就有一点不太明白了，怎么只有第一个
    标签有两个样式，end()方法后返回的是什么,在火狐里添加了监控，得到如下结果1.`$(‘新增内容‘).appendTo(‘div’)返回的是：\[p,p]对象数组，即新增后的两个p标签；
    2.$`(‘新增内容‘).appendTo(‘div’).addClass(‘c1’)返回的是：\[p.c1,p.c1]对象数组，即添加了c1类样式后的p对象数组；
    3.`$(‘新增内容‘).appendTo(‘div’).addClass(‘c1’).end()返回的是\[p.c1],是第1个中的,在2操作中，最后“破坏”的是第2个中的,所以他的前一次操作的对象是第1个中的,返回的就是它;
    4.$`(‘新增内容‘).appendTo(‘div’).addClass(‘c1’).end().addClass(‘c2’)返回的仍然是第1个中的;现在算是有点明白了，关键是要搞清楚最后一次操作的元素的上一元素是什么。
    81.你如何给一个事件处理函数命名空间，为什么要这样做？
    任何作为type参数的字符串都是合法的；如果一个字符串不是原生的JavaScript事件名，那么这个事件处理函数会绑定到一个自定义事件上。这些自定义事件绝对不会由浏览器触发，但可以通过使用.trigger()或者.triggerHandler()在其他代码中手动触发。如果type参数的字符串中包含一个点(.)字符，那么这个事件就看做是有命名空间的了。这个点字符就用来分隔事件和他的命名空间。举例来说，如果执行.bind(‘click.name’,handler)，那么字符串中的click是事件类型，而字符串name就是命名空间。命名空间允许我们取消绑定或者触发一些特定类型的事件，而不用触发别的事件。参考unbind()来获取更多信息。
    jQuery的bind/unbind方法应该说使用很简单，而且大多数时候可能并不会用到，取而代之的是直接用click/keydown之类的事件名风格的方法来做事件绑定操作。
    但假设如下情况：需要在运行时根据用户交互的结果进行不同click事件处理逻辑的绑定，因而理论上会无数次对某一个事件进行bind/unbind操作。但又希望unbind的时候只把自己绑上去的处理逻辑给释放掉而不是所有其他地方有可能的额外的同一事件绑定逻辑。这时候如果直接用.click()/.bind(‘click’)加上.unbind(‘click’)来进行重复绑定的话，被unbind掉的将是所有绑定在元素上的click处理逻辑，潜在会影响到该元素其他第三方的行为。
    当然如果在bind的时候是显示定义了function变量的话，可以在unbind的时候提供function作为第二个参数来指定只unbind其中一个处理逻辑，但实际应用中很可能会碰到各种进行匿名函数绑定的情况。对于这种问题，jQuery的解决方案是使用事件绑定的命名空间。即在事件名称后添加.something来区分自己这部分行为逻辑范围。
    比如用.bind(‘click.myCustomRoutine’,function(){…});同样是把匿名函数绑定到click事件（你可以用自己的命名空间多次绑定不同的行为方法上去），当unbind的时候用.unbind(‘click.myCustomRoutine’)即可释放所有绑定到.myCustomRoutine命名空间的click事件，而不会解除其他通过.bind(‘click’)或另外的命名空间所绑定的事件行为。同时，使用命令空间还可以让你一次性unbind所有此命名空间下的自定义事件绑定，通过.unbind(‘.myCustomRoutine’)即可。要注意的是，jQuery的命名空间并不支持多级空间。
    因为在jQuery里面，如果用.unbind(‘click.myCustomRoutine.myCustomSubone’)，解除的是命名空间分别为myCustomRoutine和myCustomSubone的两个并列命名空间下的所有click事件，而不是”myCustomRoutine下的myCustomSubone子空间”。
    82.请说出你可以传递给jQuery方法的四种不同值。
    选择器（字符串），HTML（字符串），回调函数，HTML元素，对象，数组，元素数组，jQuery对象等。
    83.什么是效果队列？
    jQuery中有个动画队列的机制。当我们对一个对象添加多次动画效果时后添加的动作就会被放入这个动画队列中，等前面的动画完成后再开始执行。可是用户的操作往往都比动画快，如果用户对一个对象频繁操作时不处理动画队列就会造成队列堆积，影响到效果。jQuery中有stop这个方法可以停止当前执行的动画，并且它有两个布尔参数，默认值都为false。第一个参数为true时会清空动画队列，第二个参数为true时会瞬间完成掉当前动画。所以，我们经常使用obj.stop(true,true)来停止动画。但是这还不够！正如jQuery文档中的说法，即使第二个参数为true，也仅仅是把当前在执行的动画跳转到完成状态。这时第一个参数如果也为true，后面的队列就会被清空。如果一个效果需要多个动画同时处理，我们仅完成其中的一个而把后面的队列丢弃了，这就会出现意料之外的结果。
    84.请指出.get()，\[]，eq()的区别。
    eq:返回是一个jquery对象作用是将匹配的元素集合缩减为一个元素。这个元素在匹配元素集合中的位置变为0，而集合长度变成1。
    get:是一个html对象数组作用是取得其中一个匹配的元素。num表示取得第几个匹配的元素。
    85.请指出和和.fn的区别，或者说出`$.fn的用途。
    Jquery为开发插件提供了两个方法，分别是：
    $`.extend(obj);
    \$.fn.extend(obj);
*   1.那么这两个分别是什么意思？ 
    `$.extend(obj);是为了扩展jquery本身，为类添加新的方法。
    $`.fn.extend(obj);给JQUERY对象添加方法。
*
    1.

.fn中的fn是什么意思，其实是prototype，即.fn中的fn是什么意思，其实是prototype，即.fn=`$.prototype; 具体用法请看下面的例子：
$`.extend({
 
    add\:function(a, b) {
        return a+b;
    }
})
 
`$.add(5,8); // return 13
注意没有，这边的调用直接调用，前面不用任何对象。直接$`.+方法名
`$.fn.extend(obj)；对prototype进行扩展，为jquery类添加成员函数，jquery类的实例可以使用这个成员函数。
 $`.fn.extend({
 
     clickwhile\:function(){
 
         `$(this).click(function(){
             alert($`(this).val())
         })
     }
 })
 
`$('input').clickwhile(); // 当点击输入框会弹出该对象的Value值
注意调用时候前面是有对象的。即$`(‘input’)这么个东西。
![0](http://www.aliyue.net/wp-content/uploads/2016/06/msJS.jpg "0")
本宝宝第一次面试的时候比这个还紧张呢！！！
1.介绍js的基本数据类型
Undefined、Null、Boolean、Number、String
2.js有哪些内置对象？
数据封装类对象：Object、Array、Boolean、Number 和 String
其他对象：Function、Arguments、Math、Date、RegExp、Error
3.this对象的理解
this总是指向函数的直接调用者（而非间接调用者）；
如果有new关键字，this指向new出来的那个对象；
在事件中，this指向触发这个事件的对象，特殊的是，IE中的attachEvent中的this总是指向全局对象Window；
4.eval是做什么的？
它的功能是把对应的字符串解析成JS代码并运行；
应该避免使用eval，不安全，非常耗性能（2次，一次解析成js语句，一次执行）。
由JSON字符串转换为JSON对象的时候可以用eval，var obj =eval(‘(‘+ str +’)’);
5.DOM怎样添加、移除、移动、复制、创建和查找节点
![0](https://common.cnblogs.com/images/copycode.gif "0")
// 创建新节点 createDocumentFragment() //创建一个DOM片段 createElement() //创建一个具体的元素 createTextNode() //创建一个文本节点 // 添加、移除、替换、插入 appendChild() removeChild() replaceChild() insertBefore() //在已有的子节点前插入一个新的子节点 // 查找 getElementsByTagName() //通过标签名称 getElementsByName() //通过元素的Name属性的值(IE容错能力较强，会得到一个数组，其中包括id等于name值的) getElementById() //通过元素Id，唯一性
![0](https://common.cnblogs.com/images/copycode.gif "0")
6.null和undefined的区别？
null是一个表示”无”的对象，转为数值时为0；undefined是一个表示”无”的原始值，转为数值时为NaN。
undefined：
（1）变量被声明了，但没有赋值时，就等于undefined。
（2) 调用函数时，应该提供的参数没有提供，该参数等于undefined。
（3）对象没有赋值的属性，该属性的值为undefined。
（4）函数没有返回值时，默认返回undefined。
null：
（1） 作为函数的参数，表示该函数的参数不是对象。
（2） 作为对象原型链的终点。
7.new操作符具体干了什么呢?
（1）创建一个空对象，并且 this 变量引用该对象，同时还继承了该函数的原型。
（2）属性和方法被加入到 this 引用的对象中。
（3）新创建的对象由 this 所引用，并且最后隐式的返回 this 。
8.JSON 的了解？
JSON(JavaScript Object Notation) 是一种轻量级的数据交换格式。它是基于JavaScript的一个子集。数据格式简单, 易于读写, 占用带宽小。
格式：采用键值对，例如：{‘age’:’12’, ‘name’:’back’}
9.call() 和 apply() 的区别和作用？
apply()函数有两个参数：第一个参数是上下文，第二个参数是参数组成的数组。如果上下文是null，则使用全局对象代替。
如：function.apply(this,\[1,2,3]);
call()的第一个参数是上下文，后续是实例传入的参数序列。
如：function.call(this,1,2,3);
10.如何获取UA？
function whatBrowser() { document.Browser.Name.value=navigator.appName; document.Browser.Version.value=navigator.appVersion; document.Browser.Code.value=navigator.appCodeName; document.Browser.Agent.value=navigator.userAgent; }
明天更新一些面试比较杂乱的问题，还是老样子，大家面试有遇到什么新的问题留言给我一并记下来！让我们更多小伙伴不害怕面试。变态的面试题就不要了，因为有些面试官真心变态他不会的都拿出来！
[BAT及各大互联网公司2014前端笔试面试题--Html,Css篇](https://www.cnblogs.com/coco1s/p/4034937.html)
　　很多面试题是我自己面试BAT亲身经历碰到的。整理分享出来希望更多的前端er共同进步吧，不仅适用于求职者，对于巩固复习前端基础更是大有裨益。
　　而更多的题目是我一路以来收集的，也有往年的，答案不确保一定正确，如有错误或有更好的解法，还请斧正。
　　前面几题是会很基础，越下越有深度。
　　附上第一篇：BAT及各大互联网公司2014前端笔试面试题--JavaScript篇
 
　　Html篇：
　　1.你做的页面在哪些流览器测试过？这些浏览器的内核分别是什么?

*    IE: trident内核 
*    Firefox：gecko内核 
*    Safari\:webkit内核
*    Opera:以前是presto内核，Opera现已改用Google Chrome的Blink内核
*    Chrome\:Blink(基于webkit，
    [Google与Opera Software共同开发](http://baike.baidu.com/view/1369399.htm#1_5)) 
    　　
    　　2.每个HTML文件里开头都有个很重要的东西，Doctype，知道这是干什么的吗？
    　　答案： 声明位于文档中的最前面的位置，处于  标签之前。此标签可告知浏览器文档使用哪种 HTML 或 XHTML 规范。（重点：告诉浏览器按照何种规范解析页面）
     
    　　3.Quirks模式是什么？它和Standards模式有什么区别
    　　答案：
    　　从IE6开始，引入了Standards模式，标准模式中，浏览器尝试给符合标准的文档在规范上的正确处理达到在指定浏览器中的程度。
    　　在IE6之前CSS还不够成熟，所以IE5等之前的浏览器对CSS的支持很差， IE6将对CSS提供更好的支持，然而这时的问题就来了，因为有很多页面是基于旧的布局方式写的，而如果IE6 支持CSS则将令这些页面显示不正常，如何在即保证不破坏现有页面，又提供新的渲染机制呢？
    　　在写程序时我们也会经常遇到这样的问题，如何保证原来的接口不变，又提供更强大的功能，尤其是新功能不兼容旧功能时。遇到这种问题时的一个常见做法是增加参数和分支，即当某个参数为真时，我们就使用新功能，而如果这个参数 不为真时，就使用旧功能，这样就能不破坏原有的程序，又提供新功能。IE6也是类似这样做的，它将DTD当成了这个“参数”，因为以前的页面大家都不会去写DTD，所以IE6就假定 如果写了DTD，就意味着这个页面将采用对CSS支持更好的布局，而如果没有，则采用兼容之前的布局方式。这就是Quirks模式（怪癖模式，诡异模式，怪异模式）。
    　　区别：
    　　总体会有布局、样式解析和脚本执行三个方面的区别。
    　　盒模型：在W3C标准中，如果设置一个元素的宽度和高度，指的是元素内容的宽度和高度，而在Quirks 模式下，IE的宽度和高度还包含了padding和border。
          
    ![0](https://images0.cnblogs.com/blog/608782/201410/191309249047905.png "0")
    　　设置行内元素的高宽：在Standards模式下，给等行内元素设置wdith和height都不会生效，而在quirks模式下，则会生效。
    　　设置百分比的高度：在standards模式下，一个元素的高度是由其包含的内容来决定的，如果父元素没有设置百分比的高度，子元素设置一个百分比的高度是无效的用margin:0 auto设置水平居中：使用margin:0 auto在standards模式下可以使元素水平居中，但在quirks模式下却会失效。
    　　（还有很多，答出什么不重要，关键是看他答出的这些是不是自己经验遇到的，还是说都是看文章看的，甚至完全不知道。）
     
    　　4.div+css的布局较table布局有什么优点？
*   改版的时候更方便 只要改css文件。
*   页面加载速度更快、结构化清晰、页面显示简洁。
*   表现与结构相分离。
*   易于优化（seo）搜索引擎更友好，排名更容易靠前。
     
    　　5.a：img的alt与title有何异同？b：strong与em的异同？
    　　答案：
    　　a:
*   alt(alt text):为不能显示图像、窗体或applets的用户代理（UA），alt属性用来指定替换文字。替换文字的语言由lang属性指定。(在IE浏览器下会在没有title时把alt当成 tool tip显示)
*   title(tool tip):该属性为设置该属性的元素提供建议性的信息。
    　　b:
*   strong:粗体强调标签，强调，表示内容的重要性
*   em:斜体强调标签，更强烈强调，表示内容的强调点
    　　
    　　6.你能描述一下渐进增强和优雅降级之间的不同吗?
*   渐进增强 progressive enhancement：针对低版本浏览器进行构建页面，保证最基本的功能，然后再针对高级浏览器进行效果、交互等改进和追加功能达到更好的用户体验。
*   优雅降级 graceful degradation：一开始就构建完整的功能，然后再针对低版本浏览器进行兼容。
    　　区别：优雅降级是从复杂的现状开始，并试图减少用户体验的供给，而渐进增强则是从一个非常基础的，能够起作用的版本开始，并不断扩充，以适应未来环境的需要。降级（功能衰减）意味着往回看；而渐进增强则意味着朝前看，同时保证其根基处于安全地带。　
    　　“优雅降级”观点
    　　“优雅降级”观点认为应该针对那些最高级、最完善的浏览器来设计网站。而将那些被认为“过时”或有功能缺失的浏览器下的测试工作安排在开发周期的最后阶段，并把测试对象限定为主流浏览器（如 IE、Mozilla 等）的前一个版本。
    　　在这种设计范例下，旧版的浏览器被认为仅能提供“简陋却无妨 (poor, but passable)” 的浏览体验。你可以做一些小的调整来适应某个特定的浏览器。但由于它们并非我们所关注的焦点，因此除了修复较大的错误之外，其它的差异将被直接忽略。
    　　“渐进增强”观点
    　　“渐进增强”观点则认为应关注于内容本身。
    　　内容是我们建立网站的诱因。有的网站展示它，有的则收集它，有的寻求，有的操作，还有的网站甚至会包含以上的种种，但相同点是它们全都涉及到内容。这使得“渐进增强”成为一种更为合理的设计范例。这也是它立即被 Yahoo! 所采纳并用以构建其“分级式浏览器支持 (Graded Browser Support)”策略的原因所在。
    　　那么问题来了。现在产品经理看到IE6,7,8网页效果相对高版本现代浏览器少了很多圆角，阴影（CSS3），要求兼容（使用图片背景，放弃CSS3），你会如何说服他？
    　　（自由发挥）
    　　
    　　7.为什么利用多个域名来存储网站资源会更有效？
*   CDN缓存更方便 
*   突破浏览器并发限制 
*   节约cookie带宽 
*   节约主域名的连接数，优化页面响应速度 
*   防止不必要的安全问题
     
    　　8.请谈一下你对网页标准和标准制定机构重要性的理解。
    　　（无标准答案）网页标准和标准制定机构都是为了能让web发展的更‘健康’，开发者遵循统一的标准，降低开发难度，开发成本，SEO也会更好做，也不会因为滥用代码导致各种BUG、安全问题，最终提高网站易用性。
     
    　　9.请描述一下cookies，sessionStorage和localStorage的区别？　　
    　　sessionStorage用于本地存储一个会话（session）中的数据，这些数据只有在同一个会话中的页面才能访问并且当会话结束后数据也随之销毁。因此sessionStorage不是一种持久化的本地存储，仅仅是会话级别的存储。而localStorage用于持久化的本地存储，除非主动删除数据，否则数据是永远不会过期的。
    　　web storage和cookie的区别
*   Web Storage的概念和cookie相似，区别是它是为了更大容量存储设计的。Cookie的大小是受限的，并且每次你请求一个新的页面的时候Cookie都会被发送过去，这样无形中浪费了带宽，另外cookie还需要指定作用域，不可以跨域调用。
*   除此之外，Web Storage拥有setItem,getItem,removeItem,clear等方法，不像cookie需要前端开发者自己封装setCookie，getCookie。但是Cookie也是不可以或缺的：Cookie的作用是与服务器进行交互，作为HTTP规范的一部分而存在 ，而Web Storage仅仅是为了在本地“存储”数据而生。
     
    　　10.简述一下src与href的区别。
    　　答案：
    　　src用于替换当前元素，href用于在当前文档和引用资源之间确立联系。
    　　src是source的缩写，指向外部资源的位置，指向的内容将会嵌入到文档中当前标签所在位置；在请求src资源时会将其指向的资源下载并应用到文档内，例如js脚本，img图片和frame等元素。
    　　
    　　当浏览器解析到该元素时，会暂停其他资源的下载和处理，直到将该资源加载、编译、执行完毕，图片和框架等元素也如此，类似于将所指向资源嵌入当前标签内。这也是为什么将js脚本放在底部而不是头部。
     
    　　href是Hypertext Reference的缩写，指向网络资源所在位置，建立和当前元素（锚点）或当前文档（链接）之间的链接，如果我们在文档中添加
    　　
    　　那么浏览器会识别该文档为css文件，就会并行下载资源并且不会停止对当前文档的处理。这也是为什么建议使用link方式来加载css，而不是使用@import方式。
     
    　　11.知道的网页制作会用到的图片格式有哪些？
    　　答案：
    　　png-8，png-24，jpeg，gif，svg。
    　　但是上面的那些都不是面试官想要的最后答案。面试官希望听到是Webp,Apng。（是否有关注新技术，新鲜事物）
    　　科普一下Webp：WebP格式，谷歌（google）开发的一种旨在加快图片加载速度的图片格式。图片压缩体积大约只有JPEG的2/3，并能节省大量的服务器带宽资源和数据空间。Facebook Ebay等知名网站已经开始测试并使用WebP格式。
    　　在质量相同的情况下，WebP格式图像的体积要比JPEG格式图像小40%。
    　　Apng：全称是“Animated Portable Network Graphics”, 是PNG的位图动画扩展，可以实现png格式的动态图片效果。04年诞生，但一直得不到各大浏览器厂商的支持，直到日前得到 iOS safari 8的支持，有望代替GIF成为下一代动态图标准。
     
    　　12.知道什么是微格式吗？谈谈理解。在前端构建中应该考虑微格式吗？
    　　答案：
    　　微格式（Microformats）是一种让机器可读的语义化XHTML词汇的集合，是结构化数据的开放标准。是为特殊应用而制定的特殊格式。
    　　优点：将智能数据添加到网页上，让网站内容在搜索引擎结果界面可以显示额外的提示。（应用范例：豆瓣，有兴趣自行google）
    　　
    　　13.在css/js代码上线之后开发人员经常会优化性能，从用户刷新网页开始，一次js请求一般情况下有哪些地方会有缓存处理？
    　　答案：dns缓存，cdn缓存，浏览器缓存，服务器缓存。
     
    　　14.一个页面上有大量的图片（大型电商网站），加载很慢，你有哪些方法优化这些图片的加载，给用户更好的体验。
*   图片懒加载，在页面上的未可视区域可以添加一个滚动条事件，判断图片位置与浏览器顶端的距离与页面的距离，如果前者小于后者，优先加载。
*   如果为幻灯片、相册等，可以使用图片预加载技术，将当前展示图片的前一张和后一张优先下载。
*   如果图片为css图片，可以使用CSSsprite，SVGsprite，Iconfont、Base64等技术。
*   如果图片过大，可以使用特殊编码的图片，加载时会先加载一张压缩的特别厉害的缩略图，以提高用户体验。
*   如果图片展示区域小于图片的真实大小，则因在服务器端根据业务需要先行进行图片压缩，图片压缩后大小与展示一致。 
    　　
    　　15.你如何理解HTML结构的语义化？　　
*   去掉或样式丢失的时候能让页面呈现清晰的结构：
    html本身是没有表现的，我们看到例如
    是粗体，字体大小2em，加粗；是加粗的，不要认为这是html的表现，这些其实html默认的css样式在起作用，所以去掉或样式丢失的时候能让页面呈现清晰的结构不是语义化的HTML结构的优点，但是浏览器都有有默认样式，默认样式的目的也是为了更好的表达html的语义，可以说浏览器的默认样式和语义化的HTML结构是不可分割的。
*   屏幕阅读器（如果访客有视障）会完全根据你的标记来“读”你的网页.
    　　例如,如果你使用的含语义的标记,屏幕阅读器就会“逐个拼出”你的单词,而不是试着去对它完整发音.
*   PDA、手机等设备可能无法像普通电脑的浏览器一样来渲染网页（通常是因为这些设备对CSS的支持较弱）
    　　使用语义标记可以确保这些设备以一种有意义的方式来渲染网页.理想情况下,观看设备的任务是符合设备本身的条件来渲染网页.
    　　语义标记为设备提供了所需的相关信息,就省去了你自己去考虑所有可能的显示情况（包括现有的或者将来新的设备）.例如,一部手机可以选择使一段标记了标题的文字以粗体显示.而掌上电脑可能会以比较大的字体来显示.无论哪种方式一旦你对文本标记为标题,您就可以确信读取设备将根据其自身的条件来合适地显示页面.
*   搜索引擎的爬虫也依赖于标记来确定上下文和各个关键字的权重
    　　过去你可能还没有考虑搜索引擎的爬虫也是网站的“访客”,但现在它们他们实际上是极其宝贵的用户.没有他们的话,搜索引擎将无法索引你的网站,然后一般用户将很难过来访问.
*   你的页面是否对爬虫容易理解非常重要,因为爬虫很大程度上会忽略用于表现的标记,而只注重语义标记.
    　　因此,如果页面文件的标题被标记,而不是,那么这个页面在搜索结果的位置可能会比较靠后.除了提升易用性外,语义标记有利于正确使用CSS和JavaScript,因为其本身提供了许多“钩钩”来应用页面的样式与行为.
    SEO主要还是靠你网站的内容和外部链接的。
*   便于团队开发和维护
    　　W3C给我们定了一个很好的标准，在团队中大家都遵循这个标准，可以减少很多差异化的东西，方便开发和维护，提高开发效率，甚至实现模块化开发。
     
    　　16.谈谈以前端角度出发做好SEO需要考虑什么？
*   了解搜索引擎如何抓取网页和如何索引网页
    　　你需要知道一些搜索引擎的基本工作原理，各个搜索引擎之间的区别，搜索机器人（SE robot 或叫 web crawler）如何进行工作，搜索引擎如何对搜索结果进行排序等等。
*   Meta标签优化
    　　主要包括主题（Title)，网站描述(Description)，和关键词（Keywords）。还有一些其它的隐藏文字比如Author（作者），Category（目录），Language（编码语种）等。
*   如何选取关键词并在网页中放置关键词
    　　搜索就得用关键词。关键词分析和选择是SEO最重要的工作之一。首先要给网站确定主关键词（一般在5个上下），然后针对这些关键词进行优化，包括关键词密度（Density），相关度（Relavancy），突出性（Prominency）等等。
*   了解主要的搜索引擎
    　　虽然搜索引擎有很多，但是对网站流量起决定作用的就那么几个。比如英文的主要有Google，Yahoo，Bing等；中文的有百度，搜狗，有道等。不同的搜索引擎对页面的抓取和索引、排序的规则都不一样。还要了解各搜索门户和搜索引擎之间的关系，比如AOL网页搜索用的是Google的搜索技术，MSN用的是Bing的技术。
*   主要的互联网目录
    　　Open Directory自身不是搜索引擎，而是一个大型的网站目录，他和搜索引擎的主要区别是网站内容的收集方式不同。目录是人工编辑的，主要收录网站主页；搜索引擎是自动收集的，除了主页外还抓取大量的内容页面。
*   按点击付费的搜索引擎
    　　搜索引擎也需要生存，随着互联网商务的越来越成熟，收费的搜索引擎也开始大行其道。最典型的有Overture和百度，当然也包括Google的广告项目Google Adwords。越来越多的人通过搜索引擎的点击广告来定位商业网站，这里面也大有优化和排名的学问，你得学会用最少的广告投入获得最多的点击。
*   搜索引擎登录
    　　网站做完了以后，别躺在那里等着客人从天而降。要让别人找到你，最简单的办法就是将网站提交（submit）到搜索引擎。如果你的是商业网站，主要的搜索引擎和目录都会要求你付费来获得收录（比如Yahoo要299美元），但是好消息是（至少到目前为止）最大的搜索引擎Google目前还是免费，而且它主宰着60％以上的搜索市场。
*   链接交换和链接广泛度（Link Popularity）
    　　网页内容都是以超文本（Hypertext）的方式来互相链接的，网站之间也是如此。除了搜索引擎以外，人们也每天通过不同网站之间的链接来Surfing（“冲浪”）。其它网站到你的网站的链接越多，你也就会获得更多的访问量。更重要的是，你的网站的外部链接数越多，会被搜索引擎认为它的重要性越大，从而给你更高的排名。
*   合理的标签使用 
    　
     
    　　Css篇：
    　　1.有哪项方式可以对一个DOM设置它的CSS样式？　　
*   外部样式表，引入一个外部css文件
*   内部样式表，将css代码放在  标签内部
*   内联样式，将css样式直接定义在 HTML 元素内部
    　　
    　　2.CSS都有哪些选择器？
*   派生选择器（用HTML标签申明）
*   id选择器（用DOM的ID申明）
*   类选择器（用一个样式类名申明）
*   属性选择器（用DOM的属性申明，属于CSS2，IE6不支持，不常用，不知道就算了）
    　　除了前3种基本选择器，还有一些扩展选择器，包括
*   后代选择器（利用空格间隔，比如div .a{  }）
*   群组选择器（利用逗号间隔，比如p,div,#a{  }）　
    　　那么问题来了，CSS选择器的优先级是怎么样定义的？
    　　基本原则：
    　　一般而言，选择器越特殊，它的优先级越高。也就是选择器指向的越准确，它的优先级就越高。
    　　复杂的计算方法：
*   用1表示派生选择器的优先级
*   用10表示类选择器的优先级
*   用100标示ID选择器的优先级
    *   div.test1 .span var 优先级 1+10 +10 +1  
    *   span#xxx .songs li 优先级1+100 + 10 + 1  
    *   \#xxx li 优先级 100 +1 
        　　那么问题来了，看下列代码，
        标签内的文字是什么颜色的？。
        ![0](https://common.cnblogs.com/images/copycode.gif "0")
        1 \<style> 2 .classA{ color\:blue;} 3 4 .classB{ color\:red;} 5 \</style> 6 7 \<body> 8 9 \<p class='classB classA'> 123 \</p> 10 11 \</body>
        ![0](https://common.cnblogs.com/images/copycode.gif "0")
        　　答案：red。与样式定义在文件中的先后顺序有关，即是后面的覆盖前面的，与在
        中的先后关系无关。 
        　　
        　　3.CSS中可以通过哪些属性定义，使得一个DOM元素不显示在浏览器可视范围内？　　
        　　最基本的：
        　　设置display属性为none，或者设置visibility属性为hidden
        　　技巧性：
        　　设置宽高为0，设置透明度为0，设置z-index位置在-1000
         
        　　4.超链接访问过后hover样式就不出现的问题是什么？如何解决？
        　　答案：被点击访问过的超链接样式不在具有hover和active了,解决方法是改变CSS属性的排列顺序: L-V-H-A（link,visited,hover,active）
         
        　　5.什么是Css Hack？ie6,7,8的hack分别是什么？
        　　答案：针对不同的浏览器写不同的CSS code的过程，就是CSS hack。
        　　示例如下：
        ![0](https://common.cnblogs.com/images/copycode.gif "0")
        1 #test { 2 width:300px; 3 height:300px; 4 5 background-color\:blue; /\*firefox\*/ 6 background-color\:red\9; /\*all ie\*/ 7 background-color\:yellow\0; /\*ie8\*/ 8 +background-color\:pink; /\*ie7\*/ 9 \_background-color\:orange; /\*ie6\*/ } 10 \:root #test { background-color\:purple\9; } /\*ie9\*/ 11 @media all and (min-width:0px){ #test {background-color\:black\0;} } /\*opera\*/ 12 @media screen and (-webkit-min-device-pixel-ratio:0){ #test {background-color\:gray;} } /\*chrome and safari\*/
        ![0](https://common.cnblogs.com/images/copycode.gif "0")
         
        　　6.请用Css写一个简单的幻灯片效果页面
        　　答案：知道是要用css3。使用animation动画实现一个简单的幻灯片效果。
        ![0](https://common.cnblogs.com/images/copycode.gif "0")
        1 /HTML/ 2 div.ani 3 4 /css/ 5 .ani{ 6 width:480px; 7 height:320px; 8 margin:50px auto; 9 overflow: hidden; 10 box-shadow:0 0 5px rgba(0,0,0,1); 11 background-size: cover; 12 background-position: center; 13 -webkit-animation-name: "loops"; 14 -webkit-animation-duration: 20s; 15 -webkit-animation-iteration-count: infinite; 16 } 17 @-webkit-keyframes "loops" { 18 0% { 19 background\:url(<http://d.hiphotos.baidu.com/image/w%3D400/sign=c01e6adca964034f0fcdc3069fc27980/e824b899a9014c08e5e38ca4087b02087af4f4d3.jpg>) no-repeat; 20 } 21 25% { 22 background\:url(<http://b.hiphotos.baidu.com/image/w%3D400/sign=edee1572e9f81a4c2632edc9e72b6029/30adcbef76094b364d72bceba1cc7cd98c109dd0.jpg>) no-repeat; 23 } 24 50% { 25 background\:url(<http://b.hiphotos.baidu.com/image/w%3D400/sign=937dace2552c11dfded1be2353266255/d8f9d72a6059252d258e7605369b033b5bb5b912.jpg>) no-repeat; 26 } 27 75% { 28 background\:url(<http://g.hiphotos.baidu.com/image/w%3D400/sign=7d37500b8544ebf86d71653fe9f9d736/0df431adcbef76095d61f0972cdda3cc7cd99e4b.jpg>) no-repeat; 29 } 30 100% { 31 background\:url(<http://c.hiphotos.baidu.com/image/w%3D400/sign=cfb239ceb0fb43161a1f7b7a10a54642/3b87e950352ac65ce2e73f76f9f2b21192138ad1.jpg>) no-repeat; 32 } 33 }
        ![0](https://common.cnblogs.com/images/copycode.gif "0")
         
        　　7.行内元素和块级元素的具体区别是什么？行内元素的padding和margin可设置吗？
        　　块级元素(block)特性：
*   总是独占一行，表现为另起一行开始，而且其后的元素也必须另起一行显示;
*   宽度(width)、高度(height)、内边距(padding)和外边距(margin)都可控制;
    　　内联元素(inline)特性：
*   和相邻的内联元素在同一行;
*   宽度(width)、高度(height)、内边距的top/bottom(padding-top/padding-bottom)和外边距的top/bottom(margin-top/margin-bottom)都不可改变（也就是padding和margin的left和right是可以设置的），就是里面文字或图片的大小。
    　　那么问题来了，浏览器还有默认的天生inline-block元素（拥有内在尺寸，可设置高宽，但不会自动换行），有哪些？
    　　答案： 、 、 、 、\<label>。\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;"> \</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　\</span>\<span style="font-size: 14px;font-weight: bold;">8.什么是外边距重叠？重叠的结果是什么？\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　答案：\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　外边距重叠就是margin-collapse。\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　在CSS当中，相邻的两个盒子（可能是兄弟关系也可能是祖先关系）的外边距可以结合成一个单独的外边距。这种合并外边距的方式被称为折叠，并且因而所结合成的外边距称为折叠外边距。\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　折叠结果遵循下列计算规则：\</span>\</div>\<div>\<ol style="margin:0px;" yne-block-type="list">\<li style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;list-style-position\:inside;word-break\:break-word;color\:rgb(0, 0, 0);font-weight\:normal;font-style\:normal;text-decoration\:none;background-color\:rgba(0, 0, 0, 0);font-family:"Microsoft YaHei", STXihei;list-style-type\:decimal;">两个相邻的外边距都是正数时，折叠结果是它们两者之间\<span style="font-size: 14px;color: rgb(255, 0, 255);">较大的值\</span>\<span style="font-size: 14px;">。\</span>\</li>\<li style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;list-style-position\:inside;word-break\:break-word;color\:rgb(0, 0, 0);font-weight\:normal;font-style\:normal;text-decoration\:none;background-color\:rgba(0, 0, 0, 0);font-family:"Microsoft YaHei", STXihei;list-style-type\:decimal;">两个相邻的外边距都是负数时，折叠结果是两者\<span style="font-size: 14px;color: rgb(255, 0, 255);">绝对值的较大值\</span>\<span style="font-size: 14px;">。\</span>\</li>\<li style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;list-style-position\:inside;word-break\:break-word;color\:rgb(0, 0, 0);font-weight\:normal;font-style\:normal;text-decoration\:none;background-color\:rgba(0, 0, 0, 0);font-family:"Microsoft YaHei", STXihei;list-style-type\:decimal;">两个外边距一正一负时，折叠结果是两者的\<span style="font-size: 14px;color: rgb(255, 0, 255);">相加的和\</span>\<span style="font-size: 14px;">。\</span>\</li>\</ol>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　\</span>\<span style="font-size: 14px;font-weight: bold;">9.rgba()和opacity的透明效果有什么不同？\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　答案：\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　rgba()和opacity都能实现透明效果，但最大的不同是opacity作用于元素，以及元素内的所有内容的透明度，\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　而rgba()只作用于元素的颜色或其背景色。（\</span>\<span style="font-size: 14px;color: rgb(255, 0, 255);">设置rgba透明的元素的子元素不会继承透明效果！\</span>\<span style="font-size: 14px;">）\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;"> \</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　\</span>\<span style="font-size: 14px;font-weight: bold;">10.css中可以让文字在垂直和水平方向上重叠的两个属性是什么？\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　答案：\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　垂直方向：line-height\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　水平方向：letter-spacing\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;"> \</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　\</span>\<span style="font-size: 14px;font-weight: bold;">那么问题来了，关于letter-spacing的妙用知道有哪些么？\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　答案:可以用于消除inline-block元素间的换行符空格间隙问题。\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;"> \</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　\</span>\<span style="font-size: 14px;font-weight: bold;">11.如何垂直居中一个浮动元素？\</span>\<a href="javascript\:void(0);" style="text-decoration: none;">\<span style="color: rgb(0, 56, 132);">\</span>\</a>\</div>\<div yne-bulb-block="image" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;"> \<img alt="0" data-media-type="image" src="<https://common.cnblogs.com/images/copycode.gif>" style="width: undefinedpx; height: undefinedpx;" /> \</div>\<div yne-bulb-block="code" data-theme="default" style="white-space\:pre-wrap;" data-language=""> 1 // 方法一：已知元素的高宽 2 3 #div1{ 4 background-color:#6699FF; 5 width:200px; 6 height:200px; 7 8 position: absolute; //父元素需要相对定位 9 top: 50%; 10 left: 50%; 11 margin-top:-100px ; //二分之一的height，width 12 margin-left: -100px; 13 } 14 15 //方法二: 16 17 #div1{ 18 width: 200px; 19 height: 200px; 20 background-color: #6699FF; 21 22 margin\:auto; 23 position: absolute; //父元素需要相对定位 24 left: 0; 25 top: 0; 26 right: 0; 27 bottom: 0; 28 }\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<a href="javascript\:void(0);" style="text-decoration: none;">\<span style="color: rgb(0, 56, 132);">\</span>\</a>\</div>\<div yne-bulb-block="image" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;"> \<img alt="0" data-media-type="image" src="<https://common.cnblogs.com/images/copycode.gif>" style="width: undefinedpx; height: undefinedpx;" /> \</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;"> 　　\</span>\<span style="font-size: 14px;font-weight: bold;">那么问题来了，如何垂直居中一个\<img>?\</span>\<span style="font-size: 14px;">（\</span>\<span style="font-size: 14px;color: rgb(255, 0, 255);">用更简便的方法。\</span>\<span style="font-size: 14px;">）\</span>\<a href="javascript\:void(0);" style="text-decoration: none;">\<span style="color: rgb(0, 56, 132);">\</span>\</a>\</div>\<div yne-bulb-block="image" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;"> \<img alt="0" data-media-type="image" src="<https://common.cnblogs.com/images/copycode.gif>" style="width: undefinedpx; height: undefinedpx;" /> \</div>\<div yne-bulb-block="code" data-theme="default" style="white-space\:pre-wrap;" data-language="">1 #container //\<img>的容器设置如下 2 { 3 display\:table-cell; 4 text-align\:center; 5 vertical-align\:middle; 6 }\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<a href="javascript\:void(0);" style="text-decoration: none;">\<span style="color: rgb(0, 56, 132);">\</span>\</a>\</div>\<div yne-bulb-block="image" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;"> \<img alt="0" data-media-type="image" src="<https://common.cnblogs.com/images/copycode.gif>" style="width: undefinedpx; height: undefinedpx;" /> \</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;"> \</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　\</span>\<span style="font-size: 14px;font-weight: bold;">12.px和em的区别。\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　px和em都是长度单位，区别是，px的值是固定的，指定是多少就是多少，计算比较容易。em得值不是固定的，并且em会继承父级元素的字体大小。\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　浏览器的默认字体高都是16px。所以未经调整的浏览器都符合: 1em=16px。那么12px=0.75em, 10px=0.625em。\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;"> \</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;font-weight: bold;">　　13.描述一个"reset"的CSS文件并如何使用它。知道\</span>\<span style="font-size: 12px;font-weight: bold;color: rgb(232, 62, 140);background-color: rgb(246, 246, 246);font-family: Courier New;">normalize.css\</span>\<span style="font-size: 14px;font-weight: bold;">吗？你了解他们的不同之处？\</span>\<span style="font-size: 14px;">　\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　重置样式非常多，凡是一个前端开发人员肯定有一个常用的重置CSS文件并知道如何使用它们。他们是盲目的在做还是知道为什么这么做呢？原因是不同的浏览器对一些元素有不同的默认样式，如果你不处理，在不同的浏览器下会存在必要的风险，或者更有戏剧性的性发生。\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">　　你可能会用\<span style="color: rgb(255, 152, 0);">Normalize\</span>来代替你的重置样式文件。它没有重置所有的样式风格，但仅提供了一套合理的默认样式值。既能让众多浏览器达到一致和合理，但又不扰乱其他的东西（如粗体的标题）。\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　在这一方面，无法做每一个复位重置。它也确实有些超过一个重置，它处理了你永远都不用考虑的怪癖，像HTML的\</span>\<span style="font-size: 12px;color: rgb(232, 62, 140);background-color: rgb(246, 246, 246);font-family: Courier New;">audio\</span>\<span style="font-size: 14px;">元素不一致或\</span>\<span style="font-size: 12px;color: rgb(232, 62, 140);background-color: rgb(246, 246, 246);font-family: Courier New;">line-height\</span>\<span style="font-size: 14px;">不一致。\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;"> \</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　\</span>\<span style="font-size: 14px;font-weight: bold;">14.Sass、LESS是什么？大家为什么要使用他们？\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　他们是CSS预处理器。他是CSS上的一种抽象层。他们是一种特殊的语法/语言编译成CSS。\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">　　例如\<span style="color: rgb(255, 152, 0);">Less\</span>是一种动态样式语言. 将CSS赋予了动态语言的特性，如变量，继承，运算， 函数. LESS 既可以在客户端上运行 (支持IE 6+, Webkit, Firefox)，也可一在服务端运行 (借助 Node.js)。\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　为什么要使用它们？\</span>\</div>\<div>\<ul style="margin:0px;" yne-block-type="list">\<li style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;list-style-position\:inside;word-break\:break-word;color\:rgb(0, 0, 0);font-weight\:normal;font-style\:normal;text-decoration\:none;background-color\:rgba(0, 0, 0, 0);font-family:"Microsoft YaHei", STXihei;list-style-type\:disc;">结构清晰，便于扩展。\</li>\<li style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;list-style-position\:inside;word-break\:break-word;color\:rgb(0, 0, 0);font-weight\:normal;font-style\:normal;text-decoration\:none;background-color\:rgba(0, 0, 0, 0);font-family:"Microsoft YaHei", STXihei;list-style-type\:disc;">可以方便地屏蔽浏览器私有语法差异。这个不用多说，封装对浏览器语法差异的重复处理，减少无意义的机械劳动。\</li>\<li style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;list-style-position\:inside;word-break\:break-word;color\:rgb(0, 0, 0);font-weight\:normal;font-style\:normal;text-decoration\:none;background-color\:rgba(0, 0, 0, 0);font-family:"Microsoft YaHei", STXihei;list-style-type\:disc;">可以轻松实现多重继承。\</li>\<li style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;list-style-position\:inside;word-break\:break-word;color\:rgb(0, 0, 0);font-weight\:normal;font-style\:normal;text-decoration\:none;background-color\:rgba(0, 0, 0, 0);font-family:"Microsoft YaHei", STXihei;list-style-type\:disc;">完全兼容 CSS 代码，可以方便地应用到老项目中。LESS 只是在 CSS 语法上做了扩展，所以老的 CSS 代码也可以与 LESS 代码一同编译。\</li>\</ul>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　\</span>\<span style="font-size: 14px;font-weight: bold;">15.display\:none与visibility\:hidden的区别是什么？\</span>\</div>\<div>\<ul style="margin:0px;" yne-block-type="list">\<li style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;list-style-position\:inside;word-break\:break-word;color\:rgb(0, 0, 0);font-weight\:normal;font-style\:normal;text-decoration\:none;background-color\:rgba(0, 0, 0, 0);font-family:"Microsoft YaHei", STXihei;list-style-type\:disc;">display \<span style="font-size: 14px;font-weight: bold;">: \</span>\<span style="font-size: 14px;">隐藏对应的元素但不挤占该元素原来的空间。\</span>\</li>\<li style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;list-style-position\:inside;word-break\:break-word;color\:rgb(0, 0, 0);font-weight\:normal;font-style\:normal;text-decoration\:none;background-color\:rgba(0, 0, 0, 0);font-family:"Microsoft YaHei", STXihei;list-style-type\:disc;">visibility\<span style="font-size: 14px;font-weight: bold;">: \</span>\<span style="font-size: 14px;">隐藏对应的元素并且挤占该元素原来的空间。\</span>\</li>\</ul>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;"> 　　即是，使用CSS display\:none属性后，HTML元素（对象）的宽度、高度等各种属性值都将“丢失”;而使用visibility\:hidden属性后，HTML元素（对象）仅仅是在视觉上看不见（完全透明），而它所占据的空间位置仍然存在。\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;font-weight: bold;">　　16.知道css有个content属性吗？有什么作用？有什么应用？\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　答案：\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　知道。css的content属性专门应用在 before/after 伪元素上，用于来插入生成内容。\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　最常见的应用是利用伪类清除浮动。\</span>\<a href="javascript\:void(0);" style="text-decoration: none;">\<span style="color: rgb(0, 56, 132);">\</span>\</a>\</div>\<div yne-bulb-block="image" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;"> \<img alt="0" data-media-type="image" src="<https://common.cnblogs.com/images/copycode.gif>" style="width: undefinedpx; height: undefinedpx;" /> \</div>\<div yne-bulb-block="code" data-theme="default" style="white-space\:pre-wrap;" data-language=""> 1 //一种常见利用伪类清除浮动的代码 2 .clearfix\:after { 3 content:"."; //这里利用到了content属性 4 display\:block; 5 height:0; 6 visibility\:hidden; 7 clear\:both; } 8 9 .clearfix { 10 \*zoom:1; 11 }\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<a href="javascript\:void(0);" style="text-decoration: none;">\<span style="color: rgb(0, 56, 132);">\</span>\</a>\</div>\<div yne-bulb-block="image" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;"> \<img alt="0" data-media-type="image" src="<https://common.cnblogs.com/images/copycode.gif>" style="width: undefinedpx; height: undefinedpx;" /> \</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　after伪元素通过 content 在元素的后面生成了内容为一个点的块级元素，再利用clear\:both清除浮动。\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　那么问题继续还有，\</span>\<span style="font-size: 14px;font-weight: bold;">知道css计数器（\</span>\<span style="font-size: 14px;font-weight: bold;color: rgb(255, 0, 255);">序列数字字符自动递增\</span>\<span style="font-size: 14px;font-weight: bold;">）吗？如何通过css content属性实现css计数器？\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　答案：css计数器是通过设置counter-reset 、counter-increment 两个属性 、及 counter()/counters()一个方法配合after / before 伪类实现。 \</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">　　具体实现方案：请戳张鑫旭大大的博文\<span style="color: rgb(255, 152, 0);">CSS计数器(序列数字字符自动递增)详解\</span>\<span style="color: rgb(0, 0, 0);"> 。\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;"> \</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　觉得题目还ok的亲点个推荐哦，题量会不断增加。\</span>\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">　　你可能会感兴趣：\<span style="color: rgb(51, 102, 255);">BAT及各大互联网公司2014前端笔试面试题--JavaScript篇\</span>。\</div>\<div yne-bulb-block="paragraph" style="white-space\:pre-wrap;line-height:1.75;font-size:14px;text-align\:left;">\<span style="font-size: 14px;">　　暂且贴出我做出答案的部分。有时间把未做出答案也贴出来。针对文中各题，如有更好的解决方法或者错误之处，各位亲务必告知我，误人子弟实乃罪过。\</span>\</div>\</article>\<!--EndFragment--> \</body> \</html>

# JQuery

## GET

> \$.get('/data.ashx?type=all', '', function (data) {
> //alert(JSON.stringify(data));
> //将获得得数据原路发回进行测试
> })

## POST

> \$.post("/data.ashx?type=add", JSON.stringify(data\[0]), function (rs, textStatus) {
> alert(JSON.stringify(rs));
> }, "json");

## AJAX

> > 此方式比较详细可以调用POST，也可以GET ,以上GET POST 则非常简单。
> > \$.ajax({
> > url: "/data.ashx?type=add",
> > type: "POST",
> > data: JSON.stringify(data\[0]),
> > contentType: "application/json; charset=utf-8",
> > dataType: "json",
>
> ```javascript
> success: function (rs) {
> ```
>
>         alert(JSON.stringify(rs));
>     }
>
> });

# Angular

# React

# Vue.js

> > 生命周期的不同
> > vue2 --------------- vue3
> > beforeCreate -> setup()
> > Created -> setup()
> > beforeMount -> onBeforeMount
> > mounted -> onMounted
> > beforeUpdate -> onBeforeUpdate
> > updated -> onUpdated
> > beforeDestroyed -> onBeforeUnmount
> > destroyed -> onUnmounted
> > activated -> onActivated
> > deactivated -> onDeactivated

## 命令式编程&声明式编程

> > 命令式编程,原生js做法（命令式编程）

1.  创建div元素，设置id属性
2.  定义一个变量叫message
3.  将message变量放在div元素中显示
4.  修改message数据
5.  将修改的元素替换到div

> > 声明式编程,vue写法（声明式）

1.  创建一个div元素，设置id属性
2.  定义一个vue对象，将div挂载在vue对象上
3.  在vue对象内定义变量message，并绑定数据
4.  将message变量放在div元素上显示
5.  修改vue对象中的变量message，div元素数据自动改变

> Vue3 教程
> Vue3 安装
> Vue3 打包
> Vue3 创建项目
> Vue3 目录结构
> Vue3 起步
>
> > 指令	描述
> > v-bind	用于将 Vue 实例的数据绑定到 HTML 元素的属性上。
> > v-if	用于根据表达式的值来条件性地渲染元素或组件。
> > v-show	v-show 是 Vue.js 提供的一种指令，用于根据表达式的值来条件性地显示或隐藏元素。
> > v-for	用于根据数组或对象的属性值来循环渲染元素或组件。
> > v-on	用于在 HTML 元素上绑定事件监听器，使其能够触发 Vue 实例中的方法或函数。
> > v-model	用于在表单控件和 Vue 实例的数据之间创建双向数据绑定。
> > Vue3 指令
> > Vue3 模板语法
> > Vue3 条件语句
> > Vue3 循环语句
> > Vue3 组件
> > Vue3 计算属性
> > Vue3 监听属性
> > Vue3 样式绑定
> > Vue3 事件处理
> > Vue3 表单
> > Vue3 自定义指令
> > Vue3 路由
> > Vue3 混入
> > Vue3 Ajax(axios)
> > Vue3 组合式 API
> > Vue3 创建单文件组件(SFC)
> > Vue.js 起步
> > Vue.js 模板语法
> > Vue.js 条件语句
> > Vue.js 循环语句
> > Vue.js 计算属性
> > Vue.js 监听属性
> > Vue.js 样式绑定
> > Vue.js 事件处理器
> > Vue.js 表单
> > Vue.js 组件
> > Vue.js 组件 - 自定义事件
> > Vue.js 自定义指令
> > Vue.js 路由
> > Vue.js 过渡 & 动画
> > Vue.js 混入
> > Vue.js Ajax(axios)
> > Vue.js Ajax(vue-resource)
> > Vue.js 响应接口
> > Vue.js 实例
> > vite
> > vite —— 一个由 vue 作者尤雨溪开发的 web 开发工具，它具有以下特点：

1.  快速的冷启动
2.  即时的模块热更新
3.  真正的按需编译
    hooks
    1、hooks其实就是个函数，只是实现它的方法比较特殊，利用组合式api实现的。
    2、组合式函数是有状态逻辑的函数，返回的内容，可能随着时间的变化而变化。（和lodash不一样，传入什么，立马返回一个固定的）
    3、hooks其实就是把vue2中的mixins 用一个函数返回，这样使用起来很优雅。
    4、hooks函数，约定成俗用useXxxx开头命名。
    Axios

# 1. Vue.js是什么?

&#x20;1\). 一位华裔前Google工程师(尤雨溪)开发的前端js库
&#x20;2\). 作用: 动态构建用户界面
&#x20;3\). 特点:
&#x20;\* 遵循MVVM模式
&#x20;\* 编码简洁, 体积小, 运行效率高, 移动/PC端开发
&#x20;\* 它本身只关注UI, 可以轻松引入vue插件和其它第三库开发项目
&#x20;4\). 与其它框架的关联:
&#x20;\* 借鉴angular的模板和数据绑定技术
&#x20;\* 借鉴react的组件化和虚拟DOM技术
&#x20;5\). vue包含一系列的扩展插件(库):
&#x20;\* vue-cli: vue脚手架
&#x20;\* vue-resource(axios): ajax请求
&#x20;\* vue-router: 路由
&#x20;\* vuex: 状态管理
&#x20;\* vue-lazyload: 图片懒加载
&#x20;\* vue-scroller: 页面滑动相关
&#x20;\* mint-ui: 基于vue的组件库(移动端)
&#x20;\* element-ui: 基于vue的组件库(PC端)
  

# 2. 基本使用

&#x20;1\). 引入vue.js
&#x20;2\). 创建Vue实例对象(vm), 指定选项(配置)对象
&#x20;el : 指定dom标签容器的选择器
&#x20;data : 指定初始化状态数据的对象/函数(返回一个对象)
&#x20;3\). 在页面模板中使用{{}}或vue指令
 

# 3. Vue对象的选项

# 1). el

&#x20;指定dom标签容器的选择器
&#x20;Vue就会管理对应的标签及其子标签
 

# 2). data

&#x20;对象或函数类型
&#x20;指定初始化状态属性数据的对象
&#x20;vm也会自动拥有data中所有属性
&#x20;页面中可以直接访问使用
&#x20;数据代理: 由vm对象来代理对data中所有属性的操作(读/写)

# 3). methods

&#x20;包含多个方法的对象
&#x20;供页面中的事件指令来绑定回调
&#x20;回调函数默认有event参数, 但也可以指定自己的参数
&#x20;所有的方法由vue对象来调用, 访问data中的属性直接使用this.xxx
 

# 4). computed

&#x20;包含多个方法的对象
&#x20;对状态属性进行计算返回一个新的数据, 供页面获取显示
&#x20;一般情况下是相当于是一个只读的属性
&#x20;利用set/get方法来实现属性数据的计算读取, 同时监视属性数据的变化
&#x20;如何给对象定义get/set属性
&#x20;在创建对象时指定: get name () {return xxx} / set name (value) {}
&#x20;  对象创建之后指定: Object.defineProperty(obj, age, {get(){}, set(value){}})
 

# 5). watch

&#x20;包含多个属性监视的对象
&#x20;分为一般监视和深度监视
&#x20;    xxx: function(value){}
&#x20;xxx : {
&#x20;deep : true,
&#x20;handler : fun(value)
&#x20;}
&#x20;另一种添加监视方式: vm.\$watch('xxx', function(value){})
 

# 4. 过渡动画

&#x20;利用vue去操控css的transition/animation动画
&#x20;模板: 使用包含带动画的标签
&#x20;css样式
&#x20;.fade-enter-active: 进入过程, 指定进入的transition
&#x20;.fade-leave-active: 离开过程, 指定离开的transition
&#x20;.xxx-enter, .xxx-leave-to: 指定隐藏的样式
&#x20;编码例子
&#x20;    .xxx-enter-active, .xxx-leave-active {
&#x20;      transition: opacity .5s
&#x20;    }
&#x20;    .xxx-enter, .xxx-leave-to {
&#x20;      opacity: 0
&#x20;    }
&#x20;   
&#x20;   
&#x20;     
hello
&#x20;   
    

# 5. 生命周期

&#x20;vm/组件对象
&#x20;生命周期图
&#x20;主要的生命周期函数(钩子)
     created() / mounted(): 启动异步任务(启动定时器,发送ajax请求, 绑定监听)
     beforeDestroy(): 做一些收尾的工作
 

# 6. 自定义过滤器

# 1). 理解

&#x20;对需要显示的数据进行格式化后再显示
 

# 2). 编码

&#x20;1\). 定义过滤器
&#x20;Vue.filter(filterName, function(value\[,arg1,arg2,...]){
&#x20;  // 进行一定的数据处理
&#x20;  return newValue
&#x20;})
&#x20;2\). 使用过滤器
{{myData | filterName}}
{{myData | filterName(arg)}}
 

# 7. vue内置指令

&#x20;v-text/v-html: 指定标签体
     \* v-text : 当作纯文本
&#x20;\* v-html : 将value作为html标签来解析
&#x20;v-if v-else v-show: 显示/隐藏元素
&#x20;\* v-if : 如果vlaue为true, 当前标签会输出在页面中
&#x20;\* v-else : 与v-if一起使用, 如果value为false, 将当前标签输出到页面中
&#x20;\* v-show: 就会在标签中添加display样式, 如果vlaue为true, display=block, 否则是none
&#x20;v-for : 遍历
&#x20;\* 遍历数组 : v-for="(person, index) in persons"   
&#x20;\* 遍历对象 : v-for="value in person"   `$key
&#x20;v-on : 绑定事件监听
&#x20;\* v-on:事件名, 可以缩写为: @事件名
&#x20;\* 监视具体的按键: @keyup.keyCode   @keyup.enter
&#x20;\* 停止事件的冒泡和阻止事件默认行为: @click.stop   @click.prevent
&#x20;\* 隐含对象: $`event
&#x20;v-bind : 强制绑定解析表达式  
&#x20;\* html标签属性是不支持表达式的, 就可以使用v-bind
&#x20;\* 可以缩写为:  \:id='name'
&#x20;\* \:class
&#x20;  \* \:class="a"
&#x20;\* \:class="{classA : isA, classB : isB}"
&#x20;\* \:class="\[classA, classB]"
&#x20;\* \:style
&#x20;\:style="{color : color}"
&#x20;v-model
&#x20;\* 双向数据绑定
&#x20;\* 自动收集用户输入数据
&#x20;ref : 标识某个标签
&#x20;\* ref='xxx'
&#x20;\* 读取得到标签对象: this.\$refs.xxx
  

# 8. 自定义指令

# 1). 注册全局指令

    Vue.directive('my-directive', function(el, binding){
      el.innerHTML = binding.value.toUpperCase()
    })
 

# 2). 注册局部指令

    directives : {
      'my-directive' : function(el, binding) {
          el.innerHTML = binding.value.toUpperCase()
      }
    }
 

# 3). 使用指令

    # 响应式数据响应式，个人理解就是数据a变更，会自动更新所有用到a的地方。即它变更后会自动更新所有依赖于它的地方。具体在vue的代码中有这么几个地方。1，html中渲染展示绑定的数据2，watch和conputed中的依赖项那如何实现自动更新？首先需要能捕获它的变更，这样才可以在它变更的时候，去更新和它相关的地方。现有的捕获数据变更的方式有以下三种：1,利用Object.definePropery数据劫持。2，利用Proxy数据代理。3，利用对象的 get 和 set 函数 1.ref是定义简单类型 和单一的对象 2.reactive 定义复杂的类型梳理文档： ref和reactive都是Vue.js 3.x版本中新增的响应式API，用于实现组件的数据响应式更新。它们的主要区别如下：1. 数据类型不同：ref用于包装JavaScript基本类型的数据（如字符串、数字、布尔值等），而reactive可以用于包装JavaScript对象和数组等复杂类型的数据。 2. 使用方式不同：ref需要通过在模板中使用ref指令以及在JavaScript代码中使用ref函数进行创建和使用，而reactive则需要通过调用Vue.js提供的reactive函数进行包装和创建。 3. 访问方式不同：对于通过ref函数创建的响应式数据，我们可以通过.value属性来访问其实际值；而对于通过reactive函数创建的响应式对象，我们可以直接访问其属性或调用其方法。 4. 设计理念不同：ref主要是为了解决单一元素/数据的响应式问题，而reactive则是为了解决JavaScript对象和数组等复杂数据结构的响应式问题。

# Bootstrap学习总结

## Bootstrap 基础

### 媒体查询（css3特性）

> @media not|only 媒体类型 and (媒体特性) {css 代码样式}
> css3中的媒体类型和媒体特性与bootsrap不太一样。
> 可以实现依据最小最大宽度（媒体类型）等设置不同css样式。

#### 媒体类型

> all	用于所有多媒体类型设备
> print	用于打印机
> screen	用于电脑屏幕，平板，智能手机等。
> speech	用于屏幕阅读器

#### 媒体特性

> aspect-ratio	定义输出设备中的页面可见区域宽度与高度的比率
> color	定义输出设备每一组彩色原件的个数。如果不是彩色设备，则值等于0
> color-index	定义在输出设备的彩色查询表中的条目数。如果没有使用彩色查询表，则值等于0
> device-aspect-ratio	定义输出设备的屏幕可见宽度与高度的比率。
> device-height	定义输出设备的屏幕可见高度。
> device-width	定义输出设备的屏幕可见宽度。
> grid	用来查询输出设备是否使用栅格或点阵。
> height	定义输出设备中的页面可见区域高度。
> max-aspect-ratio	定义输出设备的屏幕可见宽度与高度的最大比率。
> max-color	定义输出设备每一组彩色原件的最大个数。
> max-color-index	定义在输出设备的彩色查询表中的最大条目数。
> max-device-aspect-ratio	定义输出设备的屏幕可见宽度与高度的最大比率。
> max-device-height	定义输出设备的屏幕可见的最大高度。
> max-device-width	定义输出设备的屏幕最大可见宽度。
> max-height	定义输出设备中的页面最大可见区域高度。
> max-monochrome	定义在一个单色框架缓冲区中每像素包含的最大单色原件个数。
> max-resolution	定义设备的最大分辨率。
> max-width	定义输出设备中的页面最大可见区域宽度。
> min-aspect-ratio	定义输出设备中的页面可见区域宽度与高度的最小比率。
> min-color	定义输出设备每一组彩色原件的最小个数。
> min-color-index	定义在输出设备的彩色查询表中的最小条目数。
> min-device-aspect-ratio	定义输出设备的屏幕可见宽度与高度的最小比率。
> min-device-width	定义输出设备的屏幕最小可见宽度。
> min-device-height	定义输出设备的屏幕的最小可见高度。
> min-height	定义输出设备中的页面最小可见区域高度。
> min-monochrome	定义在一个单色框架缓冲区中每像素包含的最小单色原件个数
> min-resolution	定义设备的最小分辨率。
> min-width	定义输出设备中的页面最小可见区域宽度。
> monochrome	定义在一个单色框架缓冲区中每像素包含的单色原件个数。如果不是单色设备，则值等于0
> orientation	定义输出设备中的页面可见区域高度是否大于或等于宽度。
> resolution	定义设备的分辨率。如：96dpi, 300dpi, 118dpcm
> scan	定义电视类设备的扫描工序。
> width	定义输出设备中的页面可见区域宽度。

## Bootstrap 布局

### 包装容器

> .container .container -{breakpoint} .container-fluid

### 响应断点

> 当你须要搞定响应式布局时，一堆堆的媒体查询、大量的属性、属性值往往能够把你搞颠，SASS（或者诸如此类的预处理器）被觉得是处理响应式断点的最佳利器。
> 1.使用变量(With variables)
> Bootstrap和Foundation採用这样的方式，首先定义变量，然后在媒体查询中使用变量。换句话说，你能够在配置文件或者其它地方定义变量以备使用。我们来看看Bootstrap怎么干的。
> // Defining values
> ``$screen-sm-min: 768px; `$``screen-xs-max: (``$`screen-sm-min - 1);
> $``screen-md-min: 992px;
> `$screen-sm-max: ($`screen-md-min - 1);
> ``$screen-lg-min: 1200px; `$``screen-md-max: (``$`screen-lg-min - 1);
> // Usage
> @media (max-width: $``screen-xs-max) { ... }
> @media (min-width: `$screen-sm-min) { ... }
> @media (max-width: $`screen-sm-max) { ... }
> @media (min-width: `$screen-md-min) { ... }
> @media (max-width: $`screen-md-max) { ... }
> @media (min-width: `$screen-lg-min) { ... }
> Foudation更进一步，使用跨范围的媒体查询，避免使用过多的max-width和min-width。
> // Defining values
> $`small-range:  (0em, 40em);    /\* 0, 640px \*/
> `$medium-range: (40.063em, 64em); /\* 641px, 1024px \*/
> $`large-range:  (64.063em, 90em); /\* 1025px, 1440px \*/
> `$xlarge-range: (90.063em, 120em); /\* 1441px, 1920px \*/
> $`xxlarge-range: (120.063em);    /\* 1921px \*/
> // Defining media queries
> ``$screen:    "only screen" !default; `$``landscape:  "#{``$`screen} and (orientation: landscape)" !default; `$``portrait:   "#{``$`screen} and (orientation: portrait)" !default; `$``small-up:   ``$`screen !default; `$``small-only:  "#{``$`screen} and (max-width: #{upper-bound($``small-range)})" !default;
> `$medium-up:  "#{$`screen} and (min-width:#{lower-bound(``$medium-range)})" !default; `$``medium-only: "#{``$`screen} and (min-width:#{lower-bound(`$``medium-range)}) and (max-width:#{upper-bound(``$`medium-range)})" !default; `$``large-up:   "#{``$`screen} and (min-width:#{lower-bound($``large-range)})" !default;
> `$large-only:  "#{$`screen} and (min-width:#{lower-bound(`$large-range)}) and (max-width:#{upper-bound($`large-range)})" !default;
> `$xlarge-up:  "#{$`screen} and (min-width:#{lower-bound(``$xlarge-range)})" !default; `$``xlarge-only: "#{``$`screen} and (min-width:#{lower-bound(`$``xlarge-range)}) and (max-width:#{upper-bound(``$`xlarge-range)})" !default; `$``xxlarge-up:  "#{``$`screen} and (min-width:#{lower-bound($``xxlarge-range)})" !default;
> `$xxlarge-only: "#{$`screen} and (min-width:#{lower-bound(`$xxlarge-range)}) and (max-width:#{upper-bound($`xxlarge-range)})" !default;
> // Usage
> @media #{`$small-up}   { ... }
> @media #{$`small-only}  { ... }
> @media #{`$medium-up}  { ... }
> @media #{$`medium-only} { ... }
> @media #{`$large-up}   { ... }
> @media #{$`large-only}  { ... }
> @media #{`$xlarge-up}  { ... }
> @media #{$`xlarge-only} { ... }
> @media #{`$xxlarge-up}  { ... }
> @media #{$`xxlarge-only} { ... }
> 两种方法各有一个不爽的地方，在Bootstrap里每次都要使用max-width，在Foundation里我们须要使用插值变量这样的又丑又烦的方式。显示我们须要想办法解决这些问题。
> 2.使用独立Mixin(With a standalone mixin)《media queries in Sass 3.2》是CSS-Tricks里最火的文章之中的一个，在这篇文章里Chris Coyier在借鉴a former idea by Mason Wendell和a former idea by Jeff Croft两文的基础上，怎样使用sass实现响应式布局的断点管理。
> 命名断点是非常重要的，由于能够为抽象的数字赋予意义（你知道767px是什么意思吗，我不知道，直到我去使用小屏幕的时候才知道）。为什么Bootstrap和Foundation要使用变量呢，不也是为了给抽象的数字起个名字吗？
> 所以我们定义个mixin，接收断点名作唯一的參数，返回媒体查询的内容。准备好了吗？走起。
> @mixin respond-to(`$breakpoint) {
> @if $`breakpoint == "small" {
> @media (min-width: 767px) {
> @content;
> }
> }
> @else if `$breakpoint == "medium" {
> @media (min-width: 992px) {
> @content;
> }
> }
> @else if $`breakpoint == "large" {
> @media (min-width: 1200px) {
> @content;
> }
> }
> }
> 然后，我们这样使用mixin。
> @include respond-to(small) { ... }
> @include respond-to(medium) { ... }
> @include respond-to(large) { ... }
> 这种方法是极好的（甄嬛体，老外也看？），原因有二：抽象数据有意义，大量断点集中管理。假设你想把“992px”改成“970px”，你不须要爬过每个css文件，而仅仅需更新mixin，然后所有更新。
> 可是也还有两个问题：
> a.断点不easy从mixin里拿出来，放到配置文件中去。
> b.冗余太多。
>
> 1.  可配置的mixin(With a configurable mixin )
>     <为了解决上面的两个问题，我们须要从断点mixin中抽出一个列表，仅仅剩下mixin核心，然后这个列表就能够随便移动，或者扔到配置文件中。
>     然后，使用sass 3.3+中的maps，我们能够方便的使用关联的属性和属性值。
>     `$breakpoints: (
>     'small' : 767px,
>     'medium' : 992px,
>     'large' : 1200px
>     );
>     然后原来的mixin进行相应的改动
>     @mixin respond-to($`breakpoint) {
>     // Retrieves the value from the key
>     `$value: map-get($`breakpoints, `$breakpoint);
>     // If the key exists in the map
>     @if $`value != null {
>     // Prints a media query based on the value
>     @media (min-width: ``$value) {
>     @content;
>     }
>     }
>     // If the key doesn't exist in the map
>     @else {
>     @warn "Unfortunately, no value could be retrieved from `#{$``breakpoint}`. "     + "Please make sure it is defined in ```$breakpoints` map.";
>     }
>     }
>     我们在改动mixin的同一时候也进行了一些提高，不要小看这些提高，我们加上了错误处理，假设在maps中没有找到断点值，将会弹出一个错误提示，这将便于我们开发过程中的调试。
>     我们让mixin变得更加精简，能非常好的处理错误，同一时候我们去掉了一个功能——推断属性是否是你想要的（min-width,max-width,min-height等），这在移动优先的网页中没问题，由于我们仅仅须要min-width。可是，假设须要查询其它属性，我们须要把这个功能加回来。为了达到这个目的，我想到了一个非常优雅的解决方式，同一时候并不添加复杂性。
>     `$``breakpoints: (
>     'small' : ( min-width: 767px ),
>     'medium' : ( min-width: 992px ),
>     'large' : ( min-width: 1200px )
>     );
>     @mixin respond-to(``$`name) {
>     // If the key exists in the map
>     @if map-has-key(`$``breakpoints, ``$`name) {
>     // Prints a media query based on the value
>     @media #{inspect(map-get(`$``breakpoints, ``$`name))} {
>     @content;
>     }
>     }
>     // If the key doesn't exist in the map
>     @else {
>     @warn "Unfortunately, no value could be retrieved from `#{$``breakpoint}`. "     + "Please make sure it is defined in `\$breakpoints\` map.";
>     }
>     }
>     在这里，我们主要做了三个事情
>     a. 检查查询的断点在map中存在不存在
>     b.假设存在，打印相应的媒体查询。
>     c.假设不在，进行错误提示。
>     简单吧，假设我们回想前面的两个缺陷，已经不再有WET(Write Everything Twice))问题，也不再有不灵活的媒体查询。可是另一个问题，不支持复杂的媒体查询。复杂指的是涉及多个组件的查询（e.g. screen and (min-width: 767px)）。我们上面这些方案除了第一种变量之外都不能非常好的解决问题。
> 2.  使用外部工具(With an external tool)

    最后一个相同重要的是，假设不想创建自己的mixin，你能够使用外部的工具处理响应式布局的断点，有非常多sass的扩展在这个方面做得非常好。
    SassMQ by Kaelig
    Breakpoint by Mason Wendell and Sam Richard
    Breakup by Ben Scott
     	SassMQ	Breakpoint	Breakup
    MQ type	*-width	any	any
    No Query fallback	yep	yep	yep
    API complexity	simple	very simple	medium
    Code complexity	very simple	complexe	simple
    Extra	Debug mode	Singularity.gs	—
    基本上是这样，假设发现有没有涉及的，记得一定告诉我。
    SassMQ
    // Configuration
    $mq-responsive: true;
    $mq-static-breakpoint: desktop;
    $mq-breakpoints: (
     mobile: 320px,
     tablet: 740px,
     desktop: 980px,
     wide:  1300px
    );
     
    // Example
    selector {
     @include mq($from: mobile) {
      property: value;
     }
    }
    BreakPoints
    $high-tide: 500px;
    $ex-presidents: 600px 800px;
    $surfboard-width: max-width 1000px;
    $surfboard-height: (min-height 1000px) (orientation portrait);
     
    selector {
     @include breakpoint($high-tide) {
      property: value;
     }
    }
    Breakup
    $breakup-breakpoints: (
     'thin' '(max-width: 35.999em)',
     'wide' '(min-width: 36em)',
     'full' '(min-width: 61em)'
    );
     
    selector {
     @include breakup-block('thin') {
      property: value;
     }
    }

### 堆叠顺序 z-index

### 网格系统

> 12列的网格 col-2 列占用2/12的宽度

## Bootstrap 版式

### 文档案

### 图片

### 表格

### 代码

## Bootstrap 通用样式

### 文本

### 颜色

### 边框

### 定位浮动

### 代码弹性盒子

### 其它 对齐等

## Bootstrap 组件

### 按钮

### 按钮组

### 下拉

### 媒体对象

### 表单

### 进度条

### 导航栏

### 列表组

### 面包屑

> 显示导航层次位置 如 “首页-> 文学-> 中国文学”

### 分页

### 加载指示器（转圈圈）

### 按钮卡片

## Sass

### 变量

### 嵌套归斥责

### 导入

### SASS 混合器 混合器继承

> 混合器 Sass中的混合器类似于js的函数，将一段代码定义成混合器以实现代码的重用 编译后其实会转换成正常的css
> 声明混合器：@mixin mixName
> 调用混合器 @include minName 如
> @mixin border-round{
> \-moz-border:1px solid red;
> \-webkit-border:1px solid red;
> border:1px solid red
> }
> \#top{
> @include border-round;
> }
> //编译后
> \#top {
> \-moz-border: 1px solid red;
> \-webkit-border: 1px solid red;
> border: 1px solid red; }
> 混合器css规则 混合器中也可以包含css规则
> @mixin testmix{
> list-style\:none;
> li{
> color\:red;
> padding:30px;
> }
> .top{
> background\:red
> }
> }
> ul.parent{
> border:1px solid red;
> @include testmix;
> }
> //编译后
> ul.parent {
> border: 1px solid red;
> list-style: none;
> }
> ul.parent li {
> color: red;
> padding: 30px;
> }
> ul.parent > .top {
> background: red;
> }
> 混合器传参 混合器可以像函数一样传递参数 混合器传参数
> @mixin test(`$color,$`size,`$hoverColor){
> color:$`color;
> border:`$size solid red;
> &\:hover{
>     color:$`hoverColor
> }
> }
> \#top{
> @include test(red,1px,blue);
> }
> //编译后
> \#top {
> color: red;
> border: 1px solid red;
> }
> \#top\:hover {
> color: blue;
> }
> /\*#
> 当然这里有个问题，混合器里面的参数不允许颠倒位置，如果你记不清他们什么位置可以使用键值的方式明确指定
> @mixin test(`$color,$`size,`$hoverColor){
> color:$`color;
> border:`$size solid red;
> &\:hover{
>     color:$`hoverColor
> }
> }
> \#top{
> @include test(`$size:1px,$`hoverColor\:blue,``$color\:red);
> }
> //编译后 #top {
> color: red;
> border: 1px solid red;
> } #top\:hover {
> color: blue;
> }
> 参数默认值 混合器允许你定义参数默认值 如下
> @mixin test(`$``normal,``$`hover\:red){
> color:$``normal;
> background-color:``$hover
> } #top{
> @include test(skyblue,orange);
> }
> //编译后 #top {
> color: skyblue;
> background-color: orange;
> }
> //不指定color
> @mixin test(`$``normal,``$`hover\:red){
> color:$``normal;
> background-color:\$hover
> }
> \#top{
> @include test(skyblue);
> }
> //编译后
> \#top {
> color: skyblue;
> background-color: red; }
> Sass继承 Sass中也可实现继承类似面向对象思想子类继承父类，sass可以继承多个父类 这个”父类“可以是类，id 标签 状态等。 继承语法 @extend name 如
> .error{
> color\:red;
> font-size:15px;
> }
> .danger-error{
> @extend .error;
> font-size:20px;
> }
> //编译后
> .error, .danger-error {
> color: red;
> font-size: 15px;
> }
> .danger-error {
> font-size: 20px;
> }
> 当然父类也可包含css规则
> .error{
> color\:red;
> font-size:15px;
> .te{
> padding:10px
> }
> }
> .danger-error{
> @extend .error;
> font-size:20px;
> }
> //编译后
> .error, .danger-error {
> color: red;
> font-size: 15px;
> }
> .error > .te, .danger-error > .te {
> padding: 10px;
> }
> .danger-error {
> font-size: 20px;
> }
> 组合继承
> .error a{
> color\:red;
> font-size:10px;
> }
> .danger{
> @extend .error;
> color\:orange;
> }
> //编译后
> .error a, .danger a {
> color: red;
> font-size: 10px;
> }
> .danger {
> color: orange;
> }
> 继承多个
> .one{
> color\:red;
> }
> .two{
> border:1px solid red;
> }
> .three{
> @extend .one;
> @extend .two;
> //或者这样写@extend .one,.two
> //
> background\:blue;
> }
> //编译后
> .one, .three {
> color: red;
> }
> .two, .three {
> border: 1px solid red;
> }
> .three {
> background: blue;
> }
> 继承局限性 继承不支持组合 很多选择器不支持继承如包选择器 .one tow 相邻选择器 .one+.two
> %继承 有些时候我们希望被用来继承的代码不要渲染到页面上只作为继承使用。 定义方法 父类名前+%
> %test{
> border:1px solid red;
> }
> \#main{
> @extend %test;
> }
> //编译后
> \#main {
> border: 1px solid red;
> }
> \#meng a%long{
> color\:blue;
> border:1px solid red;
> }
> .notice{
> @extend %long;
> }
> //编译后
> \#meng a.notice {
> color: blue;
> border: 1px solid red;
> }
> 继承在指令的作用域如（@media） 在指令内部无法继承到指令外部的类，指令外部继承指令内部的类无法达到预期效果
> .one{
> height:400px;
> }
> @media print{
> .two{
> @extend .one
> }
> width:300px;
> }
> 编译时报错 继承注意事项
> 不能过量使用继承，因为所有类继承了父类，父类改变就会影响子类
> 继承只会在生成css时复制选择器，而不会复制大段的css属性 如果不小心会让生成css中包含大量的选择器复制 避免这种情况的最好办法： 不要在继承css规则中使用后代选择器如
> .dsf{}
> .foo .bar {
> @extend dsf //不推荐
> }

# Font Awesome
