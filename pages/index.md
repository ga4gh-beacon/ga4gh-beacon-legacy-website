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


##  Why a Beacon?

<!--more-->

Personalized medicine allows combining clinical–pathological parameters with genomic profiling in order to create innovative diagnostic, prognostic and therapeutic strategies. Some medical fields (e.g., haematology, oncology, cardiovascular diseases) have been transformed by genome characterization. Development of infrastructures that can support collection and use of genomic information in the health-care community represents a research priority. However, for many institutions or even at the national level, this line of research is slowed down by difficulties in finding suitable data. In this context, it is instrumental to develop tools that allow for the discovery of genomic and health data, while ensuring maximum anonymisation and security. Beacon API enables the search for structural variants (e.g. deletions and duplications), and has been extended its functionalities to allow the discovery of information about individuals, biosamples, diseases, in addition to genomic variants. It is an extremely useful tool to boost personalized medicine advances in hospitals and research institutions.

##  What is Beacon?

Beacon is an API (sometimes extended with a [user interface](https://beacon-giab-test.ega-archive.org)) that allows for data discovery of genomic and phenoclinic data.

Originally, the Beacon protocol (versions 0 and 1) allowed researchers to get information about the presence/absence of a given, specific, genomic mutation in a set of data, from patients of a given disease or from the population in general (Figure 1). Examples can be found in the [ELIXIR Beacon network page](https://beacon-network.elixir-europe.org). 

<figure>
<img src="/assets/img/Beacon-v1.png" alt="Beacon v1"/>
</figure>
###### Figure 1. Schematic example of a Beacon query (up to version 1)


The version 2 of the Beacon protocol, to be submitted in the Fall 2021, is under development. It will include:
More informative queries, like filtering by gender or age;
An option to trigger the next step in the data access process, e.g. who to contact or which are the data use conditions;
An option to jump to another system where the data could be accessed, e.g. if the Beacon is internal to a hospital, to provide the Id of the EHR of the patients having the mutation of interest;
Annotations about the variants found, among which the expert/clinician conclusion about the pathogenicity of a given mutation in a given individual or its role in producing a given phenotype;
Information about cohorts.

<figure>
<img src="/assets/img/Beacon-graphics-v2-network-960x540.png" alt="Beacon v2 Network Specification"/>
</figure>
###### Figure 2. Schematic example of a Beacon query (version 2)

## Which data is required?

Clinical geneticists describe two scenarios for data use:

* *Variant information*: focuses on knowledge about a given mutation, the phenotypes it has been related to in the population, and its pathogenicity. It can be summarized as “community knowledge”.
* *Case level information*: focuses on what has been observed in specific individuals, family relationships and the observed phenotypes. It can be summarized as “specific cases”.

Both scenarios share common information and complement each other, as it is necessary to compare specific cases against the accumulated knowledge to confirm or challenge a potential diagnosis. Beacon v2 results of a deeper analysis of such scenarios, allowing a new draft of the model (i.e. a schema or data model) that could host both entities and data involved in the clinical genetics diagnose domain. 

## Beacon v2 scope
According to the clinical genomics requirements, the Beacon protocol has evolved to cover the different entities and details arising from them. The model is now in its draft 4. Check out the [readthedocs](https://beacon-schema-2.readthedocs.io/en/latest/) for Beacon v2 default schema.


*Beacon v2 logical model under development*

The model above includes the following entities:
* Dataset: groups variants or individuals (subjects) that have something in common. The relationship could be as weak as they are in the same repository or as strong as that they belong to the same study population.
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
