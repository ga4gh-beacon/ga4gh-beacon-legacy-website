---
category:
  - role
tags:
  - .prepend
---

## Beacon framework and Beacon model

Beacon is a protocol that defines an open standard for genomics data discovery. The protocol consists of a **framework** and a **model** that follow the **OpenAPI Specification** (OAS). The OAS defines a standard, language-agnostic interface that is used by developers to implement **REST API**s. The framework contains the format for requests and responses, whereas the model contains the data structure (schemas) for our biological data. The REST API is connected with an internal database (i.e., each beacon center has its own database), on which the actual biological data is stored.

Here is a explanatory video on Beacon framework and model, mostly aimed at implementers. [Link to video from 01/07/2021](https://vimeo.com/577530572.)

If you are a [**Beacon user**]() you might be more interested in the Beacon model. You can also consult the [user journey]() section. 
If you are a [**Beacon (future) implementer**]() then you will be more interested in the Beacon framework. Make sure you take a look at the [steps to deploy a Beacon]().
