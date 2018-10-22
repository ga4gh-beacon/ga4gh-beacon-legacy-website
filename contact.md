---
layout: default
---

{% assign this_name = page.name | split: "." %}
{% assign this_category = this_name[0] %}

## {{ this_category | capitalize }}

{% for post in site.categories[this_category] %}
  {% if post.tags contains 'prepend' and post.tags contains 'sticky' %}
<div style="margin-bottom: 20px;">
{{ post.content | markdownify }}
</div>
  {% endif %}
{% endfor %}

{% for post in site.categories[this_category] %}
  {% if post.tags contains 'featured' %}
<div class="excerpt">
    {{ post.excerpt }}
<p class="footnote">
    {%if post.author %}
      {{post.author}}, 
    {% endif %}
  {{ post.date | date: "%Y-%m-%d" }}: <a href="{{ post.url | relative_url }}">more ...</a>
  </p>
</div>
  {% endif %}
{% endfor %}

{% for post in site.categories[this_category] %}
  {% unless post.tags contains 'featured' or post.tags contains 'sticky' %} 
<div class="excerpt">
    {{ post.excerpt }}
<p class="footnote">
    {%if post.author %}
      {{post.author}}, 
    {% endif %}
  {{ post.date | date: "%Y-%m-%d" }}: <a href="{{ post.url | relative_url }}">more ...</a>
  </p>
</div>
  {% endunless %}
{% endfor %}
