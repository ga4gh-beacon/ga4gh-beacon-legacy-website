---
title: "Roberto Ariosa Hernandez"
layout: default
image_file: "rariosa.png"
excerpt_separator: <!--more-->
categories:
  - people
tags:
  - contributors
  - developers
---

{% for static_file in site.static_files %}
  {% if static_file.path contains page.image_file %}
<img style="float: right; width: 80px;" src="{{ static_file.path | relative_url}}" />
  {% endif %}
{% endfor %}

## {{ page.title }}

Former developer in ELIXIR Beacon Project  
