---
title: DataUseConditions
layout: default
permalink: "/schemas/beacon-v2/DataUseConditions.html"
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
  <h2><span id="schema-header-title-project">beacon-v2</span> DataUseConditions <a href="https://github.com/ga4gh-beacon/specification-v2-blocks" target="_BLANK">[ &nearr; ]</a></h2>
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
<li><a href="current/DataUseConditions.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-beacon/specification-v2-blocks/blob/master/schemas/DataUseConditions.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Data use conditions ruling this dataset.

### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>adamDataUse</th><td>https://raw.githubusercontent.com/ga4gh/ADA-M/v1.0.1/adam.yaml#/components/schemas/Adam [<a href="https://raw.githubusercontent.com/ga4gh/ADA-M/v1.0.1/adam.yaml">LINK</a>]</td></tr>
<tr><th>consentCodeDataUse</th><td>https://raw.githubusercontent.com/ga4gh/ga4gh-consent-policy/v1.1.0/consent_code.yaml#/components/schemas/ConsentCodeDataUse [<a href="https://raw.githubusercontent.com/ga4gh/ga4gh-consent-policy/v1.1.0/consent_code.yaml">LINK</a>]</td></tr>
<tr><th>duoDataUse</th><td>array of "DUODataUse.yaml#/ [<a href="./DUODataUse.html">HTML</a>]"</td></tr>
</table>


#### adamDataUse

* type: https://raw.githubusercontent.com/ga4gh/ADA-M/v1.0.1/adam.yaml#/components/schemas/Adam [<a href="https://raw.githubusercontent.com/ga4gh/ADA-M/v1.0.1/adam.yaml">LINK</a>]




#### consentCodeDataUse

* type: https://raw.githubusercontent.com/ga4gh/ga4gh-consent-policy/v1.1.0/consent_code.yaml#/components/schemas/ConsentCodeDataUse [<a href="https://raw.githubusercontent.com/ga4gh/ga4gh-consent-policy/v1.1.0/consent_code.yaml">LINK</a>]




#### duoDataUse

* type: array of "DUODataUse.yaml#/ [<a href="./DUODataUse.html">HTML</a>]"



<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


