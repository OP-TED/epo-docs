### Additional entities and definitions from external ontologies/vocabularies:  

### Tender:  
|Information requirement|Definition|URI|
|---|---|---|  
|Call For Tender|UBL defines the concept call for tender as a document used by a contracting party to define a procurement project to buy goods, services, or works during a specified period.|http://docs.oasis-open.org/ubl/os-UBL-2.1/UBL-2.1.html#T-CALL-FOR-TENDERS|
|Tender|UBL defines the class tender as "A document whereby an economic operator (the tenderer) makes a formal offer (the tender) to a contracting authority to execute an order for the supply or purchase of goods, or for the execution of work, according to the terms of a proposed contract."|http://docs.oasis-open.org/ubl/os-UBL-2.1/UBL-2.1.html|
|Tender|In Open Contracting Data Standard there exists the concept of tender which includes details of the announcement that an organization intends to source some particular goods, works or services, and to establish one or more contract(s) for these.|http://standard.open-contracting.org/latest/en/schema/reference/#tender|
|Tender|The Open Contracting Data Standard defines the class tender. A tender "includes details of the announcement that an organization intends to source some particular goods, works or services, and to establish one or more contract(s) for these. It may contain details of a forthcoming process to receive and evaluate proposals to supply these goods and services, and may also be used to record details of a completed tender process, including details of bids received."|http://standard.open-contracting.org/latest/en/schema/reference/|  

### Criterion & Evidence:  
|Information requirement|Definition|URI|
|---|---|---|
|Criterion|The CCCEV defines the class criterion as "A class to associate a condition that the economic has to fulfil in order to not be excluded and be selected as a candidate for awarding in a procurement procedure"|https://joinup.ec.europa.eu/asset/criterion_evidence_cv/asset_release/core-criterion-and-core-evidence-vocabulary-v100#download-links|
|Selection Criterion|In the Linked Open Economy Ontology, the class selection criterion represents the Criteria that a Contract has been selected.|https://github.com/YourDataStories/ontology/blob/master/Overall%20model/YDS%20model.owl|
|Requirement Group|The CCCEV  defines the class requirement group as "A group of requirements with a specific structure relating to one Criterion"|https://joinup.ec.europa.eu/asset/criterion_evidence_cv/asset_release/core-criterion-and-core-evidence-vocabulary-v100#download-links|
|Requirement|The CCCEV  defines the class requirement as "A class to associate a specific requirement that must be fulfilled through a response by the Economic Operator (EO)"|https://joinup.ec.europa.eu/asset/criterion_evidence_cv/asset_release/core-criterion-and-core-evidence-vocabulary-v100#download-links|
|Tenderers Requirements|The Public Procurement Ontology defines the class tenderers requirements (e.g. required classification or financial capability).|http://purl.org/procurement/public-contracts#AwardCriterion|
|Award Criteria|The Open Contracting Data Standard specifies the property award criteria defined as criteria for the procurement, using the award criteria codelist.|http://standard.open-contracting.org/latest/en/schema/reference/|
|Award Criteria Combination|The Public Procurement Ontology defines the class award criteria combination as "a class for description of criteria combination used for tender evaluation."|http://purl.org/procurement/public-contracts#AwardCriterion|
|Subjective Award Criterion|The Public Procurement Ontology defines the class subjective award criterion. "Class used to describe criteria that depend on a subjective opinion."|http://purl.org/procurement/public-contracts#AwardCriterion|
|Objective Award Criterion|The Public Procurement Ontology defines the class subjective award criterion. "Class describing criteria that depend on a value judgement."|http://purl.org/procurement/public-contracts#AwardCriterion|
|Eligibility Criteria|The Open Contracting Data Standard specifies the property eligibility criteria defined as "A description of any eligibility criteria for potential suppliers."|http://standard.open-contracting.org/latest/en/schema/reference/|
|Tender Requirement|In the Public Procurement ontology there exists the concept of tender requirements described as the requirements needed to submit a tender (e.g. tender document needs).|http://contsem.unizar.es/def/sector-publico/pproc#tenderRequirements|
|Evidence|The CCCEV  defines the class evidence as"A class used by the economic operator to refer to a trusted source of proofs that supports the stated response to a criterion requirement"|https://joinup.ec.europa.eu/asset/criterion_evidence_cv/asset_release/core-criterion-and-core-evidence-vocabulary-v100#download-links|

