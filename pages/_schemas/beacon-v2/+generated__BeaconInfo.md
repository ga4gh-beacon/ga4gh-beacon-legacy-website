---
title: BeaconInfo
layout: default
permalink: "/schemas/beacon-v2/BeaconInfo.html"
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
  <h2><span id="schema-header-title-project">beacon-v2</span> BeaconInfo <a href="https://github.com/ga4gh-beacon/specification-v2-blocks" target="_BLANK">[ &nearr; ]</a></h2>
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
<li><a href="current/BeaconInfo.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-beacon/specification-v2-blocks/blob/master/schemas/BeaconInfo.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Metadata describing a beacon instance.

### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>alternativeUrl</th><td>string</td></tr>
<tr><th>apiVersion</th><td>string</td></tr>
<tr><th>createDateTime</th><td>string</td></tr>
<tr><th>datasets</th><td>array of "BeaconDataset.yaml#/ [<a href="./BeaconDataset.html">HTML</a>]"</td></tr>
<tr><th>description</th><td>string</td></tr>
<tr><th>environment</th><td>string</td></tr>
<tr><th>id</th><td>string</td></tr>
<tr><th>info</th><td>object</td></tr>
<tr><th>name</th><td>string</td></tr>
<tr><th>organization</th><td>BeaconOrganization.yaml#/ [<a href="./BeaconOrganization.html">HTML</a>]</td></tr>
<tr><th>updateDateTime</th><td>string</td></tr>
<tr><th>version</th><td>string</td></tr>
<tr><th>welcomeUrl</th><td>string</td></tr>
</table>


#### alternativeUrl

* type: string

Alternative URL to the API, e.g. a restricted version of this beacon (RFC 3986 format).

##### `alternativeUrl` Value Example  

```
"http://example.org/wiki/Main_Page"
```

#### apiVersion

* type: string

Version of the API provided by the beacon.

##### `apiVersion` Value Example  

```
"v0.3"
```

#### createDateTime

* type: string

The time the beacon was created (ISO 8601 format).


##### `createDateTime` Value Example  

```
"2012-07-19 or 2017-01-17T20:33:40Z"
```

#### datasets

* type: array of "BeaconDataset.yaml#/ [<a href="./BeaconDataset.html">HTML</a>]"

Dataset(s) served by the beacon.


#### description

* type: string

Description of the beacon.



#### environment

* type: string

Environment the service is running in. Use this to distinguish 
between production, development and testing/staging deployments.


##### `environment` Value Example  

```
"dev"
```

#### id

* type: string

Unique identifier of the beacon. Use reverse domain name notation.


##### `id` Value Example  

```
"org.ga4gh.beacon"
```

#### info

* type: object

Additional unspecified metadata about the Beacon service.


##### `info` Value Example  

```
{
   "additionalInfoKey1" : "additionalInfoValue1",
   "additionalInfoKey2" : [
      "additionalInfoValue2",
      "additionalInfoValue3"
   ]
}
```

#### name

* type: string

Name of the beacon.



#### organization

* type: BeaconOrganization.yaml#/ [<a href="./BeaconOrganization.html">HTML</a>]




#### updateDateTime

* type: string

The time the beacon was updated in (ISO 8601 format).


##### `updateDateTime` Value Example  

```
"2012-07-19 or 2017-01-17T20:33:40Z"
```

#### version

* type: string

Version of the beacon.


##### `version` Value Example  

```
"v0.1"
```

#### welcomeUrl

* type: string

URL to the welcome page for this beacon (RFC 3986 format).


##### `welcomeUrl` Value Example  

```
"http://example.org/wiki/Main_Page"
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


