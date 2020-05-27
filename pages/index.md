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


## Beacon API Project Information

"Beacons" provide discovery services for genomic data in ELIXIR and the 
[Beacon network](http://beacon-network.org), using the Beacon technology 
developed for the __Global Alliance for Genomics and Health__ 
([GA4GH](https://www.ga4gh.org/)).

The _Beacon_ protocol defines an open standard for genomics data discovery, 
developed by members of the 
[Global Alliance for Genomics &amp; Health](http://genomicsandhealth.org).
It provides a framework for public web services responding to queries against
genomic data collections, for instance from population based or disease specific
genome repositories.

<!--more-->

The Beacon protocol has been designed to be:

* **Simple:** focus on robustness and easy implementation
* **Federated:** maintained by individual organizations and assembled into a network
* **General-purpose:** used to report on any variant collection
* **Aggregative:** provide a boolean (or quantitative) answer about the observation of a variant
* **Privacy protecting:** queries do not return information about single individuals

<figure>
<img src="/assets/img/beacon-discovery.png" alt="Beacon network"/>
</figure>

The initial version of the _Beacon_ protocol had been developed to test the 
willingness and ability of international genome resources to share genomic data 
in a highly simplified context. The service was designed to accept specific 
queries in the form "Do you have any genomes with an 'A' at position 100735 on 
chromosome 3" and responds with "Yes" or "No."

A site offering this service is called a _beacon_. Such sites can scale through 
aggregation in the [Beacon Networks](/categories/network.html), which distribute
single genome queries among a large number of international _beacons_ and
assemble their responses.

Recent and future versions of the _Beacon_ protocol expand the original concept
by providing a framework for querying other types of genome variation data
(i.e. [range queries and structural variants](/howto/range-queries.html) since 
[v0.4](/specification/release-v0.4.html)) and also options for quantitative
responses.

Since 2016, the development of the _Beacon_ protocol has been provided through 
the [_ELIXIR Beacon_ project](https://www.elixir-europe.org/about-us/implementation-studies/beacons),
a [GA4GH driver project](https://www.ga4gh.org/howwework/driver-projects.html),
with ongoing participation from the  [DNAstack](https://dnastack.com) team.

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

