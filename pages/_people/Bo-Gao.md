---
title: "Bo Gao"
layout: default
excerpt_separator: <!--more-->
image_file: bgao.png
category:
  - people
tags:
  - contributors
  - developers
---

{% for static_file in site.static_files %}
  {% if static_file.path contains page.image_file %}
<img style="float: right; width: 100px;" src="{{ static_file.path | relative_url}}" />
  {% endif %}
{% endfor %}

## {{ page.title }}

Developer, Beacon project  
PhD candidate in Bioinformatics  
University of Zurich  

<!--more-->

#### Developer:

* Beacon
* data compatibility & integration

email [bo@progenetix.org](mailto:bo@progenetix.org)  
web [Bo Gao @ UZH](http://info.baudisgroup.org/group/Bo_Gao/)  

