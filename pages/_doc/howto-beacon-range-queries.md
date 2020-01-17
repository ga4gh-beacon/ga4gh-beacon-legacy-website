---
title: "Range Queries and Structural Variants"
date: 2018-10-17
layout: default
author: "@mbaudis"
excerpt_separator: <!--more-->
permalink: /howto/range-queries.html
www_link: 
category:
  - howto
  - specification
tags:
  - queries
  - definitions
  - FAQ
  - CNV
  - SV
---

## {{ page.title }}

This page provides some more detailed description of the "4 positions match any 
continuous region" concept. General examples for variant queries can be found in the 
["Example Queries"](/howto/query-examples.html) documentation.

<!--more-->

### Introduction

The adoption of

* ```variantType```
* ```startMin```, ```startMax```
* ```endMin```, ```endMax```

into the Beacon v0.4 release enabled the execution of

* range queries
* fuzzy position matching
* arbitrary sequence variants (though limited through supported & documented vocabularies)


For precise variants (e.g. SNVs), base specific genome variations 
can be described by a combination of a single genome position together with 
reference and alternate base(s). In contrast, structural genome variants 
(e.g. CNV) are described through the coordinates of the variants’ start and 
(depending on type) end positions, together with the variants’ types.

Additionally to their description by start and end positions and omitting of 
reporting the interspersed sequence (which in the case of CNVs may be of considerable length, up to a complete reference/chromosome), functionally equivalent structural variants usually vary with respect to their exact positions. In contrast to specific & recurring SNVs (think BRAF V600E), structural variants (think TP53 deletions in cancer) tend to be selected due to their functional effect (think all deletions rendering TP53 non-functional) rather than at events of a base-specific size. Therefore, Query Ranges are needed allow a “fuzzy” matching of all variants with a specific type, but varying genomic extent.

To summarise, the concept of using intervals for querying variant start and 
end positions is based on two main scenarios:

* When the start and end positions of a given genomic variant cannot be 
established exactly (i.e. involving DNA repeats; incomplete coverage/resolution 
of the use method)
* In the case of a range query which tries to identify variants with possible 
differences in their exact start and end positions, e.g. all deletions somehow 
affecting the CDR of a gene


### Genome Range Matches

Matching genome ranges when querying for variants requires the logical definition of how overlaps of the Query Ranges with variants are handled.

The positions in `startMin,startMax` and `endMin,endMax` each bracket the intervals for `VPOS` and `VEND` (start and end position of a variant mapped to a reference genome, respectively).

The server will return all matches for variant V, where
* `startMin` <= `VPOS` <= `startMax`
* `endMin` <= `VEND` <= `endMax`

#### Legend for the sequence graphs:

* `?????` : bases corresponding to VPOS, VEND interval of the example query
* `xxxxx` : bases corresponding to the variant of interest
* `*****` : bases of representative matched variants


#### Deletion which starts somewhere between positions 15 and 21, and ends between 45 and 53
**Beacon request**
```json
{
  "startMin": 15,
  "startMax": 21,
  "endMin": 45,
  "endMax": 53,
  "variantType": "DEL"
}
```
```
-------------------xxxxxxxxxxxxxxxxxxxxxxxxx--------------------=>
               ???????                     ?????????
```
**Interpretation** Direct submission of ranges in which the start and end of the variants have to occur for creating a match.
**Matched variants**
```
----------------****************************--------------------=>
---------------*************************************------------=>
--------------------************************--------------------=>
```

#### Logical ranges and their interpolation into query ranges

In practical applications, sometimes  “match types” are being used. Understanding of these logical types and their application is helpful for understanding range match queries and their interpolation into specific query attributes.

For continuous ranges, a match can for example have one of the following “matchtype” options. This is just for demonstarting the use in an interface, which then will send start and end parameters to the server:

* any
    * Any overlap >= 1 between the range of the query and the variant
* complete
    * The variant has to be at least completely covered by the query range
* exact
    * Start and End of both query and variant are base identical
* leftopen
    * While the start of the variant can have any position, the end has to match the query end
* rightopen
    * While the end of the variant can have any position, the start has to match the query start

Query Ranges can be used to accommodate for all “matchtype” options, including such not specified above (e.g. combination one side exact, other side any etc.).
The following examples will demonstrate the interpolation of logical matchtypes into start and end ranges. No “matchtype” parameter is being sent to the server; the interpolation has to be provided through the interface logic.
Generally, “matchtype” represents an abstract - but frequently used - logical construct which is only applied here to demonstrate different query types.

