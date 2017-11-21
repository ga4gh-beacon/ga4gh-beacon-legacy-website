---
title: Team | Beacon Project
layout: default
---
<img src="assets/images/PeopleNetwork.jpg" width="400" height="200" alt="Illustration of a network of people" />
The Beacon Project involves...

# Chairs
Who are they? What do they want from us? :)

# Members
<!-- If you want to add or edit a member, go to _data/nodes.json -->
<ul class="tiles">
{% for member in site.data.members %}
  <li>
    <img src="{{ member.imageSrc }}" alt="{{ member.id }}" width="150"/><br />
    {{ member.name }}
  </li>
{% endfor %}
</ul>

<!--
You can use HTML elements in Markdown, such as the comment element, and they won't be affected by a markdown parser. However, if you create an HTML element in your markdown file, you cannot use markdown syntax within that element's contents.
-->
