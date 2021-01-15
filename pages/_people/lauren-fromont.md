---
title: "Lauren Fromont"
layout: default
image_file: "lfromont.jpg"
excerpt_separator: <!--more-->
category:
  - contact
  - people
tags:
  - contacts
  - people
  - .featured
---

{% for static_file in site.static_files %}
  {% if static_file.path contains page.image_file %}
<img style="float: right; width: 80px;" src="{{ static_file.path | relative_url}}" />
  {% endif %}
{% endfor %}

## {{ page.title }}

* Center for Genome Regulation Barcelona  
* European Genome-Phenome Archive  

<!--more-->

* email [lauren.fromont@crg.eu](mailto:lauren.fromont@crg.eu)  
* web [CRG](https://www.crg.eu/en/programmes-groups/ega-team)  
* web [EGA](https://ega-archive.org/about/people)
