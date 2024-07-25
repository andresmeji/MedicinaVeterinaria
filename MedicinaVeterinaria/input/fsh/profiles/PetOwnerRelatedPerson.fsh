Profile: PetOwnerRelatedPerson
Parent: RelatedPerson
Id: PetOwnerRelatedPerson
* ^url = "https://example.org/fhir/StructureDefinition/PetOwnerRelatedPerson"
* ^status = #draft
* id 1..
* identifier 1..
* identifier.use 1..
* identifier.use = #official (exactly)
* identifier.type.coding.system 1..
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier.type.coding.code 1..
* identifier.type.coding.code = #PN (exactly)
* identifier.type.coding.display 1..
* identifier.type.coding.display = "Person number" (exactly)
* identifier.value 1..
* active 1..
* patient.reference = "Patient" (exactly)
* relationship 1..1
* relationship ^fixedCodeableConcept.text = "OW"
* name 1..1
* name.family 1..
* name.given 1..1
* telecom 1..
* address 1..