---
title: "ProgenetixTemplate::bootstrap_site.pl Perl Code Documentation"
layout: default
www_link: 
excerpt_separator: <!--more-->
date: 2020-05-13
category:
  - howto
tags:
  - Perl
  - ProgenetixTemplate
  - code
  - documentation
---

## {{ page.title }}

<!--more-->


The bootstrap_site is a utility for creating the structure of __Progenetix 
Jekyll Website Template__ based websites. The current functions are:

* create list pages for all categories defined in `_config.yml`, separate for
standard (alphabetically sorted) and reverse date sorted categories
* as for categories, do the same for tags
* check/add collections directories

Additional options:

* with the argument `-update y`, users will be prompted if they want to download
the newest `style.css` and `layout.css` files from the "Progenetix :: Template"
repository - this will overwrite the existing files!

#### Listing pages for `categories` and `tags`

For `categories` and `tags` annotated in the `_config.yml` file, a default 
landing page (i.e. this_category.md, this_tag.md) is being generated and linked 
to.

##### List page sort order

The listing pages for categories and tags are provided in alphabetic and date 
sorted versions. Default (i.e. the page shown when clicking the category or tag 
page) is "alpha-sorted". The default can be changed in the `_config.yaml` file 
by listing the respective category or tag in the corresponding sorting 
attribute, e.g.

```
tags-date-sorted:
	- news
	- lectures
```


