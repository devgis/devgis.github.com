---
layout: post
title: Web技术
description: Html,JS,CSS相关技术
date: 2022-10-01 09:01:01
updatedate: 2023-09-22 11:06:01
---

- [HTML 5](#html-5)
- [JQuery](#jquery)
  - [GET](#get)
  - [POST](#post)
  - [AJAX](#ajax)
- [Angular](#angular)
- [React](#react)
- [Vue.js](#vuejs)
  - [命令式编程\&声明式编程](#命令式编程声明式编程)
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


## HTML 5

## JQuery

### GET

> $.get('/data.ashx?type=all', '', function (data) {

>             //alert(JSON.stringify(data));

>             //将获得得数据原路发回进行测试

> })      

### POST

> $.post("/data.ashx?type=add", JSON.stringify(data[0]), function (rs, textStatus) {

>                 alert(JSON.stringify(rs));

>             }, "json");

### AJAX

> > 此方式比较详细可以调用POST，也可以GET ,以上GET POST 则非常简单。

> $.ajax({

>     url: "/data.ashx?type=add",

>     type: "POST",

>     data: JSON.stringify(data[0]),

>     contentType: "application/json; charset=utf-8",

>     dataType: "json",

>     success: function (rs) {

>         alert(JSON.stringify(rs));

>     }

> });

## Angular

## React

## Vue.js

> > 生命周期的不同

> vue2 --------------- vue3

> beforeCreate -> setup()

> Created -> setup()

> beforeMount -> onBeforeMount

> mounted -> onMounted

> beforeUpdate -> onBeforeUpdate

> updated -> onUpdated

> beforeDestroyed -> onBeforeUnmount

> destroyed -> onUnmounted

> activated -> onActivated

> deactivated -> onDeactivated

### 命令式编程&声明式编程

> > 命令式编程,原生js做法（命令式编程）

1. 创建div元素，设置id属性
2. 定义一个变量叫message
3. 将message变量放在div元素中显示
4. 修改message数据
5. 将修改的元素替换到div

> > 声明式编程,vue写法（声明式）

1. 创建一个div元素，设置id属性
2. 定义一个vue对象，将div挂载在vue对象上
3. 在vue对象内定义变量message，并绑定数据
4. 将message变量放在div元素上显示
5. 修改vue对象中的变量message，div元素数据自动改变

> Vue3 教程
> Vue3 安装
> Vue3 打包
> Vue3 创建项目
> Vue3 目录结构

> Vue3 起步

> > 指令	描述

> > v-bind	用于将 Vue 实例的数据绑定到 HTML 元素的属性上。

> > v-if	用于根据表达式的值来条件性地渲染元素或组件。

> > v-show	v-show 是 Vue.js 提供的一种指令，用于根据表达式的值来条件性地显示或隐藏元素。

> > v-for	用于根据数组或对象的属性值来循环渲染元素或组件。

> > v-on	用于在 HTML 元素上绑定事件监听器，使其能够触发 Vue 实例中的方法或函数。

> > v-model	用于在表单控件和 Vue 实例的数据之间创建双向数据绑定。

> Vue3 指令
> Vue3 模板语法
> Vue3 条件语句
> Vue3 循环语句
> Vue3 组件
> Vue3 计算属性
> Vue3 监听属性
> Vue3 样式绑定
> Vue3 事件处理
> Vue3 表单
> Vue3 自定义指令
> Vue3 路由
> Vue3 混入
> Vue3 Ajax(axios)
> Vue3 组合式 API
> Vue3 创建单文件组件(SFC)

## Bootstrap学习总结

### Bootstrap 基础

#### 媒体查询（css3特性）

> @media not|only 媒体类型 and (媒体特性) {css 代码样式}

> css3中的媒体类型和媒体特性与bootsrap不太一样。

> 可以实现依据最小最大宽度（媒体类型）等设置不同css样式。

##### 媒体类型

> all	用于所有多媒体类型设备

> print	用于打印机

> screen	用于电脑屏幕，平板，智能手机等。

> speech	用于屏幕阅读器

##### 媒体特性

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

### Bootstrap 布局

#### 包装容器

> .container .container -{breakpoint} .container-fluid

#### 响应断点

> 当你须要搞定响应式布局时，一堆堆的媒体查询、大量的属性、属性值往往能够把你搞颠，SASS（或者诸如此类的预处理器）被觉得是处理响应式断点的最佳利器。

> 1.使用变量(With variables)

Bootstrap和Foundation採用这样的方式，首先定义变量，然后在媒体查询中使用变量。换句话说，你能够在配置文件或者其它地方定义变量以备使用。我们来看看Bootstrap怎么干的。

// Defining values

$screen-sm-min: 768px;

$screen-xs-max: ($screen-sm-min - 1);

$screen-md-min: 992px;

$screen-sm-max: ($screen-md-min - 1);

$screen-lg-min: 1200px;

$screen-md-max: ($screen-lg-min - 1);

 

// Usage

@media (max-width: $screen-xs-max) { ... }

@media (min-width: $screen-sm-min) { ... }

@media (max-width: $screen-sm-max) { ... }

@media (min-width: $screen-md-min) { ... }

@media (max-width: $screen-md-max) { ... }

@media (min-width: $screen-lg-min) { ... }

Foudation更进一步，使用跨范围的媒体查询，避免使用过多的max-width和min-width。

// Defining values

$small-range:  (0em, 40em);    /* 0, 640px */

$medium-range: (40.063em, 64em); /* 641px, 1024px */

$large-range:  (64.063em, 90em); /* 1025px, 1440px */

$xlarge-range: (90.063em, 120em); /* 1441px, 1920px */

$xxlarge-range: (120.063em);    /* 1921px */

 

// Defining media queries

$screen:    "only screen" !default;

$landscape:  "#{$screen} and (orientation: landscape)" !default;

$portrait:   "#{$screen} and (orientation: portrait)" !default;

$small-up:   $screen !default;

$small-only:  "#{$screen} and (max-width: #{upper-bound($small-range)})" !default;

$medium-up:  "#{$screen} and (min-width:#{lower-bound($medium-range)})" !default;

$medium-only: "#{$screen} and (min-width:#{lower-bound($medium-range)}) and (max-width:#{upper-bound($medium-range)})" !default;

$large-up:   "#{$screen} and (min-width:#{lower-bound($large-range)})" !default;

$large-only:  "#{$screen} and (min-width:#{lower-bound($large-range)}) and (max-width:#{upper-bound($large-range)})" !default;

$xlarge-up:  "#{$screen} and (min-width:#{lower-bound($xlarge-range)})" !default;

$xlarge-only: "#{$screen} and (min-width:#{lower-bound($xlarge-range)}) and (max-width:#{upper-bound($xlarge-range)})" !default;

$xxlarge-up:  "#{$screen} and (min-width:#{lower-bound($xxlarge-range)})" !default;

$xxlarge-only: "#{$screen} and (min-width:#{lower-bound($xxlarge-range)}) and (max-width:#{upper-bound($xxlarge-range)})" !default;

 

// Usage

@media #{$small-up}   { ... }

@media #{$small-only}  { ... }

@media #{$medium-up}  { ... }

@media #{$medium-only} { ... }

@media #{$large-up}   { ... }

@media #{$large-only}  { ... }

@media #{$xlarge-up}  { ... }

@media #{$xlarge-only} { ... }

@media #{$xxlarge-up}  { ... }

@media #{$xxlarge-only} { ... }

两种方法各有一个不爽的地方，在Bootstrap里每次都要使用max-width，在Foundation里我们须要使用插值变量这样的又丑又烦的方式。显示我们须要想办法解决这些问题。

> 2.使用独立Mixin(With a standalone mixin)《media queries in Sass 3.2》是CSS-Tricks里最火的文章之中的一个，在这篇文章里Chris Coyier在借鉴a former idea by Mason Wendell和a former idea by Jeff Croft两文的基础上，怎样使用sass实现响应式布局的断点管理。

命名断点是非常重要的，由于能够为抽象的数字赋予意义（你知道767px是什么意思吗，我不知道，直到我去使用小屏幕的时候才知道）。为什么Bootstrap和Foundation要使用变量呢，不也是为了给抽象的数字起个名字吗？

所以我们定义个mixin，接收断点名作唯一的參数，返回媒体查询的内容。准备好了吗？走起。

@mixin respond-to($breakpoint) {

 @if $breakpoint == "small" {

  @media (min-width: 767px) {

   @content;

  }

 }

 

 @else if $breakpoint == "medium" {

  @media (min-width: 992px) {

   @content;

  }

 }

 

 @else if $breakpoint == "large" {

  @media (min-width: 1200px) {

   @content;

  }

 }

}

然后，我们这样使用mixin。

@include respond-to(small) { ... }

@include respond-to(medium) { ... }

@include respond-to(large) { ... }

这种方法是极好的（甄嬛体，老外也看？），原因有二：抽象数据有意义，大量断点集中管理。假设你想把“992px”改成“970px”，你不须要爬过每个css文件，而仅仅需更新mixin，然后所有更新。

可是也还有两个问题：

a.断点不easy从mixin里拿出来，放到配置文件中去。

b.冗余太多。

> 3. 可配置的mixin(With a configurable mixin )

<为了解决上面的两个问题，我们须要从断点mixin中抽出一个列表，仅仅剩下mixin核心，然后这个列表就能够随便移动，或者扔到配置文件中。

然后，使用sass 3.3+中的maps，我们能够方便的使用关联的属性和属性值。

$breakpoints: (

 'small' : 767px,

 'medium' : 992px,

 'large' : 1200px

);

然后原来的mixin进行相应的改动

@mixin respond-to($breakpoint) {

 // Retrieves the value from the key

 $value: map-get($breakpoints, $breakpoint);

 

 // If the key exists in the map

 @if $value != null {

  // Prints a media query based on the value

  @media (min-width: $value) {

   @content;

  }

 }

 

 // If the key doesn't exist in the map

 @else {

  @warn "Unfortunately, no value could be retrieved from `#{$breakpoint}`. "

    + "Please make sure it is defined in `$breakpoints` map.";

 }

}

我们在改动mixin的同一时候也进行了一些提高，不要小看这些提高，我们加上了错误处理，假设在maps中没有找到断点值，将会弹出一个错误提示，这将便于我们开发过程中的调试。

我们让mixin变得更加精简，能非常好的处理错误，同一时候我们去掉了一个功能——推断属性是否是你想要的（min-width,max-width,min-height等），这在移动优先的网页中没问题，由于我们仅仅须要min-width。可是，假设须要查询其它属性，我们须要把这个功能加回来。为了达到这个目的，我想到了一个非常优雅的解决方式，同一时候并不添加复杂性。

$breakpoints: (

 'small' : ( min-width: 767px ),

 'medium' : ( min-width: 992px ),

 'large' : ( min-width: 1200px )

);

 

@mixin respond-to($name) {

 // If the key exists in the map

 @if map-has-key($breakpoints, $name) {

  // Prints a media query based on the value

  @media #{inspect(map-get($breakpoints, $name))} {

   @content;

  }

 }

 

 // If the key doesn't exist in the map

 @else {

  @warn "Unfortunately, no value could be retrieved from `#{$breakpoint}`. "

    + "Please make sure it is defined in `$breakpoints` map.";

 }

}

在这里，我们主要做了三个事情

a. 检查查询的断点在map中存在不存在

b.假设存在，打印相应的媒体查询。

c.假设不在，进行错误提示。

简单吧，假设我们回想前面的两个缺陷，已经不再有WET(Write Everything Twice))问题，也不再有不灵活的媒体查询。可是另一个问题，不支持复杂的媒体查询。复杂指的是涉及多个组件的查询（e.g. screen and (min-width: 767px)）。我们上面这些方案除了第一种变量之外都不能非常好的解决问题。

> 4. 使用外部工具(With an external tool)

```

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

```

#### 堆叠顺序 z-index

#### 网格系统

> 12列的网格 col-2 列占用2/12的宽度 

### Bootstrap 版式

#### 文档案

#### 图片

#### 表格

#### 代码

### Bootstrap 通用样式

#### 文本

#### 颜色

#### 边框

#### 定位浮动

#### 代码弹性盒子

#### 其它 对齐等

### Bootstrap 组件

#### 按钮

#### 按钮组

#### 下拉

#### 媒体对象

#### 表单

#### 进度条

#### 导航栏

#### 列表组

#### 面包屑 

> 显示导航层次位置 如 “首页-> 文学-> 中国文学”

#### 分页

#### 加载指示器（转圈圈）

#### 按钮卡片

### Sass

#### 变量

#### 嵌套归斥责

#### 导入

#### SASS 混合器 混合器继承

> 混合器 Sass中的混合器类似于js的函数，将一段代码定义成混合器以实现代码的重用 编译后其实会转换成正常的css

> 声明混合器：@mixin mixName 

> 调用混合器 @include minName 如

@mixin border-round{

  -moz-border:1px solid red;

  -webkit-border:1px solid red;

  border:1px solid red

}

#top{

  @include border-round;

}

//编译后

#top {

 -moz-border: 1px solid red;

 -webkit-border: 1px solid red;

 border: 1px solid red; }

> 混合器css规则 混合器中也可以包含css规则

@mixin testmix{

  list-style:none;

  li{

    color:red;

    padding:30px;

  }

  >.top{

    background:red

  }

}

ul.parent{

  border:1px solid red;

  @include testmix;

}

//编译后

ul.parent {

 border: 1px solid red;

 list-style: none; 

}

 ul.parent li {

  color: red;

  padding: 30px; 

}

 ul.parent > .top {

  background: red;

 }

> 混合器传参 混合器可以像函数一样传递参数 混合器传参数

@mixin test($color,$size,$hoverColor){

  color:$color;

  border:$size solid red;

  &:hover{

    color:$hoverColor

  }

}

#top{

  @include test(red,1px,blue);

}

//编译后

#top {

 color: red;

 border: 1px solid red; 

}

 #top:hover {

  color: blue; 

}

/*# 

当然这里有个问题，混合器里面的参数不允许颠倒位置，如果你记不清他们什么位置可以使用键值的方式明确指定

@mixin test($color,$size,$hoverColor){

  color:$color;

  border:$size solid red;

  &:hover{

    color:$hoverColor

  }

}

#top{

  @include test($size:1px,$hoverColor:blue,$color:red);

}

//编译后

#top {

 color: red;

 border: 1px solid red;

 }

#top:hover {

  color: blue;

 }

> 参数默认值 混合器允许你定义参数默认值 如下

@mixin test($normal,$hover:red){

  color:$normal;

  background-color:$hover

}

#top{

  @include test(skyblue,orange);

}

//编译后

#top {

 color: skyblue;

 background-color: orange;

 }

 //不指定color

@mixin test($normal,$hover:red){

  color:$normal;

  background-color:$hover

}

#top{

  @include test(skyblue);

}

//编译后

 

#top {

 color: skyblue;

 background-color: red; }

> Sass继承 Sass中也可实现继承类似面向对象思想子类继承父类，sass可以继承多个父类 这个”父类“可以是类，id 标签 状态等。 继承语法 @extend name 如

.error{

  color:red;

  font-size:15px;

}

.danger-error{

  @extend .error;

  font-size:20px;

}

//编译后

.error, .danger-error {

 color: red;

 font-size: 15px;

}

.danger-error {

 font-size: 20px; 

}

当然父类也可包含css规则

.error{

  color:red;

  font-size:15px;

  >.te{

    padding:10px

  }

}

.danger-error{

  @extend .error;

  font-size:20px;

}

//编译后

.error, .danger-error {

 color: red;

 font-size: 15px; 

}

.error > .te, .danger-error > .te {

  padding: 10px;

 }

.danger-error {

 font-size: 20px; 

 }

> 组合继承

.error a{

  color:red;

  font-size:10px;

}

.danger{

  @extend .error;

  color:orange;

}

//编译后

.error a, .danger a {

 color: red;

 font-size: 10px; 

}

.danger {

 color: orange; 

}

> 继承多个

.one{

  color:red;

}

.two{

  border:1px solid red;

}

.three{

  @extend .one;

  @extend .two;

  //或者这样写@extend .one,.two

  //

  background:blue;

}

//编译后

.one, .three {

 color: red; 

}

.two, .three {

 border: 1px solid red;

}

.three {

 background: blue;

}

> 继承局限性 继承不支持组合 很多选择器不支持继承如包选择器 .one tow 相邻选择器 .one+.two

%继承 有些时候我们希望被用来继承的代码不要渲染到页面上只作为继承使用。 定义方法 父类名前+%

%test{

  border:1px solid red;

}

#main{

  @extend %test;

}

//编译后

#main {

 border: 1px solid red; 

}

#meng a%long{

  color:blue;

  border:1px solid red;

}

.notice{

  @extend %long;

}

//编译后

#meng a.notice {

 color: blue;

 border: 1px solid red; 

}

继承在指令的作用域如（@media） 在指令内部无法继承到指令外部的类，指令外部继承指令内部的类无法达到预期效果

.one{

  height:400px;

}

@media print{

  .two{

    @extend .one

  }

  width:300px;

}

> 编译时报错 继承注意事项

> 不能过量使用继承，因为所有类继承了父类，父类改变就会影响子类

 

继承只会在生成css时复制选择器，而不会复制大段的css属性 如果不小心会让生成css中包含大量的选择器复制 避免这种情况的最好办法： 不要在继承css规则中使用后代选择器如

 

 .dsf{}

 .foo .bar {

 @extend dsf //不推荐

 }

## Font Awesome