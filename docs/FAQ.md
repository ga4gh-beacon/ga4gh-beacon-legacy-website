# Frequently Asked Questions

!!! Note "Citation"

    **Beacon v2 and Beacon Networks: a "lingua franca" for federated data discovery in biomedical genomics, and beyond.**
    Jordi Rambla, Michael Baudis, Tim Beck, Lauren A. Fromont, Arcadi Navarro, Manuel Rueda, Gary Saunders, Babita Singh, J.Dylan Spalding, Juha Tornroos,  Claudia Vasallo, Colin D.Veal, Anthony J.Brookes.  _Human Mutation_ (2022) [DOI](https://doi.org/10.1002/humu.24369).

??? faq "Is it `Beacon` or `beacon`?"

    The uppercase `Beacon` is used to label API, framework or protocol and their
    components - while lower case `beacons` are instances of these, _i.e._ individual
    resources using the protocol.
    
    ##### last change 2023-03-13 by Michael Baudis [:fontawesome-brands-github:](https://github.com/mbaudis)


??? faq "Security: What are the general security principles for Beacon?"

    An implementation of a Beacon must implement the Global Alliance for Genomics and Health ([GA4GH](https://www.ga4gh.org)) Beacon standard. The V2 standard has been approved by both the Regulatory and Ethics, and Data Security foundational workstreams.

    The Beacon uses a [3-tiered access model - anonymous, registered, and controlled access](http://docs.genomebeacons.org/security/):

    * A Beacon that supports anonymous access responds to queries irrespective of the source of the query.
    * For a Beacon to respond to a query at the registered tier, the user must identify themselves to the Beacon, for example by using an ELIXIR identity.
    * For a Beacon to respond to a controlled access query, the user must have applied for, and been granted access to, the Beacon (or data derived from one or more individuals within the Beacon) before sending the query. 

    Note that a Beacon may contain datasets (or collections of individuals) whose data is only accessible at specified tiers within the Beacon. This tiered access model allows the owner or controller of a Beacon to determine which responses are returned to whom depending on the query and the user who is making the request, for example to ensure the response respects the consent under which the data were collected. The ELIXIR Beacon network supports Beacons which respond at different tiers, for example only Beacons which have a response to anonymous queries need respond to an anonymous request. 

    As part of the ELIXIR 2019-21 Beacon Network Implementation Study deliverable [D3.3](https://docs.google.com/document/d/1q7XuUB-Z4A_DogWT1AVrvkp_qHWWtbbICxokHup_tts/edit) a document has been written to describe security best practice for users interested in deploying or running a Beacon or users who govern data hosted within a Beacon, and the requirements for adding the Beacon to the ELIXIR Beacon network. As the Beacon standard extends in V2 towards supporting phenotype and range queries, the tiered access model becomes more important to ensure the Beacon response is appropriate to the underlying data.

??? faq "Security: How is security actually implemented when I deploy a Beacon?"

    Security attributes are part of the Beacon v2 [Framework](https://github.com/ga4gh-beacon/beacon-v2/tree/main/framework). The file [`beaconConfiguration.json`](https://github.com/ga4gh-beacon/beacon-v2/blob/main/framework/json/configuration/beaconConfigurationSchema.json) defines the schema of the JSON file that includes core aspects of a Beacon instance configuration. Its third section, called **securityAttributes**, defines the security.

    Check out the **securityAttributes** section on the [Beacon Documentation website](http://docs.genomebeacons.org/framework/#the-beacon-configuration-file).

??? faq "Security: How do I test a Beacon without having to go through complex security matters (yet)?"

    As a Beacon is designed to support data discoverability of controlled access datasets, it is recommended that synthetic or artificial data is used for testing and initial deployment of Beacon instances. The use of synthetic data for testing is important in that it ensures that the full functionality of a Beacon can be tested and / or demonstrated without risk of exposing data from individuals. In addition to testing or demonstrating a deployment, synthetic data should be used for development, for example adding new features. Additionally, these data can also be used to demonstrate the access levels and data governance procedures for loading data to a Beacon to build trust with data controllers or data access committees who may be considering loading data to a Beacon. An example dataset that contains chromosome specific vcf files is hosted at EGA under dataset accession EGAD00001006673. While this dataset requires a user to log in to get access, the EGA test user can access this dataset.