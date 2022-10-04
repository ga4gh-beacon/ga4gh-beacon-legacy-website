---
layout: default
permalink: /index.html
---

{% comment %}
################################################################################

	The template for the index page is thought to provide both the option for
	custom content, as well as a mechanism for the automated adding of excerpt
	page links for other pages labeled for the "index" category.

	Please add your content in Markdown or HTML below.

################################################################################
{% endcomment %}

# GA4GH Beacon project
{:.no_toc}

----
1. TOC
{:toc}
----

##  Why a Beacon?

<!--more-->

<figure>
<img src="/assets/img/Beaconizing_hospitals_Webpage.png" alt="Beaconize hospitals"/>
</figure>
###### Figure 1. A schematic representation of how Beacon works. (A) Beacon API implementation and (B) A Beacon query and aggregated response
{:.no_toc}

A Beacon is a simple genomics variant discovery tool by aggregating worldwide genomics dataset under one umbrella. The Beacon Project is developed under a Global Alliance for Genomics and Health (GA4GH) Iniciative for the federated discovery of genomic data in biomedical research and clinical applications. One of the main bottlenecks in human genomics research is lack of data. Genomics data are identifiable and therefore need to be protected. However, due to lack of data security infrastructure and good health data practices, clinicians and researchers are inclined to not share their data at all. This further slows down the progress in research. In order to promote personalised medicine, inclusive diagnostics, prognostic and therapeutic strategies, we cannot afford to keep the data locked in. The Beacon API aims to solve this problem by enabling the search of genomic variants and associated information without jeopardising the privacy of the dataset. This way, any hospital or research entity can choose to 'beaconize' their omics dataset without compromising the privacy or the ownership of the dataset, thus helping the worldwide community of researchers and assisting science through the power of data.

##  What is Beacon?

