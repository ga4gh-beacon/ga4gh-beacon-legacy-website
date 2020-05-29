---
layout: default
permalink: /index.html
---

{% comment %}
################################################################################

	The template for the index page is thought to provide both the option for
	custom content, as well as a mechanism for the automated adding of excerpt
	page links for other pages labeled for the "index" category.

	Please add your content in Markdown or HTML below.

################################################################################
{% endcomment %}

##  _Beacon_ Protocol for Genomic Data Sharing

_Beacons_ provide discovery services for genomic data using the Beacon API
developed as a key [driver project](https://www.ga4gh.org/howwework/driver-projects.html)
of the __Global Alliance for Genomics and Health__
([GA4GH](https://www.ga4gh.org/)). The _Beacon_ protocol itself defines an open
standard for genomics data discovery. It provides a framework for public web services
responding to queries against genomic data collections, for instance from population
based or disease specific genome repositories.

<!--more-->

<figure>
<img src="/assets/img/Beacon-graphics-v0.3-960x240.png" alt="Original Beacon functionality"/>
</figure>

The original Beacon protocol had been designed to be:

* **Simple:** focus on robustness and easy implementation
* **Federated:** maintained by individual organizations and assembled into a network
* **General-purpose:** used to report on any variant collection
* **Aggregative:** provide a boolean (or quantitative) answer about the observation of a variant
* **Privacy protecting:** queries do not return information about single individuals

Sites offering _beacons_ can scale through aggregation [Beacon Networks](/categories/network.html),
which distribute single genome queries among a potentially large number of international
_beacons_ and assemble their responses.

Since 2015 the development of the
Beacon protocol has been led by [ELIXIR](https://elixir-europe.org) in collaboration with GA4GH and international participants. Recent versions of the _Beacon_ protocol have expanded the original concept by e.g.:

* providing a framework for other types of genome variation data
(i.e. [range queries and structural variants](/howto/range-queries.html)
* allowing for data delivery using [_handover_](/roadmap/handover.html) protocol,
e.g. to link with clinical information in protected environments and allow for data delivery and visualisation services

### Beacon v2 - Towards Flexible Use and Clinical Applications

<figure>
<img src="/assets/img/Beacon-graphics-v2-network-960x540.png" alt="Beacon v2 network"/>
</figure>

As part of ELIXIR's [Beacon 2019-21 project](https://elixir-europe.org/about-us/commissioned-services/beacon-2019-21) work has started on a radically re-designed Beacon protocol, with the
aim to provide a maximum of flexibility while closely adhering to data and security
standards promoted by the international ressearch community and especially as part of
projects in the GA44GH ecosystem. The ongoing development of the _Beacon v2_ protocol
can be tracked using [this site](tags/v2.html) and especially the relevant
[code repositories](https://github.com/ga4gh-beacon/) on Github.

&nbsp;

----

{% comment %}
################################################################################

	Below this will page excerpts for pages with the "index" category appear.

################################################################################
{% endcomment %}

{%- assign this_name = "index" -%}
{%- assign this_category = "index" -%}

{%- assign cat_posts = site.emptyArray -%}
{%- for post in site.documents -%}
  {%- if post.categories contains this_category -%}
    {%- assign cat_posts = cat_posts | push: post -%}
  {%- endif -%}
{%- endfor -%}

{%- assign cat_posts = cat_posts | sort: 'date' | reverse -%}

{%- comment -%}
  * special posts for prepending content to the listing pages
  * they are processed first, so separate loops are needed  
{%- endcomment -%}

{% comment %}
	Please keep this for an HTML break...
{% endcomment %}

{%- for post in cat_posts -%}
  {%- if post.tags contains '.prepend' -%}
<div style="margin-bottom: 20px;">
{{ post.content | markdownify }}
</div>
  {%- endif -%}
{%- endfor -%}

{%- comment -%}
  * no separate treatment of featured posts
{%- endcomment -%}

{%- for post in cat_posts -%}
  {% unless post.tags contains '.prepend' or post.tags contains '.append' %}
    {%- assign post_author = post.author | downcase -%}
    {%- assign excerpt_link = post.url | relative_url -%}
    {%- if post.excerpt_link contains '/' -%}
      {%- assign excerpt_link = post.excerpt_link -%}
    {%- endif -%}
<div class="excerpt">
<a href="{{ excerpt_link }}">{{ post.excerpt }}</a>
  <p class="footnote">
    {%- if post.author -%}{{ post.author | join: " | " }}&nbsp;{%- endif -%}
    {%- if post.date -%}{{ post.date | date: "%Y-%m-%d" }}: {% endif %}
 <a href="{{ excerpt_link }}">more ...</a>
  </p>
</div>
  {% endunless %}  
{%- endfor -%}

{%- for post in cat_posts -%}
  {%- if post.tags contains '.append' -%}
<div style="margin-top: 20px;">
{{ post.content | markdownify }}
</div>
  {%- endif -%}
{%- endfor -%}
