---
title: "Gary Saunders"
layout: default
image_file: "garys.jpg"
excerpt_separator: <!--more-->
categories:
  - people
  - contacts
tags:
  - contacts
  - people
  - admin
---


{% for static_file in site.static_files %}
  {% if static_file.path contains page.image_file %}
<img style="float: right; width: 80px;" src="{{ static_file.path | relative_url}}" />
  {% endif %}
{% endfor %}

## {{ page.title }}, PhD

ELIXIR Beacon Coordinator  
ELIXIR Hub  

<!--more-->

email [gary.saunders@elixir-europe.org](mailto:elixir-europe.org)