Beacon is an API (sometimes extended with a [user interface](https://beacon-giab-test.ega-archive.org)) that allows for data discovery of genomic and phenoclinic data.

Originally, the Beacon protocol (versions 0 and 1) allowed researchers to get information about the presence/absence of a given, specific, genomic mutation in a set of data, from patients of a given disease or the population in general (Figure 2). Examples can be found in the [ELIXIR Beacon network page](https://beacon-network.elixir-europe.org). 

<figure>
<img src="/assets/img/Beacon-v1.png" alt="Beacon v1"/>
</figure>
###### Figure 2. Schematic example of a Beacon query (up to version 1)
{:.no_toc}

The version 2 (v2) of the Beacon protocol has been accepted as GA4GH standard in Spring 2022. It includes, among other changes:
* Query options for biological or technical "meta"data using _fiters_ defined through CURIEs (e.g. phenotypes, disease codes, sex or age).
* An option to trigger the next step in the data access process (e.g. who to contact or which are the data use conditions).
* An option to jump to another system where the data could be accessed (e.g. if the Beacon is for internal use of the hospital, to provide the Id of the EHR of the patients having the mutation of interest).
* Annotations about the variants found, among which the expert/clinician conclusion about the pathogenicity of a given mutation in a given individual or its role in producing a given phenotype.
* Information about cohorts.

<figure>
<img src="/assets/img/Beacon-graphics-v2-network-960x540.png" alt="Beacon v2 Network Specification"/>
</figure>
###### Figure 3. Schematic example of a Beacon query (version 2)
{:.no_toc}


## Beacon v2 scope

The Beacon v2 is based on a two-part concept, with the following documents covering essential aspects of the specification:

* The Beacon [Framework](https://github.com/ga4gh-beacon/beacon-v2/tree/main/framework) is the part that describes the overall structure of the API requests, responses, parameters, the common components, etc. It is mostly relevant for developers.
* The Beacon [Model](https://github.com/ga4gh-beacon/beacon-v2/tree/main/models) describe the set of concepts included in Beacon V2, like individual or biosample, and also the relationships between them. The Model has been developed for biomedical stakeholders.

In principle, this concept allows for different Models (in other domains outside of the Beacon v2 realm, e.g. “Imaging Beacon”) to be built using the same Framework. However, in the current context of Beacon v2, we consider the two elements interdependent and likely to be updated together for subsequent major versions (e.g. from v2 to v3).

### The Beacon v2 [Framework](https://github.com/ga4gh-beacon/beacon-v2/tree/main/framework)

If Beacon v2 were a language, the Framework would be the Syntax. It is the structure upon which the whole API is built. Handling the Framework to deploy your own Beacon requires experience with APIs. 

The Framework repo includes the elements that are common to all Beacons:
* The *configuration files*
* The *JSON schemas* for the requests, the responses, and its respective sections
* The files of every *Beacon root*
* *Examples* for all the abovementioned elements (using a mock and simple Model)

### The Beacon v2 [Model](https://github.com/ga4gh-beacon/beacon-v2/tree/main/models)

The Model is the Semantics of Beacon v2. It covers the different entities and details arising from clinical requirements. Check out the [Documentation](http://docs.genomebeacons.org/models/) for Beacon v2 Model's default schema.

<figure>
<img src="/assets/img/beacon-v2-model-logical.png" alt="Beacon v2 model"/>
</figure>
###### Figure 2. Schematic representation of the Beacon v2 logical Model
{:.no_toc}

The following entities are defined as follows (the links lead to the field descriptions):
* **Collections**: groupings of variants or individuals that share something in common: e.g., who belong to the same repository ([datasets](http://docs.genomebeacons.org/schemas-md/datasets_defaultSchema/)) or study population ([cohorts](http://docs.genomebeacons.org/schemas-md/cohorts_defaultSchema/)).
* [**Genomic variations**](http://docs.genomebeacons.org/schemas-md/genomicVariations_defaultSchema/): unique genomic alterations, e.g., position in a genome, sequence alterations, type, etc.
* [**Individuals**](http://docs.genomebeacons.org/schemas-md/individuals_defaultSchema/): either patients or healthy controls whose details (including phenotypic and clinical) are stored in the repository.
* [**Biosamples**](http://docs.genomebeacons.org/schemas-md/biosamples_defaultSchema/): samples taken from individuals, including details of procedures, dates and times.
* **Analyses & Runs**: details on (a) procedures used for sequencing a biosample ([runs](http://docs.genomebeacons.org/schemas-md/runs_defaultSchema/)), and (b) bioinformatic procedures to identify variants ([analyses](http://docs.genomebeacons.org/schemas-md/analyses_defaultSchema/))

### I want to deploy a Beacon: how does this affect me?
If you do not have extensive experience in developement and APIs, you might want to deploy a **Beacon Instance**. A Beacon instance is just an implementation of a Beacon Model that follows the rules stated by the Beacon Framework.

Then, you do not need to clone the Framework repo, you only need to copy (or clone) the Beacon Model and modify it to your specific instance. You will find plenty of references to the Framework in the Model copy, and you will use the JSON schemas in the Framework to validate that both the structure of your requests and responses are compliant with the Beacon Framework. The Beacon [verifier tool](https://github.com/ga4gh-beacon/beacon-verifier) would help in such validation.

This said, there are several solutions for Beacon implementation, which will depend on many factors, such as your current solution for data maganement, your IT resources, time, etc. Please contact [Lauren Fromont](https://beacon-project.io/people/Lauren-Fromont/), who will put you in touch with our Beacon Dev team. 

## Beacon v2 security

An implementation of a Beacon must implement the Global Alliance for Genomics and Health ([GA4GH](https://www.ga4gh.org)) Beacon standard. The V2 standard is currently (January 2022) undertaking the GA4GH approval process, which means it must be approved by both the Regulatory and Ethics, and Data Security foundational workstreams.

### What are the general security principles for Beacon?
The Beacon uses a [3-tiered access model - anonymous, registered, and controlled access](http://docs.genomebeacons.org/security/). A Beacon that supports anonymous access responds to queries irrespective of the source of the query. For a Beacon to respond to a query at the registered tier, the user must identify themselves to the Beacon, for example by using an ELIXIR identity. For a Beacon to respond to a controlled access query, the user must have applied for, and been granted access to, the Beacon (or data derived from one or more individuals within the Beacon) before sending the query. Note that a Beacon may contain datasets (or collections of individuals) whose data is only accessible at specified tiers within the Beacon. This tiered access model allows the owner or controller of a Beacon to determine which responses are returned to whom depending on the query and the user who is making the request, for example to ensure the response respects the consent under which the data were collected. The ELIXIR Beacon network supports Beacons which respond at different tiers, for example only Beacons which have a response to anonymous queries need respond to an anonymous request. As part of the ELIXIR 2019-21 Beacon Network Implementation Study deliverable [D3.3](https://docs.google.com/document/d/1q7XuUB-Z4A_DogWT1AVrvkp_qHWWtbbICxokHup_tts/edit) a document has been written to describe security best practice for users interested in deploying or running a Beacon or users who govern data hosted within a Beacon, and the requirements for adding the Beacon to the ELIXIR Beacon network. As the Beacon standard extends in V2 towards supporting phenotype and range queries, the tiered access model becomes more important to ensure the Beacon response is appropriate to the underlying data.

### How is security actually implemented when I deploy a Beacon?
Security attributes are part of the Beacon v2 [Framework](https://github.com/ga4gh-beacon/beacon-v2/tree/main/framework). The file [`beaconConfiguration.json`](https://github.com/ga4gh-beacon/beacon-v2/blob/main/framework/json/configuration/beaconConfigurationSchema.json) defines the schema of the JSON file that includes core aspects of a Beacon instance configuration: the third section defines the security:

**securityAttributes**: Configuration of the security aspects of the Beacon. By default, a Beacon that does not declare the configuration settings would return `boolean` (true/false) responses, and only if the user is authenticated and explicitly authorized to access the Beacon resources. While this is the safest set of settings, it is also not informative, therefore not recommended *unless* the Beacon shares very sensitive information. Non-sensitive Beacons preferably opt for a `record` and `PUBLIC` combination.

* **defaultGranularity:** Level of detail provided by the responses. Some responses could return higher detail, but this would be the granularity by default.

  Granularity|Description
  -----------|-----------
  `boolean`|returns 'true/false' responses.
  `count`|adds the total number of positive results found.
  `aggregated`|returns summary, aggregated or distribution like responses per collection. 
  `record`|returns details for every row. 

  For cases where a Beacon prefers to return records with less attributes, different strategies have been considered, e.g.: keep non-mandatory attributes empty, or Beacon to provide a minimal record definition, but these strategies still need to be tested in real world cases and hence no design decision has been taken yet.
  
* **securityLevels:** Access levels supported by the Beacon. Any combination is valid, as every option would apply to different parts of the Beacon. Available options are:
  
  security level | description
  ---------------|------------
  PUBLIC|Any anonymous user can read the data
  REGISTERED|Only known users can read the data
  CONTROLLED|Only specificly granted users can read the data

### How do I test a Beacon without having to go through complex security matters (yet)?

As a Beacon is designed to support data discoverability of controlled access datasets, it is recommended that synthetic or artificial data is used for testing and initial deployment of Beacon instances. The use of synthetic data for testing is important in that it ensures that the full functionality of a Beacon can be tested and / or demonstrated without risk of exposing data from individuals. In addition to testing or demonstrating a deployment, synthetic data should be used for development, for example adding new features. Additionally, these data can also be used to demonstrate the access levels and data governance procedures for loading data to a Beacon to build trust with data controllers or data access committees who may be considering loading data to a Beacon. An example dataset that contains chromosome specific vcf files is hosted at EGA under dataset accession EGAD00001006673. While this dataset requires a user to log in to get access, the EGA test user can access this dataset.

## Acknowledgements
### Beacon partners
In 2020, the GA4GH Beacon group started a set of meetings and interviews with GA4GH Driver Projects and with ELIXIR partners in order to determine the scope of the next generation Beacon. The goal was to be useful without breaking the simplicity that made Beacon version 1 successful.
Interviews were conducted with the following GA4GH Driver Projects:
* [Autism Speaks](https://www.autismspeaks.org/)
* [BRCA Exchange](https://brcaexchange.org/)
* [CanDIG](https://www.distributedgenomics.ca/)
* EGA, ENA, EVA
* [EuCanCancer](https://eucancan.com/)
* [European Joint Programme - Rare Diseases](https://www.ejprarediseases.org/)
* [H3Africa](https://h3africa.org/)
* GEM Japan
* Genomics England
* Matchmaker Exchange
* SVIP /SPHN
* VICC

Some ELIXIR partners were also interviewed, i.e. Café Variome, FPS, RD-Connect, CINECA, and Disgenet.
Among ELIXIR Spain TransBioNet and Bioinformatics in Barcelona members, a set of Catalan hospitals (e.g. Hospital Clinic) are exploring how to use Beacons inside their genomic diagnose teams and how to share the diagnoses between hospitals. 

### Beacon early implementers
At the time of submission at the end of 2021, five Beacons were already implemented in the Beacon [Service Registry](https://ga4gh-approval-service-registry-demo.ega-archive.org).
The "early implementers" actively participated in refining the Framework as they were responsible for spotting any issue they might encounter with the Framework or Model. 
* European Genome-Phenome Archive [EGA Beacon](https://ga4gh-approval-beacon.ega-archive.org)
* Progenetix' [Beacon+](https://progenetix.org/beaconplus-instances/beaconplus/)
* [Cafe Variome](https://beaconv2.cafevariome.org/form)
* Fundación Progreso y Salud's [Beacon v2 API](https://csvs-beacon.clinbioinfosspa.es/csvs/ga4ghbeacon/v2/api/)
* CNAG's [Beacon v2 API](https://playground.rd-connect.eu/beacon2/api)

&nbsp;

----

{% comment %}
################################################################################

	Below this will page excerpts for pages with the "index" category appear.

################################################################################
{% endcomment %}

{%- assign this_name = "index" -%}
{%- assign this_category = "index" -%}

{%- assign cat_posts = site.emptyArray -%}
{%- for post in site.documents -%}
  {%- if post.categories contains this_category -%}
    {%- assign cat_posts = cat_posts | push: post -%}
  {%- endif -%}
{%- endfor -%}

{%- assign cat_posts = cat_posts | sort: 'date' | reverse -%}

{%- comment -%}
  * special posts for prepending content to the listing pages
  * they are processed first, so separate loops are needed  
{%- endcomment -%}

{% comment %}
	Please keep this for an HTML break...
{% endcomment %}

{%- for post in cat_posts -%}
  {%- if post.tags contains '.prepend' -%}
<div style="margin-bottom: 20px;">
{{ post.content | markdownify }}
</div>
  {%- endif -%}
{%- endfor -%}

{%- comment -%}
  * no separate treatment of featured posts
{%- endcomment -%}

{%- for post in cat_posts -%}
  {% unless post.tags contains '.prepend' or post.tags contains '.append' %}
    {%- assign post_author = post.author | downcase -%}
    {%- assign excerpt_link = post.url | relative_url -%}
    {%- if post.excerpt_link contains '/' -%}
      {%- assign excerpt_link = post.excerpt_link -%}
    {%- endif -%}
<div class="excerpt">
<a href="{{ excerpt_link }}">{{ post.excerpt }}</a>
  <p class="footnote">
    {%- if post.author -%}{{ post.author | join: " | " }}&nbsp;{%- endif -%}
    {%- if post.date -%}{{ post.date | date: "%Y-%m-%d" }}: {% endif %}
 <a href="{{ excerpt_link }}">more ...</a>
  </p>
</div>
  {% endunless %}  
{%- endfor -%}

{%- for post in cat_posts -%}
  {%- if post.tags contains '.append' -%}
<div style="margin-top: 20px;">
{{ post.content | markdownify }}
</div>
  {%- endif -%}
{%- endfor -%}
