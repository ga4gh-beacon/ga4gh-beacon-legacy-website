---
title: BeaconAlleleRequest
layout: default
permalink: "/schemas/beacon/BeaconAlleleRequest.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
categories:
  - howto
  - queries
  - schemas
tags:
  - beacon
  - beacon-query-types
  - code
  - implemented
  - queries
  - specification
---


<div id="schema-header-title">
  <h2>BeaconAlleleRequest <span id="schema-header-title-project">[beacon <a href="https://github.com/ga4gh-beacon/beacon-query-types" target="_BLANK">&nearr;</a>]</span> </h2>
</div>

<table id="schema-header-table">
  <tr>
    <th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
    <td><div id="schema-header-status">implemented</div></td>
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
<li><a href="https://orcid.org/0000-0002-9769-375X">Marc Fiume</a></li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
<li><a href="https://orcid.org/0000-0002-5129-2248">Sabela de la Torre Pernas</a></li>
<li><a href="https://orcid.org/0000-0001-9091-257X">Jordi Rambla</a></li>
<li>Beacon developers...</li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v1.1.0)</th>
    <td>
      <ul>
        <li><a href="current/BeaconAlleleRequest.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-beacon/beacon-query-types/blob/master/schemas/BeaconAlleleRequest.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ Allele request as interpreted by the beacon.
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
    <th>endMax</th>
    <td>integer</td>
  </tr>
  <tr>
    <th>endMin</th>
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
    <th>startMax</th>
    <td>integer</td>
  </tr>
  <tr>
    <th>startMin</th>
    <td>integer</td>
  </tr>
  <tr>
    <th>variantType</th>
    <td>string</td>
  </tr>

</table>


#### alternateBases

* type: string

The bases that appear instead of the reference bases. Accepted values: [ACGTN]*. N is a wildcard, that denotes the position of any base, and can be used as a standalone base of any type or within a partially known sequence. For example a sequence where the first and last bases are known, but the middle portion can exhibit countless variations of [ACGT], or the bases are unknown: ANNT the Ns can take take any form of [ACGT], which makes both ACCT and ATGT (or any other combination) viable sequences.

Symbolic ALT alleles (DEL, INS, DUP, INV, CNV, DUP:TANDEM, DEL:ME,
INS:ME) will be represented in `variantType`.

Optional: either `alternateBases` or `variantType` is required.


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

Precise end coordinate (0-based, exclusive). See start.


##### `end` Value Example  

```
5556
```

#### endMax

* type: integer

Maximum end coordinate. See startMin.

##### `endMax` Value Examples  

```
344452
```
```
244238579
```

#### endMin

* type: integer

Minimum end coordinate. See startMin.

##### `endMin` Value Examples  

```
34
```
```
244238578
```

#### mateName

* type: https://beacon-project.io/schemas/beacon/v1.1.0/Chromosome.json [<a href="https://beacon-project.io/schemas/beacon/v1.1.0/Chromosome.json" target="_BLANK">SRC</a>] [<a href="https://beacon-project.io/schemas/beacon/Chromosome.html" target="_BLANK">HTML</a>]

Second chromosome in fuion events, as string


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

Precise start coordinate position, allele locus (0-based, inclusive).
* start only:
 - for single positions, e.g. the start of a specified sequence alteration where the size is given through the specified alternateBases
 - typical use are queries for SNV and small InDels
 - the use of "start" without an "end" parameter requires the use of "referenceBases"
* start and end:
 - special use case for exactly determined structural changes


##### `start` Value Examples  

```
0
```
```
6298005
```

#### startMax

* type: integer

Maximum start coordinate. See startMin.

##### `startMax` Value Examples  

```
6298006
```
```
243998770
```

#### startMin

* type: integer

Minimum start coordinate
* startMin + startMax + endMin + endMax
 - for querying imprecise positions (e.g. identifying all structural variants starting anywhere between startMin <-> startMax, and ending anywhere between endMin <-> endMax)
 - single or double sided precise matches can be achieved by setting startMin = startMax XOR endMin = endMax


##### `startMin` Value Examples  

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


Optional: either `alternateBases` or `variantType` is required.


##### `variantType` Value Examples  

```
"DUP"
```
```
"DEL"
```


### `BeaconAlleleRequest` Value Examples  

```
{
   "assemblyId" : "GRCh38",
   "datasetIds" : [
      "arraymap",
      "progenetix"
   ],
   "endMax" : "26000000",
   "endMin" : "21967753",
   "referenceBases" : "N",
   "referenceName" : "9",
   "startMax" : "21975098",
   "startMin" : "18000000",
   "variantType" : "DEL"
}
```
```
{
   "alternateBases" : "A",
   "assemblyId" : "GRCh38",
   "datasetIds" : [
      "dipg"
   ],
   "referenceBases" : "G",
   "referenceName" : "17",
   "start" : "7577121"
}
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


