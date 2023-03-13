---
title: "Progenetix - A cancer genomics reference resource around GA4GH standards"
template: post.html
date: 2020-09-30
excerpt_link: https://info.baudisgroup.org/presentations/2020-09-30-Michael-Baudis__Progenetix-and-Beacon__GA4GH2020-poster/
authors:
  - '@mbaudis'
---

#### [GA4GH 8th Plenary](https://broadinstitute.swoogo.com/ga4gh-8th-plenary/455678)
### Michael Baudis

The Progenetix oncogenomics resource provides sample-specific cancer
genome profiling data and biomedical annotations as well as provenance data from cancer studies. Especially through currently 113322 curated genomic copy number number (CNV) profiles from 1600 individual studies representing over 500 cancer types (NCIt), Progenetix empowers aggregate and comparative analyses which vastly exceed individual studies or single diagnostic concepts.

<!--more-->

Progenetix has been widely used in research studies, clinical diagnostics and recently in the development of data protocols and standards with the Global Alliance for Genomics and Health (GA4GH) and the European bioinformatics initiative ELIXIR. Specifically, the Beacon+ service, implemented on top of the Progenetix datasets, has been instrumental in developing and testing advanced features of the Beacon protocol such as structural variant queries, "handover" data delivery and the implementation of queries for phenoptypic and diagnostic parameters using CURIE based "filters". During development of GA4GH metadata concepts and schemas - which have influenced emerging standards such as the Phenopackets format - cancer specific annotations from the Progenetix collection have served to identify conceptual requirements and to develop domain-specific mappings (e.g. ICD-O to NCIt translations). The resource's focus on structural genome variants has been instrumental in addressing their specific requirements in GA4GH schema development and the Beacon protocol.

Here, we will demonstrate how an open genomic reference resource has been built around GA4GH standards and how it is being used to support ongoing and future developments in GA4GH standard development and ELIXIR implementation studies.

progenetix.org

#### Additional Links

* [Beacon Website](http://beacon-project.io)
* [Beacon+ in progenetix-next](https://progenetix.org/beaconplus-instances/beaconplus/)
* [Bycon Project](https://github.com/progenetix/bycon)
