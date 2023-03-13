---
title: "Manuel Rueda"
layout: default
excerpt_separator: <!--more-->
category:
  - contact
  - people
tags:
  - contacts
  - people
---

{% for static_file in site.static_files %}
  {% if static_file.path contains page.image_file %}
<img style="float: right; width: 80px;" src="{{ static_file.path | relative_url}}" />
  {% endif %}
{% endfor %}

## {{ page.title }}

* Developer - Beacon Reference Implementation
* Center for Genome Regulation Barcelona  
* European Genome-Phenome Archive  

<!--more-->

* email [manuel.rueda@crg.eu](mailto:manuel.rueda@crg.eu)  
* web [CRG](https://www.crg.eu/en/programmes-groups/ega-team)  
* web [EGA](https://ega-archive.org/about/team)
