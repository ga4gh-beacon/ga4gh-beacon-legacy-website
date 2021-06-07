---
title: "Genome Coordinate use for Beacon Queries"
date: 2019-03-14
layout: default
author: "@mbaudis"
excerpt_separator: <!--more-->
www_link: 
category:
  - howto
  - beaconv2
tags:
  - queries
  - definitions
  - FAQ
---

## {{ page.title }}

The coordinate system that should be used throughout [GA4GH standards](https://schemablocks.org/standards/genome-coordinates.html) is __0-based half open__.

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
... due to interbase coordinates:

```
 A C C G T C G A
| | | | | | | | |
0 1 2 3 4 5 6 7 8
```

A detailed documentation of the standard can be found on the [SchemaBlocks site](https://schemablocks.org/standards/genome-coordinates.html).
