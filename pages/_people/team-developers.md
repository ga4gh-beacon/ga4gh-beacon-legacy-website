---
title: "Developers"
layout: default
excerpt_separator: <!--more-->
category:
  - people
  - contact
tags:
  - contacts
  - people
---

## {{ page.title }}

Our objective is to provide the methods, protocols and tools to make it possible to explore genomics data available through Beacon nodes.

<!--more-->

{% assign page_tag = 'developers' %}

{% for post in site.documents %}
  {% if post.tags contains page_tag %}
<div class="excerpt">
{{ post.excerpt }}
  <p class="footnote">
    <a href="{{ post.url | relative_url }}">more ...</a>
  </p>
</div>
  {% endif %}
{% endfor %}
