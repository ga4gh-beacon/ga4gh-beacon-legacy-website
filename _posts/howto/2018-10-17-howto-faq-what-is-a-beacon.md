---
title: What is a Beacon?
date: 2018-10-17
layout: default
author: mbaudis
excerpt_separator: <!--more-->
category:
  - howto
tags:
  - faq
---

## {{ page.title }}

A Beacon is an online web service that allows users to query an institution’s databases, to determine whether they contain a genetic variant of interest. The query is structured as a yes/no question of the form: "Do you have any genomes with an 'X' at position Y on chromosome Z?"

<!--more-->

Over time, the Beacon protocol is being expanded to provide "richer" query options, which may - or will - include:

* extensive support for different types of genomic variants, e.g.  copy number variations (CNVs; part of the v1.0 specification) or fusion events
* flexible variant queries (e.g. genomic "range queries")
* providing an interface for clinical and other biological parameters (e.g. phenotypes, diagnoses, time related data, geodata)

The Beacon protocol itself is not thought to deliver "data" beyond the aggregate responses to Beacon queries (i.e. no patient or sample specific data is being transmitted). However, extensions of the protocol may provide mechanisms to "hand over" to other protocols and services which could provide such additional functionality.
