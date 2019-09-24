---
title: 'Beacon v2 Features and Roadmap'
date: 2019-09-24
layout: default
author: "@mbaudis"
excerpt_separator: <!--more-->
www_link:
category:
  - roadmap
tags:
  - specification
  - development
  - versions
---

## {{ page.title }}

The version 2 of the Beacon protocol is being developed with view towards 
greater power and flexibility and will be based on a modular approach to 
allow use-case dependent API implementations.

<!--more-->

Some of the planned changes are:

##### Multiple Query Types

Besides the legacy _BeaconAlleleRequest_ queries for precise and a limited set 
of structural genome variations, request types will be developed to allow 
well scoped, unambiguous queries. Examples for those could be e.g. (working titles)

* `BeaconCNVrequest`
    - queries for regional genomic copy number imbalances (DUP, DEL, CNV)
    - fuzzy matching for regions of interest (e.g. any overlap with coding 
    region of a gene of interest)
    - possible extensions for relative or absolute copy number
* `BeaconWildcardAlleleRequest`
    - queries against fuzzy locations and possibly using unspecified sequence 
    variations (e.g. any SNV in a gene's promotor region)

##### Extended Responses

* specifying variants matched by wildcard or region queries
* improving variant counts and frequencies

##### Filters

Filters are a way to scope queries to subsets of the datasets matching either 
technical (e.g. technology of used assay) or biological (e.g. phenotype of 
donor) parameters. As working concept, filters should be self-scoping using 
public prefixes (e.g. matching a class from an ontology) but allow the 
implementation of private filter patterns.

##### Increased Utilisation of Service Info

Beacon v2 implementations will provide extensive information about the supported 
query types, authentication options as well as optional data delivery services 
(e.g. through _handover_ protocol implementations).

#### Revision Process and GA4GH Review

Some of these planned extensions will impact the data security profiles of the 
implementations and will have to be re-evaluated towards use in open and 
protected environments. 

As a major and possibly breaking version change, upon its maturation the Beacon 
v2 protocol will be submitted to the GA4GH product review process.
