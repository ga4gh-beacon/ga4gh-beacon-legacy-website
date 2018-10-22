## Managing posts

=> The easiest way to create a new post is to copy and modify an old one from the same category. <=

In the Jekyll framework used for this site, new web pages are created by adding Markdown pages to this (i.e. `_posts`) directory.

These pages have to fulfil 2 conditions:

* they need a `YAML` front matter
* their names start with the ISO8601 formated date of the post
  * the date can be any date, you want the post to be associated with (e.g. `1967-11-11`)
  * the date can be in the future, with posts then only being processed
    * when this date is reached, or
    * if the `future: true` flag is set in `_config.yml`
  * the leading date has to be followed by a dash `-` sign (e.g. `2018-10-19-news-weather-is-nice.md`)
  
Posts can be arranged into sub-directories (e.g. `/_posts/news/2018-10-19-news-weather-is-nice.md`); this has no impact at all and can be used for keeping some order.

### Front Matter

A typical `YAML` front matter looks like this:

```
---
title: Coordinate use for Beacon Queries
date: 2018-10-17
layout: default
author: mbaudis
excerpt_separator: <!--more-->
www_link: 'beacon.progenetix.org'
category:
  - howto
tags:
  - queries
  - definitions
  - faq
---
```

With the attributes:

* `title`
  * standard, recommended
  * the title of the page, as it will show up in navigation etc. (so better concise)
  * frequently re-used in the documents; e.g. `## {{ page.title }}` will insert an `<h2>` wrapped version of the title into the page
  * tricky with special characters...
* `date`
  * ISO8601 date (see example)
  * will override the date in the filename
  * not strictly needed (since the Jekyll `page.date` variable can be derived from the filename)
* `layout: default`
  * needed for processing the page into the html template
  * `default` can be replaced with another value from `/layouts/`
* `excerpt_separator`
  * optional but recommended
  * the corresponding value (i.e. `<!--more-->`) can then be inserted into the page code, to limit the amount of page content showing in list views
* `www_link`
  * private tag
  * will lead to the insertion of a "[www]" tag at the end of the page, with corresponding link
* `category`
  * standard, recommended
  * will add the page to the category, which should be one of the `navigation_categories` defined in `_config.yml`
  * usually only one value, but multiple are possible (better use `tags`)
* `tags`
  * standard, recommended
  * well, tags; pages will then be listed on the collections linked from the corresponding tag cloud value
  * CAVE: landing pages for non-existing tags have to be added first to `/tags/` (just copy & re-name directory there)