---
title: 'Beacon Flavours'
date: 2018-10-24
layout: default
author: mbaudis
excerpt_separator: <!--more-->
www_link: 
category:
  - roadmap
tags:
  - specification
  - development
---

## {{ page.title }}

Beacons may be able to increase their functionality through the development of distinct __flavours__, which can extend the core Beacon concept for specific use cases.

|Flavour | Data Sources | Data response | Examples | Notes |
|---|---|---|---|---|
| _Core_ Beacon | aggregate or sample/callset specific variant data<br/>optional bio- and assya-metadata (e.g. phenotypes, geolocation data, assay information ...)  | standard "existence of allele" response (yes/no; quantitative)<br/>optional data delivery through "handover" scenarios | most of the current Beacon implementations | This is main Beacons development line, representing the gradual & continuous extension of the protocol while staying with the _queries do not return information about single individuals_ paradigm. |
| _Evidence_ Beacon | Variant knowledge resources | variant annotation data (variant effects, druggability...)  | VICC, BRCA...  |  |
| _Data_ Beacon |sample/callset specific variant data (may be optional in pure "metadata" scenarios)<br/>bio- and assya-metadata  | Data (variants, callsets, individual/clinical records) through "handover" scenarios<br/>versions with direct data delivery in response in secure environments (?)  | so far internal/"off protocol"<br/>[Beacon+](http://beacon.progenetix.org) | risk of data breaches/exposure, especially when providing clinical data as response add-on<br/>"handoff" scenario delegates delivery (and potential security concerns) to external protocols |

Beacon implementations can also be classified by their potential for data delivery:

* aggregate Beacon
  - only aggregate data is stored at the backend
  - no sample/callset/individual ... resolution is possible by design
  - re-identification attacks possible through querying of multiple, usually rare, alleles corresponding to the _known_ genome of an individual
* clinical Beacon
  - any Beacon which contains non-aggregate data (variants and metadata)
  - potential of data exposure through standard security breaches
  - additional security risk through non-aggregate responses, where implemented
