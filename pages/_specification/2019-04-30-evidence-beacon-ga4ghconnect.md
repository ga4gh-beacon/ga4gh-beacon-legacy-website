---
title: 'Evidence Beacon Notes from GA4GHconnect 2019'
layout: default
author: "@mbaudis"
date: 2019-04-30
excerpt_separator: <!--more-->
www_links_formatted:
category:
  - roadmap
tags:
  - specification
  - development
---

## {{ page.title }}

The topic of "EvidenceBeacon" was discussed with many different attendants during the speed datingg session and beyond, leading to some clearer picture about the (widening) extent & next steps.

<!--more-->

#### Discussion Partner's Comments & Topics

* Christina (EVA)
    - EVA needs to identify if a given sequence variant has an rsid
    - this is in the realm of EB, since
        * it requires an "annotation response"
        * the same rsid may be (rarely) identified through different sequence variant queries
* Melissa Cline & Gunnar R&auml;tsch (BRCAX, ENIGMA)
    - Melissa brought up the possibility to use results from genomic perturbation tests and model organisms as providing experimental evidence => how could this be addressed?
* Chris Evelo (RD)
    - name based variant queries
        * but agreement that this is well served by a service/interface layer in standard Beacon implementations, if supporting range queries


