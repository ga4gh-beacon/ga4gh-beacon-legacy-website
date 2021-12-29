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

A Beacon is a simple genomics variant discovery tool by aggregating worldwide genomics dataset under one umbrella. The Beacon Project is developed under an initiative by Global Alliance for Genomics and Health (GA4GH) for the federated discovery of genomic data in biomedical research and clinical applications. One of the main bottlenecks in human genomics research is lack of data. Genomics data is identifiable and therefore needs to be protected, however, due to lack of data security infrastructure and good health data practices, it forces clinicians and researchers to not share their data at all, this further slows down the progress in research. In the time of personalised medicines, inclusive diagnostics, prognostic and therapeutic strategies, we simply cannot afford to keep the data locked in. The Beacon API aims to solve this problem through enabling the search of genomic variants and associated information without jeopardising the privacy of the dataset. This way, any hospital or research entity can choose to 'beaconize' their omics dataset without compromising the privacy or the ownership of the dataset. Therefore, helping the worldwide community of researchers and assisting science through the power of data.

##  What is Beacon?

Beacon is an API (sometimes extended with a [user interface](https://beacon-giab-test.ega-archive.org)) that allows for data discovery of genomic and phenoclinic data.

Originally, the Beacon protocol (versions 0 and 1) allowed researchers to get information about the presence/absence of a given, specific, genomic mutation in a set of data, from patients of a given disease or from the population in general (Figure 2). Examples can be found in the [ELIXIR Beacon network page](https://beacon-network.elixir-europe.org). 

<figure>
<img src="/assets/img/Beacon-v1.png" alt="Beacon v1"/>
</figure>
###### Figure 2. Schematic example of a Beacon query (up to version 1)
{:.no_toc}

The version 2 of the Beacon protocol, to be submitted in the Fall 2021, is under development. It will include:
* More informative queries, like filtering by gender or age;
* An option to trigger the next step in the data access process, e.g. who to contact or which are the data use conditions;
* An option to jump to another system where the data could be accessed, e.g. if the Beacon is for internal use of the hospital, to provide the Id of the EHR of the patients having the mutation of interest;
* Annotations about the variants found, among which the expert/clinician conclusion about the pathogenicity of a given mutation in a given individual or its role in producing a given phenotype;
* Information about cohorts.

<figure>
<img src="/assets/img/Beacon-graphics-v2-network-960x540.png" alt="Beacon v2 Network Specification"/>
</figure>
###### Figure 3. Schematic example of a Beacon query (version 2)
{:.no_toc}

## Which data is required?

Clinical geneticists describe two scenarios for data use:

* *Variant information*: focuses on knowledge about a given mutation, the phenotypes it has been related to in the population, and its pathogenicity. It can be summarized as “community knowledge”.
* *Case level information*: focuses on what has been observed in specific individuals, family relationships and the observed phenotypes. It can be summarized as “specific cases”.

Both scenarios share common information and complement each other, as it is necessary to compare specific cases against the accumulated knowledge to confirm or challenge a potential diagnosis. Beacon v2 results of a deeper analysis of such scenarios, allowing a new draft of the model (i.e. a schema or data model) that could host both entities and data involved in the clinical genetics diagnose domain. 

## Beacon v2 scope
According to the clinical genomics requirements, the Beacon protocol has evolved to cover the different entities and details arising from them. The model is now in its draft 4. Check out the [readthedocs](https://beacon-schema-2.readthedocs.io/en/latest/) for Beacon v2 default schema.


*Beacon v2 logical model under development*

The model above includes the following entities:
* Dataset: groups variants or individuals (subjects) that have something in common. The relationship could be as weak as they are in the same repository or as strong as they belong to the same study population.
* Cohorts: a set of characteristics describing a cohort, that is defined as a set of individuals that can belong to one or more Datasets
Variant: represents a unique genomic alteration using details such as its position in a genome and sequence alterations or its type, the transcriptional consequences, etc.
* Individual: describes individuals that are stored in the repository, including some clinical information like diseases, treatments, phenotypic features.
* Interactor: this is an organism/agent whose data is collected in association with a subject, but that it is not sequenced itself, e.g. the host of a pathogen.
* Biosample: describes samples taken from individuals, including details of procedures, dates and times.
* Experiment: includes details on the procedure used for sequencing a biosample.
* Analyses: contains details on the bioinformatic procedures for identifying variants in the results of a Run
* Variant in Sample: describes how a variant is observed in a given sample (or individual by abstraction) and if it is considered more or less relevant in diagnosis of a case.
* Variant Interpretation: includes annotations about the common understanding of the effect of a given variant in a given phenotype
* The model above represents an entity logical model and it is not an example of a database implementation for Beacon v2. The relationships in the model are the ones that would be used in the Beacon response. Different physical implementations will be compatible with this Beacon v2 entity logical model. 

## Beacon v2 security

An implementation of a Beacon must implement the Global Alliance for Genomics and Health ([GA4GH](https://www.ga4gh.org)) Beacon standard. The V2 standard is currently (January 2022) undertaking the GA4GH approval process, which means it must be approved by both the Regulatory and Ethics, and Data Security foundational workstreams.

### What are the general security principles for Beacon?
The Beacon uses a 3-tiered access model - anonymous, registered, and controlled access (see the [EGA security webpage](https://ega-archive.org/files/European_Genome_phenome_Archive_Security_Overview.pdf) for extenisve information). A Beacon that supports anonymous access responds to queries irrespective of the source of the query. For a Beacon to respond to a query at the registered tier, the user must identify themselves to the Beacon, for example by using an ELIXIR identity. For a Beacon to respond to a controlled access query, the user must have applied for, and been granted access to, the Beacon (or data derived from one or more individuals within the Beacon) before sending the query. Note that a Beacon may contain datasets (or collections of individuals) whose data is only accessible at specified tiers within the Beacon. This tiered access model allows the owner or controller of a Beacon to determine which responses are returned to whom depending on the query and the user who is making the request, for example to ensure the response respects the consent under which the data were collected. The ELIXIR Beacon network supports Beacons which respond at different tiers, for example only Beacons which have a response to anonymous queries need respond to an anonymous request. As part of the ELIXIR 2019-21 Beacon Network Implementation Study deliverable [D3.3](https://docs.google.com/document/d/1q7XuUB-Z4A_DogWT1AVrvkp_qHWWtbbICxokHup_tts/edit) a document has been written to describe security best practice for users interested in deploying or running a Beacon or users who govern data hosted within a Beacon, and the requirements for adding the Beacon to the ELIXIR Beacon network. As the Beacon standard extends in V2 towards supporting phenotype and range queries, the tiered access model becomes more important to ensure the Beacon response is appropriate to the underlying data.

### How is security actually implemented when I deploy a Beacon?
Security attributes are part of the Beacon v2 [Framework](https://github.com/ga4gh-beacon/beacon-framework-v2). The file `/configuration/beaconConfiguration.json` defines the schema of the Json file that includes core aspects of a Beacon instance configuration: the third section defines the security:

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

## Acknowledgements: Beacon partners
The GA4GH Beacon group started a set of meetings and interviews with GA4GH Driver Projects and with ELIXIR partners in order to determine the scope of the next generation Beacon. The goal was to be useful without breaking the simplicity that made Beacon version 1 successful.
Interviews were conducted with the following GA4GH Driver Projects:
* Autism Speaks
* BRCA Exchange
* CanDIG
* EGA, ENA, EVA
* EuCanCancer
* European Joint Programme - Rare Diseases
* H3Africa
* GEM Japan
* Genomics England
* Matchmaker Exchange
* SVIP /SPHN
* VICC

Some ELIXIR partners were also interviewed, i.e. Café Variome, FPS, RD-Connect, CINECA, and Disgenet.
Among ELIXIR Spain TransBioNet and Bioinformatics in Barcelona members, a set of Catalan hospitals (e.g. Hospital Clinic) are exploring how to use Beacons inside their genomic diagnose teams and how to share the diagnoses between hospitals. 


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
