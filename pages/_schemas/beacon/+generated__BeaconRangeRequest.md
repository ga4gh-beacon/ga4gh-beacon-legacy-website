---
title: BeaconRangeRequest
layout: default
permalink: "/schemas/beacon/BeaconRangeRequest.html"
sb_status: "proposal"
excerpt_separator: <!--more-->
categories:
  - howto
  - queries
  - schemas
tags:
  - beacon
  - beacon-query-types
  - code
  - proposal
  - queries
  - specification
---


<div id="schema-header-title">
  <h2>BeaconRangeRequest <span id="schema-header-title-project">[beacon <a href="https://github.com/ga4gh-beacon/beacon-query-types" target="_BLANK">&nearr;</a>]</span> </h2>
</div>

<table id="schema-header-table">
  <tr>
    <th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
    <td><div id="schema-header-status">proposal</div></td>
  </tr>

  <tr>
    <th>Provenance</th>
    <td>
      <ul>
<li><a href="https://github.com/ga4gh-beacon/specification/">Beacon API</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/ga4gh-beacon/specification/blob/master/beacon.yaml">Beacon</a></li>
<li><a href="https://github.com/progenetix/schemas/tree/master/main/yaml">Progenetix database schema (Beacon+ backend)</a></li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
<li>Beacon developers...</li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v1.1.0)</th>
    <td>
      <ul>
        <li><a href="current/BeaconRangeRequest.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-beacon/beacon-query-types/blob/master/schemas/BeaconRangeRequest.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ A `BeaconAlleleRequest` flavour for matching variants in a genomic range.

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>alternateBases</th>
    <td>string</td>
  </tr>
  <tr>
    <th>assemblyId</th>
    <td>string</td>
  </tr>
  <tr>
    <th>datasetIds</th>
    <td>array of string</td>
  </tr>
  <tr>
    <th>end</th>
    <td>integer</td>
  </tr>
  <tr>
    <th>mateName</th>
    <td>https://beacon-project.io/schemas/beacon/v1.1.0/Chromosome.json [<a href="https://beacon-project.io/schemas/beacon/v1.1.0/Chromosome.json" target="_BLANK">SRC</a>] [<a href="https://beacon-project.io/schemas/beacon/Chromosome.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>referenceBases</th>
    <td>string</td>
  </tr>
  <tr>
    <th>referenceName</th>
    <td>https://beacon-project.io/schemas/beacon/v1.1.0/Chromosome.json [<a href="https://beacon-project.io/schemas/beacon/v1.1.0/Chromosome.json" target="_BLANK">SRC</a>] [<a href="https://beacon-project.io/schemas/beacon/Chromosome.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>start</th>
    <td>integer (int64)</td>
  </tr>
  <tr>
    <th>variantType</th>
    <td>string</td>
  </tr>

</table>


#### alternateBases

* type: string

The bases that appear instead of the reference bases.   
* Accepted values: [ACGTN]*. N is a wildcard, that denotes the position 
of any base, and can be used as a standalone base of any type or within 
a partially known sequence. For example a sequence where the first and 
last bases are known, but the middle portion can exhibit countless 
variations of [ACGT], or the bases are unknown: ANNT the Ns can take any 
form of [ACGT], which makes both ACCT and ATGT (or any other combination)
viable sequences.

Symbolic ALT alleles (DEL, INS, DUP, INV, CNV, DUP:TANDEM, DEL:ME,
INS:ME) are be represented in `variantType`.

Either `alternateBases` or `variantType` is required.


##### `alternateBases` Value Example  


#### assemblyId

* type: string

Assembly identifier (GRC notation, e.g. `GRCh37`).

##### `assemblyId` Value Example  

```
"GRCh38"
```

#### datasetIds

* type: array of string

Identifiers of datasets, as defined in `BeaconDataset`. If this
field is null/not specified, all datasets should be queried.


##### `datasetIds` Value Example  

```
[
   "arraymap",
   "TCGA"
]
```

#### end

* type: integer

Start position of the range in which to match overlapping variants.
See start.


##### `end` Value Example  

```
5556
```

#### mateName

* type: https://beacon-project.io/schemas/beacon/v1.1.0/Chromosome.json [<a href="https://beacon-project.io/schemas/beacon/v1.1.0/Chromosome.json" target="_BLANK">SRC</a>] [<a href="https://beacon-project.io/schemas/beacon/Chromosome.html" target="_BLANK">HTML</a>]

Second chromosome in fusion events, as string


##### `mateName` Value Examples  

```
"22"
```
```
"Y"
```

#### referenceBases

* type: string

Reference bases for this variant (starting from `start`).
Accepted values: [ACGTN]*. N is a wildcard, that denotes the position of 
any base, and can be used as a standalone base of any type or within a 
partially known sequence. For example a sequence where the first and 
last bases are known, but the middle portion can exhibit countless 
variations of [ACGT], or the bases are unknown: ANNT the Ns can take 
take any form of [ACGT], which makes both ACCT and ATGT (or any other 
combination) viable sequences.


##### `referenceBases` Value Example  


#### referenceName

* type: https://beacon-project.io/schemas/beacon/v1.1.0/Chromosome.json [<a href="https://beacon-project.io/schemas/beacon/v1.1.0/Chromosome.json" target="_BLANK">SRC</a>] [<a href="https://beacon-project.io/schemas/beacon/Chromosome.html" target="_BLANK">HTML</a>]

Chromosome as string


##### `referenceName` Value Examples  

```
"22"
```
```
"Y"
```

#### start

* type: integer (int64)

Start position of the range in which to match overlapping variants    
* 0-based, inclusive


##### `start` Value Examples  

```
0
```
```
6298005
```

#### variantType

* type: string

The `variantType` is used to denote e.g. structural variants.

Examples:
* DUP: duplication of sequence following `start`; not necessarily in
situ
* DEL: deletion of sequence following `start`
* BND: breakend, i.e. termination of the allele at position
     `start` or in the `startMin` => `startMax` interval, or fusion
     of the sequence to distant partner


Either `alternateBases` or `variantType` is required.


##### `variantType` Value Examples  

```
"DUP"
```
```
"DEL"
```


### `BeaconRangeRequest` Value Example  

```
{
   "alternateBases" : "N",
   "assemblyId" : "GRCh38",
   "datasetIds" : [
      "dipg"
   ],
   "end" : "7579005",
   "referenceBases" : "N",
   "referenceName" : "17",
   "start" : "7572826"
}
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


