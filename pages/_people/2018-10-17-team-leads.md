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
  - leads
---

## {{ page.title }}

Within a shallow and flexible hierarchy, the Beacon project leads are the primary points of contact for establishing collaborations or when seeking general project support, beyond specific technical questions (but possibly including those).

<!--more-->

{% assign today = site.time | date: '%Y%m%d' %}
{% assign page_tag = 'leads' %}

{% for post in site.posts %}
  {% assign post_tags = post.tags | sort %}
  {% assign post_author = post.author | downcase %}
  {% for tag in post_tags %}
    {% assign tag_lower = tag | downcase %}
    {% if tag_lower == page_tag or post_author == page_tag %}
      {% assign post_day = post.date | date: '%Y%m%d' %}
      {% assign post_year = post.date | date: '%Y' %}
      {% if post_day > today %}
        {% assign post_year = 'Upcoming' %}
      {% endif %}
      {% if current_year != post_year %}
        {% assign current_year = post_year %}
<h2 id="y{{post.date | date: "%Y"}}" style="margin-top: 20px;">{{ current_year }}</h2>
      {% endif %}
<div class="excerpt">
      {% if post_day > today %}
  <h3 style="color: red">{{ post.date | date: "%Y-%m-%d" }}</h3>
      {% endif %}
{{ post.excerpt }}
<p class="footnote">
      {%if post.author %}
{{post.author}},
      {% endif %}
{{ post.date | date: "%Y-%m-%d" }}: <a href="{{ post.url | relative_url }}">more ...</a>
  </p>
</div>
      {% break %}
    {% endif %}
  {% endfor %}
{% endfor %}
