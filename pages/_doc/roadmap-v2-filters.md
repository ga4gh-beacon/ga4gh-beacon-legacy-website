---
title: 'Beacon v2 Filters'
date: 2020-01-29
layout: default
author: "@mbaudis"
excerpt_separator: <!--more-->
www_link:
category:
  - specification
tags:
  - specification
  - development
  - roadmap
  - v2
---

## {{ page.title }}

An *v2* extension of the Beacon protocol will allow the query for additional
data beyond genome variants, using a proposed `filters` extension. Such filters
are thought to be prefixed attributes, where the (public or private) prefix
becomes the basis of scoping the value to the correct database value.

<!--more-->

##### Previous design evaluations [[➚](/roadmap/bioontologies.html)]

An [earlier discussion](/roadmap/bioontologies.html) had proposed a scoped query
object design, following the originally proposed GA4GH schema's [object model](https://schemablocks.org/standards/ga4gh-data-model.html). Its 
implementation had been demonstrated through [Beacon<span style="color: red; font-weight: 800;">+</span>](http://beacon.progenetix.org/ui/), where it was used to limit
responses to one or multiple ontology terms (e.g. `ncit:C9039`) against the
`biosamples` collection, i.e. only `BeaconAlleleResponses` for matches against
the `BeaconAlleleRequest` *and* the ontology term.


##### Current reasoning for `filters` implementation

The `filters` concept put forward for Beacon v2 avoids the explicit scoping of
filter parameters and leaves this open to interpretation by the different
resources and their data models. However, this necessitates extensive
documentation of proposed use cases, to leverage the power of federated Beacon
queries.

##### Examples for discussion

The [Beacon<span style="color: red; font-weight: 800;">+</span>](http://beacon.progenetix.org/ui/)
front-end of the [Progenetix](http://progenetix.org) cancer genomics resource
has implemented a `filters` based query model, in which prefixed parameters
are scoped to their database attributes based on a lookup stage. Excerpt from
the configuration file:

```
---
description: |
  This file defines the mappings of public or private prefixes to the attributes
  in the Progenetix database schemas.
  Filters are not specifically scoped to individual data collections. This is
  either done separately in the `query_params.yaml` file, where only certain
  query attributes are assigned to specified "scopes" (collections).
  The alternative way is the construction of scoped queries instead of using
  `filters`.
  
  Examples:
    - `ncit:C9325`
        * will translate to `biocharacteristics.type.id=ncit:C9325`
        * `biocharacteristics.type.id` is an allowed parameter in queries
        against biosamples and biosubsets; this should not be ambiguous
        * however, when wanting to identify all samples, variants from patients
        with the disease a filter query - even when the `individuals` collection
        would be populated (not yet in Progenetix) - the unscoped query would
        not identify e.g. control samples from the patients 
parameters:
  icdom:
    parameter: 'biocharacteristics.type.id'
    examples:
      - 'icdom-81703'
      - 'icdom-94403'
  ncit:
    parameter: 'biocharacteristics.type.id'
    examples:
      - 'ncit:C27676'
      - 'ncit:C9325'
  HPO:
    parameter: 'biocharacteristics.type.id'
    examples:
      - 'HP:0012209'
  pubmed:
    parameter: 'external_references.type.id'
    examples:
      - 'pubmed:28966033'
      - 'pubmed:9405679'
  genomes:
    parameter: 'counts.genomes'
    remove_prefix: true
    examples:
      - 'genomes:>0'
  biosampleid:
    parameter: 'biosamples.id'
    remove_prefix: true
  callsetid:
    parameter: 'callsets.id'
    remove_prefix: true
```
