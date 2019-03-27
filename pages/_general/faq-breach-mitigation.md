---
title: "Mitigation of Re-identification Attacks" 
date: 2018-10-17
layout: default
author: "@mbaudis"
excerpt_separator: <!--more-->
category:
  - about
tags:
  - FAQ
---

## What is the Beacon Project doing to mitigate the possibility and likelihood of reidentification through Beacons?

Any publica data resource containing "human derived" data has a potential for re-identification attacks, that is the identification of individuals contributing data to the resource.

Since its inception, the Beacon Project has been actively working with experts in GA4GH’s membership to address potential privacy concerns.

<!--more-->

These efforts include:

* A data aggregation approach, in which several private Beacons are combined into a single public Beacon. The power to re-identify is a function of the number of data points served by a Beacon and the scope of the data it contains (i.e. whole genome versus exome). Aggregate Beacons contain more data points and do not obscure the origin of the data.
* An information budgeting approach to track the cumulative information revealed to any one user and restrict access if information disclosure exceeds a threshold. The power to re-identify an individual varies inversely with the frequency of the alleles being queried. That is, very rare alleles reveal more about a given individual than those that are common among the population. By metering the information disclosure, Beacons can restrict access before reidentification is possible.
* Secured access to some of the data. Before a user is approved to access data, s/he must provide credentials and/or research plans and agree not to re-identify individu
