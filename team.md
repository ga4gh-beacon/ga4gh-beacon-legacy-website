---
title: Team | Beacon Project
layout: default
---
<img data-gifffer="assets/images/beacon-discovery.gif" data-gifffer-alt="Beacon Discovery" />

The Beacon project enables discovery of research consented sensitive human genetic data stored in databases affiliated with ELIXIR Nodes and in the European Genome-phenome Archive (EGA). Building on the GA4GH Beacon technology, the project is developing common interface to streamline and simplify access to these resources using ELIXIR Authentication and Authorization Infrastructure. ELIXIR Beacon involves partners from eight ELIXIR Nodes: EMBL-EBI, Belgium, Finland, France, Netherlands, Spain, Sweden and Switzerland.

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

<script>
  window.onload = function() {
    Gifffer();
  }
</script>
<!--
You can use HTML elements in Markdown, such as the comment element, and they won't be affected by a markdown parser. However, if you create an HTML element in your markdown file, you cannot use markdown syntax within that element's contents.
-->
