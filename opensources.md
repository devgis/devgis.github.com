---
layout: default
title: 开源
permalink: /opensources
---

<ol class="circle-list">
    <li>
      <h2><a class="post-title item-title-top" href="">整理中</a></h2>
      <p>所有得开源相关内容介绍，获取以及编译方式。</p>
    </li>
  
    {% for post in site.opensources %}
    <li>
      <h2><a class="post-title" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></h2>
      <p>{{ post.description }}</p>
      <p class="post-meta">创作时间：{{ post.date | date: '%B %-d, %Y - %H:%M' }} 最后更新：{{ post.updatedate | date: '%B %-d, %Y - %H:%M' }}</p>
    </li>
  {% endfor %}
</ol>
