---
title: Chromosome
layout: default
permalink: "/schemas/beacon/Chromosome.html"
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
  <h2>Chromosome <span id="schema-header-title-project">[beacon <a href="https://github.com/ga4gh-beacon/beacon-query-types" target="_BLANK">&nearr;</a>]</span> </h2>
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
        <li><a href="current/Chromosome.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-beacon/beacon-query-types/blob/master/schemas/Chromosome.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ Chromosome as used by Beacon e.g. for instances of `referenceName`

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>chromosome</th>
    <td>string</td>
  </tr>

</table>


#### chromosome

* type: string

Reference name (chromosome). Accepting values 1-22, X, Y, MT.


##### `chromosome` Value Examples  

```
"9"
```
```
"22"
```


### `Chromosome` Value Examples  

```
"1"
```
```
"Y"
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


