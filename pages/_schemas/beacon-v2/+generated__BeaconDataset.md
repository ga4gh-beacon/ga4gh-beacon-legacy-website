---
title: BeaconDataset
layout: default
date: 2020-05-13
permalink: "/schemas/beacon-v2/BeaconDataset.html"
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
  <h2>BeaconDataset <span id="schema-header-title-project">[beacon-v2] <a href="https://github.com/ga4gh-beacon/specification-v2-test-schemas" target="_BLANK">&nearr;</a></span> </h2>
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
    <th>Source (2.0)</th>
    <td>
      <ul>
        <li><a href="current/BeaconDataset.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-beacon/specification-v2-test-schemas/blob/master/schemas/BeaconDataset.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ A dataset available in the beacon.

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
    <th>callCount</th>
    <td>integer (int64)</td>
  </tr>
  <tr>
    <th>createDateTime</th>
    <td>string</td>
  </tr>
  <tr>
    <th>dataUseConditions</th>
    <td>./DataUseConditions</td>
  </tr>
  <tr>
    <th>description</th>
    <td>string</td>
  </tr>
  <tr>
    <th>externalUrl</th>
    <td>string</td>
  </tr>
  <tr>
    <th>id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>info</th>
    <td>object</td>
  </tr>
  <tr>
    <th>name</th>
    <td>string</td>
  </tr>
  <tr>
    <th>sampleCount</th>
    <td>integer (int64)</td>
  </tr>
  <tr>
    <th>updateDateTime</th>
    <td>string</td>
  </tr>
  <tr>
    <th>variantCount</th>
    <td>integer (int64)</td>
  </tr>
  <tr>
    <th>version</th>
    <td>string</td>
  </tr>

</table>


#### assemblyId

* type: string

Assembly identifier (GRC notation, e.g. `GRCh37`).



#### callCount

* type: integer (int64)

Total number of calls in the dataset.



#### createDateTime

* type: string

The time the dataset was created (ISO 8601 format).



#### dataUseConditions

* type: ./DataUseConditions




#### description

* type: string

Description of the dataset.



#### externalUrl

* type: string

URL to an external system providing more dataset information (RFC 3986 format).


#### id

* type: string

Unique identifier of the dataset.



#### info

* type: object

Additional unspecified metadata about the dataset.



#### name

* type: string

Name of the dataset.



#### sampleCount

* type: integer (int64)

Total number of samples in the dataset.



#### updateDateTime

* type: string

The time the dataset was updated in (ISO 8601 format).



#### variantCount

* type: integer (int64)

Total number of variants in the dataset.



#### version

* type: string

Version of the dataset.


<hr/>
<div id="schema-footer">
This schema representation is for information and testing purposes. The authorative 
version remains with the main Beacon development project.
</div>


