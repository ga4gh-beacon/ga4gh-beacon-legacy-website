---
title: Home | ELIXIR Beacon Project
layout: default
date: 2018-10-16
excerpt_separator: <!--more-->
category:
  - about
tags:
  - .featured
---

## ELIXIR Beacon Project website

This is the main project information site for the ELIXIR Beacon Project.

"Beacons" provide discovery services for genomic data in ELIXIR and the  [Beacon network](http://beacon-network.org), using the Beacon technology developed for the __Global Alliance for Genomics and Health__ ([GA4GH](https://www.ga4gh.org/)).

<!--more-->

For more information please see the main [Beacon website](http://beacon-project.io/) and the corresponding [ELIXIR website](https://www.elixir-europe.org/about-us/implementation-studies/beacons).

## The ELIXIR Beacon Project

The _Beacon_ protocol defines an open standard for genomics data discovery, developed by members of the [Global Alliance for Genomics &amp; Health](http://genomicsandhealth.org). It provides a framework for public web services responding to queries against genomic data collections, for instance from population based or disease specific genome repositories.

The Beacon protocol has been designed to be:

* **Simple:** focus on robustness and easy implementation
* **Federated:** maintained by individual organizations and assembled into a network
* **General-purpose:** used to report on any variant collection
* **Aggregative:** provide a boolean (or quantitative) answer about the observation of a variant
* **Privacy protecting:** queries do not return information about single individuals

<figure>
<img src="/assets/img/beacon-discovery.png" alt="Beacon network"/>
</figure>

The initial version of the _Beacon_ protocol had been developed to test the willingness and ability of international genome resources to share genomic data in a highly simplified context. The service was designed to accept specific queries in the form "Do you have any genomes with an 'A' at position 100735 on chromosome 3" and responds with "Yes" or "No."

A site offering this service is called a _beacon_. Such sites can scale through aggregation in the [Beacon Network](http://beacon-network.org), which distributes single genome queries a large number of international _beacons_ and assembles their responses.

Recent and future versions of the _Beacon_ protocol expand the original concept by providing a framework for querying other types of genome variation data (i.e. [range queries and structural variants](/howto/range-queries.html) since [v0.4](/specification/release-v0.4.html)) and also options for quantitative responses.

Since 2016, the development of the _Beacon_ protocol has been provided through the _ELIXIR Beacon_ project, a [GA4GH driver project](https://www.ga4gh.org/howwework/driver-projects.html), with ongoing participation from the  [DNAstack](https://dnastack.com) team.
