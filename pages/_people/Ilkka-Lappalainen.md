---
title: "Ilkka Lappalainen"
layout: default
image_file: "ilappalainen.jpg"
excerpt_separator: <!--more-->
categories:
  - people
  - contact
tags:
  - contacts
  - people
  - leads
  - .featured
---

{% for static_file in site.static_files %}
  {% if static_file.path contains page.image_file %}
<img style="float: right; width: 80px;" src="{{ static_file.path | relative_url}}" />
  {% endif %}
{% endfor %}

## {{ page.title }}

Co-chair ELIXIR Beacon  
CSC - IT Center for Science  

<!--more-->

email [ilkka.lappalainen@csc.fi](mailto:ilkka.lappalainen@csc.fi)

