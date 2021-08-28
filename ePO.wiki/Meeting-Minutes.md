Please find below the minutes from 10 June 2021

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Katia Infante (ANAC), Hilde Kjolset (dfø), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Thor Steiner Møller (dfø), Natalie Muric (OP) and Giampaolo Sellitto (ANAC).

The meeting on 8 June 2021 was cancelled.

**Topic of discussion: Value**

Natalie presents a way of analysing the business terms and the WG agrees to adopt it. 
In the same document **here** you can find the discussion and decisions concerning "Value" held during the meeting.


The WG raises a question to eForms : Does BT-157 really concern to Group of Lots or Lots within a FrameworkAgreement? ‘Group of Lots’ is not mentioned in the Directives 2014/24 and 2014/25.


------
Please find below the minutes from 03 June 2021

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Hilde Kjolset (dfø), Giorgia Lodi (ISTC-CNR), Thor Steiner Møller (dfø), Natalie Muric (OP) and Giampaolo Sellitto (ANAC).

**Topic of discussion: Check Summary from 01 June 2021 and update decisions**

The Contract has no relation with Value in 2.0.2 but in 2.0.1

Proposal: rename ‘Value’ to ‘MonetaryValue’ in the new version of the Ontology (this new version will incorporate updates to definitions and predicates with regard to 2.0.1 and will add certain features from 2.0.2). We have to take into consideration this change for all mappings, such as ANAC Data, Consip Data and TED Data.

**Maximum and Minimum** were proposed to be used as predicates in 2.0.1 and 2.0.2. 

The predicate ‘hasAwardEstimatedValue’ cardinality should be changed to ‘0 .. *’

We have to identify all ‘MonetaryValue’ in the model to link it to other classes.

The following point was brought up: If there is an AwardedValue for the FrameworkAgreement and an AwardedValue for the Contract. Is there not a contradiction due to the fact that the FrameworkAgreement is a Contract?

FrameworkAgreement: either has no value but the value is for the contracts derived of it or you consider the total value of the FrameworkAgreement or you end up with a double value.

A comparison of these concepts in the model and the Business Terms in eForms and current forms need to be drawn up to check and ensure that the WG creates a model that reflects the use cases of both, current forms and eForms.

**Topic of discussion: Amount**

Probably we can eliminate the class Amount by inserting in the MonetaryValue an amount:numeric and currency:skos. We need to check if the same can be done for Amount and Quantity.

In the TED mappings the data is mapped to ‘ccts’ and not ‘epo’ as per the OWL file.

Checking notice 2020/S 243-602968 it was noted that the minimum and maximum offer is used which is different to the maximum and minimum value of the contract and should probably be associated to the tender as shown in the model created in the last meeting.

**Topic of discussion: Plans for the near future**

* Apply the Reification on the whole model.

* Finalize eOrdering and eCatalogue

* Add the ESPD to the Ontology once an ESPD UML data model is available.

* Ensure there is placeholder in the Ontology conceptual model for indicating data during the contract’s life cycle.



----------------------------------

Please find below the minutes from 01 June 2021 

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Hilde Kjolset (dfø), Giorgia Lodi (ISTC-CNR), Thor Steiner Møller (dfø), Natalie Muric (OP) and Giampaolo Sellitto (ANAC).

**Topic of discussion: Class epo:Value**

The following [diagram](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/Diagramme-epovalue.png) was presented for discussion

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/Diagramme-epovalue.png)

It seems weird that the contract has no value.

We should consider 'hasEstimatedValue' = 1

The predicate 'hasAwardedEstimatedValue' has cardinality '0..1', which is replaced with '1'.

In this predicate 'hasAwarded' means the award decision has been taken.

In the Italian model each lot can have more than one award decision with different contractors and different awarded value.

Giorgia will check the use of property chains in OWL to be defined in case of ego for the properties Lot isAwardedTo Tender, Tender hasFinanacialOfferValue, Value and Lot hasAwardedValue Value.

Cardinalities are not in scope in this case. But Giorgia will check them as well.

We could also replace ‘Value’ with ‘MonetaryValue’. This will have consequences in the whole model. For example: hasAwardedValue should be replaced with hasAwardedMonetaryValue. We have to be careful and check if Amount is used in other places.

**Topic of discussion: Class epo:Ammount**

epo:OverallAmont could be replaced with ‘TotalAmount’ but we need to check the history of this name in the next meeting.

Issue: the attributes have no definition.

This discussion will continue on Thursday 03 June 2021

-------------------------------------

Please find below the minutes from 27 May 2021 

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Hilde Kjolset (dfø), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP) and Giampaolo Sellitto (ANAC).

**Topic of discussion: Definitions – predicates**

The following relations were discussed and compared with the html conventions to see if this work will correct the inconsistencies:

* Subject: ContractModificationNotice

  **Predicate**: ‘modifies’ is replaced with ‘announcesModification’

  Object: Contract

* Subject: Procedure

  **Predicate**: uses

  Object: AccessTerm

  Inverse: isSubjectTo

* Subject: PlannedProcurementPart

  **Predicate**: uses

  Object: Channel

  This relation is deleted as it is not required in the mapping.

* Subject: FrameworkAgreementTechnique

  **Predicate**: uses

  Object: EAuctionTechnique

  This relation is deleted as it is not required in the mapping. It is not clear if FrameworkAgreement or the FrameworkAgreementTechnique uses the eAuctionTechnique.

* Subject: Procedure

  **Predicate**: uses

  Object: ExclusionGround

  The CCCEV has to be revisit as this relation needs to be changed. Lot should specify the procurement criterion which should in turn be related to the CCCEV.

* Subject: LotGroup

  **Predicate**: uses

  Object: ‘FrameworkAgreementTechnique’ replaced with ‘Technique’ as FrameworkAgreementTechnique is a Technique

  Definition: Relation indicating that a lot or a grouplot uses a technique

  Inverse: is UsedBy

  This needs to be checked in more detail.

* Subject: Lot

  **Predicate**: uses

  Object: Technique


  Some definitions have been added to the relations discussed on 18 and 25 May. The minutes have been updated.

-------

Please find below the minutes from 25 May 2021 

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Hilde Kjolset (dfø), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP) and Giampaolo Sellitto (ANAC).

Due to unavailability of a part of the WG members the meeting on 20 May 2021 was cancelled.


**Topic of discussion: SPARQL Queries analysis**

* Possible error detected: superfluous 'P' HTML element in the queries. This is not a real error as it was requested to be added to the text in order to separate the sentences with paragraphs.

* Link: if we have the Procedure ID it should not be a problem to launch a query to map TED data with the National ID for that procedure. Queries will have to be adapted and finetuned to meet Procedure without corresponding ID.

* epo:identifierValue should be epo:hasIdentifierValue

* epo:isResponsiblityOf should be isResponsibilityOf

* How could we detect the possible spelling mistakes in the mapping in order to correct them to run the SPARQL queries. Maybe with SHACL Shapes?

**Action Points**

* Look into ways of treating paragraphs in pdf
* epo:insert verbs infront of attributes instead of using has by default


**Topic of discussion: Definitions – predicates**

The following relations were discussed and compared with the html conventions to see if this work will correct the inconsistencies:

* Subject: AwardDecision

  **Predicate**: refersTo

  Object: Lot, LotGroup

AwardDecision is a Document. The WG checks the reification. It is decided to keep it as it is as it will be used for version 2.0.1
 
* Subject: Contract

  **Predicate**: refersTo

  Object: Lot

Contract is a Document. The WG decides that is probably should follow the reification. To be discussed

* Subject: Contract

  **Predicate**: refersTo

  Object: Tender

  Definition: Realtion indicating a document mentions another document.

Contract is a Document. Tender is a Document. 

* Subject: ContractModificationNotice

  **Predicate**: ‘refersTo’ replaced with ‘Modifies’

  Object: ContractAwardNotice

  Definition: Realtion indicatin a ContractModificationNotice announces a modification of a contract.

ContractModificationNotice is a Document. ContractAwardNotice is a Document. 

* Subject: PlannedProcurementPart

  **Predicate**: refersTo

  Object: Document

To be checked if this relation can be deleted when doing a new mapping.

* Subject: ‘TenderLot’ replaced with ‘Tender’

  **Predicate**: ‘refersTo’ replaced with ‘specifiesItem’ and this replaced with 'itemises'

  Object: Item

  Definition: Relation indicating a tender or a lot details an item

  Inverse: itemItemisedBy

  Definition: Relation indicating an item is detailes in a tender or lot

* Subject: Lot

  **Predicate**: ‘refersTo’ replaced with ‘specifiesItem’ and this replaced with 'itemises'

  Object: Item

  Definition: Relation indicating a tender or lot details an item

  Inverse: itemItemisedBy

  Definition: Relation indicating an item is detailes in a tender or lot

* Subject: Lot

  **Predicate**: ‘refersTo’ replaced with ‘isDerivedFrom’

  Object: PlannedProcurementPart

  Definition: relation indicating from where the lot stems

  Inverse: becomes

  Definition: Relation indicating a PlannedProcurementPlan becomes a lot or a procedure

* Subject: Document

  **Predicate**: relatesTo

  Object: Procedure

  Definition: Relation indicating a document used in the context of a procedure

* Subject: TenderLot

  **Predicate**: 'relatesTo' replaced with 'isSubmittedFor'

  Object: Lot

Definition: Relation indicating a TenderLot is submitted for a lot

* Subject: Lot

  **Predicate**: specifies

  Object: 'SelectionCriterion' replaced with 'ProcedureCriterion'

* Subject: Procedure

  **Predicate**: isComposedOf

  Object: Lot

-----------------------------

Please find below the minutes from 18 May 2021 

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Natalie Muric (OP) and Giampaolo Sellitto (ANAC).

**Topic of discussion: Relation subject-object - check definitions**

Before discussing the relations subject-object and the predicates, the WG redefines the following:

* FrameworkAgreementTechnique

  Definition: Technique that establishes the terms governing contracts to be awarded during a given period, in particular with regards to price and, where appropriate, the quantity envisaged.

  The technique is prepared during the procedure and it becomes active when the contract is signed.

* FrameworkAgreement

  Definition: An agreement between one or more contracting authorities and one or more economic operators.

**Topic of discussion: Definitions - predicates**

The following relations were discussed and compared with the html conventions to see if this work will correct the inconsistencies:

* Subject: AwardDecision

  **Predicate**: isReferredByA

  Object: Contract

  To potencially be removed if not used in mappings 5it causes no problem in the rangedomain scope).

* Subject: Lot

  **Predicate**: isReferredByA

  Object: Contract

* Subject: Subcontract

  **Predicate**: isReferredToIn

  Object: AwardDecision

  This relation is removed. However the WG decides to look later how to redo the mapping maybe as statistical information or ‘subcontracting’

* Subject: AwardDecision

  **Predicate**: isReferredToIn

  Object: Subcontract

  This relation is removed. 

* Subject: Lot

  **Predicate**: isReferredToIn

  Object: ProcurementDocument

  Definition: Relation indicating that the Lot is referenced in the ProcurementDocument.

* Subject: Lot

  **Predicate**: isSpecifiedIn

  Object: Procedure

  Definition: Relation indicating that the Lot is referenced in the Procedure.

* Subject: StrategicProcurement

  **Predicate**: isSpecifiedIn

  Object: ResourceElement

  This relation is removed.


* Subject: Document

  **Predicate**: isSubmittedBy

  Object: Agent

  This relation is removed.

* Subject: Tender

  **Predicate**: isSubmittedBy

  Object: Tenderer

  Definition: Relation indicating the economic operator that submitted a tender.

  Inverse: submits

  Definition: Relation indicating the submission of a tender by an economic operator



* Subject: FrameworkAgreementTerm

  **Predicate**: isSubmittedBy

  Object: LotGroup

  This relation is removed.

* Subject: AwardDecision

  **Predicate**: refersTo

  Object: Lot, LotGroup

  To be discussed with the rest of the WG members.

* Subject: Contract

  **Predicate**: refersTo

  Object: Lot, Tender

  To be discussed with the rest of the WG members.

* Subject: ContractModificationNotice

  **Predicate**: refersTo

  Object: ContractAwardNotice

  To be discussed with the rest of the WG members.

* Subject: PlannedProcurementPart

  **Predicate**: refersTo

  Object: Document

  To be discussed with the rest of the WG members.

* Subject: TenderLot

  **Predicate**: refersTo

  Object: Item

  To be discussed with the rest of the WG members. On 11 May 2021 it was decided to replaced 'TenderLot' with 'Tender'. For th etime being the change will not be applied.

* Subject: Lot

  **Predicate**: refersTo

  Object: Item, PlannedProcurementPart

  To be discussed with the rest of the WG members.

* Subject: Document

  **Predicate**: relatesTo

  Object: Procedure

* Subject: TenderLot

 **Predicate**: ‘relatesTo’ is replaced with ‘isSubmittedFor’

  Object: Lot

  Definition: Relation indicating the TenderLot is submitted for a Lot.

* Subject: Lot

  **Predicate**: specifies

  Object: SelectionCriterion

* Subject: Procedure

  **Predicate**: isComposedOf

  Object: Lot

-------

Please find below the minutes from 11 May 2021 

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Hilde Kjolset (dfø), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Helder Santos (INCM), Svante Schubert (TTC 440) and Giampaolo Sellitto (ANAC).

**Topic of discussion: Definitions - GroupLot**

Hilde presents an example how an economic operator can present 2 tenders for 2 lots separately or one tender for both lots together as a group of lots.
* Subject: LotGroup
  **Predicate**: isAwardedTo
  Object: TenderLot
  _Note_: ‘Lot’  as per Directive 2014/24/EU

  ‘TendeLot’ seems to be the minimum common denominator. The decision is to:
1. mantein TenderLot,
2. put the electronicSubmissionIndicator and all the propertiesof Tender in TenderLot
3. remove Tender
4. rename TenderLot to Tender.

The properties appear in the model but we can replace it with just ‘Tender’ for each lot or group of lots so as not to mix the transport of data with the semantics. See also [here](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/20210510%20Group%20of%20lots.pptx) slides from Norway 11/05/2021 where attributes of TenderLot are combined into Tender. The WG has to check the mappings. 

**Topic of discussion: Definitions - predicates**
 The following relations were discussed and compared with the html conventions to see if this work will correct the inconsistencies:

* Subject: Procedure
  
  **Predicate**: ‘isConludedBy’ replaced with ‘hasBuyerWebsite’
  
  Object: Contract
  
  Definition: Relation indicating the website of the buyer

The meeting on Thursday 13 April is cancelled.

-----------------

Please find below the minutes from 6 May 2021 

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Hilde Kjolset (dfø), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Helder Santos (INCM), Svante Schubert (TTC 440) and Giampaolo Sellitto (ANAC).

**Topic of discussion: Definitions - predicates**

The following relations were discussed and compared with the html conventions to see if this work will correct the inconsistencies:
 
* Subject: Buyer

  **Predicate**: ‘has’ replaced with ‘hasBuyerWebsite’

  Object: BuyerProfile

  Definition: Relation indicating the website of the buyer

 * Subject: ContactPoint

   **Predicate**: ‘has’ replaced with ‘hasChannel’

    Object: Channel

    Definition: Relation indicating a concept has a communication channel

    Note: Not needed here. To be checked if this relation is needed in planning and any mapping

* Subject: Role

  **Predicate**: ‘has’ could be replaced with ‘hasContactPoint’

    Object: ContactPoint

    Note: new name of predicate to be reviewed with reification

* Subject: Procedure

 **Predicate**: ‘has’

   Object: DirectAwardTerm

   Note: to be reviewed based on discussion on 4 May 2021 if ‘has’ should be replaced with ‘isSubjectTo’. Follow patterns and possibly abstract class decision

* Subject: PlannedProcurementPart

 **Predicate**: ‘has’

    Object: ContractTerm

    Note: to be reviewed based on discussion on 4 May 2021 if ‘has’ should be replaced with ‘isSubjectTo’

* Subject: EvaluationBoard

  **Predicate**: ‘has’ replaced with ‘evaluates’

    Object: ExclusionGround

    Definition: Relation indicating who evaluates a criterion

    Inverse: isEvaluatedBy

    Definition: Relation indicating by whom a criterion is evaluated

* Subject: Lot

  **Predicate**: ‘has’ replaced with ‘hasPurpose’

    Object: Purpose

    Definition: Relation indicating a contract, procedure, lot or planned procurement part has a purpose

    Note: need to change relationships for procedure (overall purpose). 


* Subject: Lot

  **Predicate**: has

    Object: OpeningTerm
  
    Note: to be reviewed based on discussion on 4 May 2021 if ‘has’ should be replaced with ‘isSubjectTo’

* Subject: Procedure

  **Predicate**: has

    Object: ProcedureTerm

    Note: to be reviewed based on discussion on 4 May 2021 if ‘has’ should be replaced with ‘isSubjectTo’

* Subject: Lot, GroupLot

  **Predicate**: hasAwardedValue

    Object: Value

    Note: to be reviewed with ‘Values’


* Subject: Lot, GroupLot, Procedure, Subcontract

  **Predicate**: hasEstimatedValue

    Object: Value

    Note: to be reviewed with ‘Values’

* Subject: ContactPoint

  **Predicate**: hasLocation

    Object: Location


* Subject: Document

  **Predicate**: hasNonPublishedElement

    Object: PublicationProvision

    Definition: Relation indicating that part of a document is not published 

* Subject: PublicationProvision

  **Predicate**: ‘hasNonPublishedElement’ replaced with ‘isForResourceElement’

    Object: ResourceElement

    Definition: Relation indicating that the publication provision applies to a given field of a document

* Subject: Tender, TenderDocument

  **Predicate**: hasSubmissionTerm

    Object: SubmissionTerm

    Note: to be reviewed based on discussion on 4 May 2021 if ‘hasSubmissionTerm’ should be replaced with ‘isSubjectTo’


* Subject: ContractTerm

  **Predicate**: ’includes’ replaced with ‘hasSubTerm’

    Object: SubcontractTerm

    Definition: Relation indicating a term has a subterm
  
    Inverse: isSubTermOf

    Definition: Relation indication a term is a subterm of another term


* Subject: Document

  **Predicate**: includes

    Object: RegulatoryFrameworkInformation

    Note: Element and its relations not needed in Notification


* Subject: Tender

  **Predicate**: includes

    Object: TenderLot

    Definition: Relation indicating a Tender has a TenderLot

    Inverse: isIncludedIn

    Definition: Relation indicating a TenderLot is included in a Tender


* Subject: Lot

  **Predicate**: isAwardedTo

    Object: TenderLot

    Note: Question as to whether Lot awarded to ‘tender’ or ‘tenderer’. WG decision: must be ‘tender’ as one tenderer may submit several tenders


* Subject: LotGroup

  **Predicate**: isAwardedTo

    Object: TenderLot

    Note: If ‘Lot’ is to LotGroup then ‘TenderLot’ is to TenderLotGroup and therefore a LotGroup isAwarded to TenderLot (*,*). To be discussed in the next meeting.

    Actions: Hilde to find use case
             Natalie to find old notes and ppts on this point

Net meeting to be held on Tuesday 11 May 2021

--------------------
Please find below the minutes from 4 May 2021 

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Hilde Kjolset (dfø), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Helder Santos (INCM), Svante Schubert (TTC 440) and Giampaolo Sellitto (ANAC).

**Topic of discussion: Definitions - predicates**

The following relations were discussed and compared with the html conventions to see if this work will correct the inconsistencies:
 
* **Predicate**: fulfilsRequirement

  Note: the OWL generates ‘hasFulfilsRequirement’ as it is an attribute of the class. All attributes need to be manually checked and ‘has’ or another verb used. Using fulfilsRequirement from three different sources is not a problem as the range is an SKOS concept.

* Subject: PlannedProcurementPart
  
  **Predicate**: has

  Object: AccessTerm
  
  Note: predicate and relations to be discuss with the UML to OWL project team following the 3 different situations described **below** and discussed during the meeting

 1. **Current situation**

Procedure isSubjectTo ContractTerm and AccessTerm, while PlannedProcurementPart isSubjectTo AccessTerm.
However the way this is currently designed means that there is no possible restriction: in the OWL transformation everything in the domain (Procedure or PlannedProcurementPart) would be subject to anything in the range as we cannot differenciate what is subject of what.
 
![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/20210504-current-situation.png)


  2. **Proposal 1**

The introduction of an abstract class ‘ProcurementTerm’ allows ContractTerm and AccessTerm to inherit from that class ‘ProcurementTerm’. 

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/20210504-proposal1.png)

  3. **Proposal 2**

A change in the domain, ‘OWLThing’, and the introduction of the abstract class will allow that any class is subject to the abstract class ‘ProcurementTerm’

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/20210504-proposal2.png)




* Subject: Address

  **Predicate**: has

  Object: LocationCoordinate

  Note: predicate to be discussed when redefining Location ‘hasGeometry’ or ‘hasLocationCoordinate’

* Subject: AwardDecision

  **Predicate**: ‘has’ replaced with ‘specifiesWinner’

  Object: Winner

  Definition: Relation indicating that the AwardDecision defines a winner

  Inverse: isWinnerDefinedIn

  Definition: Relation indicating that a winner is defined in an award decision

* Subject: AwardDecision

  **Predicate**: has

  Object: Subcontract

  Note: this relation is discarded as BT-55 can go through TenderLot and BT-554 should probably be a calculation of the total value of all subcontracts related to a tender lot (could be provisionally put in a CAN – to be discussed)

The next meeting will be hel on Thursday 06 May.


------------
Please find below the minutes from 29 April 2021 

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Hilde Kjolset (dfø), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Helder Santos (INCM) and Giampaolo Sellitto (ANAC). 

**Topic of discussion: Conventions report**

Short summary concerning the conventions report version 2.0.1 and the project conversion of notices from xml format to rdf. 

**Topic of discussion: Definitions - predicates**

The following relations were discussed and compared with the html conventions to see if this work will correct the inconsistencies:

* Subject: SecurityClearanceTerm 

  Object: Winner

  Predicate: applies
  It was decided to remove this relationship as it is not required.  If any such relationship is required in the future it should be studied within its use case.

* Subject: TenderLot

  Object: LotGroup

  Predicate: appliesTo - renamed to ‘isSubmittedFor’

  Definition: Relation showing that a TenderLot is submitted for a group of lots

  Inverse: hasTenderLot

  Definition: Relation indicating a GroupLot has a TenderLot associated to it

* Subject: SelectionCriterion

  Object: LotGroup, Lot

  Predicate: ‘appliesTo’ renamed to ‘isSpecifiedIn’

  Definition: Relation indicating a selection criterion in a given Lot or LotGroup

  Inverse: specifies

  Definition: Relation that indicates the conditions for selecting economic operators for tendering

* Subject: Contract

  Object: Document
  Predicate: attaches

  Definition: Relation indicating that a Thing includes a document

  Inverse: isAttachedIn

  Definition: Relation indicating a document is included in a Thing

* Subject: Tender

  Object: TenderDocument (inherited from Document) change in Model

  Predicate: attaches

  Definition: Relation indicating that a Thing includes a document

  Inverse: isAttachedIn

  Definition: Relation indicating a document is included in a Thing

* Subject: Buyer and its relations are correct. No need to review.


***

Please find below the minutes from 27 April 2021 

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Hilde Kjolset (dfø), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Helder Santos (INCM) and Giampaolo Sellitto (ANAC). 

**Topic of discussion: Summary review previous week**

The the minutes of the previous week were approved. 

**Topic of discussion: Definitions - predicates**

The following relations were discussed and a check is to be done in the html conventions to see if this work will correct the inconsistencies: 

* Subject: Lot  

  Object: ContractTerm, FrameworkAgreementTerm, MultipleStagesProcedureTerm, SubmissionTerm, DesignContestRegimeTerm, FrameworkAgreementTerm.  

  Predicate: applies – renamed to ‘isSubjectTo’.  

  Definition: Relation that specifies rules that are applicable to the lot. 

  Inverse: isAppliedby – renamed to ‘setsContextFor’. 

  Definition: Relation that specifies the lot to which these rules apply. 

 

* Subject: Procedure 

  Object: Lot  

  Predicate: specifies – renamed to ‘isComposedOf’ 

  Definition: Relation showing a component part of a procedure. 

  Inverse: specifiedIn – renamed to ‘IsComponentOf’ 

  Definition: Relation showing the lot is part of the procedure. 

 

* Subject: Lot 

  Object: SelectionCriterion  

  Predicate: specifies –  

  Definition: Relation that indicates the conditions for selecting economic operators for tendering. 

  Invese: isSpecifiedIn 

  Definition: Relation indicating a selection criterion in a given lot. 

 

* Subject: StrategicProcurement 

  Object: ResourceElement  

  Predicate: isSpecifiedIn - To check in EA if it should be removed.  The WG does not see the reasoning for 	this property it does not seem to map to anything 

 

* Subject: DesignContestRegimeTerm, FrameworkAgreement 

  Object: Lot  

  Predicate: appliesTo – removed 

  Note: check mapping 

 

* Subject: SecurityClearanceTerm 

  Object: Document, Location  

  Predicate: appliesTo: renamed to ‘describesAccessRestrictionsTo’ 

  Definition: Relation that specifies access rules 

  Inverse: applies – renamed to ‘hasSecurityClearanceTerm’ 

  Definition: Relation indicating that security clearance is required for access 

  Note: org:site to be replaced by epo:location 

***

Please find below the minutes from 22 April 2021
Participants: Paloma Arillo Aranda (OP), Hilde Kjolset (dfø), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Helder Santos (INCM) and Giampaolo Sellitto (ANAC).


**Topic of discussion: Definitions**

The following concepts were defined in the meeting 
* epo:TenderDocument – Document that is part of the tender. 

* epo:Value – postponed until discussion on lots values and amounts.

* org:Site – Note: There is  a problem here. See diagram Procurement, which uses org:site for the SecurityClearanceTerm. It is generally used in the context of a defence procurement (the tenderer needs to get clearance to access documents for example). There is no need to map to the eForms, as eForms need only a date and the description. org:Site can be removed  as we have no use case for it and is is not needed in the eNotification.
The WG has now finished the definition of all classes and attributes. 

**Topic of discussion: GiHub**

A cleanup of the ePO GitHub is planned for a near future where the versions might be merged or a new version 2.0.3 will be published.

**Topic of discussion: Inconsistencies to be addressed**

