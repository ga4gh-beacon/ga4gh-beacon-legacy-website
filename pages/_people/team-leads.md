---
title: "Project Leads"
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

Within a shallow and flexible hierarchy, the Beacon project leads are the primary points of contact for establishing collaborations or when seeking general project support, beyond specific technical questions (but possibly including those).

<!--more-->

{% assign page_tag = 'leads' %}

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
