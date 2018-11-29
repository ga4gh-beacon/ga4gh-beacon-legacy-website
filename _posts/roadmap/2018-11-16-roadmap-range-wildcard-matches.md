---
title: 'Wildcard Range Matches'
date: 2018-11-16
layout: default
author: mbaudis
author_link: 'https://info.baudisgroup.org/group/Michael_Baudis/'
permalink: /roadmap/wildcard-range-matches.html
excerpt_separator: <!--more-->
www_link:
category:
  - roadmap
  - specification
tags:
  - specification
  - development
  - proposal
---

## {{ page.title }} (_proposed_)

Instead of querying for a specific genomic variant (e.g. an `A` instead of a `G` at position `7577121` on chromosome `17`), Beacons could also employ a "range match" concept, in which all or type specific variants mapping to a genomic interval are being identified. 

<!--more-->

<figure style="width: 300px; display: block; float: right; margin: -10px -5px 10px 15px; padding: 0px;" >
<img src="/assets/img/beaconplus-wildcard-match.png"  />
  <figcaption style="font-size: 0.8em;"><b>Example wildcard range query</b> using the Beacon<span style="vertical-align: super; color: red; font-weight: 800;">+</span> demonstrator. Here, the <a href="https://info.baudisgroup.org/publications/2017/10/01/Integrated-Molecular.html" target="_blank">DIPG dataset</a> is queried for any reported variant consisting of a single, unspecified alternate base in the transcript region of the EIF4A1 gene.</figcaption>
</figure>

The concept of performing A promiscuous variant matching approach could e.g. be performed through a combination of 

__wildcard__ and __range__

parameters.

The query would then correspond to "match ANY variants occurring from HERE to THERE", where "HERE to THERE" could correspond e.g. to the coding region of a gene of interest. Such a query which would potentially match many different variants would be especially powerful in combination with the handover [[H->O]](/roadmap/handover.html) concept, in which e.g. all matching variants could be streamed back to the user.

Below is an excerpt of the variant [H->O] object, returned from the combination of _biocharacteristics_ && _wildcard_ base && _range_ [query](https://beacon.progenetix.org/beaconplus-server/beaconresponse.cgi?datasetIds=dipg&referenceName=17&assemblyId=GRCh38&startMin=7,572,826&endMax=7,579,005&referenceBases=*&alternateBases=N&biosamples.biocharacteristics.type.id=icdot:C71.7&biosamples.biocharacteristics.type.id=ncit:C3059&) shown in the figure.

#### Example [H->O] variant delivery

```
[
  {
    "digest": "DIPG_V_MAF_17_7577121_G_A",
    "callset_id": "DIPG_CS_0386",
    "biosample_id": "DIPG_BS_0386",
    "reference_name": "17",
    "reference_bases": "G",
    "alternate_bases": ["A"],
    "start": [7577121],
    "end": [7577121],
    "genotype": [1, "."]
  },
  {
    "digest": "DIPG_V_MAF_17_7577538_C_T",
    "callset_id": "DIPG_CS_0480",
    "biosample_id": "DIPG_BS_0480",
    "reference_name": "17",
    "reference_bases": "C",
    "alternate_bases": ["T"],
    "start": [7577538],
    "end": [7577538],
    "genotype": [1, "."]
  },
...
]
```