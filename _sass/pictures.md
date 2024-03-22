---
layout: page
title: 美图
permalink: /pictures/
description: 我近些年拍摄了大量的摄影图片，此专版主要用于。
---

{% for project in site.pictures %}

{% if project.redirect %}

<div class="project">
    <div class="thumbnail">
        <a href="{{ project.redirect }}" target="_blank">
        {% if project.img %}
        <img class="thumbnail" src="{{ project.img }}"/>
        {% else %}
        <div class="thumbnail blankbox"></div>
        {% endif %}    
        <span>
            <h1>{{ project.title }}</h1>
            <br/>
            <p>{{ project.description }}</p>
        </span>
        </a>
    </div>
</div>

{% else %}

<div>
    <hr/>
    <a alt="{{ project.description }}" href="{{ site.baseurl }}{{ project.url }}"><img class="flyimg" src="{{ project.img }}"/></a>
    <h1> <a href="{{ site.baseurl }}{{ project.url }}">{{ project.title }}</a></h1>
    <br/>
    <p>{{ project.description }}</p>
</div>

{% endif %}

{% endfor %}

<nav class="pagination" role="navigation">
  {% if paginator.previous_page %}
  <a class="previous pagination__newer btn btn-small btn-tertiary" href="{{ paginator.previous_page_path }}">&larr; 上一页</a>
  {% endif %}
  <span class="page_num pagination__page-number">{{ paginator.page }} / {{ paginator.total_pages }}</span>
  {% if paginator.next_page %}
  <a class="next pagination__older btn btn-small btn-tertiary" href="{{ paginator.next_page_path }}">下一页 &rarr;</a>
  {% endif %}
</nav>
