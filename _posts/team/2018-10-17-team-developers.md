---
title: Developers
layout: default
excerpt_separator: <!--more-->
category:
  - team
tags:
  - contacts
  - team
  - code
  - specification
  - development
---

<img style="float: right;" src="/assets/images/development.jpg" width="150">

## {{ page.title }}

Our objective is to provide the methods, protocols and tools to make it possible to explore genomics data available through Beacon nodes.

<!--more-->

<!-- If you want to add or edit a member, go to _data/nodes.json -->

{% for member in site.data.members %}
  {% if member.isdeveloper == 1 %}
#### {{ member.name }}
<img src="{{ member.imageSrc }}" alt="{{ member.id }}" width="150"/>
  {% endif %}
{% endfor %}

### Beacon Technical Calls

**Frequency:** Alternate Tuesdays 3.30pm CET / 2.30pm GMT / 9.30am EST / 6.30am PST

**Dial in Details:** [gotomeet.me/serenascollen/beacon-tech](http://gotomeet.me/serenascollen/beacon-tech)


<!-- Fork me on Github -->
<a href="https://github.com/ga4gh-beacon/specification">
  <img style="position: absolute; top: 0; right: 0; border: 0; width: 149px; height: 149px;" src="http://aral.github.com/fork-me-on-github-retina-ribbons/right-green@2x.png"
    alt="Fork me on GitHub">
</a>
