---
title: "Genome Coordinate use for Beacon Queries"
date: 2019-03-14
layout: default
author: "@mbaudis"
excerpt_separator: <!--more-->
www_link: 
category:
  - howto
  - specification
tags:
  - queries
  - definitions
  - FAQ
---

## {{ page.title }}

The coordinate system that should be used throughout [GA4GH standards](https://schemablocks.org/categories/formats.html) is __0-based half open__.

<!--more-->

So in a sequence of

```
ACCGTCGA
```
... the exact match for GTC would be

```
start: 3,
end: 6
```
... due to interbase coordinates.

A detailed documentation of the standard can be found on the [SchemaBlocks site](https://schemablocks.org/categories/formats/genome-coordinates.html).
