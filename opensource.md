---
layout: default
title: 开源
permalink: /opensource/
---

## MD表格


| name | kecheng | fenshu |
| :--- | :------ | :----- |
| 张三   | 语文      | 81     |
| 张三   | 数学      | 75     |
| 李四   | 语文      | 76     |
| 李四   | 数学      | 90     |
| 王五   | 语文      | 81     |
| 王五   | 数学      | 100    |
| 王五   | 英语      | 90     |

## HTML 表格
<style>
ol{
    counter-reset: li;
    list-style: none;
    *list-style: decimal;
    font: 15px 'trebuchet MS', 'lucida sans';
    padding: 0;
    margin-bottom: 4em;
    text-shadow: 0 1px 0 rgba(255,255,255,.5);
}

ol ol{
    margin: 0 0 0 2em;
}



.circle-list li{
    padding: 2.5em;
    border-bottom: 1px dashed #ccc;
}

.circle-list h2{
    position: relative;
    margin: 0;
}

.circle-list p{
    margin: 0;
}

.circle-list h2:before{
    content: counter(li);
    counter-increment: li;
    position: absolute;    
    z-index: -1;
    left: -1.3em;
    top: -.8em;
    background: #f5f5f5;
    height: 1.5em;
    width: 1.5em;
    border: .1em solid rgba(0,0,0,.05);
    text-align: center;
    font: italic bold 1em/1.5em Georgia, Serif;
    color: #ccc;
    -moz-border-radius: 1.5em;
    -webkit-border-radius: 1.5em;
    border-radius: 1.5em;
    -webkit-transition: all .2s ease-out;
    -moz-transition: all .2s ease-out;
    -ms-transition: all .2s ease-out;
    -o-transition: all .2s ease-out;
    transition: all .2s ease-out;    
}

.circle-list li:hover h2:before{
    background-color: #ffd797;
    border-color: rgba(0,0,0,.08);
    border-width: .2em;
    color: #444;
    -webkit-transform: scale(1.5);
    -moz-transform: scale(1.5);
    -ms-transform: scale(1.5);
    -o-transform: scale(1.5);
    transform: scale(1.5);
}
</style>


<ol class="circle-list">

    <li>
        <h2>Lorem ipsum dolor sit amet</h2>
        <p>Morbi sagittis sapien ac magna egestas dictum.</p>
    </li>
    <li>
        <h2>Lorem ipsum dolor sit amet</h2>
        <p>Morbi sagittis sapien ac magna egestas dictum.</p>

    </li>
    <li>
        <h2>Lorem ipsum dolor sit amet</h2>
        <p>Morbi sagittis sapien ac magna egestas dictum.</p>
    </li>
    <li>
        <h2>Lorem ipsum dolor sit amet</h2>

        <p>Morbi sagittis sapien ac magna egestas dictum.</p>
    </li>
    <li>
        <h2>Lorem ipsum dolor sit amet</h2>
        <p>Morbi sagittis sapien ac magna egestas dictum.</p>
    </li>           
</ol>