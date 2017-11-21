---
title: Developers | Beacon Project
layout: default
---

<img class="pull-left" src="assets/images/development.jpg" width="250">

# Developers

Our objective is to provide the methods, protocols and tools to make it possible to explore genomics data available through Beacon nodes.

This section describes first how to deploy these resources, both computer components and biological data, and then how they are pooled them into a global network to respond to requests in a secured way.

<!-- If you want to add or edit a member, go to _data/nodes.json -->
<ul class="tiles">
{% for member in site.data.developers %}
  <li>
    <img src="{{ member.imageSrc }}" alt="{{ member.id }}" width="150"/><br />
    {{ member.name }}
  </li>
{% endfor %}
</ul>
<!--
You can use HTML elements in Markdown, such as the comment element, and they won't be affected by a markdown parser. However, if you create an HTML element in your markdown file, you cannot use markdown syntax within that element's contents.
-->
