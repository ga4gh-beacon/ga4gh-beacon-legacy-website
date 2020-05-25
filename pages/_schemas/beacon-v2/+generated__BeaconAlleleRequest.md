---
title: BeaconAlleleRequest
layout: default
date: 2020-05-25
permalink: "/schemas/beacon-v2/BeaconAlleleRequest.html"
sb_status: "playground"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - specification
  - v2
  - playground
  - beacon-v2
---

<div id="schema-header-title">
  <h2>BeaconAlleleRequest <span id="schema-header-title-project">[beacon-v2] <a href="https://github.com/ga4gh-beacon/specification-v2-test-schemas" target="_BLANK">&nearr;</a></span> </h2>
</div>

<table id="schema-header-table">
  <tr>
    <th>{S}[B] Status Level <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
    <td><div id="schema-header-status">playground</div></td>
  </tr>

  <tr>
    <th>Provenance</th>
    <td>
      <ul>
<li><a href="https://github.com/ga4gh-beacon/specification-v2">Beacon v2 draft schema</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/ga4gh-beacon/specification-v2">Beacon, for Beacon v2 testing</a></li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li><a href="https://beacon-project.io/categories/people.html">ELIXIR Beacon team</a></li>
<li><a href="https://beacon-project.io/people/Sabela-de-la-Torre/">Sabela de la Torre Pernas</a></li>
<li><a href="https://beacon-project.io/people/Jordi-Rambla/">Jordi Rambla De Argila</a></li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (2.0.0-draft.1)</th>
    <td>
      <ul>
        <li><a href="current/BeaconAlleleRequest.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-beacon/specification-v2-test-schemas/blob/master/schemas/BeaconAlleleRequest.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ Allele request made against the beacon. The allele must be mapped 
against a sequence in a genome, and a range can be optionally specified.

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>alternateBases</th>
    <td>./AlternateBases [<a href="./AlternateBases.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>assemblyId</th>
    <td>string</td>
  </tr>
  <tr>
    <th>datasetIds</th>
    <td>array of "string"</td>
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
    <th>includeDatasetResponses</th>
    <td>string</td>
  </tr>
  <tr>
    <th>mateName</th>
    <td>./Chromosome [<a href="./Chromosome.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>referenceBases</th>
    <td>./ReferenceBases [<a href="./ReferenceBases.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>referenceName</th>
    <td>./Chromosome [<a href="./Chromosome.html" target="_BLANK">HTML</a>]</td>
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

* type: ./AlternateBases [<a href="./AlternateBases.html" target="_BLANK">HTML</a>]




#### assemblyId

* type: string

Assembly identifier (GRC notation, e.g. `GRCh37`).



#### datasetIds

* type: array of "string"

Identifiers of datasets, as defined in `BeaconDataset`. If this field is null/not specified, all datasets should be queried.


#### end

* type: integer

Precise end coordinate (0-based, exclusive). See start.


#### endMax

* type: integer

Maximum end coordinate. See `startMin`.



#### endMin

* type: integer

Minimum end coordinate. See `startMin`.



#### includeDatasetResponses

* type: string

Indicator of whether responses for individual datasets (datasetAlleleResponses) should be included in the response (BeaconAlleleResponse) to this request or not. If null (not specified), the default value of NONE is assumed.


#### mateName

* type: ./Chromosome [<a href="./Chromosome.html" target="_BLANK">HTML</a>]




#### referenceBases

* type: ./ReferenceBases [<a href="./ReferenceBases.html" target="_BLANK">HTML</a>]




#### referenceName

* type: ./Chromosome [<a href="./Chromosome.html" target="_BLANK">HTML</a>]




#### start

* type: integer (int64)

Precise start coordinate position, allele locus (0-based, inclusive).
* start only:
  - for single positions, e.g. the start of a specified sequence 
  alteration where the size is given through the specified 
  `alternateBases`
  - typical use are queries for SNV and small InDels
  - the use of "start" without an "end" parameter requires the use 
  of "referenceBases"
* start and end:
  - special use case for exactly determined structural changes



#### startMax

* type: integer

Maximum start coordinate. See `startMin`.



#### startMin

* type: integer

Minimum start coordinate
* startMin + startMax + endMin + endMax
  - for querying imprecise positions (e.g. identifying all 
  structural variants starting anywhere between `startMin` <-> 
  `startMax`, and ending anywhere between endMin <-> endMax)
  - single or double sided precise matches can be achieved by 
  setting `startMin` = `startMax` XOR `endMin` = `endMax`



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


<hr/>
<div id="schema-footer">
This schema representation is for information and testing purposes. The authorative 
version remains with the main Beacon development project.
</div>


