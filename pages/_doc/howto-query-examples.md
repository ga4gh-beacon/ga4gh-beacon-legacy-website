---
title: "Example Queries"
date: 2019-09-24
layout: default
author: "@mbaudis"
excerpt_separator: <!--more-->
permalink: /howto/range-queries.html
www_link: 
category:
  - howto
tags:
  - queries
  - definitions
  - FAQ
---

## {{ page.title }}

This page gives examples for query strings against Beacon implementations. This 
documentation is expected to be expanded over time, with adjustments for the 
expanding protocol options.

<!--more-->

### Beacon v1.1

#### Standard Precise Variant Queries (original "BeaconAlleleRequest")

Standard "BeaconAlleleRequest" queries use a `start` position parameter 
(corresponding to VCF `POS`), corresponding `referenceBases` and the variant's 
`alternateBases`. 
The example is against a variant observed in the _EIF4A1_ gene, as somatic 
mutation e.g. in childhood brain tumors.


```
referenceName=17&start=7577121&referenceBases=G&alternateBases=A
```

The complete query example includes the required `datasetIds` and `assemblyId` 
parameters:

```
datasetIds=dipg&referenceName=17&assemblyId=GRCh38&start=7577121&referenceBases=G&alternateBases=A
```


#### CNV Queries

The following example shows a CNV query as implemented in 
[Beacon+](https://beacon.progenetix.org/ui/). It queries for CNVs (DEL) with 
any overlap of the CDKN2A CDR. Briefly: 

```
variantType=DEL&referenceName=9&startMin=18000000&startMax=21975098&endMin=21967753&endMax=26000000&referenceBases=N
```

* `startMin` and `startMax` define the genomic coordinates between which the 
start (i.e. VCF `POS`) of the CNV maps
* `endMin` and `endMax` define the genomic coordinates between which the 
end (i.e. VCF `INFO:END`) of the CNV maps
* `referenceBases` is only given to support compatibility with implementations 
which require this parameter, using an "unspecified" value
* no `alternateBases` is needed

The complete query example includes the required `datasetIds` and `assemblyId` 
parameters. Additionally, here we use a `filters` parameter (which is not yet 
part of the 1.1 specification):


```
https://beacon.progenetix.org/cgi-bin/beaconresponse.cgi?datasetIds=arraymap&referenceName=9&assemblyId=GRCh38&variantType=DEL&startMin=18000000&startMax=21975098&endMin=21967753&endMax=26000000&referenceBases=N&filters=icdom-94403
```

More about the construction of such region overlap queries can be found in the 
["range queries"](/howto/range-queries.html) document.

<!--more-->

#### More Documentation

* Parameter use for [range and fuzzy queries](/howto/range-queries.html)
