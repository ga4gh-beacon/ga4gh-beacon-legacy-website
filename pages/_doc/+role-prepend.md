---
category:
  - role
tags:
  - .prepend
---

## Beacon framework and Beacon model

The GA4GH Beacon specification is composed by two parts:

* the Beacon Framework
* the Beacon Model

The Beacon [**Framework**](https://github.com/ga4gh-beacon/beacon-framework-v2) is the part that describes the overall structure of the API requests, responses, parameters, teh common components, etc. It may also be simply referred as the Framework.

The Beacon [**Model**](https://github.com/ga4gh-beacon/beacon-v2-Models#readme) contains the data structure (schemas) for our biological data. It describes the set of concepts included in a Beacon version (e.g. Beacon v2), like *individual* or *biosample*, as well as the relationships between them. It may also be simply referred as the Model.

The Framework could be considered the *syntax* and the Model as the *semantics*.

Here is a explanatory video on Beacon framework and model, mostly aimed at implementers. [Link to video from 01/07/2021](https://vimeo.com/577530572.)

If you are a **Beacon user** you might be more interested in the Beacon model. You can also consult the [user journey]() section. 
If you are a **Beacon (future) implementer** then you will be more interested in the Beacon framework. Make sure you take a look at the *read me* sections in both Github repos: [Framework](https://github.com/ga4gh-beacon/beacon-framework-v2) and [Model](https://github.com/ga4gh-beacon/beacon-v2-Models#readme), as well as the [steps to deploy a Beacon]().
