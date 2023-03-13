---
title: "Babita Singh"																# required
layout: default																			# don't change
date: 2020-01-16																		# optional
excerpt_separator: <!--more-->											# don't change
excerpt_link:																				# optional
person_image_file: "bsingh.jpg"										# recommended
person_github_id: babisingh													# optional
person_homepage:  																	# recommended
person_email: babita.singh@crg.eu										# recommended
category:																						# edit
  - people
tags:																								# edit
  - contacts
  - people
  - CNV
  - SV
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

* Structural Variants scout team lead
* Post Doctoral Bioinformatics Researcher
* European Genome-phenome Archive
* Centre for Genomic Regulation (CRG)
* PRBB - Barcelona

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