#### Match Examples (against a genome of length \_MAXBASE\_):

##### Right-open query for any match > between < 20 and 46, but not including a base below 21
**Beacon request**
```json
{
  "startMin" : 0,
  "startMax": 45,
  "endMin": 20,
  "endMax": _MAXBASE_,
  "variantType": "DEL"
}
```
```
--------------------xxxxxxxxxxxxxxxxxxxxxxxxx-------------------=>
????????????????????????????????????????????
                   ?????????????????????????????????????????????=>
```
**Matched variants**
```
-------------*************--------------------------------------=>
**************************************************************--=>
-------------------*--------------------------------------------=>
----------------------------------------**----------------------=>
```

**Interpretation** Any type of overlap with the basic DEL 20-45 is returned. This condition becomes true for any deletion DEL that starts between position 0 and the end of the region (45), and ends anywhere between the start of the region (20) and the end of the genome (1000). These conditions are emulated through providing
* 0,45: matches from genome start (0) to  last base of the region (45)
* 20,\_MAXBASE\_: matches from first base of region to the end of the reference


##### Complete coverage of a region (20-45)
**Beacon request**
```json
{
  "startMin" : 0,
  "startMax": 20,
  "endMin": 45,
  "endMax": _MAXBASE_,
  "variantType": "DEL"
}
```
```
-------------------xxxxxxxxxxxxxxxxxxxxxxxxx--------------------=>
????????????????????                       ?????????????????????=>
```
** Matched variants**
```
**************************************************************--=>
-------------------****************************-----------------=>
```
**Interpretation** We allow deletions to start before or including the start position and end including or after the end position. Note that the deletion needs to be completely within the defined window [20, 45], and therefore needs to have a minimal length of 25.


##### Exact query for a duplication
**Beacon request**
```json
{
  "startMin" : 20,
  "startMax": 20,
  "endMin": 45,
  "endMax": 45,
  "variantType": "DUP"
}
```
  OR
```
  { start: 20, end: 45, variantType: DUP }
```
```
-------------------xxxxxxxxxxxxxxxxxxxxxxxxx--------------------=>
                   ?                       ?
```

** Matched variants** (only one option)
```
-------------------*************************--------------------=>
```

**Interpretation** We want an exact match, i.e. the service should only return data that falls exactly into the range [20, 45].
This would be the default interpretation (however, for structural variants the main query interists will be for the “any” or “complete” types)..

##### Right open, left-anchored query
**Beacon request**
```json
{
  "startMin" : 20,
  "startMax": 20,
  "endMin": 45,
  "endMax": _MAXBASE_,
  "variantType": "DEL"
}
```
```
-------------------xxxxxxxxxxxxxxxxxxxxxxxxx--------------------=>
                   ?                       ?????????????????????=>
```
**Matched variants**
```
-------------------*********************************************=>
-------------------*************************--------------------=>
```
**Interpretation** We require deletions to start at the start position and cover the whole range until the end position. They can end at or after the end position.


##### Right open, left-anchored query with "at least one base" match
**Beacon request**
```json
{
  "startMin" : 20,
  "startMax": 20,
  "endMin": 20,
  "endMax": _MAXBASE_,
  "variantType": "DEL"
}
```
```
-------------------xxxxxxxxxxxxxxxxxxxxxxxxx--------------------=>
                   ?????????????????????????????????????????????=>
```
**Matched variants**
```
-------------------*********************************************=>
-------------------******---------------------------------------=>
```

##### Left open query, right base specific anchor
**Beacon request**
```json
{
  "startMin" : 0,
  "startMax": 20,
  "endMin": 45,
  "endMax": 45,
  "variantType": "DEL"
}
```
```
-------------------xxxxxxxxxxxxxxxxxxxxxxxxx--------------------=>
????????????????????                       ?
```
**Matched variants**
```
-------------------*************************--------------------=>
********************************************--------------------=>
```
**Interpretation** We allow deletions to start at or before the start position. They end at the end position.


##### Interpretation of CIPOS,CIEND parameters provided in the variant set:

Annotated (structural) variant positions may not always be base exact but represent an approximate position of high probability (e.g. due to mapping problems, methods w/o complete genome coverage such as WES, arrays …). In the VCF specification, these Variant Position Intervals are denoted through the “CIPOS, CIEND” intervals for start and end of a structural variant, respecyively.

The interpolation of match types into query-side start,end parameters is independent of cipos,ciend (in VCF: CIPOS,CIEND) values provided as part of the variant annotations. The recommendation here is to use the interpolated ranges for the start and end positions, and match them against the variant side intervals.
