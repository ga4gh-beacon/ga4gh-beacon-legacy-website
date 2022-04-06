---
title: '[H—>O] Beacon Handover for Data Delivery'
date: 2018-10-18
layout: default
author: "@mbaudis"
permalink: /roadmap/handover.html
excerpt_separator: <!--more-->
www_link:
category:
  - beaconv2
tags:
  - specification
  - development
  - roadmap
---

## {{ page.title }}

While the Beacon v1 response was restricted to aggregate data (yes/no, counts, frequencies ...),
the usage of the protocol can be greatly expanded by providing an access method to data elements
matched by a Beacon query. Since November 2018, Beacon v1.n has included support for a "handover" protocol,
in which rich data content (e.g. variant data, phenotypic information, low-level sequencing results)
can be provided from linked services, initiated through a Beacon query[^1].

<figure>
<img src="/assets/img/beacon-query-handover-schema.png" style="width: 520px;" />
  <figcaption style="font-size: 0.8em;">Possible scenario for a Beacon-initiated "handover" data delivery, involving pre- or post- query authentication steps. Importantly, the identification of matching "rich" data elements (e.g. information about biosamples or individuals) happens internally, and only a data access handle is exposed to the Beacon ecosystem.</figcaption>
</figure>

<!--more-->

Handover pointers can now be delivered for the Beacon itself (`beaconHandover`) and datasets (`datasetHandover`). An example of
`datasetHandover` for Beacon v1 use is shown below, from the [Beacon+](http://beacon.progenetix.org) implementation.

```
"datasetAlleleResponses": [
  {
    "datasetHandover": [
      {
        "handoverType": {
          "id": "pgx:handover:biosamplesdata",
          "label": "Biosamples"
        },
        "description": "retrieve data of the biosamples matched by the query",
        "url": "http://beacon.progenetix.org/beaconplus-server/beacondeliver.cgi?do=biosamplesdata&accessid=5327fe14-0375-11e9-87ab-f392226922dd"
      },
      {
        "url": "http://beacon.progenetix.org/beaconplus-server/beacondeliver.cgi?do=individualsdata&accessid=53283c62-0375-11e9-87ab-f0c3824efc45",
        "description": "retrieve data of the individuals matched by the query",
        "handoverType": {
          "label": "Individuals",
          "id": "pgx:handover:individualsdata"
        }
      },
      {
        "description": "retrieve data of the variants matched by the query",
        "url": "http://beacon.progenetix.org/beaconplus-server/beacondeliver.cgi?do=variantsdata&accessid=53273f2d-0375-11e9-87ab-958a9c7ac1d4",
        "handoverType": {
          "id": "pgx:handover:variantsdata",
          "label": "Variants"
        }
      }
    ],
 ...
```

For Beacon v2 a structured common `Handover` element has become part of the framework:

```
Handover:
  type: object
  description: >-
    A handover is a typed link for attaching actionable links to results,
    non purely informational, requests. The goal of the handovers is to list the
    different actions available, e.g.: a link to a request access page, or to a
    temporarily saved detailed response, which can include a temporary token.'
  required:
    - handoverType
    - url
  properties:
    handoverType:
      $ref: '#/definitions/HandoverType'
    note:
      type: string
      description: An optional text including considerations on the handover link
        provided.
      example: This handover link provides access to a summarized VCF.
    url:
      type: string
      format: uri
      description: >-
        URL endpoint to where the handover process could progress (in RFC3986 format).
      example: https://api.mygenomeservice.org/Handover/9dcc48d7-fc88-11e8-9110-b0c592dbf8c0/
HandoverType:
  type: object
  required:
    - id
  description: >-
    Handover type, as an Ontology_term object with CURIE syntax for the `id` value.
  properties:
    id:
      type: string
      description: Use `CUSTOM` for the `id` when no ontology is available.
      default: CUSTOM
      example: EFO:0004157
    label:
      type: string
      description: This would be the "preferred Label" in the case of an ontology
        term.
      default:
      example: BAM format
```

[^1]: An early discussion of the topic can e.g. be found in the Beacon developer area on [Github](https://github.com/ga4gh-beacon/specification/issues/114). As of 2018-11-13, the __handover__ concept had become part of the [code development](https://github.com/ga4gh-beacon/specification/pull/230/files).
