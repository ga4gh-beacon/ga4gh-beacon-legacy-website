---
title: 'Beacon Compliance Team'
date: 2020-01-13
layout: default
author: ["@mbaudis", "@viklund"]
permalink: /minutes/compliance-minutes-2020.html
excerpt_separator: <!--more-->
www_link: # a simple web address related to the post, e.g. https://www.ga4gh.org
www_links_formatted:
  - '<a href="/teams/compliance.html">compliance team page</a>'
  - '<a href="https://github.com/NBISweden/beacon-api-tests">beacon-api-tests Repository</a>'
pdf_file_name: 
category: # please adjust
  - minutes
tags: # please adjust - align with  "cloud_tags" in _confic.yml_
  - minutes
  - compliance
  - v2
---

## {{ page.title }}

The Beacon Compliance Team develops tests & tools for evaluating the query 
compliance of Beacon implementations.
 
<!--more-->

### 2020-01-13: Beacon Compliance TC

##### Johan Viklund, Malin Klang, Andreas Kähäri, Michael Baudis, Marta Ferri

#### Agenda

* Current [test suite](https://github.com/NBISweden/beacon-api-tests) status.
* How is test data stored and loaded into a beacon.

#### Todo

* Format of test data.
    - Define individual call sets (i.e. a variant that is twice should be twice in test data)
* How to interpret the API. Different sites have had different interpretation on how queries and the response should be formatted. We need to go through these and agree.
* Structure tests into different classes.
* How new queries are added to the API and compliance tests - to be discussed in a bigger setting.


