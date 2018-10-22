---
title: Coordinate use for Beacon Queries
date: 2018-10-17
layout: default
author: mbaudis
excerpt_separator: <!--more-->
www_link: 
category:
  - howto
  - specification
tags:
  - queries
  - definitions
  - faq
---

## {{ page.title }}

The coordinate system that should be used throughout GA4GH standards is __0-based half open__.

<!--more-->

So in a sequence of

```
ACCGTCGA
```
... the exact match for GTC would be

```
start: 4,
end: 7
```
... due to interbase coordinates.
