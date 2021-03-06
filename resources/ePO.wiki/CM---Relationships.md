### Relationships in the conceptual data model for the three use cases selected:  

#### Buyer  
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
||To be defined|||
#### Call For Tender  
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
|is Published By|An Agent that is responsible for making a Document available.|Agent (Procuring Entity)|1...1|
|procures|A Product Or Service Or Work of which the supply, provision or execution is requested.|Product Or Service Or Work|1...n|
|requires|A required characteristic.|Procurement Criterion|1...n|

#### Classification  
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
||To be defined|||

#### Contract 
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
|is Contract For|A Contract Award Notice that has been awarded|Contract Award Notice|1...1|
|is Contracted By|An Agent that issues and signs a Contract.|Agent (Buyer)|1...1|
|is Contracted To|An Agent that receives and countersigns a Contract|Agent (Economic Operator)|1...1|
|has Net Value|An amount of money, exclusive of VAT.|Monetary Value|1...1|
|procures|A Product Or Service Or Work of which the supply, provision or execution is requested.|Product Or Service Or Work|1...n|

#### Contract Award Notice
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
|is Award For|A Call for Tender for which a selection has been made.|Document (Call For Tender)|1...1|
|is Published By|An Agent that is responsible for making a Document available.|Agent (Procuring Entity)|1...1|

#### Contracting Authority  
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
||To be defined|||

#### Country  
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
||To be defined|||

#### Currency  
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
||To be defined|||

#### Economic Operator
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
|operates In|A Location in which an Agent is active.|Location (Country)|1...n|

#### Evidence 
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
||To be defined|||

#### Invoice
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
|is Invoiced Under|A Contract under which an Invoice is issued.|Document (Contract)|1...1|
|is Issued By|An Agent that sends an Invoice.|Agent (Economic Operator)|1...1|
|is Issued To|An Agent that receives an Invoice.|Agent (Buyer)|1...1|
|has Net Value|An amount of money, exclusive of VAT.|Monetary Value|1...1|
|has VAT|An amount of money that is the Value Added Tax.|Monetary Value|0...1|
|charges For|A Product Or Service Or Work for which an Invoice is issued|Product Or Service Or Work|1...n|

#### Monetary Value
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
|has Currency| kind of money. Use of values from the MDR Currency NAL is mandatory.|Concept (Currency)|1...1|

#### Other Contracting Entity
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
||To be defined|||

#### Payment
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
|is Evidenced By|An Evidence that proves a transaction.|Evidence|1...n|
|is Paid By|An Agent that makes a Payment.|Agent (Buyer)|1...1|
|is Paid To|An Agent that receives a Payment.|Agent (Economic Operator)|1...1|
|is Payment For|An Invoice against which a Payment is made.|Document (Invoice)|1...1|
|has Net Value|An amount of money, exclusive of VAT.|Monetary Value|1...1|
|has VAT|An amount of money that is the Value Added Tax.|Monetary Value|0...1|

#### Procurement Criterion
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
||To be defined|||

#### Procuring Entity
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
||To be defined|||

#### Product Or Service Or Work
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
|is Classified By|A term in a classification scheme.|Concept (Classification)|1...n|
|is Specified By|A Document that describes the characteristics of something.|Document (Specification)|1...1|

#### Public Undertaking
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
||To be defined|||

#### Specification
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
||To be defined|||

#### Tender
|Label|Definition|Range/Data type|Cardinality|
|---|---|---|---|
|is Submitted By|An Agent that is responsible for sending a Document|Agent (Economic Operator)|1...1|
|offers|A Product Or Service Or Work that is proposed.|Product Or Service Or Work|1...n|
|responds To|A Call For Tender in response to which a Tender is submitted|Document (Call For Tender)|1...1|

### Submit an issue:  
To propose a new relationship or to create any issue related to relationships, please [**click here**](https://github.com/eprocurementontology/eprocurementontology/labels/CM%20-%20Relationships) and then click on "New issue". In the first case, **adapt** the first column of the table proposed to follow the property template below:    

|Element|Description|
|---|---|
|Label|A short title of the property, e.g. ???hasVAT???|
|Definition|A definition of the concept that is accepted by the working group members within the context of the e-procurement ontology.|
|Domain|A domain is a way to state that any resource that has a given property is an instance of one or more classes. E.g. the relationship ???publishes??? has domain ???Contracting Authority??? and range ???call for tender???.|
|Range|A range state that the values of a property are instances of one or more classes, e.g. the relationship ???publishes??? has domain ???Contracting Authority??? and range ???call for tender???.|
|Cardinality|The cardinality is way to define the relationship between two entities in a data model, e.g. one-to-one (1..1), one-to-many (1..n), etc.|  

Use the second column of the template as **guidance** to propose the new relationship.