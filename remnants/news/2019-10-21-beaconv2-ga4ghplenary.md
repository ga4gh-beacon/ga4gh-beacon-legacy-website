---
title: 'GA4GH 2019 — Beacon v2: Towards a modular Beacon protocol empowering clinical use'
template: post.html
author: 
  - "@mbaudis"
  - "@laurenfromont"
date: 2019-10-21
---

#### Poster abstract for the GA4GH Plenary, Boston 2019

The Beacon Project is a Global Alliance for Genomics and Health (GA4GH) 
initiative for the federated discovery of genomic data in biomedical research 
and clinical applications. Originally implemented as a tool reporting the 
existence of Single Nucleotide Polymorphisms (SNP) in aggregated genomic data 
collections, the protocol has evolved towards more complex applications with 
increased functionality. Implementations of the current Beacon API enable the 
search for structural variants (e.g. deletions and duplications) and return 
richer responses (e.g. variant metadata and call counts).

<!--more-->

With growing interest from the community in the implementation of the Beacon 
protocol into resources and workflows, the next major release 2.0 will introduce 
new features which were considered important by the community: 
Queries by type: The Beacon will define different sets of attributes for 
requests and responses depending on the type of query; e.g. a specific request 
and response to return variants within a region in a chromosome 
(wildcard/region queries) or to get a list of samples related to a phenotype, 
provided the required authentication or authorization (see Access levels below).
Filters: The next major version of Beacon will include a feature to filter the 
matched variants by additional conditions on e.g. sample specific or technical information (e.g., associated phenotypes, assay type). Here the utilisation of ontologies will be encouraged, with alternative use of custom vocabularies for local applications.
Schema versions: Given that new query types will return differing responses 
(e.g., variant annotations, pointers to data delivery protocols), a mechanism will be implemented to reference internal or external data schemas that describe the content of the Beacon response (e.g., returning variant information using “GA4GH Variant Representation v1”).
Access levels: Beacon administrators will be able to specify the level of access 
(public, registered or controlled) for each field in the Beacon response and 
even refine this definition by dataset, if these diverge from the default 
values. This is applicable also to the query types supported (genomic variants, sample lists, etc...)

##### Author List:

* Sabela de la Torre. Centre for Genomic Regulation (CRG), Barcelona Institute of Science and Technology (BIST), Barcelona, Spain.
* Frederic Haziza. Centre for Genomic Regulation (CRG), Barcelona Institute of Science and Technology (BIST), Barcelona, Spain.
* Marta Ferri. Centre for Genomic Regulation (CRG), Barcelona Institute of Science and Technology (BIST), Barcelona, Spain.
* Michael Baudis. Institute of Molecular Life Sciences (IMLS) and Swiss Institute of Bioinformatics (SIB), University of Zurich
* Joaquin Dopazo, Clinical Bioinformatics Area, Fundacion Progreso y Salud, Hospital Virgen del Rocio, Sevilla, Spain 
* Niclas Jareborg. National Bioinformatics Infrastructure Sweden / ELIXIR-SE
* Gary Saunders, ELIXIR Hub, Wellcome Genome Campus, Cambridge, CB10 1SD, UK.
* Dylan Spalding, European Molecular Biology Laboratory, European Bioinformatics Institute (EMBL-EBI), Wellcome Genome Campus, Hinxton, Cambridge CB10 1SD, UK
* Arcadi Navarro. Universitat Pompeu Fabra and Centre for Genomic Regulation (CRG), Barcelona Institute of Science and Technology (BIST), Barcelona, Spain.
* Juha Tornroos, CSC - IT Center for Science Ltd
* Jordi Rambla. Centre for Genomic Regulation (CRG), Barcelona Institute of Science and Technology (BIST), Barcelona, Spain.
