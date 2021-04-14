---
title: Handover
layout: default
permalink: "/schemas/beacon-v2/Handover.html"
sb_status: "community"
excerpt_separator: <!--more-->
categories:
  - specification
tags:
  - beacon
  - beacon-v2
  - community
  - schemas
  - v2
---

<div id="schema-header-title">
  <h2><span id="schema-header-title-project">beacon-v2</span> Handover <a href="https://github.com/ga4gh-beacon/specification-v2-blocks" target="_BLANK">[ &nearr; ]</a></h2>
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
<li><a href="current/Handover.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-beacon/specification-v2-blocks/blob/master/schemas/Handover.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>handoverType</th><td>HandoverType.yaml#/ [<a href="./HandoverType.html">HTML</a>]</td></tr>
<tr><th>note</th><td>string</td></tr>
<tr><th>url</th><td>string</td></tr>
</table>


#### handoverType

* type: HandoverType.yaml#/ [<a href="./HandoverType.html">HTML</a>]




#### note

* type: string

An optional text including considerations on the handover link
provided.


##### `note` Value Example  

```
"This handover link provides access to a summarized VCF. To access\nthe VCF containing the details for each sample filling an\napplication is required. See Beacon contact information details.\n"
```

#### url

* type: string

URL endpoint to where the handover process could progress (in RFC
3986 format).


##### `url` Value Example  

```
"\"https://api.mygenomeservice.org/handover/9dcc48d7-fc88-11e8-9110-b0c592dbf8c0/\"\n"
```
<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


