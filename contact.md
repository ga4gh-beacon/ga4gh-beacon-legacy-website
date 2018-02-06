---
title: Contact | Beacon Project
layout: default
---

# Contact:Leadership

You can contact the members of the Beacon and ELIXIR Beacon leadership for more information or to get involved with the Beacon Project.

<div class="ds-member" style="float:left; margin-right: 20px;"><img src="assets/images/team/sscollen.jpg" class="member-photo hidden-xs"></div>
Serena Scollen<br/>Head of Human Genomics and Translational Data, ELIXIR Europe
<br/>Co-chair ELIXIR Beacon<br/>
<a itemprop="email" href="mailto:serena.scollen@elixir-europe.org">serena.scollen@elixir-europe.org</a>

<br/><br/>

<div class="ds-member" style="float:left; margin-right: 20px;"><img src="assets/images/team/mbaudis.jpg" class="member-photo hidden-xs"></div>
Michael Baudis<br>Co-chair ELIXIR Beacon<br/>
Representative GA4GH<br/>
University of Zurich &<br/>
Swiss Institute of Bioinformatics<br/>
<a itemprop="email" href="mailto:mbaudis@progenetix.org">mbaudis@progenetix.org</a>

<br/><br/>

<div class="ds-member" style="float:left; margin-right: 20px;"><img src="assets/images/team/ilappalainen.jpg" class="member-photo hidden-xs"></div>
Ilkka Lappalainen<br>Co-chair ELIXIR Beacon<br/>
CSC-IT Center for Science<br/>
<a itemprop="email" href="mailto:ilkka.lappalainen@csc.fi">ilkka.lappalainen@csc.fi</a>


# Contact:Developers

Our objective is to provide the methods, protocols and tools to make it possible to explore genomics data available through Beacon nodes.

### [Beacon Strategic Calls](https://docs.google.com/document/d/1Is4vcMBgtu_XatfKCityV5NpZ7FCthGifuuMnNrJb3Y)
**Frequency:** Alternate Tuesdays 3.30pm CET / 2.30pm GMT / 9.30am EST / 6.30am PST


### [Beacon Technical Calls](https://docs.google.com/document/d/13c5-c2WsQTRysl0QQEMmap__0jh3OstuM8YwzE-3AlQ)
**Frequency:** Alternate Tuesdays 3.30pm CET / 2.30pm GMT / 9.30am EST / 6.30am PST

<!--
TODO: Developer list not from separate file but developer flag
-->

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
