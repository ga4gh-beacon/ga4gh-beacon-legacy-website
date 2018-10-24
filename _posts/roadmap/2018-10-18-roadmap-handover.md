---
title: 'Beacon Handover for Data Delivery'
date: 2018-10-18
layout: default
author: mbaudis
permalink: /roadmap/handover.html
excerpt_separator: <!--more-->
www_link:
category:
  - roadmap
tags:
  - specification
  - development
---

## {{ page.title }}

While the Beacon response should be restricted to aggregate data (yes/no, counts, frequencies ...), the usage of the protocol could be greatly expanded by providing an access method to data elements matched by a Beacon query.

As part of the mid-term product strategy, the ELIXIR Beacon team is evaluating the use of a "handover" protocol, in which rich data content (e.g. variant data, phenotypic information, low-level sequencing results) can be provided from linked services, initiated through a Beacon query (and possibly additional steps like protocol selection, authentication...).

<figure>
<img src="/assets/img/beacon-query-handover-schema.png" style="width: 520px;" />
  <figcaption style="font-size: 0.8em;">Possible scenario for a Beacon-initiated "handover" data delivery, involving pre- or post- query authentication steps. Importantly, the identification of matching "rich" data elements (e.g. information about biosamples or individuals) happens internally, and only a data access handle is exposed to the Beacon ecosystem.</figcaption>
</figure>

<!--more-->
