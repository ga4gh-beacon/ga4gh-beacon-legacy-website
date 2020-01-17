---
title: "Juha Törnroos"
layout: default
excerpt_separator: <!--more-->
excerpt_link: # link here will open target when clicking on the list item
person_image_file: 'jtornroos.jpg'
person_github_id: juhtornr
person_homepage: https://csc.fi
person_email: juha.tornroos@csc.fi
category:
  - contact
  - people
tags:
  - contacts
  - people
  - developers
  - .featured
description: |
  * page title will be taken from `title` in the header
  * image thumbnail (80px width) will be inserted right of title if
  	`person_image_file` exists somewhere in the repository
  * email, Github and homepage links will be added at the end if defined here
  * excerpt_link will lead to the defined address if excerpt on list page is
  	clicked
---

<h2>{{ page.title }}
{%- for static_file in site.static_files -%}
  {% if static_file.path contains page.person_image_file %}
<img align="right" style="float: right; width: 80px; margin-bottom: -80px;" src="{{ static_file.path | relative_url}}" />
  {% endif %}
{%- endfor -%}
</h2>

<!-- other content showing up on list page -->

* Champion ELIXIR Beacon Driver project (Network lead)  
* ELIXIR Finland  
* CSC  

<!--more-->

#### Links

<!-- auto generated -->

{% if page.person_homepage contains "http" %}
*  homepage [{{page.person_homepage}}]({{page.person_homepage}})  
{%- endif -%}
{% if page.person_email contains "@" %}
* email [{{page.person_email}}](mailto:{{page.person_email}})  
{%- endif -%}
{% unless page.person_github_id == "" %}
* Github [@{{page.person_github_id}}](https://github.com/{{page.person_github_id}})  
{%- endunless -%}

