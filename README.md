## ELIXIR Beacon Project website

[![Join the chat at https://gitter.im/ga4gh-beacon/documentation](https://badges.gitter.im/ga4gh-beacon/documentation.svg)](https://gitter.im/ga4gh-beacon/documentation?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

The main information site for the ELIXIR Beacon Project - i.e. the formatted content of this repository - can be accessed as [Beacon website](http://beacon-project.io/).

For more information about the project you may also consult the corresponding [ELIXIR website](https://www.elixir-europe.org/about-us/implementation-studies/beacons).

### Website Technology

The website is built from this repository using the Github-provided support for the Jekyll build system, using a combination of HTML and Markdown files and embedded Liquid markup. After adding or editing a post in the `master` branch, the corresponding website is auto-updated using Github's built-in Jekyll engine.

Apart from special setup and modification procedures (adding collation pages for new categories or tags; layout modifications), most site management consists of adding Markdown pages to the `_posts` directory - see below.

Note: One can easily test the site locally using the instructions provided [here](https://info.baudisgroup.org/howto/jekyllinstructions/). These can also be used to move the site project to a local built system with transfer of the generated pages to a standard webserver, independent of Github.

### Managing posts

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

#### Front Matter

A typical `YAML` front matter looks like this:

```
---
title: Coordinate use for Beacon Queries
date: 2018-10-17
layout: default
author: '@github_user_name'
excerpt_separator: <!--more-->
www_link: 'beacon.progenetix.org'
category:
  - howto
tags:
  - queries
  - definitions
  - FAQ
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
* `author`
  - optional, recommended
  - the Github user name of the page's creator
  - will auto-link to the `https://github.com/github_user_name/` page, if starting with an "@"
  - __@github_user_name__ has to be quoted or the page won't build!
  - names w/o "@" won't link
* `author_link`:
  - add this to provide a full, quoted address for e.g. the author's home page
    * `author_link: 'https://info.baudisgroup.org/group/Michael_Baudis/'`
  - only works for non-"@" author names (otherwise -> Github)
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
