---
title: BeaconCnvRequest
layout: default
permalink: "/schemas/beacon-api/BeaconCnvRequest.html"
sb_status: "proposed"
excerpt_separator: <!--more-->
categories:
  - howto
  - queries
  - schemas
tags:
  - beacon-api
  - beacon-query-types
  - code
  - proposed
  - queries
  - specification
---


<div id="schema-header-title">
  <h2>BeaconCnvRequest <span id="schema-header-title-project">[beacon-api <a href="https://github.com/ga4gh-beacon/beacon-query-types" target="_BLANK">&nearr;</a>]</span> </h2>
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
        <li><a href="current/BeaconCnvRequest.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-beacon/beacon-query-types/blob/master/schemas/BeaconCnvRequest.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ CNV request against Beacon resources.  

TODO: The documented queries will fail current tests due to the lack of the
`referenceBases` parameter.

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
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
    <th>endMax</th>
    <td>integer (int64)</td>
  </tr>
  <tr>
    <th>endMin</th>
    <td>integer (int64)</td>
  </tr>
  <tr>
    <th>includeDatasetResponses</th>
    <td>string</td>
  </tr>
  <tr>
    <th>referenceName</th>
    <td>https://schemablocks.org/schemas/beacon-api/v1.1.0/Chromosome.json [<a href="https://schemablocks.org/schemas/beacon-api/v1.1.0/Chromosome.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/beacon-api/Chromosome.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>startMax</th>
    <td>integer (int64)</td>
  </tr>
  <tr>
    <th>startMin</th>
    <td>integer (int64)</td>
  </tr>
  <tr>
    <th>variantType</th>
    <td>string</td>
  </tr>

</table>


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

#### endMax

* type: integer (int64)

Maximum end coordinate. See startMin.

##### `endMax` Value Examples  

```
344452
```
```
244238579
```

#### endMin

* type: integer (int64)

Minimum end coordinate. See startMin.

##### `endMin` Value Examples  

```
34
```
```
244238578
```

#### includeDatasetResponses

* type: string

Indicator of whether responses for individual datasets (datasetAlleleResponses) should be included in the response (BeaconAlleleResponse) to this request or not. If null (not specified), the default value of NONE is assumed.

##### `includeDatasetResponses` Value Example  


#### referenceName

* type: https://schemablocks.org/schemas/beacon-api/v1.1.0/Chromosome.json [<a href="https://schemablocks.org/schemas/beacon-api/v1.1.0/Chromosome.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/beacon-api/Chromosome.html" target="_BLANK">HTML</a>]

Chromosome as string


##### `referenceName` Value Examples  

```
"22"
```
```
"Y"
```

#### startMax

* type: integer (int64)

Maximum start coordinate. See startMin.

##### `startMax` Value Examples  

```
6298006
```
```
243998770
```

#### startMin

* type: integer (int64)

Minimum start coordinate
* startMin + startMax + endMin + endMax
 - for querying imprecise positions (e.g. identifying all structural
 variants starting anywhere between startMin <-> startMax, and ending
 anywhere between endMin <-> endMax)
 - single or double sided precise matches can be achieved by setting
 startMax = startMin+1 XOR endMax = endMin+1 (0-based, interbase 
 coordinates)


##### `startMin` Value Examples  

```
0
```
```
6298005
```

#### variantType

* type: string

The `variantType` is used to denote the type of structural variant.

Use in `BeaconCnvRequest`:
* DUP: duplication of sequence following `start`; not necessarily in
situ
* DEL: deletion of sequence following `start`
* CNV: either DUP or DEL or CNV


##### `variantType` Value Examples  

```
"DUP"
```
```
"DEL"
```


### `BeaconCnvRequest` Value Example  

```
{
   "assemblyId" : "GRCh38",
   "datasetIds" : [
      "arraymap",
      "progenetix"
   ],
   "endMax" : "26000000",
   "endMin" : "21967753",
   "referenceName" : "9",
   "startMax" : "21975098",
   "startMin" : "18000000",
   "variantType" : "DEL"
}
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