Based on the document ‘[Findings of reasoning with eProcurement Ontology](https://github.com/OP-TED/model2owl/blob/master/test/reasoning-investigation/findings.md)’ the WG starts checking the inconsistencies that need to be address in the ePO.  These inconsistencies arise from the fact that generic predicates are used such as “RefersTo”:

* ContractModificationNotice RefersTo ContractAwardNotice
* Contract RefersTo Tender
By using the same predicate as described above from the OWL core it can be implied that the ContractModificationNotice RefersTo Tender however this is not true.  There are several solutions to correcting this problem:
1.	keep ‘refersTo’ as it is in the model now and ask the transformation script to add a reference to the class it is pointing to make it more specific ie Transform ContractModificationNotice RefersTo ContractAwardNotice toContractModificationNotice RefersToContractAwardNotice ContractAwardNotice

This is not considered a good idea as it is not evident to business people reading the diagram

2. Manually transform ContractModificationNotice RefersTo ContractAwardNotice toContractModificationNotice RefersToContractAwardNotice ContractAwardNotice

Check all predicates to ensure they make business sense then either
* alter them as described above, 
* change them to make better sense 
* keep them 

In each of these scenarios it has to be ensure that no cross referencing can provide false assumptions
Note: Contract and Notice are both are subclasses of Document. The document ‘Findings of reasoning with eProcurement ontology’ states ‘Contract disjoint with Notice’ (Date 3 March 2021).
However:
a)	In the restrictions Version of 3 March 2021 the ‘disjointness’ does not seem to be indicated in the model. 
Questions:
Has a rule been implemented in the transformation that subclasses of the same class are disjoint? 
Why dcterms in restrictions? See issue: [https://github.com/OP-TED/model2owl/issues/75](https://github.com/OP-TED/model2owl/issues/75)
b)	In the restrictions Version of 17 March 2021  the ‘disjointness’ does not seem to be indicated, unless the core is imported into the restrictions. The restrictions file does not show that Contract or ContractModificationNotice are subclasses of Document and the ‘disjointness’ is not indicated. 

