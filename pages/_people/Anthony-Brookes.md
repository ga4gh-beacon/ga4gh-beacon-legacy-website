---
title: "Anthony J. Brookes"													# required
layout: default																			# don't change
date: 2020-01-16																		# optional
excerpt_separator: <!--more-->											# don't change
excerpt_link:																				# optional
person_image_file: 																	# recommended
person_github_id:																		# optional
person_homepage: 																		# recommended
person_email: ajb97@leicester.ac.uk									# recommended
category:																						# edit
  - people
  - contact
tags:																								# edit
  - contacts
  - people
  - .featured
description: |																			# FYI
  * page title will be taken from `title` in the header
  * image thumbnail (80px width) will be inserted right of title if
  	`person_image_file` exists somewhere in the repository
  * email, Github and homepage links will be added at the end if defined here
  * excerpt_link will lead to the defined address if excerpt on list page is
  	clicked
---

<!-- automatic content -->

<h2>{{ page.title }}
{%- for static_file in site.static_files -%}
  {% if static_file.path contains page.person_image_file %}
<img align="right" style="float: right; width: 80px; margin-bottom: -80px;" src="{{ static_file.path | relative_url}}" />
  {% endif %}
{%- endfor -%}
</h2>

<!-- edit here for other content showing up on list page -->

* Department of Genetics
* University of Leicester
* Co-lead ELIXIR Beacon

<!--more--><!-- edit below for additional content -->


<!-- auto generated links from header data -->

#### Links

{% if page.person_homepage contains "http" %}
*  homepage [{{page.person_homepage}}]({{page.person_homepage}})  
{%- endif -%}
{% if page.person_email contains "@" %}
* email [{{page.person_email}}](mailto:{{page.person_email}})  
{%- endif -%}
{% unless page.person_github_id == "" %}
* Github [@{{page.person_github_id}}](https://github.com/{{page.person_github_id}})  
{%- endunless -%}

