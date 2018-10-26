---
title: 'Beacon Flavours'
date: 2018-10-24
layout: default
author: mbaudis
author_link: 'https://info.baudisgroup.org/group/Michael_Baudis/'
permalink: /roadmap/beacon-flavours.html
excerpt_separator: <!--more-->
www_link:
category:
  - roadmap
  - specification
tags:
  - specification
  - development
---

## {{ page.title }}

Beacons may be able to increase their functionality through the development of distinct __flavours__, which can extend the core Beacon concept for specific use cases.

<!--more-->

<table style="width: 100%; font-size: 0.8em;">
<tr>
  <th>Flavour</th><th>Data Sources</th><th>Data response</th><th style="width: 60px;">Examples</th><th>Notes</th>
</tr>
<tr>
  <td><i><b>Core</b></i> Beacon</td>
  <td>
    <ul>
      <li>aggregate or sample, callset specific variant data</li>
      <li>optional bio- and assya-metadata (e.g. phenotypes, geolocation data, assay information ...)</li>
    </ul>
  </td>
  <td>
    <ul>
      <li>standard "existence of allele" response (yes/no; quantitative)</li>
      <li>optional data delivery through "handover" scenarios</li>
    </ul>
  </td>
  <td>
    <ul>
      <li>most of the current Beacon implementations</li>
    </ul>
  </td>
  <td>This is main Beacons development line, representing the gradual & continuous extension of the protocol while staying with the <i><b>queries do not return information about single individuals</b></i> paradigm.</td>
</tr>
<tr>
  <td><i><b>Evidence</b></i> Beacon</td>
  <td>
    <ul>
      <li>Variant knowledge resources</li>
    </ul>
  </td>
  <td>
    <ul>
      <li>variant annotation data (variant effects, druggability...)</li>
    </ul>
  </td>
  <td>
    <ul>
      <li><a href="http://cancervariants.org" target="_blank">VICC</a></li>
      <li><a href="https://brcaexchange.org" target="_blank">BRCA Exchange</a></li>
      <li>...</li>
    </ul></td>
  <td> </td>
</tr>
<tr>
  <td><i><b>Data</b></i> Beacon</td>
  <td>
    <ul>
      <li>sample, callset specific variant data (may be optional in pure "metadata" scenarios)</li>
      <li>bio- and assya-metadata</li>
    </ul>
  </td>
  <td>
    <ul>
      <li>Data (variants, callsets, individual/clinical records) through <a href="/roadmap/handover.html"><i><b>handover</b></i></a> scenarios</li>
      <li>versions with direct data delivery in response in secure environments (?)</li>
    </ul>
  </td>
  <td>
    <ul>
      <li>so far internal and "off protocol"</li>
      <li><a href="http://beacon.progenetix.org">Beacon<span style="vertical-align: super; color: red; font-weight: 800;">+</span></a></li>
    </ul>
  </td>
  <td>
    <ul>
      <li>risk of data breaches/exposure, especially when providing clinical data as response add-on</li>
      <li>"handoff" scenario delegates delivery (and potential security concerns) to external protocols</li>
    </ul>
  </td>
</tr>
</table>

Beacon implementations can also be classified by their potential for data delivery:

* aggregate Beacon
  - only aggregate data is stored at the backend
  - no sample/callset/individual ... resolution is possible by design
  - re-identification attacks possible through querying of multiple, usually rare, alleles corresponding to the _known_ genome of an individual
* clinical Beacon
  - any Beacon which contains non-aggregate data (variants and metadata)
  - potential of data exposure through standard security breaches
  - additional security risk through non-aggregate responses, where implemented