### Contract & Contract award notice:
|Information requirement|Definition|URI|
|---|---|---|
|Contract Award Notice|In LOTED2 there is a property to specify the document through which is communicated the outcome of the tender, i.e. the name of the successful tenderer.|http://loted.eu/ontology|
|Contract Award Notice|In UBL there exists the concept of contract award notice: “A document published by a Contracting Party to announce the awarding of a procurement project.”|http://docs.oasis-open.org/ubl/os-UBL-2.1/xsd/maindoc/UBL-ContractAwardNotice-2.1.xsd|
|Contract Notice|In UBL, a contract notice is defined as a document used by a contracting party to announce a project to buy goods, services or works.|http://docs.oasis-open.org/ubl/os-UBL-2.1/UBL-2.1.html#S-CONTRACT-INFORMATION-NOTIFICATION|
|Contract|The Public Procurement Ontology specifies a class contract. An instance of this class is an abstract information entity about a public contract. It consists of all currently known information about a contract, e.g., a contracting authority, services or supplies which shall be purchased, and contract conditions (e.g. important dates, expected price, etc.). It also informs about tenders received from particular bidders and about an accepted tender. If the contract has already been realized it also informs about an actual price of realization, etc.|http://contsem.unizar.es/def/sector-publico/pproc.html|

### Buyer:
|Information requirement|Definition|URI|
|---|---|---|
|Contracting Bodies|In Public Procurement Ontology there exist the concept of Contract Bodies to describe the bodies related to the contract.|http://contsem.unizar.es/def/sector-publico/pproc.html#ContractBodies |
|Public Authority|The LOTED ontology has a class to specify public authority. "Any authority of a State. A public authority is a type of public body, i.e. is a public body of a State apparatus, either at central and local level."|http://loted.eu/ontology|
|Public Authority|The Open Contracting data Standard specifies a class for value. "Financial values should always be published with a currency attached."|http://standard.open-contracting.org/latest/en/schema/reference/|
|Contracting Entity|In the LOTED ontology, a Contracting entity means the role played by an entity operating in utilities in the context of any procurement competitive process.|http://loted.eu/ontology|
|Contracting Authority|In the LOTED ontology, a Contracting authorities means the role played by entity operating in ordinary sectors in the context of any procurement competitive process.|http://loted.eu/ontology|
|Contracting Party|The ESPD defines Contracting Party has "A class representing the contracting authority or contracting entity who is buying supplies, services or public works using a tendering procedure as described in the applicable directive (Directives 2014/24/EU, 2014/25/EU)"|https://espd.github.io/ESPD-EDM/|

### Seller:
|Information requirement|Definition|URI|
|---|---|---|
|Economic Operator|The LOTED ontology specifies a class economic operator. The EU procurements Directives define the term “economic operator” as the term that covers equally the concepts of “contractor”, “supplier” and “service provider”. Each of these terms mean any natural or legal person or public entity or group of such persons and/or bodies which offers on the market, respectively, the execution of works and/or a work, products or services. Thus, in the context of European public procurements, we can argue that “Economic operator” is the role played by any natural or legal person that offers in the market some gr:Offering.|http://loted.eu/ontology|
|Economic Operator Party|The ESPD defines a class economic operator party as "A class representing any natural or legal person or public entity or group of such persons and/or entities, including any temporary association of undertakings, which offers the execution of works and/or a work, the supply of products or the provision of services on the market in the context for which the tender where the ESPDResponse is submitted"|https://espd.github.io/ESPD-EDM/#contracting-party|
|Business Entity|The Good Relations ontology specifies a class business entity. An instance of this class represents the legal agent making (or seeking) a particular offering.|http://www.heppnetz.de/ontologies/goodrelations/v1#BusinessEntity|
|Eligible Economic Operator|In the LOTED ontology, the class eligible economic operator is defined as "Any agent that plays the role of economic operator in the market and satisfies the eligibility criteria for participating in public contracts (artt. 45-50 Directive 2004/18/ec), as for example the absence of conviction by final judgement for participation in criminal organisation, fraud, corruption, money laundering, etc."|http://loted.eu/ontology|
|Candidate|The LOTED ontology defines a class candidate as "any natural or legal person acting in the market as economic operator (i.e. a BusinessEntity) which has sought an invitation to take part in a restricted or negotiated procedure or in a competitive dialogue."|http://loted.eu/ontology|
|Tenderer|The LOTED ontology specifies a class tenderer. Any natural or legal person which plays the role of economic operator in the market and has submitted a tender bid for a public contract|http://loted.eu/ontology|

