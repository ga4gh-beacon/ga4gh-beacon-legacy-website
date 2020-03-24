---
title: 'Clinical Beacons - towards v2'
date: 2020-03-23
layout: default
authors: 
  - "@mbaudis"
#  - please add more, as quoted GH handle or just name
permalink: /v2/clinical-beacons.html
excerpt_separator: <!--more-->
www_link: /roadmap/beacon-flavours.html
categories:
  - specification
tags:
  - specification
  - development
  - roadmap
  - filters
  - clinical
  - v2
  - .featured
---

## {{ page.title }}

### "Clinical Beacon" - Semantics & Logical Scope

In the original Beacon roadmap definitions, "clinical Beacon" (lower case)
described a set of use cases instead of a specific [Beacon flavour](/roadmap/beacon-flavours.html).

<!--more-->

Besides non-aggregate variant Beacons (where i.e. matched variant instances
_in principle_ could be connected with the samples they were derived from), 
"Clinical Beacons" can also be instances of "Evidence" or "Data"
Beacons as described in the roadmap - that is, *any Beacon providing information
about variants or about their instances, useful in a clinical context*.

The original Beacon protocol had only limited utility for medical practice
or clinical use, mostly in confirming the (non-) existence of a particular
variant of interest in connected genome repositories. The protocol itself 
only permitted the query for single, sequence-specified genome variants and 
did not allow the addition of any additional information beyond the 
qualification for the "exists?" query to the Beacon response.

### Beacon v1.n - Query options

While the Beacon v0.1 => v0.3 only allowed queries for precise (SNP, INDEL)
genome variants, v0.4 => 1.n added options for structural variants and range
queries. However, no options for biomedical or technical metadata queries had
been included.

### Beacon v1.n - Data Delivery

With version 1.0 of the Beacon API, the addition of the `handover` response
element now enables the linking of a Beacon query result to any data delivery
method, using labeled URL object(s). The specification itself does *not* cover
the formats of the handover targets; this is left to the implementer. Right now
(i.e. with v1.n), this strategy allows for the implementation of "data rich"
Beacon responses, where the responsibility for data formats and security stays
with each implementer. Examples for `handover` implementations using (public)
data are provided in the
[Beacon<span style="color: red; font-weight: 800;">+</span>](http://beacon.progenetix.org/ui/) 
implementation, where one e.g. can download the biosample data of the matched
cases, or visualize matched genome variants in the UCSC browser.

While the _handover_ concept is extremely versatile, it does not provide an
alignment of response formats across Beacon instances. Therefore, the definition
of "clinical response specifications" has become a part of the Beacon v2 
roadmap, especially to provide response harmonization for federated queries.

### Beacon v2 - Query Options Beyond Variants

__TODO__

* filters
* named genome elements


### Beacon v2 - Towards Rich Data Delivery

__TODO__

* handover
* pre-defined data formats, derived from GA4GH standards and projects
* "data + schema" for custom schemas
* "evidence" type information


