---
title: "CNV Beacon at Biohackathon Europe"
template: post.html
date: 2019-11-18
author: ["@mbaudis"]
www_link: https://www.biohackathon-europe.org
---


For the Biohackathon Europe (Nov 18-22), the hCNV project submitted a proposal 
which was accepted for the event near Paris.

 <!--more-->

#### PROPOSAL ACCEPTED FOR THE BIOHACKATHON
### Copy Number Variation Beacon
 
**Abstract** CNV are major source of genomic variation. However, whilst Next-Generation Sequencing technologies, especially Whole Genome Sequencing, are increasingly becoming the primary choice for genomic screening analysis, their ability to efficiently detect and interpret CNV is still heterogeneous and remains a non trivial process.

Recently, leading European researches from such areas as rare disease genetics, bioinformatics and cancer genomics have established the ELIXIR h-CNV community with the goal to improve CNV detection and identification of CNV associated to phenotypes, beyond individual resources or research projects. An essential part of the strategy concerns the federated access to clinical and reference CNV datasets, e.g. through the implementation of innovative data APIs.

The GA4GH Beacon API allows any resource to share the presence or the absence of a particular variation, including since its v0.4 release in 2018 - the support for CNVs. Also, the ELIXIR Beacon Network enables federated searching of multiple Beacons via an a single graphical interface.

The objective of this project is to set up a reference Beacon instance on top of a CNV dataset. The implementation should support all features of the latest protocol version and provide rich responses (differential observation frequencies, variant & phenotype information in responses or through handover protocols). Additionally, we shall link this Beacon to the ELIXIR Beacon Network, and enable data sharing via at least one of the three levels of access (public, registered, or controlled), which are enabled via ELIXIR AAI. Also, the project is expected to develop tooling for the conversion of CNV storage formats (e.g. VCF files) to Beacon compatible representations.


##### Hacking topic title

Facilitate interpretation of CNV through Beacons
 
##### Leads

* Michael Baudis
* David Salgado
* Gary Saunders
 
##### Research Area Alignment

This project is principally aligned with the ELIXIR h-CNV Community and the ELIXIR Beacon GA4GH Driver Project. Is it also aligned more generally with the ELIXIR Human Data Communities.
 
##### Expected Outcomes:

1. Functional Beacon sharing CNV data
2. Registering this Beacon to the ELIXIR Beacon Network
3 Controlled vocabulary / Common data elements used to describe a CNV
4. Specifications
5. Draft implementation
 
##### Expected Audience

Anyone interested in CNV, Beacon, Interoperability, controlled vocabulary...
 
##### Nominated Participant

* Michael Baudis
* David Salgado
* Gary Saunders
* Bo Gao

##### Number of expected Hacking day for project
 
4 days


