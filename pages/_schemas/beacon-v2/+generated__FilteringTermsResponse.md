---
title: FilteringTermsResponse
layout: default
permalink: "/schemas/beacon-v2/FilteringTermsResponse.html"
sb_status: "community"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - beacon
  - code
  - community
  - schemas
  - specification
  - v2
---

<div id="schema-header-title">
  <h2>FilteringTermsResponse <span id="schema-header-title-project">beacon-v2 <a href="https://github.com/ga4gh-beacon/specification-v2-blocks" target="_BLANK">&nearr;</a></span> </h2>
</div>

<table id="schema-header-table">
  <tr>
    <th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
    <td><div id="schema-header-status">community</div></td>
  </tr>

  <tr>
    <th>Provenance</th>
    <td>
      <ul>
<li><a href="https://github.com/ga4gh-beacon/specification-v2"></a></li>
<li><a href="https://github.com/progenetix/bycon/"></a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/progenetix/schemas/"></a></li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li><a href="https://beacon-project.io/categories/people.html"></a></li>
<li><a href="https://github.com/jrambla"></a></li>
<li><a href="https://github.com/sdelatorrep"></a></li>
<li><a href="https://github.com/mamanambiya"></a></li>
<li><a href="https://orcid.org/0000-0002-9903-4248"></a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (2.0.0-draft.3)</th>
    <td>
      <ul>
        <li><a href="current/FilteringTermsResponse.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-beacon/specification-v2-blocks/blob/master/schemas/FilteringTermsResponse.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ Filtering terms available in this Beacon.

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>apiVersion</th>
    <td>string</td>
  </tr>
  <tr>
    <th>beaconId</th>
    <td>string</td>
  </tr>
  <tr>
    <th>filteringTerms</th>
    <td>array of "./FilteringTerm"</td>
  </tr>

</table>


#### apiVersion

* type: string

Version of the API implemented by this Beacon.



#### beaconId

* type: string

Identifier of the beacon, as defined in `Beacon`.



#### filteringTerms

* type: array of "./FilteringTerm"



<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


