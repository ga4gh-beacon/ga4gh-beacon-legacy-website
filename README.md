---
title: About | Beacon Project
layout: default
permalink: /about.html
categories:
  - faq
---

## Beacon Project website

This is the working code for the Beacon Project website. Beacons provide discovery services for genomic data in ELIXIR and the global [Beacon network](http://beacon-network.org), using the Beacon technology developed by the [Global Alliance for Genomics and Health](https://www.ga4gh.org/) (GA4GH).

For more information see the main [Beacon website](http://beacon-project.io/) and [ELIXIR website](https://www.elixir-europe.org/about-us/implementation-studies/beacons).

## Overview

The _Beacon_ protocol defines an open standard for genomics data discovery, developed by members of the [Global Alliance for Genomics &amp; Health](http://genomicsandhealth.org). It provides a framework for public web services responding to queries against genomic data collections, for instance from population based or disease specific genome repositories.

The beacon protocol has been designed to be:

* **Simple:** focus on robustness and easy implementation
* **Federated:** maintained by individual organizations and assembled into a network
* **General-purpose:** used to distribute any allelic dataset
* **Aggregative:** provide a boolean answer to whether an allele was observed
* **Privacy protecting:** queries do not return information about single individuals

<figure>
<img src="assets/images/beacon-discovery.png" alt="Beacon network" class="col-xs-12 m-t-lg m-b-xl"/>
</figure>

The initial version of the _Beacon_ protocol had been developed to test the willingness and ability of international genome resources to share genomic data in a highly simplified context. The service was designed to accept specific queries in the form "Do you have any genomes with an 'A' at position 100735 on chromosome 3" and responds with "Yes" or "No."

A site offering this service is called a _beacon_. Such sites can scale through aggregation in the [Beacon Network](http://beacon-network.org), which distributes single genome queries a large number of international _beacons_ and assembles their responses.

 Recent and future versions of the _Beacon_ protocol expand the original concept by providing a framework for querying other types of genome variation data and also options for quantitative responses.

 Since 2016, a substantial part of the development of the _Beacon_ protocol has been provided through the _ELIXIR Beacon_ project, a [GA4GH driver project](https://www.ga4gh.org/howwework/driver-projects.html), with ongoing participation from the  [DNAstack](https://dnastack.com) team.
