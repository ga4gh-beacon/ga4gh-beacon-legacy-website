---
layout: default
---

{% assign this_name = page.name | split: "." %}
{% assign this_category = this_name[0] %}

## {{ this_category | capitalize }}

{% for post in site.categories[this_category] %}
  {% assign post_day = post.date | date: '%Y%m%d' %}
  {% assign post_year = post.date | date: '%Y' %}
  {% if post_day > today %}
    {% assign post_year = 'Upcoming' %}
  {% endif %}
  {% if current_year != post_year %}
    {% assign current_year = post_year %}
<h3 id="y{{post.date | date: "%Y"}}" style="margin-top: 20px;">{{ current_year }}</h3>
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
{% endfor %}
