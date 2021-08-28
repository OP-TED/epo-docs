The aim of this document is to define the methodology of the O3PO project about the implementation of the e-Procurement Ontology - conceptual model evolution.

The methodology is divided in three main phases: analysis, design and implementation. In order to get better results and work efficiently, we will work in parallel the three phases (see below: Figure 1 - ePO Methodology).

![Figure 1. ePO Methodology](https://github.com/eprocurementontology/eprocurementontology/blob/master/v2.0.0/05_Implementation/art/ePO%20Methodology.jpg)

From here on, in terms of developing the Ontology, our approach is that all Ontology elements are included in the value chain of e-Procurement, and therefore, we take into account all parts: from the e-Procurement processes to the Ontology, and from the Ontology to the Use Cases (and vice-versa).
In addition, it must be said that the methodology will be based on [CEN BII Workshop 3](http://cenbii.eu/deliverables/cen-wsbii-3/) which standardises e-Procurement processes. 

## 1. Analysis

This phase works in parallel with the design phase and includes two main activities: the identification of resources needed and the development of the Data Entry Dictionary (see in: [DED](https://github.com/eprocurementontology/eprocurementontology/blob/master/v2.0.0/02_IR_DED/eProcurement_glossary_and%20DED.xlsx)).

The first activity is based on the identification of all resources needed to carry out the different parts of the project. This resources are the following:
* The eProcurement Glossary: it will be used as an important input to create the DED;
* The eForms consultation: also used as an input to create the DED and its structure;
* eProcurement Ontology OP V.1: to analyse and compare it to other business terms used by other ontologies (OCDS and PPROC); 
* Experts: to gather knowledge from professionals experts in the field;
* Other related projects: ESPD, UBL Standards, CEN/TC 440, eSens, Oasis, and so on.

The second activity is based on the development and design of the Data Entry Dictionary. This document will be the result of a mapping between the Glossary Business Terms and the Ontology. There, the classes and the attributes will be identified together with the data types and its cardinality. 

## 2. Design

This phase works in parallel with the development of the DED and its implementation. This is so because at the same time we are discussing the construction of the dictionary and its entries, we design the [Conceptual Model](https://github.com/eprocurementontology/eprocurementontology/blob/master/v2.0.0/03_Analysis%20and%20design/EA-Conceptual%20Model/ePO-CM_v2.0.0.eap) in Enterprise Architect (EA). This tool will allow us to obtain a first version of this model: a graphic with all the classes, attributes, relations, and so on.

## 3. Implementation

As the analysis phase progresses together with the conceptual model, the ontology will be implemented with Protégé and afterwards to TTL to finally check it with Vocbench.
