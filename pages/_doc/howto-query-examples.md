---
title: "Example Queries"
date: 2019-09-24
layout: default
author: "@mbaudis"
excerpt_separator: <!--more-->
permalink: /howto/query-examples.html
www_link: 
category:
  - howto
tags:
  - queries
  - definitions
  - FAQ
  - CNV
  - VCF
---

<style type="text/css">
  td,th { font-size: 0.8em; }
</style>


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

| referenceName | referenceBases | alternateBases | variantType | start | end | startMin | startMax | endMin | endMax |
|---------------|----------------|----------------|-------------|-------|-----|----------|----------|--------|--------|
| required      | required       | required       | -    | required | - | - | - | - | - |
| 17            | G              | A              |             | 7577120 |   |          |          |        |        |    

The example is against a variant observed in the _EIF4A1_ gene, as somatic 
mutation e.g. in childhood brain tumors.

Please be aware of the use of [_interbase coordinates_](https://beacon-project.io/doc/howto-beacon-coordinates/) in Beacon queries; i.e. the "human readable" 1-based position (chr17:7577121) is shifted to chr17:7577120.

```
referenceName=17&start=7577120&referenceBases=G&alternateBases=A
```

The complete query example includes the required `datasetIds` and `assemblyId` 
parameters:

```
referenceName=17&assemblyId=GRCh38&start=7577120&referenceBases=G&alternateBases=A
```


#### CNV Queries

The Beacon specification from 0.4 onwards allows the use of precise and "fuzzy" matches for CNV regions. However:

* most CNV are non-recurrent in their exact base positions or have been identified using imprecise measurements
* the interval matching method ussing `startMin`,`startMax` and `endMin`,`endMax` bracketing also can be used for arbitrarily precise matches (e.g. using `startMax = startMin + 1` for a single base interval).

| referenceName | referenceBases | alternateBases | variantType | start | end | startMin | startMax | endMin | endMax |
|---------------|----------------|----------------|-------------|-------|-----|----------|----------|--------|--------|
| required      | required*      | -              | required    | -     | -   | required | required |required |required |
| 9             | N              |                | DEL         |       |     | 18000000 | 21975098 | 21967753 | 26000000 | 

(* as of v1.1.0, the specification still requires a value in `referenceBases`. This can be skirted by using the `N` value.)

The example here shows a CNV query as implemented in [Beacon+](https://beacon.progenetix.org/ui/). It queries for CNVs (DEL) with __any__ overlap of the CDKN2A CDR. 

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

More about the construction of such region overlap queries can be found in the 
["range queries"](/howto/range-queries.html) document.

<!--more-->

#### More Documentation

* Parameter use for [range and fuzzy queries](/howto/range-queries.html)
