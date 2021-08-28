Date: 04/02/2020 Discussion Point: Procurement Roles

The following proposal for Procurement Roles has been discussed by the working group:


![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/procurement_roles.png)

 

The proposal foresees instead of several properties within Agent, to have a Role class that is linked to Agent, and then the rest of classes (e.g. Buyer, Economic Operator, etc.) are types of roles (generalization property). 
The WG agreed the proposal the diagram will be updated and the name of the diagram in ePO will be altered from Agent to Procurement Role.

Date: 04/02/2020 and 06/02/2020 Discussion Point: Document Metadata

Everis presented its proposal about how to represent the IFLA LRM model in ePO and how it impacts the Documents diagram. The model presented (see below) was based on Enrico Francesconi’s presentation during the last F2F meeting on 10/10/2019 (for more information see the report of the F2F meeting):

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/document_metadata.png)
Everis explained had analysed the IFLA LRM and the IFLA FRBR models. After the comparison of both IFLA models everis concluded that the LRM is more useful for ePO since it has very good definitions and includes interesting elements that can be reused. 

Everis  highlighted the fact that the proposed model uses the three main entities of the IFLA model: Work, Expression, Manifestation and Item, and also takes into account two different vocabularies: DCAT and ADMS. 

Everis explained that ADMS and DCAT models are very useful for the description of DataSets. Everis used the occasion to introduce to the WG the ADMS – Asset Description Metadata Schema (https://joinup.ec.europa.eu/release/adms-ap-joinup-version/20) and DCAT vocabulary – Data Catalog Vocabulary (https://www.w3.org/TR/vocab-dcat-2/) which have been considered as inputs for the representation of Document in ePO. 

The ADMS is a specification created by a W3C working group and it is used for the description of reusable solutions (e.g. data models). DCAT is a vocabulary used to facilitate the interoperability between data catalogues. DCAT enables the description of datasets and data services in a catalogue. Everis indicates that ADMS is being evolved as well as DCAT. 

Everis explained that ADMS Vocabulary is derived from and reuses the DCAT Vocabulary. Everis indicated that if the ePO Documents are considered to be Datasets, there is the need to use DCAT for the representation of documents. In addition, ePO should take also into consideration what OP did for other projects like CELLAR where the IFLA model was used. 
Everis indicates that the ADMS is currently evolving under SEMIC (https://joinup.ec.europa.eu/solution/asset-description-metadata-schema-adms). Regarding the DCAT Vocabulary, W3C produced a new version which is a recommendation (https://www.w3.org/TR/vocab-dcat-2/).
After the explanation context, everis indicated that its proposal reusese the IFLA LRM model and extends it with the necessary classes. The idea is also to reuse the ADMS and DCAT. Everis presented to the WG a proposal model which reuses the 3 candidates, IFLA, ADMS, and DCAT:  

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/document_metadata_1.png)
The WG discussed the proposal and the main reactions were: 
-	The document concept cannot be aligned to models that are under evolution (ADMS and DCAT-AP). 
-	The Document model could reuse the new class dcat:Resource. 

After the discussion and reflection the WG agreed to work on the Document concept and not define assets for the time being. All properties that are considered to be part of the asset should for the time being be represented in the Document.  The discussion will be rediscussed when DCAT and ADMS are matured.


