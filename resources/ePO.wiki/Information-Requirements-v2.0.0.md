## The Information Requirements Elicitation task

This version 2.0.0 of the ePO takes the following inputs for the elicitation of information requirements, axioms and business rules:

1. The _**Use Case 1 defined in version 1.00**_, [Data Journalism](https://github.com/eprocurementontology/eprocurementontology/wiki/Use-case-1.-Data-journalism); and
2. The _**Standards, business needs and Legislation**_ studied in the previous versions, plus the most recent developments;
3. The _**EU eProcurement Glossary**_, maintained by the ePO Working group; see [Glossary](https://github.com/eprocurementontology/eprocurementontology/blob/master/v2.0.0/02_IR_DED/eProcurement_glossary_and%20DED.xlsx) and [Glossary Management](https://github.com/eprocurementontology/eprocurementontology/wiki/Glossary-Management).

![Information Requirements and DED](https://github.com/eprocurementontology/eprocurementontology.github.io/blob/master/images/InformationRequirementsAndDED.png)

As it will be explained in the specification document(currently in progress), the developments in v2.0.0 focuses on two modules of the e-Tendering: e-Notification and e-Access.

The outcome of the task "Information Requirements Elicitation" are namely two artefacts:

1. The _**Information Requirements (IR v2.0.0)**_ already identified in [Information Requirements v1.00](https://github.com/eprocurementontology/eprocurementontology/wiki/Information-Requirements-v1.00) and extended with new requirements: a natural-language (high-level) expression of information requirements identified namely through the analysis of the Use Case 1; and

2. The _**Data Element Dictionary (DED v2.0.0)**_: a [spread-sheet](https://github.com/eprocurementontology/eprocurementontology/blob/master/v2.0.0/02_IR_DED/eProcurement_glossary_and%20DED.xlsx) where the Use Case information requirements are broken down into more detailed information requirements, axioms, business rules and annotations resulting from the analysis.

## The Data Element Dictionary (DED v2.0.0)

Information Analysts need to, based on each information requirement, make decisions like determining whether an element is an entity representing a _class_ of objects, an _attribute_ of the class of a basic data type e.g. a code, an identifier, a date, a time, a text, etc.), or a more complex _data object_ associated to the class (e.g. another class).

One way of listing this information is using a _**Data Element Dictionary**_, a table (e.g. a [spread-sheet](https://github.com/eprocurementontology/eprocurementontology/blob/master/v2.0.0/02_IR_DED/eProcurement_glossary_and%20DED.xlsx)) with the following columns and rows:

![ePO DED](https://github.com/eprocurementontology/eprocurementontology.github.io/blob/master/images/ePO_DED.png)

**Columns**:

* **A - "IR#ID"**: Reserved to link each entry of the Dictionary (each element) with the general or concrete information requirement that generated the class, attribute or property;

* **B - "ePO Business Term"**: Contains a label in English ("the term") assigned by the analysts to each class or property of the Dictionary. Beware that: (i) _**A term is a set of one or more words that represent a concept**_; (ii) most of the concepts of the ePO Ontology are defined in the [ePO Glossary](https://github.com/eprocurementontology/eprocurementontology/blob/master/v2.0.0/02_IR_DED/eProcurement_glossary_and%20DED.xlsx); and (iii) the analysts sometimes decide to shorten the text (the label) of the term by combining differently the words of the term or by eliminating some words (e.g. "Access Tool URI" instead of "URI of the Access Tool"). The reason for this is that at design and implementation time the name of the classes and properties need to be simple and yet self-explanatory. When this happens, the rewording shall be agreed with the Working Group.

* **C - "Concept Definition"**: The definition of each concept as it appears in the ePO Glossary.

* **D - "Examples**": When considered useful to better illustrate the concept, this column contains examples. Concept definitions should not contain examples (hence the [ISO 11179-3:2015](https://infostore.saiglobal.com/Store/Details.aspx?ProductID=1777745) defines a special field for documenting the examples for data elements that may be registered for automatic discovery and reuse). 

* **E - "Comments**: Notes and observations by the analysts that may be relevant at design time; e.g. "Buyer Category - This make sense especially, but perhaps not uniquelly, in the case of Framework Agreements where the Buyer can have an "Added Category"; or "Buyer Role - Two roles identified so far: "Central Purchasing Body" and "Buyer On Behalf Of Other Procuring Entities", etc.

* **F - "Inheritance**": Some classes can already be proposed at this phase to be considered (at design time) as possible base (parent) classes; e.g. the study and knowledge of the W3C Organization Ontology (identified with the prefix "org:") tells the analysts that the Buyer is a class that can inherit many of its attributes from the the "org:Organization" class.

* **G - "Range**": Identifies the type of a data type or of an object type. The name of the column, "range", comes from the fact that these elements can be seen as the "object" of a _**triple**_ composed of (i) a "subject", i.e. the class being analysed (the "domain"); (ii) a "predicate", i.e. the property that links the subject and the object; and (iii) this "object". Beware that at design and implementation time the properties MAY be termed slightly differently, as in the triple _Buyer hasBuyerProfile BuyerProfile_, where _Buyer_ is the subject, _hasBuyerProfile_ is the predicate and _BuyerProfile_ the object (i.e. the domain of the property _hasBuyerProfile_ is _Buyer_ and _BuyerProfile_ its range).

* **H - "Cardinality**": Identifies the multiplicity and compulsorility of an element inside a class. The possibilities are: 1, meaning "compulsory"; 1..n, meaning at least one instance is compulsory, but additional instances are also possible; 0..1, meaning optional and if used maximum one instance; 0..n, meaning optional and if used multiple instances are possible.

* **J to M - in e-Forms, v1.00, OCDS, etc.**": used by the analysts to check whether this elements was defined in one of the studied ontologies, standards or resources *related to the business domain* selected to be reused. Beware that other *generic* ontologies and vocabularies are also used or reused by ePO, e.g. W3C org (Organization), W3C rov (Registered Organizations), ISA2's Core Criterion and Evidence Vocabulary, Dublin Core, vCard, FOAF, etc.

* **N - "Axioms**": Analysts while studying the data element MAY already identify certain elementary conditions to which the properties MAY be submitted, e.g. transitivity, disjointness, reciprocity, etc.;

* **O - "Axiom Objects**": The object of the axiom; as in "Lots are disjoint with Groups of Lots" where "Groups of Lots" are the object of the disjoint axiom, meaning that a specific procurement procedure that is divided into Lots will refer to individual Lots or to Groups of Lots but not to both;

* **P - "Business Rules**": Ontology constraints and axioms cannot control specific business rules, as when flexible cardinalities that in certain situations need to be further restricted (e.g.: "If Procurement Procedure is divided into lots then cardinality should be 1"); or to check the values of two or more fields that is present in different individuals (e.g., "If an economic group has already been registered the text of the group name should match exactly the text kept in the registry. If this name is used in different places the text of the name MUST be always, and exactly, the same in all those placeholders."

**Rows**:

* "**Pink rows**": represents a class. The rows between one pink row and another are the content of the class;

* "**Transparent rows**": represent a property of a class the range of which is an attribute (simple data type);

* "**Green rows**": represents a property of class the range of which is another class of the Ontology.