A solution to how disjointness is to be defined needs to be found.  See: [https://github.com/OP-TED/model2owl/issues/76](https://github.com/OP-TED/model2owl/issues/76)

The next meetings will address harmonizing the predicates.  They will be addressed alphabetically.  The working group checked the first predicates and decided in the next meeting to address:
* appliesTo
* applies
* attaches
* combinesLotsInto
* isConcludedBy
* fulfillsRequirement
* isFundedBy
* has

***

Please find below the minutes from 20 April 2021
Participants: Cécile Guasch (ISA2 - DIGIT), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Helder Santos (INCM) and Giampaolo Sellitto (ANAC).

**Topic of discussion: DigitAll Conference**

The meeting was reduced in time due to the [DigitALL Public Conference](https://digitallpublic.eu/)

It was noted that there was some overlap in the presentation “Road towards a European semantic toolchain for public administrations – state of play and future developments” (Thursday, April 22, 2021 9:30 AM to 11:00 AM) and  “Turning UML models into OWL ontologies and SHACL data shapes in the eProcurement ontology project” (Tuesday, April 20, 2021 4:30 PM to 5:30 PM) which is a result of the eProcurement ontology.
The presentation “How to make the most of procurement data” is of particular interest to this working group. (Thursday, April 22, 2021 9:30 AM to 11:00 AM)

**Topic of discussion: Definitions**

* epo:RequestForClarification – A demand for elucidation of received information
Additional information:  Requests for clarification are usually used by buyers during the process of award or evaluation to understand specific aspects of the tender without altering the tender.
* epo:RequestForParticipation – Application of an economic operator to be included in a procurement procedure.
* epo:Reviewer - Role of an agent who investigates the overall correctness of a procurement procedure, producing a related report.
Additional information: Any organisation or person may request a review of a procurement procedure.
* epo:TechnicalSpecification - A set of documented requirements applicable to the object of the procurement.
Additional information: A specification often includes technical standards.
* epo:Mediator - A role of an agent  that  attempts to resolve a dispute between different agents and come to an agreement.

***

Please find below the minutes from 15 April 2021

Participants: Ana Aido, Paloma Arillo Aranda (OP), Eugeniu Costezki, Cécile Guasch (ISA2 - DIGIT), Veit Jahns (TC440), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Helder Santos (INCM), Giampaolo Sellitto (ANAC), Jalini Srisgantharajah (dfø).
Topic of discussion: Reification and eNotification

Considering the extensive work carried out on the reification and eNotification models, the Working Group (WG) proposes that the work integrating the reification in the  eNotification model can be produced outside the working group and that the WG can validate the result or request certain changes.  The WG in the mean time will concentrate on:

1.	providing definitions for concepts where they are missing;
2.	improving the work on amounts and values;
3.	the removal of complex data types;
4.	addresses and locations:  where reuse of the Core Location Vocabulary and INSPIRE should be looked into.  
5.	evolving the models for eOrdering and eCatalogue.


The new Core Location Vocabulary will be discussed in the Core Vocabularies Webinar on 23 April at 10-12 see here. It would be good to discuss at this webinar whether it is really necessary to have a Location to access the address of an Agent.
Topic of discussion: ePO WG meetings week 16 (20 and 22 April 2021)
Members of the ePO WG will be participating in the Webinar https://digitallpublic.eu/
The ePO meetings will take place on Tuesday 20 and on Thursday 22 even if we have to stop earlier than usual.

**Topic of discussion: Definitions**

The following concepts were discussed in the meeting:

*•	epo:LocationCoordinate – this definition will be addressed at a later stage as the class ‘Location’ is still under discussion.

*•	epo:MultipleStageProcedureTerm
Definition: Conditions and stipulations defining particularities of procedures carried out in several steps.
Additional Information: Generally this refers to procedures where selection is carried out to qualify tenderers who are then requested to submit the rest of their tender for evaluation ie Restricted procedure

*•	epo:OpeningTerm
Definition: Conditions and stipulations defining particularities of the opening of the tenders.
Additional information: The opening of the tenders is the event when tenders are made accessible for evaluation, it is generally the same date and time for all tenders

*•	epo:OrganisationGroup
Definition: Agreed collaboration of several organisations.
Additional information: This concept has been created to fulfill the need to represent a grouping of organisations that is not necessarily registered ie consortia.

*•	epo:Prize
Definition: A reward given in a contest.

*•      epo:RegulatoryFrameworkInformation.
Definition: Legal information that governs specific aspects of the procedure.
Additional information: The legal information can concern tax regimes in a given country for example

**Topic of discussion: Event about SCORVoc standard**

The Supply Chain Operation Reference (SCOR) is a cross-industry approach to lay the groundwork for more efficient and effective information exchange in supply networks. Within this framework an ontology SCORVoc has been created: [SCORVoc](https://github.com/vocol/scor) uses [schema.org](https://schema.org/) that is good for defining products, as is the Good Relations Ontology.

The interconnection between the two ontologies were discussed and whether they could be mapped to one another.  It was felt that although the scopes were different that commonalties could be found and it would be interesting to explore synergies that could be creating.  SCOR is about processes of Supply Chain management and supported by SCORVoc ontology, the eProcurement ontology is about (public) procurement data, however for common terms representing the same concept it could be worth ensuring a common definition to enable reuse, linking and interoperability. SCOR will be presented at a workshop of the CEN TC 440 (European Committee for Standardization - Technical Committee on Electronic Public Procurement) on April 26, 2021 to better understand SCOR.

We carry on with definitions on Tuesday.

***


Please find below the minutes from the 13th of April

Participants: Paloma Arillo Aranda (OP), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Helder Santos (INCM) and Giampaolo Sellitto (ANAC).

**Topic of discussion: Definitions**

The following concepts were defined in the meeting: 
* epo:Amount

  Definition: A number of monetary units specified using a given unit of currency
* epo:UnitCodeListAgencyID - attribute renamed to epo:CurrencyCodeListAgencyID

  Definition:  Identifier of the agency that maintains the currency code list used
* epo:UnitCodeListAgencyName - attribute renamed to CurrencyCodeListAgencyName

  Definition: Name of the agency that maintains the currency code list used
* epo:UnitCodeListID - attribute renamed to epo:CurrencyCodeListID and its data type changed to URI

  Definition: Concept scheme URI used for the currency code list
* epo:BuyerProfileNotice

  Definition: Notice of the existence of a buyer profile
* epo:Contractor

  Definition: An economic operator that has signed a contract with a purchaser
* epo:EvaluationBoard

  Definition: Committee set up to evaluate the tenders submitted

  Additional information: The committee may be a regular board or a jury.
* epo:ExpressionOfInterest

  Definition: Document presenting an economic operator's request to be considered for procedures covering a specific domain

The definitions will be added to the ePO Glossary and the EAP file.

***
Please find below the minutes from the 25th of March

Participants: Anna Frantzen, Cécile Guasch (ISA2 - DIGIT), Hilde Kjølset (dfø), Giorgia Lodi (ISTC-CNR), Thor Møller (dfø), Natalie Muric (OP)Juan Carlos Segura Fernández-Carnicero (everis), Giampaolo Sellitto (ANAC), Enric Staromiejski (everis), Sander Van-Dooren (ISA2 - DIGIT).

**Topic of discussion: Presentation of the BDTI pilot**
* The BDTI team presented the wordk done on the BDTI pilot and how it uses the DCAT specification. 

**Topic of discussion: Definitions**

The following concepts were defined in the meeting (see definitions in the EAP file and in the ePO glossary): 
* epo:Room
* epo:StreetName
* epo:TimezoneOffset
* epo:Alias
* epo:CurrencyID
* epo:AmountValue

The definitions can be consulted in the Glossary. See [**here**](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/ePO-Glossary.xlsx).

***

Please find below the minutes from the 23rd of March

Participants: Paloma Arillo(OP), Cécile Guasch (ISA2 - DIGIT), Veit Jahns (TC440), Giorgia Lodi (ISTC-CNR), Natalie Muric(OP), Héctor Rico (everis), Helder Santos(INCM), Giovani Paolo Sellito (ANAC), and Enric Staromiesjski Torregrosa(everis). 

* NM pointed out that there won’t be a meeting next 1st. The next meeting will be on the 13th.
* NM indicated that thursday 25th presentation BDTI usage of DCAT. 
* NM informed the WG that v2.0.1 has been released. Showed the git and the release. 

**Topics of discussion: eCatalogue diagram**

* The WG proposed and agreed on separating eCatalogueReification and create a specific eCatalogue diagram to ease the maintenance. 
Action Point for @everis epo:Adress should have fullAddress as a string
* The work done during the meeting was carried out taking as reference the diagrams from TC440: 
> * epo-ecat:eCatalogue definition has been modified. Additional Information removed and used for the definition of epo-ecat:eCatalogueLine
> * The epo-ecat:eCatalogueLine was added. The class was defined based on TC 440 and the additional information from epo-ecat:Catalogue. 
> * A new predicate was added from epo-ecat:eCatalogue epo:isComposedOf epo-ecat:eCatalogueLine. Cardiniality 1..*
> * A new predicate was added from epo-ecat:eCatalogueLine epo:specifiesItem epo:Item. Cardiniality 1
> * The class epo:Period was added in the diagram and linked to: 
> > * epo:Contract and to epo-ecat:eCatalogue
> * The class epo:Price was added
> * The class epo:Location was added

* Action point for the future: cardinalities should be harmonised – aligned with the 2.0.1 (all attributes from all classes)

* The WG created an issue regarding Predicate harmonisation that concerns isComposedOf amongst other predicates in the Onology.  Issue 281 (https://github.com/eprocurementontology/eprocurementontology/issues/281).

**Topic of discussion: eOrder diagram:** 

* Change applied based on previous eCatalogue discussion: predicate from epo:Order epo:isComposedOf epo:OrderLine
* Action Point to @everis: Separate the eOrdering and eOrderind Reification under its prefix as it is done in the case of eCatalogue (e.g. epo-eorder:)


***

Please find below the minutes from the 16th of March.

Participants:Ana Aido, Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Hilde Kjølset (dfø), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Juan Carlos Segura Fernández-Carnicero (everis), and Enric Staromiejski (everis).

Topic of discussions: Review of the minutes from the 9th and 11th of March

No comments from the WG. 

**Topic of discussion: Definitions**

The following concepts were defined in the meeting (see definitions in the EAP file and in the ePO glossary): 
* epo:Address
* epo:Floor
* epo:ID
* epo:InhouseMail
* epo:MarkAttention
* epo:MarkCare
* epo:PlotIdentification
* epo:PostalZone
* epo:Postbox
* epo:Region

The definitions cna be consulted in the Glossary. See [**here**](https://github.com/OP-TED/ePO/blob/2042074d3a7e21b69f2892b645511ad083c13a05/v2.0.1/01-Glossary/ePO-Glossary.xlsx).

**Topic of discussion: BDTI diagram**
	
* ReservedProcurement cardinality was changed to 0..*. The code-list from at-voc was also added.
* Other code cardinalities needed in BDT where modified:
* NUTS 
* Country code and cardinality 1
* The CPV code was added and cardinality 1 for the main classification and for the the additional 0..*
* The contract-nature code was added and cardinality 1 set for the contract nature
* The permission code-list was also added associated to Lot with cardinality 0..1
* The Lot ID cardinality was changed from 0..1 to 1
* The cardinalities of the epo:Procedure attributes in the BDTI diagram were changed based on the ePO v2.0.1 ones

***

Please find below the minutes from the 11th of March. 

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Hilde Kjølset (dfø), Giorgia Lodi (ISTC-CNR), Helder Santos (INCM), Juan Carlos Segura Fernández-Carnicero (everis), Giampaolo Sellitto (ANAC), and Enric Staromiejski (everis).

**Topic of discussion: Datatypes cardinalities**

The WG discussed the cardinalities and attributes of some datatypes, e.g. epo:Quantity and UnitCode. The question of whether to remove or keep the UnitCode in epo:Quantity was posed, since the role of UnitCode could be replaced by epo:Item. From this discussion the following modeling actions took place: 
* The UnitCode attribute from the class epo:Quantity has been removed. But the WG will reconsider whether to retrieve it back or not when analysing the modelling of Item in the context of eCatalogue and other aspects of the postaward;
* The attributes epo:UnitCodeListAgencyId, epo:UnidCodeListAgencyName, epo:UnitCodeListID have been added in the classes epo:Measure and epo:Amount.
* The EU Vocabularies codelist at-voc:measurement-unit has been added to the datatypes diagram associated to the class epo:Measure. 
* The EU Vocabularies codelist at-voc:currency has been added into the datatypes diagram associated to the Amount class. 

The final version of the datatypes diagram is the following one: 

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/epo%20datatypes.png)



***

Please find below the minutes from the 9th of March. 

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Natalie Muric (OP), Helder Santos (INCM), Juan Carlos Segura Fernández- Carnicero (everis), Giampaolo Sellitto (ANAC), Jalini Srisgantharajah (dfø), and Enric Staromiejski (everis).

**Topic of discussion: Review of the minutes from the 2nd and 4th of March**
* Some corrections were done according to the WG comments. 

**Topic of discussion: Definitions**

The following concepts were defined in the meeting (see definitions in the EAP file and in the ePO glossary): 
* epo:AccessTerm
> * epo:SomeProcurementDocumentRestrictedJustification
> * epo:ProcurementDocumentLandingPage
* From the epo:Address class the following concepts were defined, mostly inspired by the definitions provided by UBL-2.3 :
> * epo:AdditionalStreetName
> * epo:BlockName
> * epo:BuildingName
> * epo:BuildingNumber
> * epo:CityName
> * epo:CitySubdivisionName
> * epo:CountrySubentity
> * epo:CountrySubentityCode
> * epo:District

The definitions cna be consulted in the Glossary. See [**here**](https://github.com/OP-TED/ePO/blob/2042074d3a7e21b69f2892b645511ad083c13a05/v2.0.1/01-Glossary/ePO-Glossary.xlsx).

***

Please find below the minutes from the 04th of March. 

Participants: Ana Aido, Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Veit Jahns (TC440), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Helder Santos (INCM), Juan Carlos Segura Fernández-Carnicero (everis), and Enric Staromiejski (everis).

**Topic of discussion: Competency Questions**

* The WG analysed and modified some of the competency questions created by everis for the validation of the converted notices produced in the context of TED RDF project. 

**Topic of discussion: eCatalogue**

* The WG discussed the CatalogueSituation and the fact if this refers to the Pre-award or Post-award catalogue situation. The TC440 convenor indicates that the current model is closer to the Post-award than to the Pre-award situation. This led to rename the reificantion class to indicate that it addressed the Postaward situation (the class is now 'PostawardCatalogueSituation').

* The WG asked if for the different types of catalogue situations there will be different roles involved. The model is more or less the same, at least at the structual level. The difference would be in the roles and the objects (things involved) , since in the preaward the catalogue involves the Tenderer (and the lot) whilst in the post-awared it involves the seller and the contract. 

* After examining definitions of eCatalogue, namely the ones proposed by the TC440 convenor, Open PEPPOL and UBL, the WG came up with its own definition of 'eCatalogue':

"A document describing a set of items offered for purchase that can be processed in an electronic way.

Additional Information

The description may include a rich set of details, like prices, packaging, discounts, special promotions, etc."

* The WG also defined the class 'Item' as: 

"A singular product or service.

Additional Information

An item can be an atomic thing or a composition of things that together are seen as a unit, e.g. a tetrabrik of milk or an indivisible package of six tetrabriks."

The latest diagram on the eCatalogue is the following one: 

![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/roles-as-classes/img/eCatalogueReification_04032021.png)

This diagram will evolve with the results from further discussion on how to go on in the structuring of the eCatalogue (to be addressed in forthcoming sessions.

***

Please find below the minutes from the 02nd of March.

Participants: Paloma Arillo Aranda (OP), Hilde Kjølset (dfø), Natalie Muric (OP), Fatima Sadiq (OP), Helder Santos (INCM), Juan Carlos Segura Fernández-Carnicero (everis), Giampaolo Sellitto (ANAC), Jalini Srisgantharajah (dfø), and Enric Staromiejski (everis).

**Topic of discussion: Reification class**

During the meeting the WG discussed the usage of the reification class. The following points were discussed: 

* The WG reviewed the ProcurementTermsNotificationSituation. This class was created specially to reflect which roles related to terms are involved  at notification time.
* Since terms are notably present in the diagrams Competition and Results, the WG asked whether this reification should not also appear in those diagrams and how. 
* Everis indicated that this reification could not be used in any other situations,but that this could be the subject of further analysis 
* In a first round of analysis on this, the WG thought of changing the name of the ProcurementTermsNotificationSituation by InformationProvisionSituation to reflect those roles that provide documents/information, (as this reification is used mainly to explain who is providing information during the the procurement). However, on second thought, the WG considered that the InformationProvisionSitutation is not needed at all, since for these 'kind of roles' like the tax information provider, employment information provider, etc. only the name and the contact point are actually required. This need is already covered by the generic reification "ProcurementSituation". Hence, the WG decided to remove the specialisation (InformationProvisionSituation) completely.
* During the meeting, some questions were though to know which kind of info would be retrieve from the RDF triple store.
* The WG worked started to consider how to include the Procurement Situation reification class in the Competition diagram, and test its effects and relations with the classes currently existing in this Diagram.

***

Please find below the minutes from the 25th of February. 

Participants: Paloma Arillo Aranda (OP), Eugeniu Costezki, Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Helder Santos (INCM), Juan Carlos Segura Fernández-Carnicero (everis), and Giampaolo Sellitto (ANAC).

**Topic of discussion: OWL restrictions of the ontology**

The WG discussed about some problems found after running the transformation script (developed under the [OP model2owl project](https://github.com/OP-TED/model2owl)) from uml to owl restrictions. Some of the points of discussion were:
* Problems related to the entity owl nothing and how and when it should be fixed. The WG said that it is not a priority for the time being;
* Some inconsistencies have been foun after running a reasoner, but it is needed from where they come in order to fix them. The WG said that the BDTI project may be use for the analysis of this inconsistencies since it is scoped for some few classes of ePO. With this exercise, the WG indicated it will allow to discover wether the modifications need to be done in the uml or in the script.

**Topic of discussion: Cardinalities**

The WG worked on the cardinalities of the attributes of the eProcurement Ontology v2.0.1.

The corresponding modification in the model can be consulted in this [change-log](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/Cardinalities.xlsx)  

***

Please find below the minutes from the 23rd of February.

Participants: Ana Aido, Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Fatima Sadiq (OP), Helder Santos (INCM), Juan Carlos Segura Fernández-Carnicero (everis), and Giampaolo Sellitto (ANAC). 

**Topic of discussion: Cardinalities**

The WG worked on the cardinalities of the attributes of the eProcurement Ontology v2.0.1.

The corresponding modification in the model can be consulted in this [change-log](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/Cardinalities.xlsx)  

***

Please find below the minutes from the 18th of February. 

Participants: Ana Aido, Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Veit Jahns (TC440), Hilde Kjølset (dfø), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Fatima Sadiq (OP), Helder Santos (INCM), Juan Carlos Segura (everis), Giampaolo Sellitto (ANAC), Jalini Srisgantharajah (dfø), and Enric Staromiejski (everis).

**Topic of discussion: eCatalogue discussion TC440**

The WG worked on the definitions of the following classes used in eCatalogue: 
* **Buyer:** 

A role of an agent that awards a contract and/or purchases items.

Additional information:

In pre-award, the buyer generally awards the contract, however future purchasers may be foreseen.   
In post-award the buyer generally refers to the purchaser of items.

* **CatalogueReceiver:** 

A role of an agent processing a catalogue.

Additional Information: 

The catalogue receiver may not only receive it but also validate it, process it, etc.
The catalogue receiver role is usually played by the agent that acts as a buyer, or by another agent that acts on behalf of the buyer.

* **CatalogueProvider:**

A role of an agent compiling and supplying a catalogue.

Additional Information

The catalogue provider role is usually played by the agent that acts as a seller, or by another agent that acts on behalf of the seller.

* **Seller:**

A role of an agent legally responsible for providing goods and services bought by a Buyer.

**Other points of discussion:** 

* The WG discussed whether the CatalogueReceiver and CatalogueProvider should be a code or individual classes. The final conclusion was to have both as classes. 
* The WG decided to remove the properties hasCatalogueProvider and Receiver since we have the CatalogueSituation which inherits from ProcurementSituation and it is related to Role. The CatalogueReceiver and the CatalogueProviders are roles. 
* The WG discussed whether the seller is a subclass of Winner/Tenderer/EO. 


***

Please find below the minutes from the 16th of February.

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Fatima Sadiq (OP), Helder Santos (INCM), Juan Carlos Segura (everis), and Giampaolo Sellitto (ANAC).

**Topic of discussion: Cardinalities**

The WG worked on the cardinalities of the attributes of the eProcurement Ontology v2.0.1.

The corresponding modification in the model can be consulted in this [change-log](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/Cardinalities.xlsx)  

***

Please find below the minutes from the 9th and 11th of February. 

Participants 9th February: Ana Aido, Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Hilde Kjølset (dfø), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Hector Rico (everis), Helder Santos (INCM), Giampaolo Sellitto (ANAC), and Jalini Srisgantharajah (dfø).

Participants 11th February: Ana Aido, Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Hilde Kjølset (dfø), Giorgia Lodi (ISTC-CNR), Thor Møller (dfø), Natalie Muric (OP), Helder Santos (INCM), Juan Carlos Segura Fernández-Carnicero (everis), Giampaolo Sellitto (ANAC), and Jalini Srisgantharajah (dfø).

**Topic of discussion: Cardinalities**

The WG worked on the cardinalities of the attributes of the eProcurement Ontology v2.0.1. 

The corresponding modification in the model can be consulted in this [change-log](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/Cardinalities.xlsx)  

***

Please find below the minutes from the 4th of February.

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Hilde Kjølset (dfø), Thor Møller (dfø), Natalie Muric (OP), Hector Rico (everis), Helder Santos (INCM), Juan Carlos Segura (everis), and Giampaolo Sellitto (ANAC).

**Topic of discussion: Cardinalities**

The WG worked on the cardinalities of the attributes of the eProcurement Ontology v2.0.1. 

The corresponding modification in the model can be consulted in this [change-log](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/Cardinalities.xlsx)  

***

Please find below the minutes from the 2nd of February.

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Giorgia Lodi (ISTC-CNR), Natalie Muric (OP), Helder Santos (INCM), Juan Carlos Segura (everis), Giampaolo Sellitto (ANAC), and Enric Staromiejski (everis).

**Topic of discussion: Revision of the minutes from the 26th and 28th January**

* Some small corrections were done during the meeting

**Topic of discussion: Cardinalities**

The WG worked on the cardinalities of the attributes of the eProcurement Ontology v2.0.1. 

The corresponding modification in the model can be consulted in this [change-log](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/Cardinalities.xlsx)  

***

Please find below the minutes from the 28th of January. 

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Veit Jahns (TC440), Giorgia Lodi (ISTC-CNR), Thor Møller (dfø), Natalie Muric (OP), Hector Rico (everis), Helder Santos (INCM), Giampaolo Sellitto (ANAC), and Enric Staromiejski (everis).

**Topic of discussion: eCatalogue discussion TC440**

The meeting was focused on the definition of classes within eCatalogueReification Diagram (CatalogueReceiver and CatalogueProvider).
The discussion went through the possibility of exploring if CatalogueReceiver and CatalogueProvider are better handled as roles (defining them as classes) or as activities defined within the organisation-subrole code list. Both possibilities were depicted:

#### OPTION 1
Inclusion of the Catalogue Provider and Catalogue Receiver as subclasses of Role (in which case, the code-list 'organisation-subrole' does not contain codes related to these two roles): ![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/roles-as-classes/img/eCatalogueReification-proposal-1.png)

Both roles were defined as follows: 

> * epo-ecat:CatalogueReceiver: A role of an agent processing a catalogue. Additional information: The catalogue receiver role is usually played by the agent that acts as a buyer, or by another agent that acts on behalf of the buyer.  

> * epo-ecat:CatalogueProvider: A role of an agent compiling and supplying a catalogue. Additional information: the catalogue provider role is usually played by the agent that acts as a seller, or by another agent that acts on behalf of the seller.  

#### OPTION 2
Removal of Catalogue Provider and Catalogue Receiver classes and inclusion of two new codes in the codelist 'organisation-subrole': 'cat-prov' and 'cat-receiv': ![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/roles-as-classes/img/eCatalogueReification-proposal-2.png)

The WG considers that this latter case is more elegant and more flexible, since it allows any Agent to perform activities of catalogue provision and reception (e.g., Buyers and Service Providers). It also allows for further addition of other activities that can be performed by other Agents related to catalogues such as catalogue validation, catalogue dissemination, etc.

* **Action point** (for everis): move the definitions of Catalogue Provider and Catalogue Receiver from inside the classes into the codelist 'organisation-subroles'.

**WRAP-UP**

* Instead of having the roles CatalogueProvider and the CatalogueReceiver, the WG decided: 
> * To create a new class named ServiceProvider and where the ProcurementServiceProvider inherits from. So now the model indicates that ServiceProvider is a Role, and the ProcurementServiceProvider is a Service Provider.
> * The WG also added to new codes - CatalogueReceiver and CatalogueProvider - into the codelist 'organisation-subroles'.

These two decisions allow solving that a CatalogueReceiver could be a ServiceProvider, but also a Buyer.

Note that the CatalogueProvider and the CatalogueReceiver have been hidden in the eCatalogue diagram, but not in the UML model. This is still under discussion, but if the discussed proposal is accepted, the definitions will be moved into the codelist and the classes will be removed from the model.

***

Please find below the minutes from the 26th of January. 

Participants: Paloma Arillo Aranda (OP), Cécile Guasch (ISA2 - DIGIT), Hilde Kjølset (dfø), Giorgia Lodi (ISTC-CNR), Thor Møller (dfø), Natalie Muric (OP), Helder Santos (INCM), Juan Carlos Segura (everis), Giampaolo Sellitto (Anticorruzione), and Enric Staromiejski (everis).

**Topic of discussion: Revision of the minutes from the 19th and 21st of January** 
* Cécile and Thor Moller were added to the 19th January minutes; 
* The rationale of why we talk about abstract classes was added to the 19th's minutes
* Related to the previous point, the stereotype of all abstract classes in the UML were removed, since the WG considered that in purity the concept of 'abstract' cannot be applied to ontologies, and in certain situations it could be necessary to instantiate one of these base class that until now were considered kind of 'abstract', e.g. 'Notice', amongst other.
* Typo in the name of Giorgia Lodi corrected;
* Some other typos in the minutes of the 21st January also corrected;
* Issue [#267](https://github.com/eprocurementontology/eprocurementontology/issues/267) was updated;
* Decision of adding the organisation to which each member of the WG belongs to next to her/his name, in the list of attendants.

**Topic of discussion: Roles and Subroles reifications**

* Everis proposed that each specific situation (i.e. reification) should have its own codelist. everis identified two new situations where this could make sense: eNotification and ESPD-related situations. For the first one, everis proposed the inclusion of a new diagram representing the situation reified as 'ProcurementTermsNotificationSituation'.
* The WG analysed in detail this proposal and challenges the idea that the activities that everis considers exclusively of the Notification could not be applied to other phases and different roles. 
Finally, the WG concludes that a better solution would consist in having a single code list with all these activities associated to the generic reification, the Procurement Situation, instead of to particular reifications (everis is asked to apply these changes to the UML mode. This action point was applied on the 28th of January).  

![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/roles-as-classes/img/Procurement%20Terms%20Notification%20Reification(2).png)

***

Please find below the minutes from the 21st of January 2021

Participants: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Veit Jahns (TC440), Hilde Kjølset, Giorgia Lodi, Thor Møller, Natalie Muric, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, and Enric Staromiejski.
 
**Topic of discussion: eCatalogue**
 
* The WG started summarising the last meeting on eCatalogue. Here the diagram produced on 12th January:![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/doc/img/eCatalogueReification.png)
* The WG discussed on not to have in this diagram the ProcurementSituation class and to have just the specialisation of this class named ProcurementSituation. The problem is that hiding the ProcurementSituation class some properties will be also hidden. The WG analysed if the class linked exclusively to ProcurementSituation are also needed for the CatalogueSituation.
* The WG simplified the eCatalogue diagram just leaving on it those classes that are needed for eCatalogue.
* In order to represent in the model that a CatalogueSitatuion has a CatalogueReceiver, two classes were connected through the property epo-ecat:hasCatalogueReceiver with cardinality 0..*. This new property is a subproperty of the property "epo:hasRole" which links the ProcurementSituation to the epo:Role;
* The WG also said that a CatalogueSituation has always a Catalogue, therefore the two classes were connected through the property epo-ecat:hasProvidedCatalogue with cardinality 1.
* The class Contract was also added in the diagram and linked to the CatalogueSituation class. As well, the FrameworkAgreement. 
* The WG discussed wether the ProcurementSituation should be refersToLot. The WG remove the relation from the Lot class to the ProcurementSituation because the decision was that the Lot class is an owl:Thing class and the ProcurementSituation epo:hasContext owl:Thing. 
* The WG saw that the properties from Contract to Period are wrong. A Contract does not have a DurationEvaluationPeriod. It is the Lot which has the DurationEvaluationPeriod. Also, the property that links the Lot to the  Contract is wrong (hasContractDuration). The WG modified the issue [#267](https://github.com/eprocurementontology/eprocurementontology/issues/267) regarding this particular point.
* Continuing with the eCatalogue model, the WG decided to add the class owl:Thing to the eCatalogue UML diagram. The Catalogue class is also a specialisation of the owl:Thing.
* The Catalogue was linked to the Contract through the property epo-ecat:isSubordinatedTo.
* The property epo-cat:hasCatalogue (epo-cat:CatalogueSituation - epo-cat:Catalogue) is a subproperty of the epo:hasContext (epo:ProcurementSituation - owl:Thing).
* The WG saw that some important aspects need to be documented in the Reification documentation. 
* The Period class was also dropped in the diagram and linked to the Catalogue. The property name is epo-cat:hasValidity. 
* The WG decided that the ContactPoint will be reviewed and discussed later. The WG does not have a clear idea of whether Contact Points are actually needed in the context of eCatalogue transactions. TBD.
* The discussion ends with the following version of the eCatalogue diagram: ![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/doc/img/eCatalogueReification(2).png)
 
**Topic of discussion: Definition of Catalogue Provider**
* The WG worked on the definitions of the following terms based on the definitions provided by TC440 (taken from TC440, UBL, and PEPPOL): 
> * CatalogueProvider: A role of an agent compiling and supplying a catalogue.

Additional Information

The catalogue provider role is usually played by the agent that acts as a seller, or by another agent that acts on behalf of the seller.

WG Approval 28/01/2021




***

Please find below the minutes from the 19th January 2021:

Participants: Paloma Arillo Aranda, Giorgia Lodi, Natalie Muric, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, and Enric Staromiejski.

**Topic of discussion: Address class**
* The WG discussed the meaning of the attribute "epo:Department" in the epo:Address class; 

**Topic of discussion: Review of the minutes from the 12th and 17th of January**
* To add the diagram of eCatalogue in the minutes from the 12th of January;
* Some modifications were done during the meeting;
* To add Giampaolo into the participants from the 12th January.

**Topic of discussion: Roles and Subroles reifications**
* Everis created a [presentation](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/Agent-Role-CONCLUSIONS.pptx) explaining the conclusion on where other reification classes are needed for the rest of roles and subroles activities;
* Everis created a new diagram named Procurement Terms Notification where they defined a new ProcurementTermsNotificationSituation and the roles involved in this situation; 
* The WG discussed this new diagram created to understand the different classes dropped on it: ![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/doc/img/Procurement%20Terms%20Notification%20Reification.png)
* The WG also discussed about the BuyerProfile and if it should be linked to the Agent class. The answer is yes, but in v2.0.1 and v.2.02 it is modelled differently due to no reifications are used in previous versions.

**Topic of discussion: Abstract classes**
* Discussion about the meaning of abstract classes. In UML an abstract class is never implemented. For instance, it is not possible to implement an individual of the class notice since it is a document itself, same happens with technique, but you can implement the types of notices "Contract Notice" "Contract Award Notices", etc.



***

Please find below the minutes from the 14th January 2021:

Participant: Paul Donohoe, Anna Frantzen, Cécile Guasch, Gunnar J.Johnsen, Hilde Kjølsetm, Girogia Lodi, Jan Maerøe, Natalie Muric, Helder Santos, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, Jalini Srisgantharajah, and Enric Staromiejski.

**Topic of discussion: DCAT-ePO Ontology**
* The Norwegian conveners attended the meeting to present the W3C DCAT ontology and its possible relationship and use in ePO;
* The presentation introduced the explanation of the DCAT; 
* The Norwegian conveners introduced their Data Catalogue, the project were they are involved. The project has re-focused (broaden the scope) from records management to "information management";
* The Norwegian conveners indicated their intentions to implement the ePO Ontology in their project for the information management;
* The Norwegian conveners presented an overview and some details of the Norwegian data catalogue. It is composed of 5 parts: dataset, API, concept, information model and public service (BETA);
* The following specifications were introduced and explained during the meeting: DCAT, BRegDCAT-AP, and DCAT-AP-NO v2.0 which is compliant to BRegDCAT;
* An explanation of the concepts of catalogue, dataset, dataset description and data model was done using the IKEA catalogue as an example. According to this explanation, Data Catalogue and Dataset could be represented using DCAT-AP-NO while dataset and datamodel could be represented using the ePO Ontology.
* The discussion entered into more technical details where the WG discussed on how to connect the ePO and DCAT, for example reusing the dcat:Resource class. 
* [IFLA FRBR/LRM](https://www.ifla.org/publications/node/11412) was also discussed by the WG since [W3C DCAT](https://www.w3.org/TR/vocab-dcat-2/) took some inspiration from it.
* The WG also discussed, together with the Norwegian conveners, about keywords and recommendation and how they could be used. For example, a recommendation from the WG was to take the classes from the ePO and to enrich/introduce the ePO terms in the EUROVOC thesaurus (example of recommendation: say "Tender" to refer to the offer submitted by the Economic Operator, never use "Tender" to mean "Procurement" or "Procedure", and other similar ones).
* The presentation used during the meeting and provided by the Norwegian conveners can be consulted [**here**](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/20210114%20-%20Presentation%20ePO%20WG.pdf)

***

Please find below the minutes from the 12th January 2021:

Participants: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Veit Jahns, Hilde Kjølset, Thor Moller, Natalie Muric, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, Jalini Srisgantharajah, and Enric Staromiejski.

**Topic of discussion: eCatalogue discussion**

* TC440 eCatalogue convenor attends the meeting to contribute to the discussion of eCatalogue.
* TC440 eCatalogue convenor explained briefly the eCatalogue process.
* TC 440 eCatalogue convenor showed the terms and definitions of the different roles participating in the eCatalogue process. For their definitions, they reused/based the definitions defined by the ePO Ontology. They also based their definitions from Peppol (e.g. customer), UBL (e.g. seller).
* TC 440 eCatalogue convenor also explained the analysis that they performed for the correspondence of the classes used in the ePO ontology. For example the class Agent they saw the correspondence to the UBL class "Party". 
* TC 440 eCatalogue convenor explained that they created different UML diagrams where they reused classes from the ePO Ontology, but also created other classes to model the Catalogue Provider, Catalogue Receiver and Seller. 
* TC 440 eCatalogue convenor and the WG discussed the differentiation that Peppol did between Business Role and Business Partner (however TC 440 is considering the deprecation of this "Business Partner" term).
* The WG worked in a testing eCatalogue diagram. For that purpose, a new [module](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/roles-as-taxonomy/ePO-CM.eap) in the set of ePO diagrams was created named "eCatalogue" (see the eAP file), also here the picture:
![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/doc/img/eCatalogueReification.png)
* The WG started working on the role of CatalogueProvider to understand how to model it in the ePO Ontology.
* A reification CatalogueSituation was created to link the Agent to the roles.


***

Please find below the minutes from the 7th of January 2021

Participants: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Hilde Kjølset, Giorgia Lodi, Thor Møller, Natalie Muric, Héctor Rico, Helder Santos, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajah.

**Topic of discussion: Review of the minutes from the 15th and 17th of December**

* Some small modifications were added to the minutes. 

**Topic of discussion: Issues in GitHub**

The WG discussed the following issues: 

* Issue [274](https://github.com/eprocurementontology/eprocurementontology/issues/274)
* Issue [271](https://github.com/eprocurementontology/eprocurementontology/issues/271): 
> * The WG agreed on the following: 1. procedure isSummarisedBy 1 and only 1 CAN only is wrong: The WG decided to change the cardinality 0..*; 2.	hasOptionsPermission cardinality 1 seems irrelevant: The WG decided to change the cardinalities to 0..1.
> * Also, the WG agreed that it should be applied in the document that would be provided by the OP, which includes attribute cardinalities. 
> * The WG agreed that it is for the Application Profiles to decide which cardinalities should be. The ontology has to be as less restrictive as possible.
* Issue [271](https://github.com/eprocurementontology/eprocurementontology/issues/271)
* Issue [70](https://github.com/meaningfy-ws/model2owl/issues/70#issuecomment-748187185) from the model2owl repository

**Topic of discussion: OWL restriction files**

The WG indicated that the errors detected were fixed and no errors occurred with the new release. 

**Topic of discussion: to check the eOrder diagram**

The WG checked the status of the eOrder diagram. The discussion point were the followings:
* The WG commented that object properties from epo:Lot to epo:Value are misleading. 
* The WG suggested to check how the attributes relate to the predicates. In theory, all the predicates would fit with only one attribute. 
* An issue will be opened in GitHub to discuss further in-depth.

**Topic of discussion: Usage of modules in the ePO ontology**

* Currently, all the diagrams are translated to a general owl file. In the case of BDTI, they produced a little piece with the data for its specific context. 
* The WG discussed to have small ontologies for each of the procurement phases. For example, to have a module for the eOrder with its classes and properties. The common classes could be in another package. 
* The WG indicated that using modules would allow reducing the complexity of the Ontology.  
* Everis raised the issue of how Enterprise Architect manages the reuse of classes from other packages. It creates a copy of the class, and any change created for classes reused is only applied to the specific UML diagram where it is used. 

***

Please find below the minutes from the 17th of December 2020

Participants: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Giorgia Lodi, Natalie Muric, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, and Enric Staromiejski.

**Topic of discussion: Issues of the v2.0.1 and next steps**

* The WG discussed some issues discovered from the latest version of the OWL;
* As next steps of the Ontology, the WG indicated that the Norwegians want to explain DCAT and facilitate discusion. The WG started discussing topics related to DCAT and the new release that is still under development from W3C. 
* Some members of the WG saw the need to take into account dcat and we recommend to use DCAT for the datasets generated.

***

Please find below the minutes from the 15th of December 2020

Participants: Paloma Arillo Arand, Cécile Guasch, Giorgia Lodi, Natalie Muric, Helder Santos, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, and Enric Staromiejski.

**Topic of discussion: LocationCoordinate**

Giorgia Lodi explained an issue in the BDTI pilot when querying addresses. The queries get very complicated because there are many indirections between classes and properties, as well as redundancies between properties (like, for example, longitude and latitude degrees and Measure unitCodes, etc.

One simplification proposed by Giorgia for the location of a specific spot in geometry/geography would be:

* epo:LocationCoordinate epo:Latitude rdfs:Literal
* epo:LocationCoordinate epo:Longitude rdfs:Literal
* epo:LocationCoordinate epo:Altitude rdfs:Literal

The WG agreed on having the attributes epo:Altitude, epo:Latitude, epo:Longitude as epo:Text. 

The WG decided to change the cardinality of the attributes to reflect what is in the predicate. 
The WG agreed that we need to define the cardinalities of the attributes. 0..* by default. Indicators 0..1, the rest of attributes we need to check them one by one.

**Topic of discussion: Roles and Subroles**

* TC440 eCatalogue convenor attends the meeting to contribute with Postaward Roles and Subroles.
* The WG explained the current situation and approach using the reification class for the roles and subroles.
* TC440 eCatalogue convenor contributed saying that the Organisation that provides a catalogue, and the organisations that receives and process the catalogue. The rest (originator, etc. would be there):
    * Catalogue Provider
    * Catalogue Receiver 
* TC440 eCatalogue convenor asks "what does procurement situation refers to? to specific processes/transactions, or what?. The WG replied that the ePO ontology does not model proceses, but relationships between concepts.

**Topic of discussion: Modelling activities**

The Wg discussed on how to model the different roles activities in the ontology. The following discussion took place: 

* The WG proposes to be flexible and open so linking as many different code lists to the generic reification.
* The decision about certain roles like the organisation providing tax information, and similar, had been that these should go linked to the Agent (as in the ePO version 2.0.1).
* In general the rule would be: if the agent is not directly involved in a procurement situation, but the procurement situation needs to use that agent or any other participants needs to be aware of their existence and activity, then these agents should not be linked to the reification as a role. In ePO 2.0.1 this works like this: the Agent is linked to another [range] class via a particular "predicate" (property) that explains/describes the activity developed by the Agent. In any case these properties MUST be attached to the Agent, not the role classes.

***

Please find below the minutes from the 10th of December 2020

Participants: Paloma Arillo Aranda, Cécile Guasch, Giorgia Lodi, Natalie Muric, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, and Enric Staromiejski.

**Topic of discussion: Review of the minutes from the 1st December and 3rd of December**
* Some modifications were done during the meeting

**Topic of discussion: [Issue 60](https://github.com/meaningfy-ws/model2owl/issues/60) from the model2owl GitHub repository**
* The WG discussed the need to remove all the attribute notes from the enumerations classes and to add the notes in to the object property. An example was created in the [BDTI diagram](https://eprocurementontology.github.io/BDTI/index.html).

**Topic of discussion: [Issue 267](https://github.com/eprocurementontology/eprocurementontology/issues/267)**
* The WG redifened the definition of the [hasContractDuration](https://eprocurementontology.github.io/v2.0.1/HTML/EARoot/EA1/EA1/EA219.html) property.

**Topic of discussion: [Issue 266](https://github.com/eprocurementontology/eprocurementontology/issues/267)**

Action Point: 
@everis to compare owl files generated by Eugeniu and to see if the model used is the correct one. 

***

Please find below the minutes from the 3rd of December 2020

Participants: Ana Aido, Paloma Arillo Aranda, Eugen Costezki, Maria Font, Cécile Guasch, Giorgia Lodi, Natalie Muric, Helder Santos, Juan Carlos Segura, and Enric Staromiejski.

**Topic of discussions: OWL script errors**

The WG used the attendance of Eugen Costezki to analyse how to improve/correct the scripts for the transformation of the UML diagrams into OWL files:

* Some errors still persisting were discussed and marked as 'action points' for Eugen: (1) duplicity of the same property as DataType and ObjectType; (2) class attributes of type 'Code' are pointing to classes representing codelists, when they should be pointing to "_skos:Concepts_";

* Concerning the datatypes listed in the [UML2RDF mapping](https://github.com/meaningfy-ws/model2owl/blob/master/config/ePO-default/umlToXsdDataTypes.xml) XSL-T artefact, the WG decided to change the data type marked as "_epo:Text_" (which ended up previously into "_rdf:langString_") into "_rdfs:Literal_". Everis (@Maria Font), confirmed that this does not impact on the TED-RDF mappings. 
 
After this discussion, the script will be reviewed and the errors reported fixed by end of the week. Once the errors fixed and a new updated version of the script available, the OWL files will be generated again (this is an action point for everis).

**Topic of discussion: Roles activities**

The WG discussed the activity roles and how they should be modeled into the ePO ontology. For that purpose, the WG analysed the different existing codelists used in the ontology and which includes activities that are performed by roles. For example, the codelist organisation-subrole was analysed and the WG discussed whether the different activities listed in this codelist should be moved into the activity-type codelist which is linked to the reification class. The same discussion took place for the eo-role-type codelist that comes from ESPD. 

The WG asks everis to retrieve the analysis done in previous sessions about the roles and subroles, and to present a proposal in the context of the works done around the reifications reuniting "Agent, Role, Lot, Activities, other".

**ACTION POINTS**:
1. @Eugen to correct the UML to OWL transformation scripts, due beginning of the next week -> this task was completed on Sunday, the 6th Nov. 2020;
2. @everis to regenerate the TBox of ePO v.2.1.0, due next week (7th to 11th Nov. 2020) -> this task is completed as per today, 10th Nov. 2020.
3. @everis to present a proposal on the inclusion of activities in the reification(s) identified so far, due next week(s) -> this task is not started yet.

***

Please find below the minutes from the 01st of December 2020

Participants: Paloma Arillo Aranda, Giorgia Lodi, Natalie Muric, Helder Santos, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, and Enric Staromiejski.
 
**Topic of discussion: Review of the minutes from the 24th and 26th November 2020**
 
* We modified the minutes from the past 24th of November 2020 to reword some sentences that needed clarification. 
* The axiom "_epo:CentralPurchasingBody epo:has epo:Buyer_ profile" was finally removed from the EAP file, since it had been indicated in the minutes but was not applied yet.
* A new axiom "_epo:Buyer epo:hasBuyerProfile epo:BuyerProfile_" has been created in v2.0.2, this way this version is harmonised to v2.0.1 (in the previous v2.0.2 version the subject was epo:Agent). In v2.0.1 the predicate is still "_epo:has_", since  we cannot change it due to the TED-RDF mapping (currently ongoing).
* The property "_usesBuyerProfile_", between "_epo:Agent_" and "_epo:BuyerProfile_" has been removed: it does not bring any semantics that can be correctly interpreted in eNotification.
 
**Topic of discussion: Issues**

The following issues were discussed, and many of them closed. Follow the links to get into the discussion and how it has been/is being solved:
 
* [Issue #253](https://github.com/eprocurementontology/eprocurementontology/issues/253)
* [Issue #254](https://github.com/eprocurementontology/eprocurementontology/issues/254)
* [Issue #258](https://github.com/eprocurementontology/eprocurementontology/issues/258)
* [Issue #250](https://github.com/eprocurementontology/eprocurementontology/issues/250)
* [Issue #249](https://github.com/eprocurementontology/eprocurementontology/issues/249)
* [Issue #251](https://github.com/eprocurementontology/eprocurementontology/issues/251)
* [Issue #268](https://github.com/eprocurementontology/eprocurementontology/issues/268)
* [Issue #248](https://github.com/eprocurementontology/eprocurementontology/issues/248)
* [Issue #269](https://github.com/eprocurementontology/eprocurementontology/issues/269)


***

Please find below the minutes from the 26th of November 2020

Participants: Paloma Arillo Aranda, Cécile Guasch, Giorgia Lodi, Natalie Muric, Helder Santos, Juan Carlos Segura, Giampaolo Sellitto, and Enric Staromiejski.

**Topic of discussion: OWL files**

The meeting was focused on the review of the datatypes used in v2.0.1 and the generation of the OWL files. The need for this discussion came from some errors detected in the OWL files generated automatically with the OP scripts: https://github.com/meaningfy-ws/model2owl 

In this sense, the WG worked exclusively on version 2.0.1 of the ontology to see which datatypes are used and which ones are not needed. See the [common package]( https://eprocurementontology.github.io/v2.0.1/HTML/index.html). 

The WG also reviewed the datatypes listed in the transformation file for the production of the OWL files. See [here]( https://github.com/meaningfy-ws/model2owl/blob/master/config/ePO-default/umlToXsdDataTypes.xml) the corresponding file. The WG changed the mapping and the UML (we removed unnecessary Datatypes) and produced new OWl core, restriction, and shacl files for the version 2.0.1 UML. These changes will be applied by everis in v2.0.2, as well.

***

Please find below the minutes from the 24th of November 2020

Participants: Paloma Arillo Aranda, Cécile Guasch, Giorgia Lodi, Natalie Muric, Helder Santos, Juan Carlos Segura, Giampaolo Sellitto, and Enric Staromiejski.
 
**Topic of discussion: Review of the minutes from 17th and 19th of November**
 
* The WG discussed the point on the minutes about the removed property "ownedBy", between Channel and BuyerProfile. The WG said that further discussions are needed and to decide if the "ownedBy" should be kept or not. 
* To add the image of the diagram to show the cardinality of the "hasRole" between the ProcurementSituation and the Role. 
 
**Topic of discussion: Channel class**
 
* The WG discussed whether the channel should be also linked to the ProcurementSituation. 
* The WG indicated that if we adopt the reification in a future version, the property "has" between Role and ContactPoint should be removed, because too generic in its semantics.
* The WG discussed whether the class BuyerProfile should be removed or not. The WG indicated that this class has been used in the TED-RDF mappings. The WG saw that the BuyerProfile is used differently in the v2.0.1. The WG discussed which way is the proper one to use the BuyerProfile class. The WG also indicated that using the BuyerProfile we are losing the consistency to the CPSV.
> * In v2.0.1 the Buyer is directly connected to the BuyerProfile, whilst in v2.0.2 it is not. The WG decided that v2.0.2 should be connected also be connected to Buyer directly. 
> * The BuyerProfile is a type of Channel, which is correct and it was not modelled like that in v2.0.1. However, in v2.0.1 this cannot be changed (and will be kept as it is now).
> * Everis will will remove the axiom "epo:CentralPurchasingBody epo:has epo:BuyerProfile" in all versions where it is still remaining, starting with v.2.0.1.

***

Please find below the minutes from the 19th of November 2020

Participants: Paloma Arillo Aranda, Cécile Guasch, Hilde Kjølset, Giorgia Lodi, Natalie Muric, Juan Carlos Segura, Giampaolo Sellitto, and Enric Staromiejski.

The dicussions focused on solving the somme pressing issues. The conclusions can be found in each issue: 
 
* **Topic of discussion: [issue #265](https://github.com/eprocurementontology/eprocurementontology/issues/265)**

* **Topic of discussion: [issue #260](https://github.com/eprocurementontology/eprocurementontology/issues/260)** 

* **Topic of discussion: [issue #264](https://github.com/eprocurementontology/eprocurementontology/issues/264)**
 
***
Please find below the minutes from the 17th November 2020

Participants: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Hilde Kjolset, Thor Moller, Giorgia Lodi, Natalie Muric, Roberto Reale, Helder Santos Giampaolo Sellitto, Juan Carlos Segura, and Enric Staromiejski.
 
**Topic of discussion: Review of the minutes from the 10th and 12th of November**
 
* The WG requested to have a link in the minutes to the ttl and SPARQL queries used to test reification pattern approach (but the link was already there).
* The 3rd. November's minutes were slightly changed. The paragraph starting with the following sentence was added (just below a UML diagram): "The inclusion of the role and the agent in the generic reification class "ProcurementSituation" makes unnecessary the axioms that we have in versions 2.0.1 and 2.0.2 "epo:Agent epo:playsRole epo:Role and the inverse epo:Role epo:isPlayedBy epo:Agent". 
 
**Topic of discussion: OWL files – OWL script**

The WG discussed two issues related to the script developed by OP to transform the UML into OWL: 
* [#issue 261](https://github.com/eprocurementontology/eprocurementontology/issues/261) 
* [#issue 262](https://github.com/eprocurementontology/eprocurementontology/issues/262)

After that, the work on analysis for testing the reification approach(for which use a copy of v2.0.2) was resumed:
 
* The diagram on Buyer and Organisation was re-discussed and the question of whether this diagram is needed or not was raised, since in the Agent diagram most of the classes related to Organisations are already covered there. The decision was to keep it, since the Agent diagram does not refer to Buyer nor BuyerProfile (and these are relevant from the Buyer perspective). 
* The object property “ownedBy” from Channel to Agent was removed. It seemed not necessary.
* The cardinality of the object property "hasRole" between the ProcurementSituation and the Role was modified. Now it is: “*” situation has just “1” role, meaning that one instance of situation involves/affects just 1 Role and, in the opposite sense, one Role may be involved in more than one Procurement Situation
![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/roles-as-classes/img/Role_ProcurementSitutation.JPG)
* The relationship between Buyer and Procedure has been also removed, since what is important is getting to the Agent playing the role of Buyer (see figure below). Roles are not connected directly to the Agent anymore (they do indirectly through the Procurement Situations). Therefore, a solution needs to be found to connect the Agent playing the role of Buyer to the Procedure. 

![](https://user-images.githubusercontent.com/16134316/100096445-500f9700-2e5c-11eb-9296-093c7f1a76c0.png)

The corresponding Conceptual Model file can be consulted [**here**](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/roles-as-classes/ePO-CM-roles-as-classes.eap).

***

Please find below the minutes from the 12th of November.

Participants: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Hilde Kjølset, Giorgia Lodi, Thor Møller, Natalie Muric, Helder Santos, Juan Carlos Segura, Giampaolo Sellitto, and Enric Staromiejski.

**Topic of discussion: Award Decision-related reification**

The WG continued discussing on the reification class and its use in the award phase. The main discussions and modeling actions were: 

* The name of the Class AwardDecisionDetails has been changed to AwardDecisionAssignation, since the semantics of this class is rather about the assignation of the Award to the role Winner (and the agent behind this role). 
* Also the predicates related to the AwardDecision reification class, as well as the predicates used by the generic ProcurementSituation have been revised and defined.
* While working with the naming of these predicate, the following action point for everis was raised: Create two Issues for Eugene asking (1) how the transformation artefact could be able to generate object properties when the domains are multiple and different (and possible disjoint); and (2), are object subproperties being automatically and inherit from the appropriate parent object property?
* The WG has relinked Subcontract to the reification AwardDecisionAssignation instead of to the AwardDecision class. 
* The WG defined the class cav:AwardDecisionAssignation as: "The attribution of something that is assigned to something else "The situation where one Lot is awarded (or not) to a Winner's TenderLot and its subcontracted part(s)."

The corresponding Conceptual Model file can be consulted [**here**](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/roles-as-classes/ePO-CM-roles-as-classes.eap).

**Action Points:**

* @everis to create an Issue for Eugene with this inference about whether a property affects multiple domains and one range it is also created, and also to introduce the possibility of subclassing them (the properties).




***

Please find below the minutes from the 10th of November.

Participants: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Hilde Kjølset, Giorgia Lodi, Thor Møller, Natalie Muric, Helder Santos, Juan Carlos Segura, Giampaolo Sellitto, and Enric Staromiejski.

**Topic of discussion: Review of the minutes from the 3rd and 5th November**

* Relationship between AwardDecisionDetails and AwardDecision an arrow is missing. To be added
* The WG discussed whether the AwardDecisionDetails is needed or not. The Award step is who produces the AwardDecision, we do not need to provide more details they could be in the AwardDecision class. The WG did not see the AwardDecisionDetail is a Situation. 
* The WG discussed on the name of the reification AwardDecisionDetails and the decision came when analysing the ordering. 
* The WG saw that we have a problem with the naming. To be solved in the future. 
* The WG discussed why we need reification. For that purpose indicated that with the example produced the need to have the reification was confirmed. Everis showed the example to WG due to some members were not attending the last meeting. 

**Topic of discussion: Award reification**

* Everis through the example prepared for the last meeting prepared a set of SPARQL queries. 
* The WG continued discussing the example to understand properly the data to be retrieved through the queries. 
* The WG modify the example together and fixed some errors discovered. 
* The WG discussed what exactly refers to the AwardDecision. The conclusion was that it refers to a lot.
* The WG points the importance to discuss the naming of the concepts. 
* To conclude the discussion, the WG said that the reification and the model as it is, works, but the names and properties need to be reviewed. 
*  The final decision  about the reification name was:
 	*   The WG agreed to change AwardDecisionDetails by AwardDecisionAsignation
	
ActionPoint: 
	
- @everis to add in Github the examples and the queries (it is already in the GH repository: [Reification example and sample SPARQL Query(ies)](https://github.com/eprocurementontology/eprocurementontology/tree/v2.0.2/v2.0.2/05-Implementation/test/roles-as-classes))  

***

Please find below the minutes from the 5th November:

Participants: Paloma Arillo Aranda, Cécile Guasch, Natalie Muric, Helder Santos, Juan Carlos Segura, and Enric Staromiejski
 
**Topic of discussion: Roles and Subroles**
 
A quick recap was done explaining that in the last meeting the WG worked on the eOrdering and the reification classes, putting together the agent, the roles, and the order. The WG during such meeting came up with a final decision indicating that the ontology is reusing the class participation from the cpsv and making the epo:ProcurementSituation as an extension of it. 
 
Everis, taking into account the same above approach, prepared a diagram with the same point for the AwardDecision situation. Everis also created a set of examples to test the model. So the purpose of the meeting was to test the model. 
 
Everis explained the turtle file created for the testing purpose. Doing this test, everis saw important things to be commented on with the WG. For example, the namespace of the cpsv goes to the core vocabularies landing page. The WG tried to get the owl file but the system retrieves the html page and not the cpsv-ap turtle fie.
 
Another thing discovered was the epo:Agent inherits from foaf:agent, but was decided to inherit it from cpsv:Agent and the WG said that the cpsv:Agent inherit from foaf, but that is not true, they inherit from dct:Agent. The WG indicated that CPSV is changing this, so for the time being the WG agreed to come back and to inherit the epo:Agent from the foaf:Agent. 
 
The WG went through the Abox example created to see how the model would be represented in RDF. Everis confirmed that the current model works if. From the discussion, the WG proposed why not to rename the AwardDecisionSitutation as AwardDecisionDetail since it provides the details of the AwardDecision of the Procedure: 
![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/roles-as-classes/img/Award-Reification.jpg)
 
The WG after the example explanation continued analysing other situations where the reification could be needed. They worked on the Buyer and Organisation diagram. We added to the diagram the ProcurementSitutation reification class, since it is the link between agent and role: 
![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/roles-as-classes/img/Buyer%20and%20Organisation.jpg)
 
The meeting ended with the discussion about the skos:Concept buyer-legal-type. 

***

Please find below the minutes from the 3rd November:

Participants: Paloma Arillo Aranda, Cécile Guasch, Giorgia Lodi, Natalie Muric, Roberto Reale, Juan Carlos Segura Fernández-Carnicero, and Enric Staromiejski.
 
**Topic of discussion: Review of the minutes from 27th and 29th October**
 
* Concerning the Ordering term, the WG indicated that the decision was not to have the Ordering term. Action for everis to include the final decision on the minutes.
 
**Topic of discussion: eOrdering**

Once reviewed the minutes of the last week, the WG continued with the discussions on the eOrdering model. Based on the minutes from the 27th and 29th of October, the following discussions took place:
* The WG saw that the properties from OrderingSituration to the different roles are not needed because the OrderingSituation which a ProcurementSituation already involves roles:![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/roles-as-classes/img/OrderingSituation%20and%20roles.JPG)
* The inclusion of the role and the agent in the generic reification class "ProcurementSituation" makes unnecessary the axioms that we have in versions 2.0.1 and 2.0.2 "epo:Agent epo:playsRole epo:Role and the inverse epo:Role epo:isPlayedBy epo:Agent". The inclusion of the epo:involvesRole in the reification, subclasses now the CPSV-AP property "cps-av:role" (we are reusing the cpsv-ap:Participation class and its attibute "role", which points to a "skos:Concept" (see the UML diagram for more details). Therefore, if we end up implementing the reifications as represented in the UML diagram above, the relation between roles and agents would have to be removed. 
* The WG asked why we are inheriting Agent and ProcurementSituation from the CPSV and the conclusion was that we are inheriting Agent and ProcurementSituation from the cpsv:Agent and cpsv:Participation for two reasons/benefits: (1)for the benefits of alignment ontologies (e.g. SDG), (2) doing this alignment we also solve other problems like how the agent is being modeled through the reuse of the cpsv agent. 
 
**Topic of discussion: Issues**
 
* [Issue #255](https://github.com/eprocurementontology/eprocurementontology/issues/255) 
* [Issue #256](https://github.com/eprocurementontology/eprocurementontology/issues/256)


***

Please find below the minutes from the 29th October: 

Participants: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Giorgia Lodi, Helder Santos, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, and Enric Staromiejski. 

**Topic of discussion: eOrdering**

* The WG discussed what are the objectives of the RoleAsssignment class and how to use it. The WG indicated that the RoleAssignment links an Agent to a Role for a given planned action or rule that will need to be executed. Also, the assignments are expected to become situational facts during the fulfillment of the planned actions. From this discussion the following points were also discussed: 
> * The WG discussed which is the rule that says that an organization is a deliveree. 
> * The WG indicated that there missing elements in the model to describe the workflow that happens in the execution of some ordering activities.
> * The WG saw and discussed the need to model all the rules related to the Ordering. First of all, the WG asked what is a rule. The WG discussed the meaning of rule and indicates that it is an ordering term. Then they clarified what is a term defining it as a very particular rule or a collection of rules. Therefore the difference between Term and Assignment is that a term is a collection of rules while the assignment plan from role to an agent is capture between properties that link the term to this Procurement situation. From this discussion, the WG decided the Ordering situation is the reification allows us to connect the ordering rules to the different roles. 
> * The WG added predicates to the properties that link OrderingSituation class to the different roles that already exist, like Seller and Buyer. The deliveree and the deliverer and the originator are not planned, the predicates contain the Planned concept.
> * The WG indicates that the OrderingSituation does not describe facts, but intentions. 
> * The delivery term was associated with Period and the class location to define the delivery location. 
	  
After discussions, the resulting model is as follows:![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/roles-as-classes/img/eOrderingReification.jpg)


**Action Point:** 
* @everis: Ask Peter Borrensen and any else in the post-award committee to provide real invoice and ordering examples. 
* @everis: to have examples of eOrdering to test for next Thursday

***
Please find below the minutes from the 27th October: 

Participants: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Giorgia Lodi, Roberto Reale, Hector Rico, Helder Santos, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, and Enric Staromiejski. 

**Topic of discussion: Review of the minutes from the 20th and 22nd October**

* There were no comments from the WG.

**Topic of discussion: Lessons learned when creating ontologies – by Giorgia Lodi**

* Giorgia Lodi presented to the WG the lessons learned when creating ontologies in Italy. The same presentation was also shared during the SEMIC conference

**Topic of discussion: eOrdering**

The WG continue discussing on eOrdering. The meeting was focused on the email sent by one member of the WG which explained that the CPSV-AP gone through a similar situation to our about the concept situation and that is a class called participation. 

This participation class from the CPSV vocabulary was analysed to see how it is related to our situation (Procurement Situation). As a conclusion of the analysis, the WG decided to add this class into our model and reuse the CPSV vocabulary. This class is used for the generalisation of the ProcurementSituation. The WG also added to the UML diagram the class skos:Concept to be coherent to the CPSV and to align the ePO Role to the fact that in the CPSV-AP the roles are skos:Concept(s). The WG also agreed to remove the relation between roles and agent because we are adopting or reusing the CPSV participation class. Asso the WG indicates that we are inherinting Agent and ProcurementSituation from the cpsv:Agent and cpsv:Participation by two reasonsb/benefits: (1)for the benefits of allignment ontologies (e.g. SDG), (2) doing this alignment we also solve other problems like how agent is being modeled through the reuse of the cpsv agent. The WG indicates that we need to test this asap to see if it works: ![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/roles-as-classes/img/cpsv_participation.jpg)


***

Please find below the minutes of the 22nd October

Participants: Ana Aido, Cécile Guasch, Giorgia Lodi, Roberto Reale, Helder Santos, Juan Carlos Segura, Giampaolo Sellitto, and Enric Staromiejski.

**Topic of discussion: eOrdering**

The WG continued the discussion from the 20th of October concerning electronic ordering terms. 
The idea that we may be in front of two different patterns or models emerged a couple of times: one for 
_ex-ante_ "rules and terms" (e.g. what needs to be done for eOrdering), and another for _ex-post_ "situations" (what 
was actually done during the eOrdering). The general feeling of the WG was, however, that both situations are very complicated 
and that there should be one single and coherent model to represent both situations. The WG had the feeling that the eProcurement process will need information 
about the ex-ante and ex-post, maybe having two reification class, but this needs more discussions. 

The analysis of "Ordering Terms" led to consider whether the class "Term" could become a reification class or not, since some of the attributes 
of the class seem to be necessary in the reification (at least those referring to Agent and Role). This analyses was not covered during the meeting, since
the WG ran out of time. It was proposed to take examples from invoicing to complete the analysis in subsequent meetings, since the Invoice may
have more terms and data relating Agent to Role and, possibly, to other data necessary in the reification. Cécile Guash commited to send examples on 
this (which se did: see CG email to the WG, subject "example invoice", 22 Oct. 17:25). 

From this meeting the main discussed points were: 

* The WG though that we need to have the ex-ante assignment of roles to agents because it is needed for the notification phase 
(a class RoleAssignment was originally proposed for this, but was not added to the UML diagram since it needs further analysis). This 
assignment would be differentiated from the Terms in eOrdering.
* The WG saw examples of ordering and some roles involved in it. Looking to the examples, the WG saw that it is possible to map them with 
the current model, but there is more content where we will need to add more entities to the model to cover the entire Ordering data that may
or may not be related to eOrdering Terms.
> * The WG saw also from the example the possible need to add the 'Period' which is an informational data. This Period should be part of the 
reification ordering class. 
> * Comparing what is in UBL and CEN TC 440, the WG thought that maybe it is not needed to map the XML models to the ePO is not possible nor 
convenient. Thus, for example,  according to one of these XML-based models, the delivery term has an attribute "location", whilst in ePO we 
already have the class Location.
* The WG agrees that as soon we come up with a solution we need to test it immediately with real data samples.

***

Please find below the minutes of the 20th October:

Participants: Ana Aido Cécile Guasch, Giorgia Lodi, Roberto Reale, Helder Santos, Juan Carlos Segura, Giampaolo Sellitto, and Enric Staromiejski.
  
**Topic of discussion: Review of the minutes from the 13th and 15th of October**
 
* In the minutes from the 15th of October, instead of pointing to the eap file, better to add a picture of the diagram;
* Typo in the second bullet,  "discussed" is missing;
* To add why the property relatesTo;
* To add a bullet point that we end the meeting with the discussion if the AwardDecsion is the reification class;
 
**Topic of discussion: eOrdering**
 
The WG continued working on the creation of the eOrdering diagram. The WG merged the Model were there was the eOrdering with the model where the work about roles and activites (subroles) is also being developed. The EAP file can be found in this [URL](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/roles-as-classes/ePO-CM-roles-as-classes.eap). In this EAP file the WG created a new diagram named 'eOrdering'. A png of this diagram is [here](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/roles-as-classes/img/eOrderingReification.png). 

In the above mentioned diagram it is possible to observe that WG was focused on the development of the eOrdering from the Roles perspective. Hence WG has added classes such as Deliveree, Deliverer, Originator, etc. When adding these classes the WG has reflected about the facts that:
* The information relative to which roles intervene in the eOrdering phase are normally specified as "Order Terms";
* At the stage of eOrdering, the roles do not seem to carry very much information, however we foresee that the actions and other properties related to the agents playing those roles will emerge when "fulfilling" the Order;
* This reflection has led the WG to identify that we may be in front of two different types of reifications:
> * Reification to specify "information", "terms" or "conditions" anounced by the buyer related to the ordering; and
> * Reification to describe "situations" related to the fulfilling of the order;
* In the first case, some members of the WG proposed to name the reification "RolesAssignment", since in their opinion this is merely about to identify which roles play one specific (and only one) Agent, and nothing else. Other alternatives were suggested for the naming of this reification (Ordering, OrderingInformation, OrderingTerms even). 
* The discussion ends at this point (16:30), and the WG proposes to go on discussing on the Roles in the context of eOrdering.


**Action Point:** 
* @everis to add the link to the eOrdering file in the minutes. 
* @everis to check what is happening with the class Lot. It is in grey.


***

Please find below the minutes of the 15th October: 

Participants: Paloma Arillo Aranda, Natalie Muric, Roberto Reale, Helder Santos, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajah, and Enric Staromiesjki.

**Topic of discussion: Roles and Subroles**

The approach of the meeting was focused on the discussion of roles and subroles. The meeting started with the last decisions made on the 13th of October. 

The WG continues with the review of the generic diagram and worked on it: 

See the Award Reification diagram [here]( https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/roles-as-classes/ePO-CM-roles-as-classes.eap)

From the discussion of the diagram the following decisions were made: 

* The WG decided to change ProcurementInvolvement by ProcurementSituation. This class is connecting the agent to a particular role.
* The WG the need or not to have the class PlannedProcurementPart within the generic diagram (see above). It comes from a previous analysis of when procurement is in the planning phase or whether it has been planned and design in terms of procedure, lots, etc,. When mapping ontology to eForms we needed to model the planning phase in the procurement. The WG concluded that this class is not needed in the diagram because in the end it will not exist and the class was removed. 
* The association property was changed because it should go from ProcurementSituation to Period and cardinality 0..1
* The WG discussed the involvesActivity (activity-type). For example, there is an awards contract activity and there are two roles, the buyer and the winner, so how to know that this activity is related to one of the roles. With a query, the activity and the role and agent performing that activity is retrieved. 
* The generic class owl:Thing was removed after discussion with the WG. The specialisation of ProcurementSituation profile the situation, meaning by profile that extends and customises the situation. One customization could be the restriction of cardinality, and one example of example could that the AwardDecision needs to extend the subcontract. 
* The Buyer class was removed from the Award-Reification diagram and the property from AwardDecision to Winner was renamed by epo:hasWinner 0..1 instead of epo:involvesWinner. Also, the property AwardDecision involvesBuyer Buyer was removed.
* The bidirectional property from Subcontract to AwardDecision was modified. Instead to say AwardDecision epo:isReferredToIn Subcontract, and Subcontract epo:acceptsProposalOf AwardDecision, the direction was changed saying that AwardDecision epo:acceptsProposalOf Subcontract, and Subcontract epo:refersToAwardDecision AwarDecision. Moreover, the WG saw that already exist in the model that Subcontract refersToAwardResult AwardDecision, and AwardDecision has Subcontract. This property was removed since the bidirectional  property AwardDecision epo:acceptsProposalOf Subcontract, and Subcontract Subcontract epo:refersToAwardDecision AwarDecision means the same.
* The property from ContractAwardNotice to AwardDecsion was also changed to notifiesAwardDecision instead of notifiesAwardResult, and the multiplicity was changed from 1 to 1..*. 
* The property refersTo from ProcurementSituation to Lot was also removed.
* The meeting ends with the discussion if the AwardDecsion is the reification class.

***

Please find below the minutes of the 13th of October:

Participants: Ana Aido, Paloma Arillo Aranda, Giorgia Lodi, Natalie Muric, Helder Santos, Juan Carlos Segura, Giampaolo Sellitto, and Enric Staromiejski.

**Topic of discussion: Review of the minutes from the 6th and 8th October**

* To add examples for the redundant properties between the classes representing roles
* To rephrase the WG also discussed the need for not to mix process and concept… 
* Add the diagrams of the discussions.
* Add ContactPoint in the sentence agent7role behind the award decision…

**Topic of discussion: Roles and Subroles**

The WG continued discussing the new approach on how to model the roles and subroles. From the last WG meeting, the group proposed to everis to create a diagram that clearly shows the Involvements: 

![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/doc/img/Award-Reification.jpg)

Everis also created a simplified version of the above diagram: 

![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/doc/img/awardecisioninvolvement_simplified.png)

The WG making use of the diagrams created, continue the discussion on the usage of the reification class. The following decisions raised from the discussion were: 

* The definition of AwardDecision was not correct, since it applied to the whole process instead of to particular lot or lots. The origin of this previous (misleading) definition was that we tend to see the AwarDecision as a Document. We agreed that the class "epo:AwardDecision" is to be seen as a class (data), and this class will be linked to an AwardDecisionDocument (in the future - we will add this to the mid-long-term action point list). 
The WG proposes to create 'labels' to identify issues related to 'award decision' and to 'mid-term action point' and 'long-term action point', so we do not forget addressing them timely. The minutes, too, should refer to issues particularly connected to, for example, 'award decision'. This would also allow the link, more effectively, to the diagrams and examples that contribute to explain and illustrate the issue and the decisions.

* The new definition of AwardDecision reads, thus, as follows: "Resolution of the buyer as to the result of a given Lot.". This decision has the following implications for the design and implementation of the ontology:

> * Recall that one procedure has always at least one Lot and may be divided into several Lots;
> * One object (individual) of the class AwardDecision will have to be instantiated per winning Organisation, its Role ("Winner"), the Lots awarded to this Organisation, possibly a contact point inside the winning Organisation, and the date of the awarding;
> * This AwardDecision class becomes, as a matter of fact, a 'reification' class that is based on the more generic pattern already proposed for the linking of different concepts participating in a procurement situation. The AwardDecision will be then designed as a subclass of that other generic reification class;
> > * The generic reification class connects, by default, the following concepts:
> > * One Agent (and only one)
> > * One Role (and only one)
> > * One Lot (and only one)
> > * Contact Point (optional)
> > * Period (optional)
> > * Activity (codelist) (optional)
> There is no need for involving the Procedure in the reification since this can be reached through the Lot.

* OP explained that the role of Buyer is currently being approached inside the Commission (DG GROW + OP) as two different 'activities', thus the relevance of connecting the generic reification class to 'Activity', too. These two activities would be 'the buyer for this particular procedure' and the 'buyer for subsequent procedures resulting from this particular procedure'; (this is still an ongoing work within COM). The role buyer will be connected to one of these two codes via the predicate "isResponsibleFor';

* This makes it necessary to connect back again the Buyer role to the AwardDecision reification since the link between Procedure and Buyer will be removed as a consequence of having the 'responsibilities' of the buyer codified inside the codelist.

* A pending task for the Working Group is to come up with a better name for the generic reification class: the term 'involvement' does not seem appropriate because not all agents are involved in a given reified situation (ASAP Action Point for the WG). This naming aspect affects also the predicates of the object properties linking the reification to its 'things'.

* Diagrams, examples, and queries to better understand the functioning of this approach can be found (here)[url] (through the issues workspace).

* Next steps related to the design and implementation of roles and subroles are:

> * Finish reviewing the casuistry about Award Decision;
> * Apply the reification pattern to other situations affecting the agent and its roles, whilst [re]considering, case per case, the naming of the reifications and their property predicates.


Action Points: 

* To check the involves predicates in the reification about "involves" (WG)
* To discuss if the Organisation should be with "s" or "z" (WG)
* We need a create a document showing an AwardDecision (WG)
* To create a long discussion topics file on Github (everis)

***

Please find below the minutes of the 08th October

Participants: Paloma Arillo Aranda, Cécile Guasch, Natalie Muric, Roberto Reale, Helder Santos, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajah, and Enric Staromiejski
 
**Topic of discussion: Roles and Subroles**
 
The WG started the discussion with everis proposing some clarification examples from the discussion on the 6th of October. From the clarifications, The WG made a general question about how a business person could understand what is represented in the UML. The WG, as an example to understand this need, said that if we are doing a mapping we need to understand from the UML to what we are mapping. Everis indicated that one possibility could be the addition of notes in the UML to explain what is represented in the diagram. For example, the creation of a note in the eAward diagram to explain which roles are involved in the awarding process. This note could say that the award decision involves only 2 roles: 1. The buyer, the one that awards; 2. The winner, the one that is awarded. Moreover, everis indicated that in this note can be added a reference to a ppt with more details of the roles-taxonomy representation, for instance. The WG replied that the problem is that we will end with a lot of notes in different diagrams and what will happen when it is automatized. 
 
The WG also asked how the reification is helping in the eAward diagram. The reply was that the function of the reification is to link one agent/role with a specific activity. The WG thought that the reification is not needed in the AwardDecision and the AwardDecision could be considered as the reification. Everis indicated that the reification is needed because of the existence of the Agent and there are no other ways to know who is the agent/role/contact point behind the award decision. The WG did not see the need to have the reification in the AwardDecision diagram. There could be different winners in the decision 1 or 10, there is no problem, and the Buyer does not have other or more activities in the award decision. Everis said that if there is no reification and you want to instantiate the agent that wins the lot, to do that you need to have multiple instances of the winner and to see which instance is connected to one agent. The reification solves the problem to instantiate a role multiple times. 

The conclusion and decision were that the reification will not point anymore to the taxonomy, it will point to the classes. The WG worked in such a solution, instead to have the class "AwardInvolvement" linked to the "role-taxonomy", now such class is linked to the winner through the property "involvesWinner". The discussion came from the need that the award decision/award involvement only involves 2 roles, the buyer and the winner. The buyer is not connected to the AwardInvolvement because it belongs to the responsibility of the procedure. 


***

Please find below the minutes of the 06th of October

Participants: Ana Aido, Paloma Arillo Aranda, Cécile,Hilde Kjølset, Natalie Muric, Robert, Helder Santos, Juan Carlos Segura Fernández-Carnicero, Giovanni Paolo Sellitto, and Enric Staromiejski

**Topic of discussion: Review of the minutes from 29th September and 1st October**

* To rephrase the minutes with the mention of the maximum score and the minimum score and the  cccev


**Topic of discussion: roles and subroles**

The WG started listing the topics inside the roles and subroles to be discussed: 

* Which classes are to be removed and how these concepts end up in the model (e.g. Winner, Buyer are to be removed because we would have them as role codes in the role-taxonomy);
* What shall we do with the attributes in those classes? E.g. WinnerRank, or the attributes of the class buyer;
* Do we need a reification class, or is the class “AwardDecission”?
* Redundant properties between the classes representing Roles (v2.0.2)

The WG started with the discussion of the first bullet. The WG analyses the conceptual model and saw that the AwardDecision refers to Lot and also the EvaluationResult is connected to the AwardDecision, and then AwardDecision is referredBy a Contrac and the AwardDecision has a Winner. Moreover, the Buyer is connected to the AwardDecision who makes decisions in the AwardDecision:

![](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.2/v2.0.2/05-Implementation/test/doc/img/Award-Reification.jpg)

According to this discussion, the WG identified examples of situations for the usage of the reification class. One first observation is that the action performed by the role is frequently (but not always) connected to a relevant entity of the ontology. For example (1)the AwardDecision is connected to the AwardResult and is ‘made by the role Buyer’; (2)The Tender is connected to the agent that submits it, which in eProcurement we know it as ‘eSubmission’; (3)The contract, which is resulting from a situation involving the signatory parts; (4) Other situations that do not connect the agents to a result. For all these cases, the WG proposes to have a Generic Pattern Structure that can be specialized per situation. 

The topic of whether the ontology should model processes was raised once again because the reifications of the type ProcurementInvolvement (e.g. eSubmission) look very much like processes. The WG checked that this is not the case for at least the only reification we have for the time being (AwardDecision).

The WG continued discussing what to do with the AwardDecission. For that purpose everis presented and explain a diagram that contains a new reification class named “AwardInvolvement”, it is the class that connects the Agent, with the roles, with other classes. In this model, it is not possible to know who is the Agent that is performing something until we state what is the role and the type of Organization. From this discussion, the WG concluded that we need to find a good term for the reification(s), neither ‘ProcurementEvent’ nor ‘ProcurementInvolvement’ is good enough. In the case of AwardDecision, the involvement entails active participation (and the Winner does not participate in the decision-making). Moreover, in the generic case, the Event concept does cover many more aspects that were never intended to be represented in the ePO (processes, for example, and events in general). 



***

Please find below the minutes of the 01st of October

Participants: Ana Aido, Cécile Guasch, Giorgia Lodi, Natalie Muric, Helder Santos, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, Jalini Srisgantharajah, and Enric Staromiejski.

**Topic of discussion: Definitions**

The following concepts were defined during the meeting: 

* SelectionCriterionType. Now the type of the criteria is in the class Criterion and the definition for the type is there. 
* ThresholdValue. The WG discussed the need to rename this as "Threshold" and to remove the ThresholdValueType. Same actions should replied in the AwardCriterion class. For this discussion, the WG check within the eForms mappings, how the ThresholdValue was used. The BT-7532 Selection Criteria Second Stage Invite Number Threshold was the concept used for the mapping to the ThresholdValue. The definition of this BT was also took into account by the WG for the creation of a new definition for the concept "Threshold". The WG created a document to understand what is a threshold, based also in the definition of the eForms BT-7532. This document can be consulted [here](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/MultistagedProcedureTermAndCriteria.pptx). The terms defined and the actions can be consulted [here](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/ePO_definitions.xlsx).

Pending tasks related to this work, which will need to be tackled when resuming the work on definitions, are: 

* Analysis about the connection between the 'MultistageProcedureTerm' property 'ThresholdValueType' (e.g. max-pass) to the class Criterion
* Similarly to the reflection/decision about the fact that we do not necessarily need a field named 'Threshold' (because it is already solved in the CCCEV in an abstract way), the model 'CAV' being developed by CAMSS/SEMIC could be use to solve the requirement/business need reflected in the current ePO 'MultipleStage' class (e.g. by using cav:Scenario, cav:CriterionEvaluationContext, cav:Score, cccev:Criterion). This topic should be a subject of analysis for the ePO Working Group (to be discussed ASAP).

***

Please find below the minutes of the 29th of September

Participants: Ana Aido, Cécile Guasch, Hilde Kjølset, Giorgia Lodi, Thor Møller, Natalie Muric, Helder Santos, Juan Carlos Segura, Gaimpaolo Sellitto, Jalini Srisgantharajah, and Enric Staromiejski.
 
**Topic of discussion: Review of the minutes from the 22nd of September**
 
* The reification is not a taxonomy. To change the sentence. The reification is a class that connects the roles taxonomy. 
* The final proposal of the elements repeated in a taxonomy was to put them out from the taxonomy.  
* The sentence nonetheless, they will have different tags… to be removed is not true anymore. 
* The sentence The WG asked why not do add the attributes… to be rephrase. 
* To add examples to the minutes. 
 
**Topic of discussion: Organisation and Organisation group error get from the conventions script**
 
* OP explained that through the convention script was got the following error concerning the classes Organisation and OrganisationGroup: The classes epo:Organisation and epo:OrganisationGroup inherit one another. Sub-class relation must be established in one direction only, forming a hierarchy.
* According to the WG there is not an error on the model and therefore it should be checked with Eugeniu to see if there is bug in the script. 
 
**Topic of discussion: FinancialOfferValue** 

* The WG discussed which is the best modelling approach if to have the FinancialOfferValue as an object property or as a class. 
* The WG asked if this class is needed for the eOrdering. The WG justified that it is not needed if in eOrdering we have the Value, then the FinancialOfferValue can be got from it. 
* The WG decision was to remove the class the FinancialOfferValue and to convert it into an object property as in v2.0.1 in the model
 
**Topic of discussion: Roles and Subroles**
 
The WG continued with the discussion of roles and subroles.
 
The WG started the discussion mentioning that the solution proposed in the last meeting is very generic. For example, the WG was not completely convinced with the name "event" for the reification. The WG discussed alternatives of it, but previously we need to understand where we need data of organisations, activities, etc. 
 
The WG also indicates that the name "Event" is very generic object and the implications is that it can be used for anything in any situation.  In terms of querying, the WG indicates that the results on a query in a reification retrieves a lot of entities in the result since it is very generic. For the purpose to see different query results, the WG saw the need to define user stories to define competency questions. 
 
After different points of discussions on how to model the roles and subroles, the WG agreed on the approach of the reification, codes and taxonomies, but also was identified the need of simplify the reification and use them only in a given a context with only those classes that need to be reified for that context. The WG agreed on the fact that the reification should be specialised.
 
The WG, concerning the "ProcuremenEvent" class reification, decided as an action point to see which are the "events" that the ontology currently has. 


**Action Point:**

-	@everis to review the minutes of the 22nd of September



***

Please find below the minutes of the 22nd of September

Participants: Ana Aido, Paloma Arillo Aranda, Sofia Berenguer, Didac Cabus, Maria Font, Cécile Guasch, Hilde Kjølset, Giorgia Lodi, Natalie Muric, Hector Rico, Juan Carlos Segura Fernández-Carnicero, Giampaolo 
Sellitto, Helder Sousa Santos, Jalini Srisgantharajah, and Enric Staromiejski. 
 
**Topic of discussion: Review of the minutes from the last week**
 
Some mistakes were detected: 
* Instead of Public Procurement Documents, should be Public Procurement Directives
* Instead of the Financial Offer class, should be Financial Offer Value class. 
* There was a typo in the AwardCriterion (minutes from the 15th September) 
 
**Topics of discussion: Roles and Subroles discussion**
 
* Everis prepared a [presentation](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/RolesTaxonomy_and_ProcurementEvents(WorkinProgress).pptx) for the discussion of the new approach roles and subroles. 
* Everis explained how the roles and subroles are currently [modelled](https://eprocurementontology.github.io/CDM_Report/HTML/EARoot/EA1/EA45.htm). The current model of roles and subroles represents them as classes. 
* Everis explained that as an alternative to the current model design of roles and subroles was to remove all the roles and subroles simplifying the ontology. The alternative solution is to use the reification taxonomy to represent the roles and subroles.
* Everis explained that eu vocabularies have different codelists related to the role: "role", "organisation-subrole", "buyer-legal-type", "role nature" and "role qualifier".
* Another activity that everis did for the preparation of the new approach on how to model the roles and subroles was to review the "Organisations, Roles and Activities as per the Directives" model using a model created in previous analysis by OP:![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/roles%20and%20subroles.png)
* Based on the above model which depicts the different main activities of the contracting entity and the contracting authority, everis created a sample model on how to model the different activities performed by the tenderer, the winner, and the subcontractor:![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/ativities%20tenderer.JPG)
* Everis explained and said that the model includes the main roles which are the Buyer, the Economic Operator, and the Procurement Manager (this is a temporary name until a new one will be agreed). Everis also indicated that the concept scheme of the model, which is representing a taxonomy, is the Role. 
* Following the everis proposal about the activities, everis explained that the different activities will be taxonomies associated with the different top concepts (e.g. Economic Operator, Buer, Procurement Manager). However, everis explained that with this solution is difficult to query, and does not solve all the situations unless the activities are involved separately in the reification, which entails specific rules for the association between role and subrole-activity. 
* One of the exercises that everis performed is to try to model all the roles and subroles in taxonomy with the inclusion of the alignment to the Directives. The problem identified was that some elements will be repeated in taxonomy since for example the contracting authority and the contracting entity authority have the same types but they need to be represented separated in the taxonomy. Nonetheless, they will have different tags for their representation. 
* Regarding the "Procurement Manager" role, everis identified two types: "Procurement Service Provider" and "Central Purchasing Body". The WG indicates that the Central Purchasing Body was decided that it is a Buyer. Everis indicated that it is also modeled in the taxonomy as a buyer. The Central Purchasing Body plays the role of awarding and the role of managers. 
* Moving on the presentation, everis introduced to the WG the reification proposal. The reification is a class that connects everything amongst itself. This reification connects the agent with the role and with a thing that is being affected by an activity performed by a role. The reification approach includes a "RoleTaxonomy" with all the roles and their activities:![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/reification.JPG)
* The WG discussed then what to do with the attributes that are right now in the different role classes that will be removed if the reification approach is implemented. The WG asked why not to add the attributes in the reification. Everis indicated that then we will null the effect of the reification. The WG will discuss it later.
* The WG also discussed the name of the reification, the WG is not convinced at all with the name "ProcurementEvent".
* Concerning the "RoleTaxonomy", the WG said that the taxonomy is mixing the roles, subroles, activities, and functions in one single element. The WG proposed that maybe another possible solution is to have another taxonomy for the activities associated with the reification. Everis indicated that if we do that, we will need rules to ensure the association between role and subrole-activity. 
* Everis presented to the WG different examples to show how the current model with roles and subroles as classes work and examples to show how the reification solution would work.


***

Please find  below the minutes of the 17th September:

Participants: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Hilde Kjølset, Giorgia Lodi, Natalie Muric, Robert, Helder Santos, Juan Carlos Segura Fernández-Carnicero, Jalini Srisgantharajah and Enric Staromiejski.
 
**Topic of discussion: eOrdering**
 
* The WG created a new diagram named "eOrdering" for discussion of the phase. The following picture shows the classes added into the diagram: ![eOrdering](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/eOrdering.jpg)
* Regarding the AdditionalDocument, the WG raised the need to discuss it because eOrdering is also a ProcurementDocument. The doubt is if the AdditionalDocument can be used also for Order. According to the ProcurementDocument definition, these documents are created for the Procedure by the Buyer (it is defined by the directive). Therefore an order cannot be considered as a Procurement Document as defined in the ontology and the Public Procurement Directives.
* The WG also said the eOrdering does not always start at the procedure level, they used quotation to define the tender. The WG said that this quotation could be the FinancialOfferValue class that already exists in the model. The definition of the FinancialOfferValue class has been changed: "Monetary amount for which the economic operators commits to fulfil a given request". The WG saw the need to have another class that aggregates financial offer values. Due to the different discussions, the WG proposed why not to start modelling Order. 
* The WG explained that Order is the result of a tender, and this tender maybe a quotation. A new class named "Order" was created and which is a "Contract". The WG also said that Order has "OrderLines", there is a structured way to express what is bought. The WG created the class "Line" to represent the order line and also drop in the model the "Item" class because the order line defines Item. The Line class was connected to Order with the property "epo:hasLines". Also, the "Line" was associated with the "Item" through the property "epo:specifiesItem". 
* The WG discussed the different Value classes existent in the model. The WG remember that there was a discussion where the decision was just to keep the Value class since the rest of the classes did not add many details. WG will check the previous version of the diagram to see how the Value was modelled. 
* The WG asked what is the meaning of the datatype "Amount", "Quantity", "Measure". Everis explained that these datatypes come from the UBL 2.3 standard. The definitions of the datatypes were added into the model. 
 
 
Action Point: 
 
@everis to check the ccts definitions and where the measure and amount are used in the model. Maybe in some cases, they are used wrongly. 


***

Please find  below the minutes of the 15th September: 

Participants: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Hilde Kjølset, Giorgia Lodi,  Helder Santos, Giampaolo Sellitto, Juan Carlos Segura Fernández-Carnicero, Jalini Srisgantharajah, and Enric Staromiejski.

**Topic of discussion: Review of the summary conference call of the 8th and 10th of September**

* Everis explained briefly the summary of the WG meeting on the 10th September. 

* No comments from the WG 

**Topic of discussion: Definitions**

* The WG decided to move the SelectionCriterionType  to Criterion with a generic name "Type". Therefore the AwardCriterionType was also removed from the AwardCriterion. The codelists AwardCriterionType and SelectionCriterionType are kept in the SelectionCriterion class and also in the AwardCriterion class since the Type attribute is inherited from the Criterion class. 

* The WG asked why we have the name and description in the Procurement class and not in the Crieterion class. Everis confimed that criterion has both attributes, therefore the WG decided to move name and description into the criterion class. 

The terms defined and the actions can be consulted [here](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/ePO_definitions.xlsx)

Action Point: 

@everis to check that all the description classes are using the same definitions

***

Please find below the minutes of the 10th September:

Participants: Ana Aido, Paloma Arillo Aranda, Hilde Kjølset, Giorgia Lodi, Thor Møller, Natalie Muric, Helder Santos, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, Jalini Srisgantharajah and Enric Staromiejski.

* **Topic of discussion: Mappings TED forms - Standard Form 17 (Defence), section III.2 Conditions for participation**

* > The WG discussed the final decision on the conditions for participations topic discussed on the 3rd of September. The WG indicated that the conclusion was that the concept should be placed in exclusion criterion with a note that this is only used in the specific case of this standard form.
 
* **Topic of discussion: Central Purchasing Body**

* > The WG said that there is an issue created in GitHub discussing the CentralPurchasingBody.

* > The WG proposes to reopen the discussion taking into account such issue in GitHub.

* > The WG indicated that the CentralPurchasingBody is independent of the roles and subroles discussion. The WG agreed that the discussion of roles and subroles will take place after the eOrdering discussion on the 17th of September. The WG also agreed to discuss:  (1)roles and subroles diagram; (2)to test roles and subroles solution into EvaluationReport showing how the winner is represented; (3)how to address the Central Purchasing Body; (4)other buyers. Note that the point 1, 2 and 4 is in the context of the roles and subroles solution.
 
* **Topic of discussion: Definitions**

* > The WG decided to remove the code usage from the selection criterion class (hasApplicability). Instead of this code list, the decision was to create an indicator as an attribute of the class selection criterion (UsageNotYetKnown). 

* > The WG asked why the Procurement Criterion is used if there is a Criterion class in the core criterion and core evidence vocabulary (cccev). Everis and OP explained that as the cccev was under evolution, the decision was not to use the cccev and move all the classes to the epo namespace until there will be a stable version of the cccev. The WG also indicates that the ProcurementCriterion class is needed because some dependencies and properties are from the eProcurement domain and they cannot exist within the cccev.  Moreover, the WG argued that not only the selection and exclusion criteria are related to the Lot, the ESPD also relates the exclusion criteria to the Lot.

* > The WG asked why the ProcurementCriterion has the attributes “name” and “description” if maybe the Criterion class has them. Everis will check if the criterion class has both attributes in the cccev

The terms defined and the actions can be consulted [here](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/ePO_definitions.xlsx)

**Action point:** 

@everis to check whether cccev has name and description in criterion class.

@everis to implement the solution discussed about Standard Form 17 (Defence), section III.2 Conditions for participation

***

Please find below the minutes of the 08th of September:

Participants: Ana Aido, Paloma Arillo Aranda, Sofía Berenguer Romeu, Cécile Guash, Hilde Kjølset, Giorgia Lodi, Thor Møller, Natalie Muric, Helder Santos, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, Jalini Srisgantharajah and Enric Staromiejski. 

* **Topic of discussion: Definitions**

* The concepts defined were: 
* > ReviewDeadline within the class ReviewTerm
* > ReviewProcedure within the class ReviewTerm
* > Formula within the class ReviewTerm

> The terms defined and the actions can be consulted [here](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/ePO_definitions.xlsx)

**Action point:** @everis to check how the review deadline and the reviewprocedure are used as the deadline  for requesting a review or the deadline within which a  review should be carried out and the procedure for the review.

***
Please find below the minutes of the joint meeting of the eProcurement Ontology and TC 440 of 8 September 2020:

Participants: Working group members of eProcurement Ontology and TC 440

TTC440 explains it was in the early process of establishing an eProcurement terminology  to be used by each specification that needed  a term. TC440 recognizes the eProcurement ontology and therefore their deliverables  intend to align with the eProcurement Ontology. This meeting aimst to set an organization that ensures this alignment. The proposed idea is to reuse the definitions developed by the eProcurement Ontology instead of creating a competing activity to establish a competing terminology. 

The OP presents the eProcurement ontology. OP explains that the eProcurement ontology aims to cover the whole life cycle of the procurement from eNotification to eInvocing. Currently, the eProcurement ontology development is limited to the eNotification but this phase provides the backbone of information from the rest of the procurement phases. Presentlly the eProcurement ontology defines the terms and definitions of the data that is needed in the eNotification phase. A human-readable representation (a conceptual model) of the ontology depicting its concepts and how they interrelate has been created and it is publicly available for consultation.  Recently the team created the OWL and SHACL files that provide a machine-readable representation of the conceptual data model. 

OP  explains that the work produced for the ontology has been checked through the mapping to eForms, ensuring that the eForm business terms are mappable in the eProcurement Ontology. There is another project that is the mapping to the current TED forms. This work is not complete but should be finished by the end of this year. 

The ontology is built on the eProcurement directives so its focus is European and B2G, even though B2B has been taken into account in the fact that the Buyer can be a business. The ontology uses ccts components. OP indicates that all the related information and files of the ontology are publicly available on GitHub. 

The OP presents the roadmap. It started with producing the Glossary. The eNotification phase is planned to be finished by the end of 2020. Then the plan is to start the eAccess phase. OP indicates that the roadmap is presented in the following order but it can be changed according to different needs.

OP explains how to access the different files related to the eProcurement Ontology. OP also presents the HTML version of the conceptual model and the different diagrams that represent the ontology, and how the classes, code lists, and attributes of a class are represented in the model. OP shows an example of how the definition of a class and attribute is defined in the model. 

TC440 asks OP that if the Ontology is based on the directives it means that the Ontology is focused on public procurement. OP indicates that the Ontology is focused on public procurement, but it can be extended in a larger scope. 

Cécile Guasch explains the reasons for using the eProcurement Ontology and the rationale of the eProcurement Ontology: 
1.	Reuse terms and models defined by the eProcurement Ontology (ensure that legislation is consistently taken into consideration, 
the work done by the eProcurement Ontology working group is highly resource intensive); 
2.	Adopt the same methodology (the activity started from a conceptual model which has been improved and updated with the working group);
3.	Feed the eProcurement Ontology (change request, new concept). 

The proposal is that the WG from the different projects can take the current version of the model, the v2.0.2, which is being evolved and request to the eProcurement Ontology WG the extension or creation of definitions for some concepts. 
The approach consists in the steps listed below:

-	Identify the information elements of CWA transaction specification that can be found in the eProcurement ontology.
-	Check for coherence of meaning of the common subset
-	Identify gap and for the gap solve following 3 items:
 1.    	Propose change requests to the eProcurement ontology:                
        To update existing elements of the ontology
        To create new elements (concepts, property or attribute)
 2.	Propose specialization or extension of the eProcurement ontology
 3.	Meet with the eProcurement ontology to discuss the proposal to solve the gap and the Change requests
-	Refer to the eProcurement ontology elements in the specifications also copying the definition of the term.

***

Please find below the minutes of the 03rd of September. 

Participants: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Hilde Kjølset, Giorgia Lodi, Thor Møller, Natalie Muric, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, Jalini Srisgantharajah and Enric Staromiejski.


-	Topic of discussion: Mappings TED forms - Standard Form 17 (Defence), section III.2 Conditions for participation

OP asked the business people, whether they could check in their respective countries if the conditions for participation are used as selection or exclusion criterion. OP indicates that this is a need found doing the mappings to the TED forms and it is not represented in the model due eForms is not going into this detail.

The discussion about this topic was to use the “ProcurementCriterion” to instantiate these type of criteria. The WG detected a problem if the “ProcurementCriterion” is used because it is an abstract class and therefore querying the criteria the data retrieved will be from selection and exclusion criterion. Therefore, there is no way to differentiate it. The WG indicated that the conclusion was that the concept should be placed in exclusion criterion with a note that this is only used in the specific case of this standard form.

-	Topic of discussion: Group of economic operators

OP explained that in the TED forms mappings to the ePO Ontology there is the need to know how a tenderer is a group of economic operators. Currently, the mapping is through the property “isMemberOf”. The WG indicates that the correct mapping is thought the inheritance property therefore the mapping is: 

	Tenderer isA Economic Operator, Economic isA Role, EconomicOperator isRoleOf OrganisationGroup.

OP also asked if the address to be provided is the address of the group or the address of each member. The WG check the form and said that the address of each member is the one to be provided, then how it is possible to know that it pertains to the same group. The WG explained that as the contract number is repeatable in the form but can only be awarded to one winner, whilst different winners (as in FrameworkAgreement) should have different ContractNumbers. When the Contractor is repeated it means that it belongs to the same winner (as in a Consortium).

-	Topic of discussion: Definitions

The terms defined and the actions can be consulted [here](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/ePO_definitions.xlsx).


***

Please find below the minutes of the 01st of September. 

Participants: Paloma Arillo Aranda, Hilde Kjølset, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Ioannis Rousochatzakis, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, Jalini Srisgantharajah and Enric Staromiejski.

-	Topic of discussion: Values of the subcontract parts

OP commented that in the lasts working group meetings there were some discussions about the value of every subcontract part of the TenderLot and how to represent the total value subcontracted. In one of the discussions, the decision was to add the total value subcontracted as an attribute of the Statistical Information class. However, in the other discussion, the decision was to remove the attribute from the StatisticalInformation and to add a new definition in the property “hasEstimatedValue” which links subcontract and value. OP, indicates that this second solution does not solve the problem because then with that definition is not possible to know the estimated value of a single subcontract. 

The WG agreed on the OP statement and the decision was to add the attribute “TotalValueSubcontracted” in the StatisticalInformation class. Now, the statistical information subcontract value is the aggregation of the different values subcontracted. Moreover, the WG indicates that a business is needed to verify that the total value subcontracted is exactly the sum of the different subcontracted parts. As a matter of fact, all the data in the statistical information needs to be verified against the particular data held by the model.

-	Topic of discussion: Mappings TED forms - Standard Form 17 (Defence), section III.2 Conditions for participation

OP asked the business people, whether this is Exclusion, Selection criteria, both or what and whether this should go to the ESPD or in the Procurement Documents.
The WG decided to use the “ProcurementCriterion” to instantiate these type of criteria, instead of using the Exclusion or Selection criteria classes. In this way, it is possible to map the current Forms to the Ontology.

-	Topic of discussion: Definitions

The terms defined and the actions can be consulted [here](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/ePO_definitions.xlsx).

Action Points:  

•	@everis to replace all the definitions of "name" by the one from name of organisation

•	@everis to check how the review deadline and the reviewprocedure are used as the deadline  for requesting a review or the deadline within which a  review should be carried out and the procedure for the review.


***

Please find below the minutes of the 30th of July.

**Participants 30th**: Ana Aido, Paloma Arillo Aranda, Cécile Guash, Giorgia Lodi, Thor Møller, Giampaolo Sellitto, Héctor Rico and Enric Staromiejski.

**Topics of Discussion**: CPB, Framework Agreement Technique, Pending Topics from the current TED forms mappings.

**Central Purchasing Body: (Issue 245 CPB can be responsibleOf procedure)**
For the pilot, it was needed to know who is responsible for a procedure. The Central Purchasing Body can be responsible of the procedure and the model until today's meeting did not reflect this clearly. 
Before the modification the CPB actAs Buyer and is responsibleOf the procedure. The discussion went around the need to add or not the object property responsibleOf also between CPB and Procedure. 

The WG final conclusion: 
1.	Remove the property actAs
2.	CPB is a subclass of Buyer
3.	Remove the attribute and property related to the SubRoleType for the CPB. It inherits from buyer. 

**JointProcurement discussion:**

The main question was how to express the leader of the procedure when it is a JointProcurement. 
To have a consistent representation of the organisation roles in the case of Joint Procurement it was agreed to have role for the different organisations involved in an “OrganisationGroup”. Thus, the Group-member role was included in the epo:organisation-subrole code list. 
Then Group Leader and Group Member are the expected roles for organisations within an “OrganisationGroup”. 

It was decided to review the model in September.

**FrameworkAgreementTechnique Discussion**

The discussion started with whether a lot uses frameworkAgreementTechnique in a frameworkAgreement. 
As the FrameworkAgreement establishes a Technique then a FrameworkAgreementTechnique is ConcludedBy a FrameworAgreement. The inverse property was missing in the model. 

The WG agreed on the addition of “epo:concludesFrameworkAgreementTechnique”.

**Pending topics for the mappings of current TED Forms:**
*  Tender Validity Duration:

During past sessions of WG it was discussed about “SubmissionTerm” attributes, where TenderValidityDuration was deleted and it was only kept the ValidityEndDate with data type Date. 

As in the Validity is representing a period, the data type Date was not correct in the model. It was changed to ValidityPeriod. As the period Includes EndDate and DurationMeasure the needs of the mapping are covered. 

*  SecurityClearanceTerm:

It was necessary to reformulate the “Deadline” definition for the SecurityClearanceTerm to represent better what is needed and requested by the CA when tendering. 
The definition was changed to: “The time limit by which the security clearance must be received.”

** The meeting ended with a brief discussion about the BDTI

Action Point: 
- Everis to do an exercise for the phases and other needs of the BDTI (Procedure, Proceduretype, Buyer/CPB, Role-Organisation, Location/Address, Nuts, Lot)

***

Please find below the minutes of the 28th of July.

**Participants 28th:** Ana Aido, Paloma Arillo Aranda, Cécile Guash, Giorgia Lodi, Thor Møller, Helder Santos, Giampaolo Sellitto, Roberto Reale, Héctor Rico, Ioannis Rousochatzakis and Enric Staromiejski. 


**Topic of discussion:** #242 TenderReceivedPerLot

Only acceptable tenders are countable and this is mapped within the "StatisticalInformation". To ensure that the complete information needed is provided, the WG revisited the class and its attributes. 
Before modifying the attributes the WG agreed that there was no need to add the AcceptableTenderLots as it can be inferred from the operation: TenderReceived - InadmissibleTenders.

Related to "StatisticalInformation" the attributes were renamed to ensure the proper scope. Also definitions were updated according to the changes done to the attributes. 
The final result for the StatisticalInformation (Attributes rename and definitions) is below: 

* epo:AbnormallyLowTendersLot
* epo:CleanVehicles
* epo:EEAReceivedTenderLots
* epo:ElectronicTenderLots
* epo:HighestReceivedTenderLotValue
* epo:InadmissibleTenderLots
* epo:LowestReceivedTenderLotValue
* epo:ReceivedMediumTenderLots
* epo:ReceivedMicroTenderLots
* epo:ReceivedNONEEATenderLots
* epo:ReceivedParticipationRequests
* epo:ReceivedReviewRequests
* epo:ReceivedSmallTenderLots
* epo:ReceivedSMETenderLots
* epo:ReceivedTenderLots
* epo:TotalVehicles
* epo:UnverifiedTenderLots
* epo:ZeroEmissionVehicles
 
It was agreed:
 - to delete both TotalEstimatedSubcontractedShare and TotalEstimatedSubcontractedShare from Statistical Information and 
 - to add definitions for data properties from Subcontract to TenderLot to represent the information. 

In the context of “Value”, it was already agreed that CurrencyType is not needed as it is specified by Amount. 

Action Point:
- The mapping of the changes made will be taken into account on eForms mapping to be aligned. 
- Everis to check what has happened with the values and if we are using the correct version of the model (frozen or ongoing) during the WG meetings.




***
Please find below the minutes of the 21st and 23rd of July. 

**Participants 21st of July:**  Paloma Arillo Aranda, Cécile Guasch, Giorgia Lodi, Natalie Muric, Héctor Rico, Helder Santos, Giampaolo Sellitto, Enric Staromiejski.

**Participants 23rd of July:**  Paloma Arillo Aranda, Cécile Guasch, Giorgia Lodi, Natalie Muric, Roberto Reale, Héctor Rico, Helder Santos, Giampaolo Sellitto, Enric Staromiejski.

**Topic of Discussion:** Pending Actions from the mappings of the current TED forms / Definitions

Both meetings were focused on the discussion of pending action points that arose from the mappings of the current TED forms to the ePO Ontology.  The pending actions and the discussions were the following:
1.	SubmissionTerm Deadline to change the definition of the attribute. 
> * The class Submission Term was revised and the attributes were made generic to allow the representation of the different Document Types (Tender, Request to Participate, etc)`
> * The definitions of the attributes were changed accordingly.
> * epo:DeadlineRequestToParticipate: DateTime has been removed as it is represented by the epo:ReceiptDeadline DateTime. 
2.	To discuss with the WG if the Lot epo:hasContractEstimatedDuration should be ContractEstimatedDuration or ContractDuration. 
> * In the mapping of eFoms the attribute hasContractEstimatedDuration Period is only applied to Contract Modification
> * It should be hasEstimatedContractDuration Period for CN and PIN CFC. Other PINs and CAN and Contract modification require further analysis. 
> * For the mapping which arose the discussion, F2-2.2.7 Should be Lot hasContractDuration Period 
3.	To discuss "How do you account for when a TenderLot has more than one subcontract" (Form 03)
> * It should be done through Statistical Information. 
> * By adding TotalSubcontractedValue and the TotalSubcontractedShare to the Class "StatisticalInformation". 
> * Also to be checked the mappings in eForms to see whether it was well addressed in the eForms. 
4.	Discussion Notice on a Buyer Profile.
> * The WG saw that Notice in a Buyer Profile is a type of PIN. 
> * Therefore it should be connected to other PIN or Notices.
> * The WG saw that Document Diagram contains two classes, the first one defining eForms big phases and a second one which contains more granularity “epo:notification-phases-types” (Planning.pin, Competition.pin, etc). However the WG had missed a third more granular level, taking into account the sub-sub-types specified in eForms such as Planning.Pin.BuyerProfile, Planning.PIN.TimeReduction, etc.
5.	Additional Topics: 
> * The WG stated the need to check out the relationships between Notice, Document, and Procedure. “notifies” “announces” and “relatesTo” seem to have many domains. 
> * "notifies" has three domains: PIN, Document, and Notice. And also three ranges: Procedure, PlannedProcurementPart, and CallForCompetition.
> *  The WG proposed to remove "announces" between Document and Procedure, and to add it between Notice and Procedure.


***

Please find below the minutes of the 07th, 09th, 14th and 16th July:

Participants 07th of July: Paloma Arillo Aranda, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, Jalini Srisgantharajah, and Enric Staromiejski.

Participants 09th of July: Ana Aido, Paloma Arillo Aranda, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, Jalini Srisgantharajah, and Enric Staromiejski.

Participants 14th of July: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Giorgia Lodi, Natalie Muric, Juan Carlos Segura Fernández-Carnicero, Helder Santos, Giampaolo Sellitto, and Enric Staromiejski.

Participants 16th of July: Paloma Arillo Aranda, Cécile Guasch, Giorgia Lodi, Natalie Muric, Juan Carlos Segura Fernández-Carnicero, Helder Santos, Giampaolo Sellitto, and Enric Staromiejski.


**Topic of discussion**: Pending Actions from the mappings of the current TED forms

The approach of 4 meetings was focused in the different actions points came up from the mappings of the current TED forms to the ePO Ontology. The pending actions and the discussions were the following ones: 

1. Values with VAT or without VAT
> * According to the current TED forms all the values are without VAT. However in the ontology that differentiation is not properly modelled.
> * Currently the ontology has three different types of values "Financial Offer Value", "Procurement Value" and "Value". According to latest discussions the WG asked why these three classes are needed. 
> * Everis presented a new version of the diagram which only includes the class Value.
> * Everis proposed to create a new codelist which will list different type of taxes. 
> * The WG reviewed the attributes of value, they considered a description attribute for the "OtherCharges".
> * The WG decided to do the financial Offer value as a property that links the "TenderLot" with "Value".

2. To discuss with the WG if epo:hasEstimatedTenderInvitationDate Date should be at the Lot Level. Also the DPS termination (in Procedure we have “CompetitionTermination” and according to its definition it is the same as the “DPSTermination”).
> * The WG decided whether the EstimatedTender… should be at lot level and not procedure level. The WG agreed and then in the ontology we have to include it in the Extension
> * Concerning the DPS (in Procedure we have “CompetitionTermination” and according to its definition it is the same as the “DPSTermination”), we have changed the definition of the CompetitionTermination attribute: No further contracts will be awarded in this procedure. 
Additional Information: PIN for Competition needs to be signaled. This field can be used even if no contracts are awarded in the contract award notice.
> > * The WG decided to remove the note in the DPS termination class. 
> > * For the mappings the decision was to use the DPS termination.

3. Winner and how to know its relation with contract
> * Giorgia explained her proposal as resolution of how to know the relation of the winner with the contrat. The proposal is to have a Consortium class in order to be aligned with the W3C Organization ontology. In the W3C ontology Consortium is equal to CollaborationOrganization. However, we can extend the class with our own name that could be "Consortium". The WG agreed. 
> * Eo-group type has been linked to the OrganisationGroup (new class). 
> * The skos concepts sole contractor lead entity, lead entity, group member and sole contractor , where removed from the eo-role-type code list.


***

Please find below the minutes of the 02nd of July: 

Participants: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Helder Santos, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, Jalini Srisgantharajah, and Enric Staromiejski.

**Topic of discussion**: Roles and Subroles

Everis presented, as an action point assigned to them, another solution on how to map the roles and subroles without having the subroles as properties and also an example to check whether the model based on properties for the subroles works or not. Everis explained that the current solution works and showed to the WG a query example to confirm it. However, this solution needs more works around and everis is proposing to have a reification as a better solution. 

The WG also discussed whether the different subroles should be linked to the Agent and not to the Role. The WG also said that if the different subroles are linked to the Agent, we will not know if the subroles is executed by a Buyer or an Economic Operator, for example. The WG said that this always will happen and maybe the best solution will be to have a reification with a taxonomy for the subroles, but rules will need to be defined to control the relationships. The WG still need to discuss further on the different solutions proposed. The WG agreed that the current solution solves the problems for the TED mappings, but the solution difficult to maintain the coherence between the roles and subroles.


***

Please find below the minutes of the 30th of June: 

Participants: Paloma Arillo Aranda, Giorgia Lodi, Thor Møller, Natalie Muric, Ioannis Rousochatzakis, Juan Carlos Segura Fernández-Carnicero, Jalini Srisgantharajah, and Enric Staromiejski.

**Topic of discussion**: Roles and Subroles

Everis presented the diagram roles and roles which was updated according to the decision made on the 25th June, to implement the subroles as properties. 

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/roles%20and%20subroles.png)

Everis expressed its concerns with the temporary solution. Everis indicated that with this solution the same properties have been created for the different roles which complicates the model. Moreover, some disjointness needs to be included in order to say when to use one property or the other one. The WG agrees that the many properties  complicates the understand-ability of the model. However, as there is an urgency with the TED mappings for the pilot project the WG agreed to go with this approach, but to make clear that this is a temporary solution. The WG also asked if the temporary solution works. One action point was assigned to everis to provide to the WG an rdf example to see if the model works. 

Everis proposed another possible solution which is gathered in this presentation [presentation](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/Everis_Roles%26Subroles.pptx) (see slide 4). 

Action Point:

- Everis generate the owl turtle of the roles model. 

- Everis to check if the model works with the new approach.

***

Please find below the minutes of the 25th of June: 

Participants: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, Jalini Srisgantharajah and Enric Staromiejski.

**Topic of discussion**: Roles and Subroles

The meeting was focused on the everis presentation on how to model the roles and subroles in the ontology. Everis created a [presentation](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/Everis_Roles%26Subroles.pptx) to gather different possibilities on how to model the roles and subroles. The Everis proposal is to create a reification that allows to link the roles and subroles with Lots. A reification is the ability to treat a Statement as a Resource , and hence to make assertions about that statement. A statement may be reified as many different resources, allowing different manifestations (“statings”) of that statement to be treated differently if required.

After the presentation of the everis solution, the WG said that the solution lacks the relationship between the Agent and the new reification class. Everis did not agree because in the end the class agent is a metaclass, and therefore a Role is at the end an agent. 

Everis also presented an example in RDF to show how the roles and subroles model should be solved. The WG asked that according to the RDF presented, how the users will know that the Agent is uniquely identified by a role. The WG thoughts that the Agent needs to be linked to the reification. The WG also discussed whether the contact point should be linked or not to the role and agent.

The WG discussed the name of the reification class. The proposed name is "ProcedureRoleActivity". The WG says "ProcedureInvolvement". 
WG by the moment to use the Cécile solution from last week. 

Some other discussions were: 
* It is needed to remove the link between role and contract point. 
* The reification needs to link Agent, role, subrole, lot, and contact point. 

Conclusion: 

As the everis proposal is not enough clear and needs more discussion, the WG decided to create a temporary solution that is based in to create the subroles as properties that link the different roles to the Lot.


***

Please find below the minutes of the 16th and 18th of June: 

Participants 16th June: Ana Aido, Paloma Arillo Aranda, Maria Font, Giorgia Lodi, Natalie Muric, Helder Santos, Juan Carlos Segura Fernández-Carnicero, and Giampaolo Sellitto.

Participants 18th June: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Giorgia Lodi, Natalie Muric, Roberto Reale, Helder Santos, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, Jalini Srisgantharajah and Enric Staromiejski.

**Topic of discussion**: Roles and Subroles

The OP explains the need to change the roles and subroles due to the mappings of the current TED forms to the eProcurement Ontology. The OP explains that as the model is now, it is not possible to know which subrole (e.g. recipient, execution of the payment, etc.) is playing a role and its participation in a Lot. For that purpose, Giorgia Lodi explained a couple of examples created to solve the situation. After the explanation of the examples, the WG continued discussing and trying to solve the problem with the usage of examples. The following presentation captures some of the possible solutions to the problem. However, the WG did not arrive at an agreement and everis will propose a solution for the next 25th of June. 

[Roles and Subroles presentation](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/Roles%20and%20Subroles.pptx)

It was also suggested to make predicates from the subroles.  The predicate "acts on behalf of" between Buyer and Central Purchasing Body is to be removed.
***

Please find below the minutes of the 9th and 11th of June

Participants 9th of June: Ana Aido, Paloma Arillo Aranda, Vibeke Engesaeth, Maria Font, Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Helder Santos, Juan Carlos Segura Fernández-Carnicero, and Giampaolo Sellitto.

Participants 11th of June: Paloma Arillo Aranda, Vibeke Engesaeth, Maria Font, Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Helder Santos, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, and Jalini Srisgantharajh.

**Topic of discussion:** [Definitions](https://github.com/OP-TED/ePO/blob/2042074d3a7e21b69f2892b645511ad083c13a05/v2.0.1/01-Glossary/ePO-Glossary.xlsx)

During the meeting the following concepts were defined: 

* EstimatedContractNoticeublicatinoDate
* AcceleratedProcedureJustification
* ProcedureType
* AdditionalInformationDeadline
* CurrencyType
* AvailabilityDate
* NonpublicationJustification
* MainClassification 
* AdditionalCategory
* ContractNatureType 
* AdditionalContractNature

Submission terms are to apply to lots because all procedures have at least one lot and the terms can be different per lot.

Tender receipt deadline was removed from ProcedureTerm because it is covered by SubmissionDocumentType and SubmissionDeadline in the class SubmissionTerm.

***

Please find below the minutes of the 04th of June

Participants: Ana Aido, Paloma Arillo Aranda, Maria Font, Cécile Guasch, Giorgia Lodi, Natalie Muric, Roberto Reale, Helder Santos, Juan Carlos Segura Fernández-Carnicero, and Giampaolo Sellitto.

**Topic of discussion:** Roles and Functions

The WG discussed a new way on how to model the different roles. Currently, the way to do it is through the class “Function” which is linked to the Agent. This class has a dependency on a codelist named “function-taxonomy” which indicates the function that for example, an organization is executing. The problem identified was that different functions are grouped in the same list and it is very difficult to distinguish which one is executed by an Organisation or by a Buyer for instance. Moreover, some functions can only be executed by one specific role. 

In order to propose a new way of modelling the roles and functions, a presentation with a new proposal was created and discussed. The WG agreed on the new way and it will be implemented in the model. This [presentation](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/Roles%20subroles%20and%20Regulatory%20Framework%20Providers.pptx) gathers the final decision, excluding the Evaluator that also needs to be added as a role.  The Evaluation board is composed of evaluators. 

**Topic of discussion:** [Definitions](https://github.com/OP-TED/ePO/blob/2042074d3a7e21b69f2892b645511ad083c13a05/v2.0.1/01-Glossary/ePO-Glossary.xlsx)

During the meeting the following concepts were defined: 

* AdditionalActivityType

Action Point:

* @WG to discuss on the national/international law to be used for the crossborder law.  The Core Public Service Vocabulary and the Legal Framework in the CCCEV could perhaps be reused or be sources of inspiration.


***

Please find below the minutes of the 02nd of June

Participants: Ana Aido, Paloma Arillo Aranda, Vibeke Engesaeth, Maria Font, Cécile Guasch, Giorgia Lodi, Natalie Muric, Helder Santos, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, and Jalini Srisgantharajh.

**Topic of discussion:** [Definitions](https://github.com/OP-TED/ePO/blob/2042074d3a7e21b69f2892b645511ad083c13a05/v2.0.1/01-Glossary/ePO-Glossary.xlsx)

During the meeting the following concepts were defined: 

* epo:Name
* epo:AdditionalInformation
* epo:Description
* epo:Title
* epo:Justification
* epo:AbnormallyLowJustification

Concepts and instances were removed from these definitions because concepts and instances are inferred by the semantic world.

The exclusion criterion was removed from Exclusion ground type.

Identifier and classification were removed from the item class and are to be dealt with when dealing with eCatalogue.

Action points:

* @OP, to relook the AwardCriteria and the AwardDimensionType
* @WG to check item when dealing with eCatalogue

***

Please find below the minutes of the 28th of May: 

Participants: Paloma Arillo Aranda, Vibeke Engesaeth, Cécile Guasch, Giorgia Lodi, Natalie Muric, Thor Møller, Roberto Reale, Helder Santos, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto.

**Topic of discussion:** [Definitions](https://github.com/OP-TED/ePO/blob/2042074d3a7e21b69f2892b645511ad083c13a05/v2.0.1/01-Glossary/ePO-Glossary.xlsx)

During the meeting the following concepts were defined: 

* epo:AwardCriterionType
* epo:FixedValue
* epo:Size
* epo:JustificationType

Other modelling actions:

* epo:EOSizeType was moved from EconomicOperator to Business. 
* epo:CountryIdentification class was removed.

Action Points: 

* @OP: To find a definition for the AwardDimension
* @everis: Use the common definition for the NonAwardJustification
* @everis: To check some attributes if they are used in TED
* @everis-ESPD: Definitions for CriterionPropertyGroup
* @OP:DesignContestRegimeTerm to check definition in TED
* @OP: To check EOGroupType

***

Please find below the minutes of the 19th and 26th of May: 

Participants 19th May: Paloma Arillo Aranda, Vibeke Engesaeth, Maria Font, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Helder Santos, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, and Jalini Srisgantharajh.

Participants 26th May: Ana Aido, Paloma Arillo Aranda, Maria Font, Cécile Guasch, Giorgia Lodi, Natalie Muric, Roberto Reale, Helder Santos, Juan Carlos Segura Fernández-Carnicero, and Giampaolo Sellitto.

**Topic of discussion:** Procurement Documents Access

During both meetings the WG discussed whether there was a need to have the class Access Terms to indicate the  access to some parts of the restricted procurement documents. The WG discussed creating a new class named DocumentCollection whereby all the procurement documents could belong to a collection. This class would have two properties that link the Document collection to the Channel. One of the two would be the property for the restricted access of the Procurement Documents.

The WG discussed the sense to have the Document Collection class or not. The WG also noted that the goal of this class was to remove the relations from an individual document. For that purpose, the WG worked on an example in order to see the differences between a Document and a Document Collection, and if this last one is really necessary. See here the [example](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/DocumentCollection.pptx). After the discussing example the WG saw that the DocumentCollection class creates complexity and  is not needed.

Moreover, and to detail the discussions that took place in both meetings, the following points were discussed: 

* The WG discussed whether the Access Term and landing page are needed. The WG said that it is needed however some of its attributes should be moved to Procedure (e.g. Additional information deadline should go to Procedure). 
* Landing page is a webpage to indicate where you can find all the documents, and inside you have all documents URLs. This landing page can be always applied to a procurement document.


***

Please find below the minutes of the 14th of May:

Participants: Paloma Arillo Aranda Maria Font, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Helder Santos, Juan Carlos Segura, and Jalini Srisgantharajh.

**Topic of discussion:** [Definitions](https://github.com/OP-TED/ePO/blob/2042074d3a7e21b69f2892b645511ad083c13a05/v2.0.1/01-Glossary/ePO-Glossary.xlsx)

The WG started the meeting with the discussion of the epo:RectrictedCommunicationJustification which is an attribute of the class Document. The WG analysed where this restriction is used in other classes. For that purpose, the eForms mapping was checked and the epo:RestrictedCommunicationJustification was also used in the AccessTerms. 
The WG discussed which is the meaning of the AccessTerms and whether these terms should be linked to the Documents since they refer to conditions and stipulations about where and how to access the procurement documents. The only association in the ontology between the AccessTerms and the Documents is through the class Channel. The WG said that through the AccessTerms the only Documents that can be consulted are the restricted ones, but they asked how the full Documents that not restricted can be consulted. For that purpose, the WG made an exercise, through a real case, to see how the model should be. After this exercise the following modelling actions took place: 

* In the AccessTerm class SomeProcurementDocumentsRestrictedJustification the datatype was changed from Text to Code.
* In the AccesTerms class a new attribute was created ProcurementDocumentLandignPage. This attribute means the internet address for accessing unrestricted procurement documents and replaces the property epo:hasDownloadURL that linked AccessTerms and Channel.


***

Please find below the minutes of the 12th of May: 

Participants: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Vibeke Engesaeth, Maria Font, Giorgia Lodi, Natalie Muric, Roberto Reale, Helder Santos, Juan Carlos Segura, Giampaolo Sellitto, and Jalini Srisgantharajh.

**Topic of discussion:** [Definitions](https://github.com/OP-TED/ePO/blob/2042074d3a7e21b69f2892b645511ad083c13a05/v2.0.1/01-Glossary/ePO-Glossary.xlsx)

During both meetings the following concepts were defined: 

* epo:FormalOrganization
* epo:RegisteredOrganisation
* epo:RecurrenceIndicator (epo:ContractNotice)
* epo:PreferredPublicationDate (epo:Notice)
* epo:FormType (epo:Notice)
* epo:NotificationPhasesType (epo:Notice)
* epo:NotificationPhasesContentType. The enumeration name, the property and the mapping were changed.
* epo:DPSUsage (epo:DynamicPurchaseESystemTechnique) 
* epo:DPSCondition (epo:DynamicPurchaseESystemTechnique)
* epo:ReceptionDate (epo:Document)
* epo:DispatchDate (epo:Document)
* epo:UUID (epo:Document)
 
***

Please find below the minutes of the 5th and 7th of May: 

Participants 5th of May: Ana Aido, Paloma Arillo Aranda, Vibeke Engesaeth, Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Helder Santos, Giampaolo Sellitto, Juan Carlos Segura, Jalini Srisgantharajh, and Enric Staromiejski.

Participants 7th of May: Ana Aido, Paloma Arillo Aranda, Vibeke Engesaeth, Cécile Guasch, Giorgia Lodi, Natalie Muric, Helder Santos, Giampaolo Sellitto, Juan Carlos Segura, and Enric Staromiejski.


**Topic of discussion:** [Definitions](https://github.com/OP-TED/ePO/blob/2042074d3a7e21b69f2892b645511ad083c13a05/v2.0.1/01-Glossary/ePO-Glossary.xlsx)

During both meetings the following concepts were defined: 

* epo:BuyerLegalType. The concept was renamed by "BuyerType". In addition, the WG added the following information to clarify the roles usage: "_This is the legal form of an agent when it plays the role of the buyer._

_The reason why this classification is associated to the buyer and not to the agent is that these categories are included in the procurement legislation and to avoid the misunderstanding that these categories define the legal nature of the organisation. This may not be necessarily the case, since the categories refer to the agent exclusively when playing the role of buyer but not to the "legal form" of the buyer._"
* epo:MainActivityType. This attribute was moved to the "Organisation" class since a Buyer that is a role can be the role of an Organisation.
* epo:ActivityDescription. It was also moved to the Organisation class by the same reasons than the "MainActivityType".
* epo:BuyerLegalTypeDescription. The WG decided to remove this attribute from the Buyer class since eForms does not use this term for other types of Buyer. 
* epo:Channel
* epo:endPoint
* epo:FunctionType

Action Points: 

* @everis to propose definitions for common concepts (Additional Information, Description, endpoint, name, title (see DC terms also for ID))

* @everis to change in the eForms mappings that endpoint is not anymore URI, it is now text

* @everis to update mappings for buyer role and main activity


***

Please find below the minutes of the 30th of April:

Participants: Paloma Arillo Aranda, Vibeke Engesaeth, Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Helder Santos, Juan Carlos Segura, Giampaolo Sellitto, and Enric Staromiejski. 

**Topic of Discussion:** Buyer Profile

During this meeting, the WG discussed whether the Buyer Profile was needed or if it could be replaced by another existing class. In the course of this discussion the following exchange of ideas were debate: 

* According to the model, a Buyer has a Buyer Profile which is a "Website address where the buyer publishes information on its procurement procedures and general information.". According to this definition, the WG saw clearly that a Buyer Profile is a Channel. With that proposal, the Buyer which is a role and plays the role of an Agent and the Buyer uses the Buyer Profile, which is a Channel.
* The  WG proposed that there is no need to have a URL attribute for the Buyer Profile since the Channel already has a URL.  
* The WG proposed to link the channel and the agent through the property "ownedBy". The WG was inspired by the Core Public Service Vocabulary. This property has to be understood as who is the responsible of the channel. 

The WG after a long discussion agreed on the following decisions: 

* Keep buyer profile which is a Channel. 
* We use the buyer profile at the Notification time. 
* After a discussion on the property "ownedBy" the WG decided to keep and added a definition to clarify what OwnedBy means. 

***

Please find below the minutes of the 28th of April: 

Participants: Paloma Arillo Aranda, Vibeke Engesaeth, Cécile Guasch, Maria Font, Giorgia Lodi, Thor Møller, Roberto Reale, Juan Carlos Segura Fernández-Carnicero, Giampaolo Sellitto, Jalini Srisgantharajh.

**Topic of Discussion:** [Definitions](https://github.com/OP-TED/ePO/blob/2042074d3a7e21b69f2892b645511ad083c13a05/v2.0.1/01-Glossary/ePO-Glossary.xlsx)

During the meeting the Working Group was working on the definitions of the following concepts: 

* epo:Agent
* epo:RegisteredOrganization
* epo:Business
* epo:EconomicOperator
* epo:System
* epo:PublicOrganisation
* epo:Person
* epo:Location
* epo:OpeningHoursSpecification
* epo:Period
* epo:Address
* epo:Buyer
* epo:ContractingEntityIndicator (Attribute of the class epo:Buyer)
* epo:ProcurementServiceProvider

The above concepts can be also consulted in the diagrams "Agent" and "Buyer and Organization", see [here](https://eprocurementontology.github.io/CDM_Report/HTML/index.htm)

***

Please find below the minutes of the 23rd of April:

**Participants:** Paloma Arillo Aranda, Vibeke Engesaeth, Maria Font, Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Helder Santos, Juan Carlos Segura, and Jalini Srisgantharajh.

**Topic of Discussion:** [Mappings](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.1/v2.0.1/03-Analysis%20and%20design/Mappings/Ontology_eForms_Mapping_New%20Regulation.xlsx)

During the meeting the followings BTs were discussed: BT-71 and BT-79

**Topic of Discussion:** Definitions

During the meeting the WG worked on the definitions of the Procurement Criterion. The definition decided for this concept was: 

_A criterion specific to Procurement._

_Additional Information:_

_This Procurement Criterion can be only Exclusion Ground, Selection Criterion or Award Criterion. Each of these criteria can contain subcriteria (Criterion class)._

During the creation of the definition of the Procurement Criterion, the WG detected that the attribute Procurement Criterion Applicability is not needed since it already used in the Selection Criterion and Exclusion Ground. 

**Action Points**: @everis to change the mapping of the Procurement Criterion Appplicability based on its usage in the Seclection Criterion and Exclusion Ground.

***

Please find below the minutes of 21st of April:

**Participants:** Paloma Arillo Aranda, Vibeke Engesaeth, Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Helder Santos, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajh and Enric Staromiejski.

**Topic of discussion:** [Organisation Roles and Subroles](https://github.com/eprocurementontology/eprocurementontology/issues/240)

**Action Point:** @everis to finalise the definition of the "Function" class with the addition of examples. 

***

Please find below the minutes of the 14th, 15th, 16th and 17th of April: 

**Participants 14th of April:**  PAna Aido, Paloma Arillo Aranda, Vibeke Engesaeth, Cécile Guasch, Thor Møller, Natalie Muric, Roberto Reale, Helder Santos, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajh, and Enric Staromiejski. 

**Participants 15th of April:** Ana Aido, Paloma Arillo Aranda, Vibeke Engesaeth, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Helder Santos, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajh, and Enric Staromiejski. 

**Participants 16th of April:** Paloma Arillo Aranda, Vibeke Engesaeth, Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Helder Santos, Juan Carlos Segura, and Enric Staromiejski.  

**Participants 17th of April:** Paloma Arillo Aranda, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajh, and Enric Staromiejski.


**Topic of Discussion:** [Organisation Roles and Subroles](https://github.com/eprocurementontology/eprocurementontology/issues/240)

**Action Points:**

* @everis to finalise the mappings of the BT-08 Organisation Roles for Planning, Competition, Direct Award Prenotification, Result and Contract Modification phases. 

* @everis to complete the functions taxonomy


***

Please find below the minutes from the 7th of April:

Participants: Paloma Arillo Aranda, Vibeke Engesaeth, Maria Font, Hilde Kjølset, Giorgia Lodi, Thor Møller, Natalie Muric, Timo Rantanen, Roberto Reale, Hector Rico, Marc Christopher Schmidt, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajh and Enric Staromiejski.

Topic of Discussion: [Organisation Roles and Subroles](https://github.com/eprocurementontology/eprocurementontology/issues/240)

Action Point: @everis to check the relationship between Location and Channel. 

Topic of Discussion: Evaluation Method Type

The WG discussed the need of whether it is correct to have a code list with pass, fail, weighted. OP explained that the other day there was a discussion where the PASS-FAIL topic was discussed. In this meeting it was suggested contrary to some participants understanding that a tenderer does not have to pass all selection criterion first, a weighting was used to see who passed or fail otherwise there would always need to be  a minimal value for the criterion.  During the aforementioned meeting it was decided to ask implementers in the ontology group of their thoughts. The opinion in the WG was that a criterion needed to pass the selection criterion first, and the second step in a multi-stage procedure was to apply the weightings to see which economic operators could proceed to the award phase. 
 
As a conclusion of the discussion the WG decided that, for the time being, it does not affect the ontology at this point in time and that the discussion should be passed back for discussion in the ESPD.  Marc Christopher agreed to seek a legal opinion on the situation. 


***

Please find below the minutes from the 31st of March and the 02nd of April:

Participants 31st of March: Paloma Arillo Aranda, Sofia Berenguer, Cécile Guasch, Laszlo Ketszeri, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajh, Enric Staromiejski and Arleta Wlodarcyk. 

Participants 02nd of April: Paloma Arillo Aranda, Giorgia Lodi, Natalie Muric, Roberto Reale, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajh, and Enric Staromiejski. 

Topic of Discussion: [Organisation Roles and Subroles](https://github.com/eprocurementontology/eprocurementontology/issues/240)
 
Action Points:
- @everis check code legal-form-type. This code is not in euvocabularies. It comes from a directive. To take in the future. 
- @everis apply similar mapping of the BT-165to BT-706 and BT-746. 
- @everis completation of the mediation body and review body. 
- @everis change the porperties that link Procedure Terms and Organization.

***

Please find below the minutes from the 24th and 26th of March: 

Participants 24th March: Paloma Arillo Aranda, Vibeke Engesaeth, Cécile Guasch, Giorgia Lodi, Thor Møller, Roberto Reale, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajh, and Enric Staromiejski.

Participants 26th of March: Ana Aido, Paloma Arillo Aranda, Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajh, and Enric Staromiejski.

Topic of Discussion: [Organisation Roles and Subroles](https://github.com/eprocurementontology/eprocurementontology/issues/240)

Action Point: @everis- Add attributes to Business from the Core Business Vocabulary

***

Please find below the minutes from the 19th of March:

Participants: Paloma Arillo Aranda, Cécile Guasch, Vibeke Engesaeth, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajh, and Enric Staromiejski. 

Topic of Discussion: Registered Organization 

OP explained that everis carried out an analysis to identify those classes that have not been used in the eNotification phase. One of these not used classes is RegisteredOrganisation. OP asked the WG if we did not use this class and the WG replied that this class was indirectly used because it is a parent class of the class which is used in Result for example. The RegisteredOrganization class appears on the Agent and Procurement Roles diagrams. 

Action Points: 
- @everis: Check that the classes identified as not used are not used indirectly.
- CG to check on how the term Nationality is defined by the Anti-Money Laundering Directive

Topic of Discussion: [Mappings](https://github.com/eprocurementontology/eprocurementontology/tree/v2.0.1/v2.0.1/03-Analysis%20and%20design/Mappings)  - BT-706 Winner Owner Nationality

The discussion points of the topic can be found on the mappings file in the BT-706 Winner Owner Nationality. 

Action Points: 
-	@everis: Create an issue in the Core Person Vocabulary asking about how the Nationality of a person is represented. 


***

Please find below the minutes from the 17th of March:

Participants: Paloma Arillo Aranda, Vibeke Engesaeth, Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Timo Rantanen, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajh, and Enric Staromiejski.

Topic of discussion:  Buyer 
 
The WG discussed the issue "topic of discussion" that was created in GitHub and commented. For more details see https://github.com/eprocurementontology/eprocurementontology/issues/237. 

In this issue was reflected the discussion that took place in the last meeting. According to Jachym’s reply is possible that Buyer has activities in the Public Sector and Private Sector at the same time. Taking into account this response the WG said that if it is needed to know if the buyer has another activity that is not the one specified in the code list main-activity or other main activity the following ideas were proposed: 

-	to call the code list “other main activities” as "NACE".

Also, the property linking the Buyer to the code was named “hasEntityActivity”.  Additionally, the WG discussed the need to have two attributes, one for the mainactivity code and the other one for the NACE code. According to the disjointness, this is not possible, we should have just one and then the user selects which code is used. The final decision was to have these two codes and the same predicate with a disjoint to both codes, or the main activity is one or the other one. The attribute in the Buyer class for the codes was named "MainActivityType" code.

Concerning to the attribute in the Buyer class named "OtherActivityDescription", the WG decidedd to rename it “ActivityDescription” and the following note of when this should be used was added in the model:

-	“In the ePO ontology a taxonomy with all activities, based on different classifications (COFOG, UTILITIES, NACE), will be provided. In ePO, this element is to be used exclusively to complement the definition attached to the MainActivityCode.
However, in eForms, there is the code "other" to cover undefined activities. For mapping to this eForms feature, one could also use this property.”

Action Points: 
-	TR: Provide an example of where a buyer would have difficulty choosing from the codes in the main activity table and where it would be advantageous to use the NACE code. 


***

Please find below the minutes from the 12th of March:

Participants: Ana Aido, Paloma Arillo Aranda, Vibeke Engesaeth, Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Timo Rantanen, Roberto Reale, Giampaolo Sellitto, Helder Santos, Juan Carlos Segura, and Enric Staromiejski.

Topic of Discussion: [Buyer](https://github.com/eprocurementontology/eprocurementontology/issues/237)

Action Point: 

@everis: Add a link to the EU Vocabularies where the code list is available and just add three codes the rest no needed. It is just to avoid a lot of work mantaining them. See the buyer diagram.

***

Please find below the minutes from the 10th of March: 

Participants: Paloma Arillo Aranda, Vibeke Engesaeth, Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Helder Santos, Juan Carlos Segura, Jalini Srisgantharajah, and Enric Staromiejski.

**Topic of Discussion:** [Mappings](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.1/v2.0.1/03-Analysis%20and%20design/Mappings/Ontology_eForms_Mapping_New%20Regulation.xlsx)

The following BTs were discussed:BT-768 Contract Framework Agreement

**Topic of Discussion:** [Strategic procurement](https://github.com/eprocurementontology/eprocurementontology/issues/227)

**Old definition**

Condition that aims to reduce the environmental impacts of the procurement, fulfil social objectives and/or buy an innovative work, supply or service.

Additional Information:
The conditions must be achieved via either technical specifications, selection criteria, award criteria and contract terms.

**New definition**

Public procurement that contributes to achieving pressing policy goals.

Additional Information:
Specific strategic goals could be, for example, environmental protection, innovation, job creation and the development of small and medium enterprises.

Based on https://legalinstruments.oecd.org/en/instruments/OECD-LEGAL-0411 (see paragraph on "background information".

WG Approval 10/03/2020

**Topic of Discussion:** [Green procurement](https://github.com/eprocurementontology/eprocurementontology/issues/230)

**Old definition:**

Approach whereby public authorities seek to procure goods, services and works with a reduced environmental impact throughout their life cycle when compared to goods, services and works with the same primary function that would otherwise be procured.

Additional Information:
Tightly related are article 68 - Life-cycle costing and article 67 - most economically advantageous tender (see GPP handbook) https://ec.europa.eu/environment/gpp/pdf/Buying-Green-Handbook-3rd-Edition.pdf
An instance of the class GreenProcurement is represented in eForms with the code "env-imp" defined in the codelist strategic-procurement.


**New definition:**

Approach whereby buyers seek to procure with a reduced environmental impact.

Additional Information:

The approach may apply to the complete life cycle. The reduced environmental impact is in comparison to goods, services and works with the same primary function that would otherwise be procured. 

Tightly related are article 68 - Life-cycle costing and article 67 - most economically advantageous tender (see GPP handbook) https://ec.europa.eu/environment/gpp/pdf/Buying-Green-Handbook-3rd-Edition.pdf
An instance of the class GreenProcurement is represented in eForms with the code "env-imp" defined in the codelist strategic-procurement.paragraphs) https://ec.europa.eu/environment/gpp/pdf/Buying-Green-Handbook-3rd-Edition.pdf

***

Please find below the minutes from the 05th of March: 

Participants: Paloma Arillo Aranda, Giorgia Lodi, Natalie Muric, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajh, and Enric Staromiejski.

Topic of Discussion: [eForms issue 329](https://github.com/eForms/eForms/issues/329)

The working group checked that the eForms issue 329 was correctly implemented in the eProcurement Ontology it was concluded that the implementation met the requirements.

Topic of Discussion: [eForms issue 330](https://github.com/eForms/eForms/issues/330)

The WG checked the reply from eForms and according to it. The WG said that the mapping was performed properly so no further actions were needed concerning the mapping in ePO. However, from this discussion the following modeling actions took place:
* The attributes of the StatisticalInformation class refer to the TenderLot.  This is concluded from the fact that the eForms statistical information is aggregated from the + Notice Result; ++ BG-137 Procedure Lot Result; +++ BG-712 Received Submissions; ++ BG-320 Tender. Therefore the attributes have been renamed in order to clarify that they refer to TenderLot.

 

Action Points: 

•	@everis - Add TenderLot in the attributes of the Statistical information class.


***

Please find below the minutes from the 03rd of March: 

Participants: Ana Aido, Paloma Arillo Aranda, Sofia Berenguer, Vibeke Engesaeth, Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajah and Enric Staromiejski.

Topic of Discussion: [Mappings](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.1/v2.0.1/03-Analysis%20and%20design/Mappings/Ontology_eForms_Mapping_New%20Regulation.xlsx)

The following BTs were discussed: BT-541, BT-5421, BT-5422, BT-5423, BT-543, BT-752, BT-7531 and BT-7532

Action Points: 

•	@everis - change the mapping according to new agreements on selection criterion and that affects to the award criterion: "The WG discussed about the attributes of the "criterion" class. The WG decided to remove those attributes that are not used in ePO (e.g. Objective attribute). Since the CCCEV is not finalised  the WG analysed the attributes of the Criterion class and it was decided to move them to Procurement Criterion, Selection Criterion, Award Criterion, they can be moved to the CCEV later if necessary. 
 
•	@WG - Pay visit to the UBL communication channel


***

Please find below the minutes from the 27th of February:

Participants: Ana Aido, Paloma Arillo Aranda, Sofia Berenguer, Jerry Dimitriou, Maria Font, Cécile Guasch, Giorgia Lodi, Natalie Muric, Roberto Reale, Juan Carlos Segura, Giampaolo Sellitto, and Enric Staromiejski.

Topic of Discussion: [Procurement Criteria](https://github.com/eprocurementontology/eprocurementontology/issues/236)

Topic of Discussion: [Mappings](https://github.com/eprocurementontology/eprocurementontology/tree/v2.0.1/v2.0.1/03-Analysis%20and%20design/Mappings)

The following Business Terms were discussed: BT-748, BT-40

***

Please find below the minutes from the 26th February: 

Participants: Paloma Arillo Aranda, Sofia Berenguer,  Giorgia Lodi, Natalie Muric, Juan Carlos Segura, Giampaolo Sellitto

Topic of Discussion:[Discussion Procurement Criteria](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Presentations/DiscussionProcurementCriteria.pptx)

In order to finalise the mapping, an extra meeting was needed with the OP and some WG members to discuss the Selection Criteria. During this meeting a way on how to model and map the Selection Criterion, whether using CodeLists or representing the subcriterion as subclasses of the Selection Criterion class. 

Action Point: 
•	@everis, to create two diagrams. One includes code lists and the other one the subcriteria are represented as subclasses.

***

Please find below the minutes from the 25th of February: 

Participants: Paloma Arillo Aranda, Vibeke Engesaeth, Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Juan Carlos Segura, Giampaolo Sellitto, Jalini Srisgantharajah, and Enric Staromiejski.

Topic of Discussion: [Mappings](https://github.com/eprocurementontology/eprocurementontology/blob/v2.0.1/v2.0.1/03-Analysis%20and%20design/Mappings/Ontology_eForms_Mapping_New%20Regulation.xlsx)

The following Business Terms were discussed: BT-67, BT-747, BT-748, BT-749, BT-750, BT-40

Action Points:
•	@everis, @OP, @WG: Extra session to discuss how to map the selection criterion.


***

Please find below the minutes from the 20th of February: 

Participants: Paloma Arillo, Giorgia Lodi, Thor Møller, Natalie Muric, Claudia Ribeiro, Juan Carlos Segura, and Enric Staromiejski. 

Topic of Discussion: [Agents and Organisations](https://github.com/eprocurementontology/eprocurementontology/issues/235)
 
Action Point:
-	@everis: Remove all those classes and properties that come from external vocabularies and are not used in ePO. 

***

Please find below the minutes from the 13th of February: 

Participants: Vibeke Engesaeth, Cécile Guash, Giorgia Lodi, Jade Maana, Thor Møller, Natalie Muric, Roberto Reale, Giampaolo Sellitto and Enric Staromiejski.

Topic of Discussion: [Mappings](https://github.com/eprocurementontology/eprocurementontology/tree/v2.0.1/v2.0.1/03-Analysis%20and%20design/Mappings)

The approach of the meeting on the 13th of February was focused on the pending mappings of the Result Phase. The following Business Terms were discussed:757, 165, 706, 746, 151, 774, 775, 776, 715, 725, 716, 712, 635, 636, 634, 756, 195, 197, 196, 198


***

Please find below the minutes from 11th of February: 

Participants: Paloma Arillo, Vibeke Engesaeth, Cécile Guasch, Giorgia Lodi, Juan Carlos Segura, Natalie Muric, Giampaolo Sellito, Jalini Srisgantharajah, and Enric Staromiejski.

Topic of Discussion: [Agents and Organisations](https://github.com/eprocurementontology/eprocurementontology/issues/235)

Topic of Discussion: [Mappings](https://github.com/eprocurementontology/eprocurementontology/tree/v2.0.1/v2.0.1/03-Analysis%20and%20design/Mappings)

The WG checked which the pending mappings to be discussed are. Everis proposed to discuss the BT-34 Recurrence (see the corresponding mappings and decisions [here](https://github.com/eprocurementontology/eprocurementontology/tree/v2.0.1/v2.0.1/03-Analysis%20and%20design/Mappings)).


***
Please find below the minutes from 04th and 06th of February:

Participants 4/02/2020: Cécile Guasch, Thor Møller, Natalie Muric, Roberto Reale, Juan Carlos Segura, Giampaolo Sellito, Jalini Srisgantharajah, and Enric Staromiejski

Participants 06/02/2020: Paloma Arillo, Ana-Maria Babaligea, Vibeke Engesaeth, Giorgia Lodi, Thor Møller, Natalie Muric, Juan Carlos Segura, Giampaolo Sellitto and Enric Staromiejski.

Topic of Discussion: [Procurement Roles](https://github.com/eprocurementontology/eprocurementontology/issues/233)

Action Point: 
* @everis: Change the mappings between the ontology and the eForms according to the proposal on procurement roles and the cagv: Agent. Try to be pragmatic. We need something urgent for discussion where the properties required by eForms can be clearly identified.
* @everis: Modify the diagrams with the inclusion of the new approach of agent and roles.
* @everis: Modify the mappings according to the new approach of Organization and agent classes.

Topic of Discussion: [Document metadata](https://github.com/eprocurementontology/eprocurementontology/issues/234)

Action Point:
* WG: Rediscuss assets after maturity of DCAT

Topic of Discussion: [Mappings](https://github.com/eprocurementontology/eprocurementontology/tree/v2.0.1/v2.0.1/03-Analysis%20and%20design/Mappings)

The WG checked the mappings in order to see what is pending and what is needed to be discussed after the new agreements took during the last WG meetings (roles, organization, planning, etc.).


***

Please find below the minutes from 30th of January:

Participants: Paloma Arillo, Ana-Maria Babaligea, Cécile Guasch, Giorgia Lodi, Vibeke Engesaeth, Natalie Muric, Roberto Reale, Giampaolo Sellito, Juan Carlos Segura, Jalini Srisgantharajah and Enric Staromiejski.

The approach of the meeting on the 30th January was focused on the continuation of the discussion of the everis’ proposal regarding the “Agent” class. 

Everis and OP shared with the WG a copy of the old and new Buyer version as well as a view of the agent diagram that it is suggested to replace the organisation diagram, along with the organisation diagram. The WG used the occasion to discuss the email sent by Georgia regarding the usage of “Agent” and/or the “Organisation” classes and some doubts raised up after her analysis. 

The WG proposes to have a base class that inherits from Agent which represent the legal status. This coul be a legal entity since att the end a legal entity can be an organization. However, in ePO we need to represent also a system and therefore it can not be considered a Legal entity.  

The WG discussed what is a “ProcurementServiceProvider”. The WG said that a good example of it is an eSender and it can act on behalf of Buyer. This clarification raised up a discussion about the usage of “role” properties. The WG explained that we did not focus on processes during the development of the ontology and we did not use roles. Now the problem is what happens when a buyer is an agent. In order to solve this problem, everis proposed to use the property "isA" instead of to use "Role". Moreover, another proposed solution was to create a role class that could act as the role of the buyer, and therefore, there is no need to use the property role. The WG created a new diagram to reflect the different possible solutions proposed. 

After the reflection, the WG decided to create the new class “Role” which is an abstract class. In addition, it was point out that an abstract class organisation role was needed between the different classes ie “buyer” and “agent” to allow an organisation in different cases to be either buyer or economic operator without having to have its information introduced twice and therefore leaving open the opportunity for error conflicting information.However, this approach is still under discussion. 

The picture below shows an example created for the reflection analysis whether to create or not a role class:

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/30012020(1).jpg)

And here the new diagram created for the discussion of the procurement roles:

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/30012020(2).jpg)

Action Points:

* @everis: Presentation in the F2F meeting about old discussions regarding “Buyer”.
* @everis: Attention to abstract classes role and agent need to paid when substantiating.

Interesting links shared during the meeting:

* http://ontologydesignpatterns.org/wiki/Submissions:AgentRole
* https://sparontologies.github.io/pro/current/pro.html

***

Please find below the minutes from 28th of January:

Participants: Paloma Arillo, Ana-Maria Babaligea, Cécile Guasch, Giorgia Lodi, Vibeke Engesaeth, Thor Møller, Natalie Muric, Roberto Reale, Juan Carlos Segura, Jalini Srisgantharajah and Enric Staromiejski. 

The approach of the meeting on the 28th January was focused on the everis’ presentation regarding the “Planning” mappings and the “Agent” class. 

Everis started the meeting explaining its proposal for Planning. Everis explained that the problem discovered doing the mappings to eForms is that some classes cannot be mapped through the PlannedProcurementPart class and therefore the mapping goes through the Procedure in order to arrive to the Lot. A disjoint has been added between the property that links the PIN with the Procedure and the property that links the PIN with the PlannedProcurementPart. Regarding these possible options of the mappings (through the PlannedProcurementPart or Procedure) the WG worked in the following rule in order to know when to go from one or from the other one: 
* In PIN Time-limit the Notice will contain a reference either to PlannedProcurementPart or conversely to Procedure (both are disjoint, see also the diagram Planning). This implies that for PIN Time-limit it is necessary first to discern the existence of one of these classes to know how to get to specific information. For example, some ContractTerms properties like PlaceOfPerformance could be reached either starting from PlannedProcurementPart or through the Lots linked to the Procedure.

Once the Planning mapping proposal was approved by the WG, the second half of the meeting was focused on the everis presentation of the usage of “agent” class instead of the “organization” class. 
Everis explained that we need to have an “agent” class in ePO which should be an extension of an Agent class of a Core Agent Vocabulary from SEMIC. Everis explained that this Core vocabulary does not exist yet, but as everis is now contractor of SEMIC for the maintenance and evolution of some core vocabularies, they want to propose it. Everis explained that this new vocabulary is needed since the FOAF one does not allow proper reuse for ePO. The FOAF Agent class does not have a very good level of granularity in terms of properties and therefore a new Agent vocabulary would extend the FOAF agent class with more properties. 

Everis explained that they are proposing to use the Agent class instead of the organization because in ePO there is the need to represents not only Organizations, also Persons and systems. This proposition was more or less approved by the WG, however, they need that everis shares an example where the class Organization was used in the past and where the Agent class is used now. 

Action Points: 
* @everis: add a WG comment each time a PIN Time Limit  has 2 options this needs to be reflected also in the discussion maybe show the comment.
* @everis: use of the INSPIRE directive for addresses in order to know how to use the Location class and how to improve the Address adding attributes from UBL, the same as SEMIC is doing in its Core Vocabularies. 
* @everis: check the mappings and put in black the mappings that come from “Competition” and therefore were already reviewed. 
* @everis: Compare contact point and the communication channel, and think how the Electronic can be treated as a contact a point. 
* @everis: think about the stereotypes used in the Organization model
* @everis: Share with the WG the comparison between the usage of the class Organization (old diagram) and the class Agent (new proposal) 
* @WG: Reply to the issues created regarding the definitions of the Strategic Procurement (https://github.com/eprocurementontology/eprocurementontology/issues/227), Social Procurement (https://github.com/eprocurementontology/eprocurementontology/issues/229), Innovative Procurement (https://github.com/eprocurementontology/eprocurementontology/issues/228)and Green Procurement (https://github.com/eprocurementontology/eprocurementontology/issues/230). 

***

Please find below the minutes from 21st of January:

Participants: Ana-Maria Babaligea, Cécile Guasch, Giorgia Lodi, Vibeke Engesaeth, Natalie Muric, Roberto Reale, Juan Carlos Segura, Jalini Srisgantharajah and Enric Staromiejski.

During the meeting on the 21st January the following discussions took place:
* Everis presented its proposals on the Qualification System and how it should be mapped:
  * After a discussion about the QS and how it should be understood, the WG decided to put in on hold and not to go on the mapping of the QS until an explanation on how a QS works is addressed to and answered by DG GROW:
    Action Point: for OP and everis: forward an email to Isabel da Rosa asking regarding QS:
    * Definition
    * The data flow
* The WG checked that the approach followed by everis for the mapping of the eForms and ePO on DAP (Direct award pre-notification) seems correct and agreed that everis can go on with the mapping.
  * The WG worked on the definition of the Voluntary Ex-ante Transparency Notice:
    Voluntary Ex-ante Transparency Notice: A notice informing of the intention to award  a contract without prior publication of a contract notice.

    Additional Information:

    For European notices above the threshold

    "A means of advertising the intention to award the contract without opening it up to formal competition. A contracting authority may decide that a contract does not require prior publication through a contract notice in the O.J.E.U. A reason for this decision may be that the contract meets the exceptional conditions described in Article 31 of Directive 2004/18/EC. In a recent V.E.A.T notice the reason was listed as “extreme urgency brought about by events unforeseeable by the contracting entity and in accordance with the strict conditions stated in the Directive” .
"Voluntary Ex-Ante Transparency Notice" (VEAT) where a contracting authority deems that a contract does not require prior publication of a contract notice in the European Journal (OJEU). This may apply, for example, if the contract meets the exceptional conditions justifying direct award of contracts.

     This definition is still to be worked on.

* The WG reviewed the definitions provided by everis related to strategic procurement:
  * The WG came up with the definition on Green Procurement, based on the one coming from the COMMUNICATION FROM THE COMMISSION TO THE EUROPEAN PARLIAMENT, THE COUNCIL, THE EUROPEAN ECONOMIC AND SOCIAL COMMITTEE AND THE COMMITTEE OF THE REGIONS (https://eur-lex.europa.eu/legal-content/EN/TXT/PDF/?uri=CELEX:52008DC0400&from=EN): “Approach whereby public authorities seek to procure goods, services and works with a reduced environmental impact throughout their life cycle when compared to goods, services and works with the same primary function that would otherwise be procured.”
Action Point: for everis: share the definitions on the rest of the definitions by means of GH issues:
    * https://github.com/eprocurementontology/eprocurementontology/issues/227 - Strategic Procurement Definition
    * https://github.com/eprocurementontology/eprocurementontology/issues/228 - Innovative Procurement Definition
    * https://github.com/eprocurementontology/eprocurementontology/issues/229 - Social Procurement Definition
    * https://github.com/eprocurementontology/eprocurementontology/issues/230 - Green Procurement Definition

Action Point: for WG review the above mentioned issues in preparation for next Tuesday’s 28th meeting.

***

Please find below the minutes from the 16th of January:

Participants: Paloma Arillo-Aranda,  Ana-Maria Babaligea, Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Roberto Reale, Juan Carlos Segura, Jalini Srisgantharajah and Enric Staromiejski.

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/20200116.JPG)

***

Please find below the minutes from the 14th of January:

Participants: Paloma Arillo-Aranda,  Ana-Maria Babaligea, Cécile Guasch, Giorgia Lodi, Natalie Muric, Giampaolo Sellitto, Juan Carlos Segura, Jalini Srisgantharajah and Enric Staromiejski.

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/20200114.JPG)

***

Please find below the minutes from the 09th of January:

Participants: Paloma Arillo-Aranda, Giorgia Lodi, Vibeke Engesaeth, Thor Møller, Natalie Muric, Roberto Reale, Giampaolo Sellitto, Juan Carlos Segura, Jalini Srisgantharajah and Enric Staromiejski.  

The meeting on the 09th of January was focused on the mapping of the CAN in the “Result” stage. 

The following table shows the BTs mapped as well as how it is represented in the ePO EA file. All the mappings can be consulted in the “Result” diagram:

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/20200109.JPG)

***

Please find below the minutes from the 07th of January:

Participants: Paloma Arillo-Aranda, Giorgia Lodi, Vibeke Engesaeth, Thor Møller, Natalie Muric, Roberto Reale, Giampaolo Sellitto, Juan Carlos Segura, Jalini Srisgantharajah and Enric Staromiejski.  

The meeting on the 07th of January was focused on the mapping of the CAN in the “Result” stage. 

The following table shows the BTs mapped as well as how it is represented in the ePO EA file. All the mappings can be consulted in the “Result” diagram:

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/20200107.png)

Other comments:
* NM and ES summarised the work performed until today. NM asks ES which is the status of the Planning. ES explained that it is 90% done, he needs a couple of days to finish. 
* ES also explained that 2 new packages have been created for the representation of the IFLA model in ePO. 
* NM proposed to have the F2F meeting on the 3rd March, the 17th and 18th June, and 25th and 26th November. 

Action Points: 
* Everis: check where DAP and QS are unique in eForms for Thursday 9 January.
* Everis: Come up with a proposal on how to model the DAP and QS for Tuesday 14 January. 
 
***

Please find below the minutes from 19th of December:

Participants: Paloma Arillo Arranda, Ana-Maria Babaligea, Cécile Guasch, Thor Møller, Natalie Muric, Roberto Reale, Giampaolo Sellitto, Juan Carlos Segura and Enric Staromiejski.  

The meeting from 19th of December was focused on the mapping of the CAN in the “Result” stage. 

The following table shows the BTs mapped as well as how it is represented in the ePO EA file. All the mappings can be consulted in the “Result” diagram:

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/20191219.JPG)

***

Please find below the minutes from 17th of December:

Participants: Paloma Arillo-Aranda, Ana-Maria Babaligea, Cécile Guasch, Giorgia Lodi, Vibeke Engesaeth, Thor Møller, Natalie Muric, Giampaolo Sellitto, Juan Carlos Segura and Enric Staromiejski.  

The meeting from the 17th of December was focused on the mapping of the CAN in the “Result” stage. 

The following table shows the BTs mapped as well as how they are represented in the ePO EA file. All the mappings can be consulted in the “Result” diagram:

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/20191217.JPG)

Other comments:
* The diagrams are partial views of the ontology.
* The evaluation report is the class that links the award decision and the tender. Instead of using to use the Evaluation Report, the WG decided to create a relationship that links the AwardDecision and the Tender Lot (see the new diagram) 

Action Points: 
* Everis: Some attributes of the class “statistical information” have to be split. We need to make a break-down task. 
* Everis: According to the Naming and Design Rules, the object “properties” should be in past. The WG decided to leave it in present and not in past. However, this has to be reflected in the document of the rules. 
* Everis: Create an issue in eForms asking if they are talking about any tender or only the winning tender. 

***

Please find below the minutes of 12th December: 

Participants: Paloma Arillo Aranda, Vibeke Engesaeth, Thor Møller, Natalie Muric, Giampaolo Sellitto, Juan Carlos Segura, Jalini Srisgantharajah and Enric Staromiejski.

The meeting of the 12th December was focused on the mapping of the CAN in the “Result” stage. Natalie Muric explained that this morning Juan Carlos and herself were working on all the BTs with data type value in order to see how they should be mapped. 

The following table shows the BTs mapped as well as how it is represented in the ePO EA file. All the mappings can be consulted in the “Result” diagram:

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/20191212.JPG)

Action points:

* Everis: Disjoint between hasAwardedValue and hasAwardedMaximumValue, as well as, a disjoint between hasAwardedValue and hasAwardedEstimatedValue is needed. 
* Everis: Suggest solutions for the division of inadmissible tenders, abnormally low tenders and the SMEs as there are some incoherencies.

***

Please find below the minutes of the 10th December: 

Participants: Paloma Arillo Aranda, Ana-Maria Babaligea, Thor Møller, Natalie Muric, Juan Carlos Segura and Enric Staromiejski.

The meeting of the 10th December was focused on the mapping of the CAN in the “Result” stage. Natalie Muric explained that this morning Juan Carlos, Thor, Giorgia and herself were working on all the BTs with data type value in order to see how they should be mapped. Natalie showed and explained the mappings came up from that analysis session. Natalie remarked as the main output of this session the fact that we created sub-properties of properties. The properties created are sub-properties of the properties Document “relates To” Procedure. These sub-properties are different in each phase:

* In the case of a Planning form, this sub-property notifies is used. 

* In the case of Competition form, this sub-property announces is used. 

* In the case of Result form, this sub-property summarises is used.

The following table shows the BTs mapped as well as how it is represented in the ePO EA file. All the mappings can be consulted in the “Result” diagram:

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/20191210.JPG)

Other comments: 

* The WG decided to remove the property “hasCeilValue” that linked Procedure and Procurement Value because it is not used anymore in eForms. 


***

Please find below a summary of the conference calls from 03/12/2019 and 05/12/2019:

Meeting: 05/12/2019

Participants: Cécile Guasch, Giorgia Lodi, Thor Møller, Natalie Muric, Giampaolo Sellitto, Roberto Reale, Juan Carlos Segura, Jalini Srisgantharajah and Enric Staromiejski

The meeting of the 5th December was focused on the mapping of the CAN in the “Result” stage.  Everis presented an analysis performed regarding the Procurement Values. The purpose of this analysis was to identify whether the properties that link different classes to the class “Procurement Value” are used or not, and in which phase there are used. This analysis was required due to the same properties are used to link different classes to the class “Procurement Value”. The results of the everis’ analysis are the following ones:

* Lot hasAwardedValue ProcurementValue 
   * BT eForms: Not used
   * Stage: Not used
* Lot hasFrameworkMaximumValue ProcurementValue
   * BT eForms: Not used
   * Stage: Not used
* Lot hasEstimatedUserConcessionRevenue ProcurementValue
   * BT eForms: BT-162 (Pending)
   * Stage: Result
* Lot hasEstimatedBuyerConcessionRevenue ProcurementValue
   * BT eForms: BT-160 (Pending)
   * Stage: Result
* Lot hasEstimatedValue ProcurementValue
   * BT eForms: BT-27
   * Stage: Competition
* FrameworkAgreement hasAwardedValue ProcurementValue
   * BT eForms: Not used
   * Stage: Not used
* Procedure hasCeilValue ProcurementValue 
   * BT eForms: Not used
   * Stage: Not used
* Procedure hasGlobalEstimatedValue ProcurementValue
   * BT eForms: BT-27
   * Stage: Competition
* GroupLot hasEstimatedValue ProcurementValue
   * BT eForms: 
      * BT-27 
      * BT-157
   * Stage: Competition
* GroupLot hasFrameworkMaximumValue ProcurementValue
   * BT eForms: Not used
   * Stage: Not used
* ProcurementValue hasOverallAmount Value
   * BT eForms: Not used
   * Stage: Not used
* ProcurementValue hasMinimumAmount Value
   * BT eForms: Not used
   * Stage: Not used
* ProcurementValue hasMaximumAmount Value
   * BT eForms: BT-157
   * Stage: Competition
* ContractAwardNotice hasTotalFrameworkValue ProcurementValue
   * BT eForms: BT-118
   * Stage: Result
* ContractAwardNotice hasTotalValue ProcurementValue
   * BT eForms: BT-161
   * Stage: Result

During the meeting, the WG discussed the difference between Maximum Value and Estimated Value and whether the Maximum Value was needed or not. This discussion came up because according to the new eForms regulation, the maximum and estimated value are used as equals. Before, eForms used the two terms differently. After the discussion, the WG decided to remove the properties “hasFrameworkMaximumValue” and a new definition for the property “hasEstimatedValue” was created: 

_A forecast of the value of the procurement before competition._

_Additional Information_
_Different cases of estimated values may refer to a lot, the global value of the procedure, or of a combinatorial value of a group of lots._
_The forecast is calculated by the buyer and covers all revenues whether coming from the buyer or third parties._
_See for example recital (19), Article 5 of Directive 2014/24/EU and other articles from the rest of Directives about procurement._

_In the case of framework agreements and dynamic purchasing systems, this refers to the maximum estimated value._

Action point Everis to add references to other Articles.

Finally, the WG decided to have 2 extra-sessions (09th and 10th December) in order to check all the BTs that are data type value and see how they should be mapped. 

Meeting: 03/12/2019

Participants: Ana-Maria Babaligea, Cécile Guasch, Thor Møller, Natalie Muric, Giampaolo Sellitto, Roberto Reale, Juan Carlos Segura, Jalini Srisgantharajah and Enric Staromiejski. 

The meeting of the 3rd December was focused on the mapping on the CAN in the “Result” stage. The following table shows the BTs mapped as well as how it is represented in the ePO EA file. All the mappings can be consulted in the “Result” diagram:

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/20191202.JPG)

Discussions continued on the other value data types in the result forms.  There was some confusion about the eForms business terms BT-660 Framework estimated value, BT-27 Estimated value and BT-660 Framework Estimated Value.  To this end it was decided to create a github issue: https://github.com/eForms/eForms/issues/329 and Everis was asked to check the different properties associated with the procurement value for the next meeting.

***

Please find below a summary of the conference calls from 26/11/2019 and 28/11/2019:

Meeting: 28/11/2019

Participants: Paloma Arillo Aranda, Ana-Maria Babaligea, Cécile Guasch, Natalie Muric, Roberto Reale, Giampaolo Sellito, Juan Carlos Segura and Enric Staromiejski.

The meeting of the 28th November was focused on the mapping on the CAN in the “Result” stage. The following table shows the BTs mapped as well as how it is represented in the ePO EA file. All the mappings can be consult in the “Result” diagram:

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/28112019.JPG)

***

Meeting: 26/11/2019

Participants: Ana-Maria Babaligea, Giorgia Lodi, Natalie Muric, Giampaolo Sellitto, Roberto Reale, Juan Carlos Segura and Enric Staromiejski.

The meeting of the 22nd November was focused on the mapping on the CAN in the “Result” stage.  Work commenced on mapping BT-161 and BT-118 and how to treat the aggregation of the different lots per notice, the work will continue in the next meeting. The following table shows the BTs mapped as well as how it is represented in the ePO EA file. All the mappings can be consult in the “Result” diagram:

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/26112019.JPG)

***

Please find below a summary of the conference calls from  21/11/2019 and 22/11/2019:

Meeting: 22/11/2019
 
Participants: Paloma Arillo Aranda, Vibeke Engesaeth, Thor Møller, Natalie Muric, Giampaolo Sellitto, Roberto Reale, Juan Carlos Segura and Enric Staromiejski.
 
 
The meeting of the 22nd November was focused on the mapping on the CAN in the “Result” stage. The following table shows the BTs mapped as well as how it is represented in the ePO EA file. All the mappings can be consult in the “Result” diagram:

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/22112019.JPG)

***

Meeting: 21/11/2019
 
Participants: Ana-Maria Babaligea, Vibeke Engesaeth, Cécile Guasch, Thor Møller, Natalie Muric, Giampaolo Sellitto, Roberto Reale, Juan Carlos Segura, Jalini Srisgantharajah and Enric Staromiejski.
 
The meeting of the 21st November was focused on the mapping on the CAN in the “Result” stage. OP explained that the mappings are only related to those BTs that only apply to the “Result” stage and therefore were not covered during the mappings on the “Competition” stage. The following table shows the BTs mapped as well as how it is represented in the ePO EA file. All the mappings can be consult in the “Result” diagram: 

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/21112019.JPG)

Other actions:
 
-	Codelist legal-regime, the code "none" has changed into "standard". The definition too has changed to adapt it to  the concept "standard" legal-regime.
***

Please find below a summary of the conference calls from  11/11/2019 and 12/11/2019:

Meeting: 12/11/2019

Participants: Paloma Arillo Aranda, Cécile Guasch, Thor Moller, Natalie Muric, Giampaolo Sellitto, Juan Carlos Segura and Enric Staromiejski.

The meeting of the 12th November was focused on two topics: Mapping of the Planning stage and IFLA presentation related to the versioning. 

Everis started the meeting with the mappings performed internally. Everis explained that those cases where the Lot and Procedure are needed for the mapping, they have been indicated in the mappings file. Enric also explained that he talked with Marc Christopher Schmidt from DG GROW regarding the use of Procedure in the Planning Stage. As a conclusion of the call, Marc Christopher proposed to create an issue.  Everis agreed with the WG,  proposed to create an issue in the eForms GitHub platform in order to clarify the situation detected. The WG agreed that it is also needed to understand whether the purpose foresee, or not, planned procurement as well as procurement and lots.

After the mapping status explanation, Enric continued the meeting with the IFLA presentation related to the versioning. Enric indicated that regarding the versioning, LEX has 2 types of versions: (1) Multi-version and (2) Single version. However, Enric indicated that in ePO the idea is to have only 1 version, a single version which means a new distinct object per version. This new object contains classes explicitly designed to indicate which parts of the documents have change, how, the reason, etc. 

Enric continued the presentation explaining the kind of versioning used in LEX and the proposal for ePO: 
* •	LEX 
* o	Current: in-force version
* o	Self: this version
* o	Next: next version
* o	Previous: previous version
* o	First: Original version
* •	ePO
* o	Current: in-force
* o	Previous

Enric proposed the following identification of the version in ePO: 

o	CEN/BII (CEN TC440) versioning policy--->MajorVersionID.MinorVersionID.BugFixingID

After the versioning explanation, the meeting was focused on how to represent the attributes and properties in the ontology. This discussion came from the need of to have naming and design rules. Everis will work on the definition of the naming and design rules for ePO. 
***

Meeting 11/11/2019

Participants: Vibeke Engesaeth, Cécile Guasch, Thor Moeller, Natalie Muric, Giampaolo Sellitto, Juan Carlos Segura, Jalini Srisgantharajah and Enric Staromiejski. 

The meeting of 11th November was focused on the mapping of the PINs in the Planning phase. 

Everis explained to the WG the situation detected during the mapping performed. During the mapping, Everis detected that the new regulation says that the “Procedure” in some cases is optional and mandatory, and therefore this creates confusion since in the Planning phase the Planned Procurement Part should be used instead the Procedure. The same situation happens with the Lot which force us to make the mapping through Lot class. 

According to the situation explained by Everis, the WG decided to work in some BTs in order to find a solution. The WG took the BG-2 Purpose. The definition says: “the Information about the purpose. This information must be given for the whole procurement procedure and, if they exist, also per lot. In case of a prior information notice used only for in¬formation, this information may differ per part of the notice that may later become a lot or a self-standing procedure”. The WG said that this definition should also make reference to the Planned Procurement Part and not only to the Procedure and lot. 
***

Meeting 07/11/2019

Participants: Paloma Arillo Aranda, Ana-Maria Babaligea, Vibeke Engesaeth, Cécile Guasch, Thor Moeller, Natalie Muric, Juan Carlos Segura, Jalini Srisgantharajah and Enric Staromiejski.

The meeting of 7th November was focused on the second part of the presentation about how to reuse the  FRBR model. The first presentation took place on 22nd October. Both presentations were made by Enric Staromiejski. 

The presentation started highlighting the importance of understanding what is meant by the elements “Resource” and “Asset”. Enric came to the WG with two possible definitions for both terms. However, as they were not clear enough the WG worked on a new ones: 
* Resource: 
    * Enric’s proposal: a thing, possibly resulting from a work, that is available for its use
    * WG definition: a well identified thing available for use Are you sure the word "thing was in the final definition?  What is more I see nothing on resource and asset in the slides Enric sent after the meeting.  I know he was writing on the screen do you have a copy of this?
* Asset:
    * Enric’s proposal: a valuable resource resulting from a work
    * WG definition: a resource resulting from a work possibly bringing value

After the decision of the definitions for Resource and Asset, Enric explained that during the analysis reusing the IFLA LRM specifications 2 challenges were encountered:

1. How the ePO concept of “Document” can be implemented as an “information resource” in contrast  to the “bibliographic resource”; and
2. How to implement “a volume resource” that aggregates or collects different “Documents”, e.g. a VCD (Virtual Company Dossier) containing different types of evidences.

Enric explained that in order to reuse the IFLA model new concepts have to be introduced or re-define some of the existing ones. The concepts detected were “Resource”, “Asset”, “Information”, “Document”. The definitions of them have been discussed and new definitions have been created. Note that this concepts have to be represented in the ePO models accordingly: 
* Resource: a well identified thing available for use.
* Asset: A resource resulting from a work possibly bringing value.
* Information resource: data, in a context of use. Additional information: in the case of electronic information resources they are accessible via a unique identifier.  Why are there 2 IRs there should be only one – 
* Information resource (IR): a set of interrelated data, in a context of use, that is accessible via a unique identifier. Additional Information: 
   * The context refers to (source 2009 DAMA International©,
   * The Business meaning of data elements and related terms,
   * The format in which the data is presented,
   * The time-frame represented by the data,
   * The relevance of the data to a given usage,
   * The content retrieved from an information resource is to be considered an “Assset”. Thus, metadata on the provenance, authoring, versioning, etc., is also retrievable/accesible through the information resource.
   * Examples of IRs are “a VCD exchanged via an electronic system”; “a de-referenceable URI returning an electronic certificate on the financial standing of an economic operator”;
* Document: an information resource conveying a set of interrelated business information. Additional Information: examples of Documents within public procurement are: A Contract Notice, an ESPD Request, an electronic certificate such as a certification about the Qualification of an Economic Operator, an eInvoice, etc.

After the creation of the new definitions, and due to not enough remaining time available, Enric explained briefly the rest of the presentation. 
Enric showed to the WG how the ePO “Information Resource” is implemented:

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/20191107.png)

The WG said that this way to represent the concepts is difficult to understand and representing the same concepts and model using our methodology would be better. Everis agreed to do so.

Enric indicated very briefly the “aggregate” element which has to be understood as “a manifestation embodying multiple expressions”, and exist three types of aggregates: 
1)	Aggregate Collection of Expressions,
2)	Aggregates Resulting from Augmentation, and 
3)	Aggregates of Parallel Expresions. 

Enric explained that the modelling of aggregates as a manifestation embodying multiple expressions is simple and straightforward; works and expressions are treated identically regardless of their form of publication or the physical manifestation in which they are embodied. An expression may be published alone or it may be embodied in a manifestation with other expressions.

The next concept explained by Enric are the “serials” modeled by the IFLA LRM. Serials, according to IFLA, are complex constructs that combine whole/part relationships and aggregation relationships. 

To finalize the meeting, Enric showed two couples of examples on how to implement collection and how to implement aggregate manifestations in OP’s CDM. 

***

Meeting 05/11/2019 

Participants: Paloma Arillo Aranda, Ana-Maria Babaligea, Vibeke Engesaeth, Cécile Guasch, Thor Moeller, Natalie Muric, Juan Carlos Segura, Enric Staromiejski. 

The meeting on 5th November was focused on to work on the pending definitions of some concepts(classes and attributes).

The concepts worked were the following ones: 

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/20191105.JPG)

***

Meeting 31/10/2019
 
Participants: Paloma Arillo Aranda, Vibeke Engesaeth, Cécile Guasch, Natalie Muric, Roberto Reale, Juan Carlos Segura, and Enric Staromiejski
 
The meeting of 31th October focused on two topics: the updated solution presented in the last WGM 29th October about the mapping of the competition phase for PINs and CNs, and on how to model the “notice-type”.

During the first part of the meeting, everis presented a solution on how to model the “notice-type”. The first everis proposal for to model the “notice-type” is to rename the code list as “notification-phases-content-types” implying that depending on the phase of notification, the content type of the document would be different.

The second proposal was about how to determine the exact content provided by the information resource (epir, explained in the IFLA presentation last 22nd October) for Competition. For this, 4 steps were detected: 

1. Determine the notification phase, either (or both consistency rule):
- Get the namespace of the content provided by the epir (e.g. http://publicationsoffice.eu/eprocurement/epo/enotification/competition#);
- Use the notice Notification-phases-content-type taxonomy (e.g. NoticeType = COMPETITION).
2. Determine the “root element” in the Notification, either (or both  consistency rule):
- Get it from the namespace (e.g. http://publicationsoffice.eu/eprocurement/epo/enotification/competition#pin);
- Test the existence of one possible descendant of competition notice (RULE, e.g. determine whether it is PIN, CN or QS);
3. Determine the exact type of content (RULES and QUERIES), e.g., to test the content is from a PIN CFC Social -> all the steps above, plus:
   - PIN isA Notice,
   - PIN notifies Procedure,
   - Procedure hasID Identifier=XXXXXX,
   - Procedure isAbout LegalRegime=light-regime
4. Test the existence of a specific element, e.g. “BT-740 Buyer Contracting Entity”
   - PIN isA Notice,
   - PIN notifies Procedure,
   - Procedure has Buyer,
   - Buyer hasContractingEntity Indicator,
   - Procedure hasLegalBasisID URI=DIR23_URL

After the proposal on how to model the “notice-type”, Everis presented to the WG the updated solution presented in the last WGM. (29th October) of an updated mapping of the competition phase for PINs and CNs. An example of the mapping: 

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/20191031.JPG)

The WG accepted the proposal and Everis will continue working in the Planning phase.

NM is to update the eForms side of the table to include any changes brought about by the Commission Implementing Regulation EU 2019/1780 by creating a new file to which Everis will add the existing mappings. 
 
To end the meeting, OP proposed to move some scheduled meetings. The meeting for the 14th November was moved to the 11th November (14:30-16:30) due to the Commission EXEP meeting and the meeting of the 19th November was moved to 22nd November (13:00-15:00). 

***

Meeting 29/10/2019
 
Participants: Paloma Arillo Aranda, Ana-Maria Babaligea, Cécile Guasch, Thor Moller, Natalie Muric, Giampaolo Sellitto, Juan Carlos Segura and Enric Staromiejski.

 
The meeting of 29th October was focused on an Everis solution about how to map the Competition phase for PINs and CNs.
 
The Everis proposal was based on the PIN CFC general and CN general and check that every term was mapped within the CN diagram. Only PIN CFC general CN general were mapped in order to show to the WG an example of how to do the mapping. 

It was proposed to rename the Contract Notice diagram as Competition since the mapping is for the CNs and PINs of the Competition phase. Likewise, per each phase a diagram is needed. 
 
Everis explained that during the mapping 3 different cases were detected: (1) There are not too many differences between the CNs mapped previously and the PINs, at least in the Competition phase; (2) Some business rules are needed. For instance, when the terms are only used in CN and not in PIN; (3) Some cases where the term is used in the PIN and not in the CN, it needs to be mapped within the diagram (Everis made a proposal on how to map the detected ones).
 
After some comments from the WG attendees some action points were defined: 
1. Everis: Update our solution to the latest version of the NM excel file (new eForms regulation);
2. Everis: Mapping of the rest of PINs and CNs for Thursday;
3. Everis: Proposal on how to model the notice type.

***

Meeting 24/10/2019
 
Participants: Ana-Maria Babaligea, Enrico Francesconi, Cécile Guash, Natalie Muric, Juan Carlos Segura and Enric Staromiejski.

The meeting of 24th October was focused on the analysis of the Legal Resource class which is being used in the ePO Ontology. The meeting started discussing the problems that could have using the class Legal Resource which is reused from the European Legislation Identifier (ELI). According to the participants, there is not a legal obligation for the creation ELI in Member States and therefore there is no obligation to use it. The working group was advised against using the ELI ontology class as it is outside the domain of eProcurement and therefore not the responsibility of the eProcurement ontology, however using an URI that could contain the ELI identifier was considered a good option.  The WG  decided to remove the class and add an attribute Legal Resource URI  in the classes Procedure and Planned Procurement Part. This attribute will catter for triples like: 
 
* epo:Procedure epo:hasLegalBasis xsd:URI
* epo:PlannedProcurementPart epo:hasLegalBasis xsd:URI
OR
* Procedure eli:local_id URI (which can be AnyURI or a String, ELI Strongly recommended when existing in the MS)
* PlannedProcurementPart eli:local_id URI 

***

Meeting 22/10/2019
 
Participants: Ana-Maria Babaligea, Cécile Guasch, Thor Moeller, Natalie Muric, Juan Carlos Segura and Enric Staromiejski.
 
The meeting on 22/10/2019 was focused on the analysis of the IFLA’s FRBR model and how it can be reused in the ePO Ontology. This analysis and presentation was carried out by Enric Staromiejski based on the Enrico Francesconi’s  presentation that took place in the last F2F meeting in Luxemburg with all Working Group Members. 
 
The FRBR defines 4 levels of abstraction:
1. Work
2. Expression
3. Manifestation
4. Item. 

These 4 levels are aspects of the Bibliographic Resource element defined in the IFLA  model. 
 
Taking into account the IFLA’s model, Enric proposed to have different classes/entities that can be mapped to FRBR. These ones are: 
* eProcurement Information Resource (ePIR)
* eProcurement Document

The ePIR could be described by Metadata organized into FRBR model. However, a distinction between the taxonomy of ePIRs and the relation of each ePIR to classes of the FRBR model is needed. 
In ePO, the ePIR would represent the Bibliographic Resource element that is used in the FRBR model. Therefore in ePO we will have ePIR= Work+Expression+Manifestation+Item. We keep the 4 levels of abstraction and there are also aspects of the ePIR. The reutilization of the FRBR in ePO could be as follows: 

![](https://github.com/eprocurementontology/eprocurementontology/blob/meetings/Conference%20Calls%20Images/20191022.JPG)

