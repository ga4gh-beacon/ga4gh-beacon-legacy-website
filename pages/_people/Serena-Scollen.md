---
title: "Serena Scollen"
layout: default
image_file: "sscollen.jpg"
excerpt_separator: <!--more-->
categories:
  - people
  - contact
tags:
  - people
  - leads
---

{% for static_file in site.static_files %}
  {% if static_file.path contains page.image_file %}
<img style="float: right; width: 80px;" src="{{ static_file.path | relative_url}}" />
  {% endif %}
{% endfor %}

## Serena Scollen, PhD

Lead, ELIXIR Human Data    
Lead, ELIXIR-GA4GH partnership    
ELIXIR Hub  

<!--more-->

email [serena.scollen@elixir-europe.org](mailto:serena.scollen@elixir-europe.org)  
web [ELIXIR](https://www.elixir-europe.org/about-us/who-we-are/hub)


