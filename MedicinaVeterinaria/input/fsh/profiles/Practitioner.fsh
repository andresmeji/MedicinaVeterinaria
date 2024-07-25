Profile: MyPractitioner3
Parent: Practitioner
Id: MyPractitioner3
* ^url = "https://example.org/fhir/StructureDefinition/MyPractitioner3"
* ^status = #draft
* identifier 1..1
* identifier.use 1..
* identifier.use = #official (exactly)
* identifier.type 1..
* identifier.type.coding 1..1
* identifier.type.coding.system 1..
* identifier.type.coding.system = "\"http://terminology.hl7.org/CodeSystem/v2-0203\"" (exactly)
* identifier.type.coding.code 1..
* identifier.type.coding.display 1..
* identifier.value 1..
* active 1..
* name 1..1
* name.use 1..
* name.use = #official (exactly)
* name.family 1..
* name.given 1..
* telecom 1..
* gender 1..
* birthDate 1..
* qualification 1..1
* qualification.identifier 1..
* qualification.identifier.use 1..
* qualification.identifier.type 1..
* qualification.identifier.type.coding 1..1
* qualification.identifier.type.coding.system 1..
* qualification.identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* qualification.identifier.type.coding.code 1..
* qualification.identifier.type.coding.display 1..
* qualification.code.coding 1..1
* qualification.code.coding.system 1..
* qualification.code.coding.system = "http://snomed.info/sct" (exactly)
* qualification.code.coding.code 1..
* qualification.code.coding.display 1..
* qualification.code.text 1..
* qualification.period 1..
* qualification.period.start 1..