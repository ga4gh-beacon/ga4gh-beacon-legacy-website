---
title: "Jordi Rambla De Argila"
layout: default
image_file: "jrambla.jpg"
excerpt_separator: <!--more-->
categories:
  - people
  - contact
tags:
  - contacts
  - people
  - developers
  - .featured
---

{% for static_file in site.static_files %}
  {% if static_file.path contains page.image_file %}
<img style="float: right; width: 80px;" src="{{ static_file.path | relative_url}}" />
  {% endif %}
{% endfor %}

## {{ page.title }}

Champion ELIXIR Beacon Driver project (API lead)  
Center for Genome Regulation Barcelona  
European Genome-Phenome Archive  

<!--more-->

email [jordi.rambla@crg.eu](mailto:jordi.rambla@crg.eu)  
web [CRG](https://www.crg.eu/en/programmes-groups/ega-team)  
web [EGA](https://ega-archive.org/about/people)

