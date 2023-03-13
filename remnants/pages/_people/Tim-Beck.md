---
title: "Tim Beck"			# required
layout: default				# don't change
date: 2020-02-10			# optional
excerpt_separator: <!--more-->		# don't change
excerpt_link:				# optional
person_image_file: tbeck.jpg		# recommended
person_github_id:			# optional
person_homepage: 			# recommended
person_email:				# recommended
category:				# edit
  - people
  - contact
tags:					# edit
  - contacts
  - people
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

* UKRI Innovation Fellow at Health Data Research UK
* University of Leicester
* lead ["Beacon Filters"](https://beacon-project.io/teams/filters.html) scout team

<!--more--><!-- edit below for additional content -->

#### Links

email [timbeck@leicester.ac.uk](mailto:timbeck@leicester.ac.uk)
