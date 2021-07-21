---
category:
  - beaconv2
tags:
  - .prepend
---

## Beacon v2 code repositories

These are the official repositories for version 2 of the specification and the Reference Implementation:

* [V2 Specification](https://github.com/ga4gh-beacon/specification-v2)
* [Default Schemas for Beacon V2](https://github.com/ga4gh-beacon/specification-v2-default-schemas)
* [ELIXIR Reference Implementation](https://github.com/EGA-archive/beacon-2.x)

## A word on Beacon v2 security

An implementation of a Beacon (e.g., the V1.1 ELIXIR reference [implementation](https://github.com/ga4gh-beacon/beacon-elixir)) must implement the Global Alliance for Genomics and Health ([GA4GH](https://www.ga4gh.org)) Beacon standard as defined [here](https://github.com/ga4gh-beacon/specification). This standard has been through the GA4GH approval [process](https://www.ga4gh.org/how-we-work/ga4gh-product-approval/), which means the standard must be approved by both the Regulatory and Ethics, and Data Security foundational workstreams. 

The Beacon uses a 3-tiered access model - anonymous, registered, and controlled access. A Beacon that supports anonymous access responds to queries irrespective of the source of the query. For a Beacon to respond to a query at the registered tier, the user must identify themselves to the Beacon, for example by using an ELIXIR identity. For a Beacon to respond to a controlled access query, the user must have applied for, and been granted access to, the Beacon (or data derived from one or more individuals within the Beacon) before sending the query. Note that a Beacon may contain datasets (or collections of individuals) whose data is only accessible at specified tiers within the Beacon. This tiered access model allows the owner or controller of a Beacon to determine which responses are returned to whom depending on the query and the user who is making the request, for example to ensure the response respects the consent under which the data were collected. The ELIXIR Beacon network supports Beacons which respond at different tiers, for example only Beacons which have a response to anonymous queries need respond to an anonymous request. As part of the ELIXIR 2019-21 Beacon Network Implementation Study deliverable [D3.3](https://docs.google.com/document/d/1q7XuUB-Z4A_DogWT1AVrvkp_qHWWtbbICxokHup_tts/edit) a document has been written to describe security best practice for users interested in deploying or running a Beacon or users who govern data hosted within a Beacon, and the requirements for adding the Beacon to the ELIXIR Beacon network. As the Beacon standard extends in [V2](https://github.com/ga4gh-beacon/specification-v2) towards supporting phenotype and range queries, the tiered access model becomes more important to ensure the Beacon response is appropriate to the underlying data.

As a Beacon is designed to support data discoverability of controlled access datasets, it is recommended that synthetic or artificial data is used for testing and initial deployment of Beacon instances. The use of synthetic data for testing is important in that it ensures that the full functionality of a Beacon can be tested and / or demonstrated without risk of exposing data from individuals. In addition to testing or demonstrating a deployment, synthetic data should be used for development, for example adding new features. Additionally, these data can also be used to demonstrate the access levels and data governance procedures for loading data to a Beacon to build trust with data controllers or data access committees who may be considering loading data to a Beacon. An example dataset that contains chromosome specific vcf files is hosted at EGA under dataset accession [EGAD00001006673](https://ega-archive.org/datasets/EGAD00001006673). While this dataset requires a user to log in to get access, the EGA test user can access this dataset. 

## Beacon v2 news

Below are the latest news about Beacon v2
