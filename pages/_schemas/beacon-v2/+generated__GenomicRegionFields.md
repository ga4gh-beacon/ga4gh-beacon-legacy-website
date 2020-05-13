---
title: GenomicRegionFields
layout: default
date: 2020-05-13
permalink: "/schemas/beacon-v2/GenomicRegionFields.html"
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
  <h2>GenomicRegionFields <span id="schema-header-title-project">[beacon-v2] <a href="https://github.com/ga4gh-beacon/specification-v2-test-schemas" target="_BLANK">&nearr;</a></span> </h2>
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
<li>Sabela de la Torre Pernas (__contributor_ORCID__)</li>
<li>Sabela de la Torre Pernas (__contributor_ORCID__)</li>
<li>Michael Baudis (ORCID:0000-0002-9903-4248)</li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (2.0)</th>
    <td>
      <ul>
        <li><a href="current/GenomicRegionFields.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-beacon/specification-v2-test-schemas/blob/master/schemas/GenomicRegionFields.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ Region request made against the Beacon. 

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>assemblyId</th>
    <td>./Assembly</td>
  </tr>
  <tr>
    <th>end</th>
    <td>integer</td>
  </tr>
  <tr>
    <th>referenceBases</th>
    <td>./ReferenceBases</td>
  </tr>
  <tr>
    <th>referenceName</th>
    <td>./Chromosome</td>
  </tr>
  <tr>
    <th>start</th>
    <td>integer (int64)</td>
  </tr>

</table>


#### assemblyId

* type: ./Assembly




#### end

* type: integer

Precise `end` coordinate (0-based, exclusive). See `start`.



#### referenceBases

* type: ./ReferenceBases




#### referenceName

* type: ./Chromosome




#### start

* type: integer (int64)

Precise `start` coordinate position, allele locus (0-based, 
inclusive).


<hr/>
<div id="schema-footer">
This schema representation is for information and testing purposes. The authorative 
version remains with the main Beacon development project.
</div>


