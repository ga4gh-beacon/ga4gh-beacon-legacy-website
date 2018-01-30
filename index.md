---
title: Home | Beacon Project
layout: home
---

The _Beacon_ protocol defines an open standard for genomics data discovery, developed by members of the [Global Alliance for Genomics &amp; Health](http://genomicsandhealth.org). It provides a framework for public web services responding to queries against genomic data collections, for instance from population based or disease specific genome repositories.

The beacon protocol has been designed to be:

* **Simple**
  * focus on robustness and easy implementation
* **Federated**
  * maintained by individual organizations and assembled into a network
* **General-purpose**
  * used to distribute any allelic dataset
* **Aggregative**
  * provide a boolean answer to whether an allele was observed
* **Privacy protecting**
  * queries do not return information about single individuals

The initial version of the _Beacon_ protocol had been developed to test the willingness and ability of international genome resources to share genomic data in a highly simplified context. The service was designed to accept specific queries in the form "Do you have any genomes with an 'A' at position 100735 on chromosome 3" and responds with "Yes" or "No."

A site offering this service is called a _beacon_. Such sites can scale through aggregation in the [Beacon Network](http://beacon-network.org), which distributes single genome queries a large number of international _beacons_ and assembles their responses.

 Recent and future versions of the _Beacon_ protocol expand the original concept by providing a framework for querying other types of genome variation data and also options for quantitative responses.

 Since 2016, a substantial part of the development of the _Beacon_ protocol has been provided through the _ELIXIR Beacon_ project, a [GA4GH driver project](https://www.ga4gh.org/howwework/driver-projects.html), with ongoing participation from the  [DNAstack](https://dnastack.com) team.

<!--
You can use HTML elements in Markdown, such as the comment element, and they won't be affected by a markdown parser. However, if you create an HTML element in your markdown file, you cannot use markdown syntax within that element's contents.
-->
