---
title: GenomicVariantFields
layout: default
permalink: "/schemas/beacon-v2/GenomicVariantFields.html"
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
  <h2><span id="schema-header-title-project">beacon-v2</span> GenomicVariantFields <a href="https://github.com/ga4gh-beacon/specification-v2-blocks" target="_BLANK">[ &nearr; ]</a></h2>
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
<li><a href="current/GenomicVariantFields.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-beacon/specification-v2-blocks/blob/master/schemas/GenomicVariantFields.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ All the required fields to query any kind of variant (e.g. SNP, DUP,
etc.).

### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>alternateBases</th><td>AlternateBases.yaml#/ [<a href="./AlternateBases.html">HTML</a>]</td></tr>
<tr><th>assemblyId</th><td>Assembly.yaml#/ [<a href="./Assembly.html">HTML</a>]</td></tr>
<tr><th>end</th><td>array of "integer"</td></tr>
<tr><th>id</th><td>string</td></tr>
<tr><th>mateName</th><td>Chromosome.yaml#/ [<a href="./Chromosome.html">HTML</a>]</td></tr>
<tr><th>referenceBases</th><td>ReferenceBases.yaml#/ [<a href="./ReferenceBases.html">HTML</a>]</td></tr>
<tr><th>referenceName</th><td>Chromosome.yaml#/ [<a href="./Chromosome.html">HTML</a>]</td></tr>
<tr><th>start</th><td>array of "integer"</td></tr>
<tr><th>variantMaxLength</th><td>integer (int64)</td></tr>
<tr><th>variantMinLength</th><td>integer (int64)</td></tr>
<tr><th>variantType</th><td>string</td></tr>
</table>


#### alternateBases

* type: AlternateBases.yaml#/ [<a href="./AlternateBases.html">HTML</a>]




#### assemblyId

* type: Assembly.yaml#/ [<a href="./Assembly.html">HTML</a>]




#### end

* type: array of "integer"

Precise or bracketing the end of the variants of interest:
* (0-based, exclusive) - see `start`
* for bracket queries, provide 2 values (e.g. [111,222]).



#### id

* type: string

Id of the variant to display.



#### mateName

* type: Chromosome.yaml#/ [<a href="./Chromosome.html">HTML</a>]




#### referenceBases

* type: ReferenceBases.yaml#/ [<a href="./ReferenceBases.html">HTML</a>]




#### referenceName

* type: Chromosome.yaml#/ [<a href="./Chromosome.html">HTML</a>]




#### start

* type: array of "integer"

Precise or fuzzy start coordinate position(s), allele locus
(0-based, inclusive).
* `start` only:
  - for single positions, e.g. the start of a specified sequence
  alteration where the size is given through the specified
  `alternateBases`
  - typical use are queries for SNV and small InDels
  - the use of `start` without an `end` parameter requires the use
  of `alternateBases`

* `start` and `end`:
  - for searching any variant falling fully or partially within the
  range between `start` and `end` (a.k.a. "range query")
  - additional use of `variantType` OR `alternateBases` can limit the
  scope of the query
  - by convention, partial overlaps of variants with the indicated
  genomic range are accepted; for specific overlap requirements the
  4-parammeter "Bracket Queries" should be employed
* use of 2 values in both `start` and `end` for constructing a
"Bracket Query":
  - can be used to match any contiguous genomic interval, e.g. for
  querying imprecise positions
    * identifying all structural variants starting between `start[0]`
    and `start[1]`, and ending between `end[0]` <-> `end[1]`
    * single or double sided precise matches can be achieved by
    setting `start[1]=start[0]+1` and `end[1]=end[0]+1`



#### variantMaxLength

* type: integer (int64)

Maximum length in bases of a genomic variant. This is an optional parameter without prescribed use. While a length is commonly available for structural variants such as copy number variations, it is recommended that length based queries should also be supported for variants with indicated referenceBases and alternateBases, to enable length-specific wildcard queries.



#### variantMinLength

* type: integer (int64)

Minimum length in bases of a genomic variant. This is an optional parameter without prescribed use. While a length is commonly available for structural variants such as copy number variations, it is recommended that length based queries should also be supported for variants with indicated referenceBases and alternateBases, to enable length-specific wildcard queries.



#### variantType

* type: string

The `variantType` is used to query variants which are not defined
through a sequenc of one or more bases using the `alternateBases`
parameter. Examples here are e.g. structural variants:
* DUP
  - increased allelic count of material from the genomic region
  between `start` and `end` positions
  - no assumption about the placement of the additional sequences is
  being made (i.e. no _in situ_ requirement as tandem duplications)
* DEL: deletion of sequence following `start`
* BND: breakend, i.e. termination of the allele at position
      `start` or in the `startMin` => `startMax` interval, or fusion
      of the sequence to distant partner
Either `alternateBases` or `variantType` is required, with the
exception of range queries (single `start` and `end` parameters).


<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


