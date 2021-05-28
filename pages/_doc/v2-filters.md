---
title: 'Beacon v2 Filters'
date: 2020-05-12
layout: default
author:
  - "@tb143"
  - "@mbaudis"
excerpt_separator: <!--more-->
www_link:
permalink: /v2/filters.html
category:
  - specification
tags:
  - specification
  - development
  - filters
  - v2
---

## {{ page.title }}

An *v2* extension of the Beacon protocol will allow the query for additional
data beyond genome variants, using a proposed `filters` extension. Such filters
are thought to be prefixed attributes, where the (public or private) prefix
becomes the basis of scoping the value to the correct database value.

<!--more-->

### Overview of Beacon filters

The Beacon v2 API supports the discovery of genomics and clinical datasets, and
includes a powerful feature to enable the “filtering” of beacon responses by
biomedical properties (e.g. phenotypes) and procedural metadata.

Filters belong to one of currently three super-classes:

* `Filters` correspond to classes from bio-ontologies for biomedical data or
procedural metadata that are contained in public repositories such as the
[Ontology Lookup Service](https://www.ebi.ac.uk/ols/ontologies) or
[NCBO’s BioPortal](https://bioportal.bioontology.org/ontologies).  Filters are
identified using the full bio-ontology term/class identifier as CURIE, e.g.
“HP:0100526”.  Examples of bio-ontologies are, among others:
  - Human Phenotype Ontology (HPO)
    * `HP:0100526`: Neoplasm of the lung
  - Phenotypic Qualities Ontology (PATO)
    * `PATO:0020000`: female genetic sex
  - National Cancer Institute Thesaurus (NCIT)
    * `NCIT:C8430`: Ovarian Papillary Tumor
    * `NCIT:C48724`: T2 Stage Finding
  - Experimental Factor Ontology (EFO)
    * `EFO:0009656`: neoplastic sample
* `CustomFilters` are biomedical or metadata terms that are locally defined by a
Beacon (e.g. not corresponding to known bio-ontology terms).  As with standard
`Filters`, the Beacon v2 API is agnostic to how `CustomFilters` are implemented
by the Beacon, so this permits maximum flexibility with regards to identifying,
labelling and grouping CustomFilters. For example, related phenotype terms or
experimental sets could be grouped into local “dictionaries”, which could be
addressed through a local identifier.  The only requirement is that each custom
filter term contains a unique identifier that can be used in Beacon requests.
* `FuzzyFilters` are implementations of classifiers which allow for some
alternatives in matching and mostly can be drop-ins where ontologies are
incomplete. Logically, through the potential matching of multiple values they
provide a limited alternative mechanism to allow `OR`-style queries.

### Using filters in Beacon requests

Beacon filter requests are simple yet flexible, and can be used to query
qualitative or quantitative properties. For example, a qualitative phenotype can
be represented by a single observation:

##### Query for individuals with lung cancer (HPO identifier `HP:0100526`)

* `filters=HP:0100526`

By default, the use of Filters in a Beacon request implies that a hierarchical
ontology search is requested, whereby the Beacon will query for entities
associated with the submitted term and **all descendent terms**.

Both qualitative and quantitative properties can be represented by _attribute +
value_ pairs.  Equality and relational operators (`=` `<` `>`) can be used
between attributes and values. Additionally, values can be associated with units
if applicable:

##### Query for females (female genotypic sex = PATO:0020002) with lung cancer and over 70 years of age (age = PATO:0000011, age syntax as ISO 8601)

* `filters=HP:0100526,PATO:0020002,PATO:0000011>P70Y`

Similar query flexibility is shared by CustomFilters, where attributes and value
pairs can be combined, for example:

* `customFilters=mydict.aterm:avalue,mydict.aterm2:avalue2`
* `customFilters=demographic.ethnicity:asian,demographic.sex:male`

In the examples above, filters are separated with commas.

#### Scopes of filters

The use of a filter term can be ambiguous if the entity to which it applies is
not specified.  For example, the term “metastatic melanoma” (EFO:0002617) could
refer to an _individual_ with metastatic melanoma, or a metastatic melanoma
_biosample_.

The entity to which the filter applies can be forced by declaring the scope as a
prefix in dot-annotation, for example:

* `filters=individual.EFO:0002617`
* `filters=biosample.EFO:0002617`

#### Inferred logical operators between filters

Currently a the logical `AND` is implied between filters. A limited way of `OR`
type queries can be provided through fuzzy `FuzzyFilters`.

#### Listing all Filters and CustomFilters used in a Beacon

All filtering terms used in a Beacon can be listed in order to show the range of
biomedical and metadata properties described by the Beacon, and to assist with
building requests.

An unordered unique value list containing all Filters and CustomFilters is
returned from the `/filtering_terms` endpoint.  For each term, the following
information is returned:

* `source` name
  - name of the bio-ontology or indication of custom provenance
  - optional
* term `id`
  - typically the prefixed ontology class identifier
  - required
* term `label`
  - ontology class label or custom filter descriptor
  - optional


---


#### Previous design evaluations [[➚](/roadmap/bioontologies.html)]

An [earlier discussion](/roadmap/bioontologies.html) had proposed a scoped query
object design, following the originally proposed GA4GH schema's [object model](https://schemablocks.org/standards/ga4gh-data-model.html).
