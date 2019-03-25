---
title: "Sabela de la Torre Pernas"
layout: default
image_file: "sdelatorre.jpg"
excerpt_separator: <!--more-->
categories:
  - developers
tags:
  - developers
---

{% for static_file in site.static_files %}
  {% if static_file.path contains page.image_file %}
<img style="float: right; width: 80px;" src="{{ static_file.path | relative_url}}" />
  {% endif %}
{% endfor %}

## {{ page.title }}

Developer in ELIXIR Beacon Project  
Center for Genome Regulation Barcelona  
European Genome-Phenome Archive  

<!--more-->

email [sabela.delatorre@crg.eu](mailto:sabela.delatorre@crg.eu)  
web [CRG](https://www.crg.eu/en/programmes-groups/ega-team)  
web [EGA](https://ega-archive.org/about/people)