### Amount & payment:
|Information requirement|Definition|URI|
|---|---|---|
|Gross Amount|The Linked Open Economy Ontology has a property to specify the amount paid, inclusive of any tax (whether reclaimable or not).|https://github.com/YourDataStories/ontology/blob/master/Overall%20model/YDS%20model.owl |
|Net Amount|The Linked Open Economy Ontology has a property to specify the net amount of the payment. This is the effective cost to the payer after any reclaimable tax has been deducted.|https://github.com/YourDataStories/ontology/blob/master/Overall%20model/YDS%20model.owl|
|Estimated Value Of Contract|The LOTED ontology has a class to specify the estimated value of contract. The estimated value of public contract exluding VAT. The main difference between this class and the gr: PriceSpecification, is that in the case of a public contract, the price will be determined at the end of the tender (i.e. race).|http://loted.eu/ontology|
|Price Specification|LOTED ontology has a superclass of all price specifications.|http://loted.eu/ontology|
|Payment|The Payment Ontology has a class to specify a payment to a supplier for some goods or services, may correspond to one or more expenditure lines|https://data.gov.uk/resources/payments/reference#ref_payment_Payment|
|Remittance Advice|UBL specifies a class remittance advice as "a document that specifies details of an actual payment."|http://docs.oasis-open.org/ubl/os-UBL-2.1/UBL-2.1.html|
|Has Currency Value|The Good Relations ontology has a property to specify an amount of money specified for a budget or a payment or a public service or a product.|http://www.heppnetz.de/ontologies/goodrelations/v1.html#hasCurrencyValue|

### Product & service:
|Information requirement|Definition|URI|
|---|---|---|
|Product Or Service|In the LOTED ontology, the class product or service is defined as "the superclass of all classes describing products or services types, either by nature or purpose. Examples for such subclasses are "TV set", "vacuum cleaner", etc. An instance of this class can be either an actual product or service (gr:Individual), a placeholder instance for unknown instances of a mass-produced commodity (gr:SomeItems), or a model / prototype specification (gr:ProductOrServiceModel). When in doubt, use gr:SomeItems."|http://loted.eu/ontology|
|Item|In the Open Contracting Data Standard the exists the concept of item to indicate good/services.|http://standard.open-contracting.org/latest/en/schema/reference/|
|Activity|Loted 2 Ontology has a class to describe activities carried out by organizations or individuals.|http://loted.eu/ontology|
|has Activity|Loted2 Ontology has a relation to describe The activity carried out by a person or an organisation.|http://loted.eu/ontology|

### Country:
|Information requirement|Definition|URI|
|---|---|---|
|Country|The ESPD has a property to specify the country of the contracting body (subclass of ContractingParty): “The country of the contracting body.”|https://espd.github.io/ESPD-EDM/|
|Country|The Linked Open Economy ontology has a class to specify the country. This class represents countries.|https://github.com/YourDataStories/ontology/blob/master/Overall%20model/YDS%20model.owl|
|Country|The LOTED ontology has a class to specify the country. Country is a region legally identified as a distinct entity in political geography (Source: Wikipedia).|http://loted.eu/ontology|

### Tax:
|Information requirement|Definition|URI|
|---|---|---|
|Tax Total|UBL describes the Total amount of a specific type of tax.|http://docs.oasis-open.org/ubl/os-UBL-2.1/UBL-2.1.html|
|value Added Tax Included|The Linked Open Economy Ontology has a property to specify whether VAT is included in an amount.|https://github.com/YourDataStories/ontology/blob/master/Overall%20model/YDS%20model.owl|
|value Added Tax Included|The Good Relations ontology has a property to specify whether VAT is included in an amount.|http://www.heppnetz.de/ontologies/goodrelations/v1#valueAddedTaxIncluded|
|vatID|The Good Relations ontology has a property to specify the VAT id of the agent.|http://www.heppnetz.de/ontologies/goodrelations/v1.html#vatID|
|taxID|The Good Relations ontology has a class to specify the Tax / Fiscal ID of the gr:BusinessEntity|http://www.heppnetz.de/ontologies/goodrelations/v1#taxID|

### Jurisdiction:
|Information requirement|Definition|URI|
|---|---|---|
|Jurisdiction|Dublin Core has a class to specify the extent or range of judicial, law enforcement, or other authority.|http://dublincore.org/documents/dcmi-terms/#terms-Jurisdiction |

  
### Submit an issue:  
To propose a definition for one of the class or property, or to create any issue related to classes, please [click here](https://github.com/eprocurementontology/eprocurementontology/labels/CM%20-%20Classes) and then click on "New issue". 