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




### Ontology term based query example in cancer

In a typical cancer resource scenario, diagnostic codes would be associated with a biosample from which the variants were generated. Disease descriptions and coding could there be annotated in a `biosamples` database collection, as part of a `biocharacteristics` array of disease or phenotype objects:

```
"biocharacteristics" : [
  {
    "description" : "cervix squamous carcinoma [cell line C-4-I]",
    "type" : {
      "id" : "ncit:C27676",
      "label" : "Human papillomavirus-related cervical squamous cell carcinoma"
    }
  }
]
```
... where the `type` attribute represents the default annotation for ontology terms (the use of an "id" and a "label" is SOP for such use cases).

The simplest query for an exact match for this specific diagnosis could be formulated as:

##### MongoDB example (i.e. the backend query)
```
db.biosamples.find( { "biocharacteristics.type.id" : "ncit:C27676" } )
```
##### (Generic) HTTP example
```
https://beacon-server.example.org/api/?collection=biosamples&qfield=biocharacteristics.type.id&qtext=ncit:C27676
```
