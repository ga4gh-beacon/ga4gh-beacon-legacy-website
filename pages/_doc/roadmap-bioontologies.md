---
title: 'Bio-metadata Query Support'
date: 2018-10-18
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

Future Beacon API versions will support querying for additional, non-sequence related data types.

<!--more-->

<figure style="display: block; float: right; width: 250px; margin-right: -40px; margin-top: -25px;">
  <img src="https://schemablocks.org/assets/img/ga4gh-core-object-model.png" style="width: 250px;  " />
  <figcaption style="font-size: 0.8em; color: #03c; background-color: #eee; padding: 5px;">
Proposed basic objects and their relationships, derived from the GA4GH Metadata Schema with some placeholder attributes. Such a model can serve as the basis for consistently scoped Beacon queries, beyond variant detection.
  </figcaption>
</figure>

One of the first implementations will be towards ontology term based phenotype and disease classifications, based on concepts from the `Biocharacteristic` and `OntologyTerm` objects from the GA4GH metadata model and its [__SchemaBlocks__](http://schemablocks.org/) descendant.

Development of these query extensions will require a basic, but consistent, object model for scoping such queries.

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
