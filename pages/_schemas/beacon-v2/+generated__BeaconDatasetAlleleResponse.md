---
title: BeaconDatasetAlleleResponse
layout: default
permalink: "/schemas/beacon-v2/BeaconDatasetAlleleResponse.html"
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
  <h2><span id="schema-header-title-project">beacon-v2</span> BeaconDatasetAlleleResponse <a href="https://github.com/ga4gh-beacon/specification-v2-blocks" target="_BLANK">[ &nearr; ]</a></h2>
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
<li><a href="current/BeaconDatasetAlleleResponse.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-beacon/specification-v2-blocks/blob/master/schemas/BeaconDatasetAlleleResponse.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Response containing information about an allele in a particular dataset.

### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>callCount</th><td>integer (int64)</td></tr>
<tr><th>datasetHandover</th><td>array of "Handover.yaml#/ [<a href="./Handover.html">HTML</a>]"</td></tr>
<tr><th>datasetId</th><td>string</td></tr>
<tr><th>exists</th><td>boolean</td></tr>
<tr><th>externalUrl</th><td>string</td></tr>
<tr><th>frequency</th><td>number</td></tr>
<tr><th>info</th><td>object</td></tr>
<tr><th>note</th><td>string</td></tr>
<tr><th>sampleCount</th><td>integer (int64)</td></tr>
<tr><th>variantCount</th><td>integer (int64)</td></tr>
</table>


#### callCount

* type: integer (int64)

Total number of calls in the dataset. Missing calls are not
included.



#### datasetHandover

* type: array of "Handover.yaml#/ [<a href="./Handover.html">HTML</a>]"




#### datasetId

* type: string

`id` of the dataset.



#### exists

* type: boolean

Indicator of whether the given allele was observed in the dataset. This should be non-null, unless there was an error, in which case `error` has to be non-null.


#### externalUrl

* type: string

URL to an external system, such as a secured beacon or a system providing more information about a given allele (RFC 3986 format).


#### frequency

* type: number

Frequency of this allele in the dataset. Between 0 and 1, inclusive.



#### info

* type: object

Additional unspecified metadata about the dataset response or its
content.


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

#### note

* type: string

Additional note or description of the response.



#### sampleCount

* type: integer (int64)

Number of samples in the dataset where the requested allele is
found.



#### variantCount

* type: integer (int64)

Number of times the requested allele has been observed in the
dataset.


<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


