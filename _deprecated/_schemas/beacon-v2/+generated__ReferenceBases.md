---
title: ReferenceBases
layout: default
permalink: "/schemas/beacon-v2/ReferenceBases.html"
sb_status: "proposed"
excerpt_separator: <!--more-->
categories:
  - schemas
tags:
  - beacon-v2
  - proposed
  - schemas
  - v2
---

<div id="schema-header-title">
  <h2><span id="schema-header-title-project">beacon-v2</span> ReferenceBases <a href="https://github.com/ga4gh-beacon/specification-v2-blocks" target="_BLANK">[ &nearr; ]</a></h2>
</div>

<table id="schema-header-table">
<tr>
<th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
<td><div id="schema-header-status">proposed</div></td>
</tr>
<tr><th>Provenance</th><td><ul>
<li><a href="https://github.com/ga4gh-beacon/specification-v2">Beacon v2</a></li>
</ul></td></tr>


<!--more-->
<tr><th>Contributors</th><td><ul>
<li><a href="https://beacon-project.io/categories/people.html">ELIXIR Beacon project team</a></li>
</ul></td></tr>
<tr><th>Source (2.0.0-draft.3)</th><td><ul>
<li><a href="current/ReferenceBases.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-beacon/specification-v2-blocks/blob/master/schemas/ReferenceBases.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ string  
__Pattern:__ ^([ACGTN]*)$  
__Description:__ Reference bases for this variant (starting from `start`). * Accepted values: [ACGTN]*. * N is a wildcard, that denotes the position of any base, and can be used as a standalone base of any type or within a partially known sequence. As example, a query of `ANNT` the Ns can take take any form of [ACGT] and will match `ANNT`, `ACNT`, `ACCT`, `ACGT` ... and so forth. * an *empty value* is used in the case of insertions with the maximally trimmed, inserted sequence being indicated in `AlternateBases`
<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


