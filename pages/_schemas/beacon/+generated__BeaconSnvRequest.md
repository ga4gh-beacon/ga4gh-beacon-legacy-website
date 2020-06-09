---
title: BeaconSnvRequest
layout: default
permalink: "/schemas/beacon/BeaconSnvRequest.html"
sb_status: "proposed"
excerpt_separator: <!--more-->
categories:
  - howto
  - queries
  - schemas
tags:
  - beacon
  - beacon-query-types
  - code
  - proposed
  - queries
  - specification
---


<div id="schema-header-title">
  <h2>BeaconSnvRequest <span id="schema-header-title-project">[beacon <a href="https://github.com/ga4gh-beacon/beacon-query-types" target="_BLANK">&nearr;</a>]</span> </h2>
</div>

<table id="schema-header-table">
  <tr>
    <th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
    <td><div id="schema-header-status">proposed</div></td>
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
        <li><a href="current/BeaconSnvRequest.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-beacon/beacon-query-types/blob/master/schemas/BeaconSnvRequest.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ The precise SNV query subtype of the `BeaconAlleleRequest`.
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
    <th>includeDatasetResponses</th>
    <td>string</td>
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

</table>


#### alternateBases

* type: string

The bases that appear instead of the reference bases, as described for 
`referenceBases`.

Symbolic ALT alleles (DEL, INS, DUP, INV, CNV, DUP:TANDEM, DEL:ME,
INS:ME) cannot be represented in `alternateBases`.


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

#### includeDatasetResponses

* type: string

Indicator of whether responses for individual datasets
(datasetAlleleResponses) should be included in the response
(BeaconAlleleResponse) to this request or not. If null (not
specified), the default value of NONE is assumed.


##### `includeDatasetResponses` Value Example  


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
For the _precise_ `BeaconSnvRequest`, only the `start` parameter is being
used.


##### `start` Value Examples  

```
0
```
```
6298005
```


### `BeaconSnvRequest` Value Example  

```
{
   "alternateBases" : "A",
   "assemblyId" : "GRCh38",
   "datasetIds" : [
      "dipg",
      "progenetix"
   ],
   "includeDatasetResponses" : "HIT",
   "referenceBases" : "G",
   "referenceName" : "17",
   "start" : "7577121"
}
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


