---
title: "Juha Törnroos"
layout: default
excerpt_separator: <!--more-->
image_file: 'jtornroos.jpg'
category:
  - people
  - contact
tags:
  - people
  - leads
  - developers
  - .featured
---

{% for static_file in site.static_files %}
  {% if static_file.path contains page.image_file %}
<img style="float: right; width: 80px;" src="{{ static_file.path | relative_url}}" />
  {% endif %}
{% endfor %}

## {{ page.title }}

Champion ELIXIR Beacon Driver project (Network lead)  
ELIXIR Finland  
CSC  

<!--more-->

email [juha.tornroos@csc.fi](mailto:juha.tornroos@csc.fi)  


