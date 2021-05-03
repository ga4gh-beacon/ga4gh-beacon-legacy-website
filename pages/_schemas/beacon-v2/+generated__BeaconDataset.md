---
title: BeaconDataset
layout: default
permalink: "/schemas/beacon-v2/BeaconDataset.html"
sb_status: "community"
excerpt_separator: <!--more-->
categories:
  - specification
tags:
  - beacon-v2
  - community
  - schemas
  - v2
---

<div id="schema-header-title">
  <h2><span id="schema-header-title-project">beacon-v2</span> BeaconDataset <a href="https://github.com/ga4gh-beacon/specification-v2-blocks" target="_BLANK">[ &nearr; ]</a></h2>
</div>

<table id="schema-header-table">
<tr>
<th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
<td><div id="schema-header-status">community</div></td>
</tr>
<tr><th>Provenance</th><td><ul>
<li><a href="https://github.com/ga4gh-beacon/specification-v2">Beacon v2</a></li>
</ul></td></tr>
<tr><th>Used by</th><td><ul>
<li><a href="https://github.com/progenetix/schemas/">Progenetix database schema (Beacon+ backend)</a></li>
</ul></td></tr>


<!--more-->
<tr><th>Contributors</th><td><ul>
<li><a href="https://beacon-project.io/categories/people.html">ELIXIR Beacon project team</a></li>
<li><a href="https://github.com/jrambla">Jordi Rambla</a></li>
<li><a href="https://github.com/sdelatorrep">Sabele de la Torre</a></li>
<li><a href="https://github.com/mamanambiya">Mamana Mbiyavanga</a></li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
</ul></td></tr>
<tr><th>Source (2.0.0-draft.3)</th><td><ul>
<li><a href="current/BeaconDataset.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-beacon/specification-v2-blocks/blob/master/schemas/BeaconDataset.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ A dataset available in the beacon.

### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>assemblyId</th><td>string</td></tr>
<tr><th>callCount</th><td>integer (int64)</td></tr>
<tr><th>createDateTime</th><td>string</td></tr>
<tr><th>dataUseConditions</th><td>DataUseConditions.yaml#/ [<a href="./DataUseConditions.html">HTML</a>]</td></tr>
<tr><th>description</th><td>string</td></tr>
<tr><th>externalUrl</th><td>string</td></tr>
<tr><th>id</th><td>string</td></tr>
<tr><th>info</th><td>object</td></tr>
<tr><th>name</th><td>string</td></tr>
<tr><th>sampleCount</th><td>integer (int64)</td></tr>
<tr><th>updateDateTime</th><td>string</td></tr>
<tr><th>variantCount</th><td>integer (int64)</td></tr>
<tr><th>version</th><td>string</td></tr>
</table>


#### assemblyId

* type: string

Assembly identifier (GRC notation, e.g. `GRCh37`).


##### `assemblyId` Value Example  

```
"GRCh38"
```

#### callCount

* type: integer (int64)

Total number of calls in the dataset.



#### createDateTime

* type: string

The time the dataset was created (ISO 8601 format).


##### `createDateTime` Value Example  

```
"2012-07-29 or 2017-01-17T20:33:40Z"
```

#### dataUseConditions

* type: DataUseConditions.yaml#/ [<a href="./DataUseConditions.html">HTML</a>]




#### description

* type: string

Description of the dataset.



#### externalUrl

* type: string

URL to an external system providing more dataset information (RFC 3986 format).

##### `externalUrl` Value Example  

```
"http://example.org/wiki/Main_Page"
```

#### id

* type: string

Unique identifier of the dataset.



#### info

* type: object

Additional unspecified metadata about the dataset.


##### `info` Value Example  

```
{
   "additionalInfoKey1" : [
      "additionalInfoValue1",
      "additionalInfoValue2]"
   ],
   "additionalInfoKey2" : "additionalInfoValue3"
}
```

#### name

* type: string

Name of the dataset.



#### sampleCount

* type: integer (int64)

Total number of samples in the dataset.



#### updateDateTime

* type: string

The time the dataset was updated in (ISO 8601 format).


##### `updateDateTime` Value Example  

```
"2012-07-19 or 2017-01-17T20:33:40Z"
```

#### variantCount

* type: integer (int64)

Total number of variants in the dataset.



#### version

* type: string

Version of the dataset.


<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


