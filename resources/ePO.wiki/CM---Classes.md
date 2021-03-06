### Classes in the conceptual data model for the three use cases selected:  
#### General classes  

|Label|Definition|
|---|---|
|Address|A set of descriptors of a physical or digital location that provides information on how to reach the resource, e.g. the street address of an Agent https://www.w3.org/ns/locn#locn:Address|
|Agent|A resource that acts or has the power to act. Examples of Agent include person, organization, and software agent. http://dublincore.org/documents/dcmi-terms/#terms-Agent|
|Concept|An idea, a notion or unit of thought. https://www.w3.org/TR/skos-reference/#concepts|
|Document|A writing conveying information. https://www.merriam-webster.com/dictionary/document (2a)|
|Location|A spatial region or named place. http://dublincore.org/documents/dcmi-terms/#terms-Location|
|Organisation|Represents a collection of people organized together into a community or other social, commercial or political structure. The group has some common purpose or reason for existence which goes beyond the set of people belonging to it and can act as an Agent. Organizations are often decomposable into hierarchical structures. https://www.w3.org/TR/vocab-org/#class-organization|  

#### Classes in the conceptual data model  

|Label|Definition|
|---|---|  
|Buyer|The definition of the Buyer class and its subclasses are under discussion. Refer to https://github.com/eprocurementontology/eprocurementontology/issues/3. Subclass of Organisation, which is a subclass of Agent. Note that this class could be further detailed. Depending on further use cases, it may be necessary to define subclasses for specific types of Buyers. Three such subclasses are below: Contracting Authority and Public Undertaking and Other Contracting Entity.|
|Call For Tender|A Document that specifies the object of the procurement and any procurement criteria, the publication of which is the initiating step of a competitive tendering process in which qualified suppliers or contractors are invited to submit sealed bids for construction or for supply of specific and clearly defined goods or services during a specified timeframe. Subclass of Document. Note that this class could be further detailed. Depending on further use cases, it may be necessary to distinguish between Framework Agreements and Specific Contracts. This could be done by including a ???type??? property in the description of the Call For Tender or by defining subclasses. The relationship between Call For Tender and Lots needs to be further detailed.|
|Classification|A Concept that indicates a type of something within a particular classification scheme. The use of a controlled vocabulary is recommended as the classification system for public procurement (CPV) which standardises the references used by contracting authorities and entities to describe the subject of procurement contracts. Subclass of Concept.|
|Contract|A voluntary, deliberate, and legally binding agreement between two or more competent parties. Subclass of Document.|
|Contract Award Notice|A Document that announces the selection of a Tender that was submitted in response to a Call For Tender. Subclass of Document.|
|Contracting Authority|State, regional or local authorities, bodies governed by public law or associations formed by one or more such authorities or one or more such bodies governed by public law. (Source: Directive 2014/25/EU, art. 3.1) Subclass of Buyer.|
|Country|A political state or nation or its territory. The use of a controlled vocabulary is recommended. Subclass of Location.|
|Currency|A kind of money, e.g. Euros, The use of a controlled vocabulary is recommended. Subclass of Concept.|
|Economic Operator|An Agent, in the context of the e-procurement ontology, a natural or legal person, or public entity, or a group of such persons or entities, including temporary associations of undertakings, which offers the execution of works and/or a work, the supply of products or the provision of services on the market. http://eur-lex.europa.eu/legal-content/EN/TXT/?qid=1480931533173&uri=CELEX:32014L0023 Subclass of Agent.|
|Evidence|A proof of existence of an event, a characteristic or a transaction.|
|Invoice|A Document that demands Payment. Subclass of Document. Note: it may be necessary to define smaller parts of Invoices in cases where an invoice contains ???invoice lines??? related to specific items.|
|Monetary Value|An amount of money.|
|Other Contracting Entity|Entity other than Contracting Authority and Public Undertaking, but which operates on the basis of special or exclusive rights, granted for the exercise of one of the activities referred to in Annex II of Directive 2014/24/EU. (Source Directive 2014/23/EU, art. 7.1) Subclass of buyer|
|Payment|A transfer of money between Agents.|
|Procurement Criterion|A rule or principle used to judge, evaluate or assess something. http://joinup.ec.europa.eu/site/core_vocabularies/registry/corevoc/Criterion/. In the context of the e-procurement vocabulary, a requirement defined by a Buyer that needs to be satisfied in order for a Tender to be taken into consideration.|
|Procuring Entity|The entity managing the procurement, which may be different from the buyer who is paying / using the items being procured. http://standard.open-contracting.org/latest/en/schema/release Subclass of Organisation, which is a subclass of Agent.|
|Product Or Service Or Work|An object of procurement, being either a product that is supplied, a service that is provided or a work that is executed.|
|Public Undertaking|Any undertaking over which the contracting authorities may exercise, directly or indirectly, a dominant influence by virtue of their ownership thereof, their financial participation therein, or the rules which govern it. Subclass of Buyer.|
|Specification|A Document that describes the characteristics of something. Subclass of Document.|
|Tender|A Document whereby an Economic Operator (the tenderer) makes a formal offer (the Tender) to a Buyer to execute an order for the supply or purchase of goods, or for the execution of work, according to the terms of a proposed contract, in response to a Call For Tender. (Definition based on UBL  with changes to align with the terminology in the context of the e-procurement ontology). Subclass of Document.|

  
### Submit an issue:  
To propose a definition for one of the class, to propose a new class or to create any issue related to classes, please [click here](https://github.com/eprocurementontology/eprocurementontology/labels/CM%20-%20Classes) and then click on "New issue". Adapt the first column of the table proposed to follow the class template below:    

|Element|Description|
|---|---|
|Label|A short title of the class, e.g. ???Contract???|
|Definition|A clear and concise description of the characteristics and the function of the class.|  

Use the second column of the template as guidance to propose a definition.