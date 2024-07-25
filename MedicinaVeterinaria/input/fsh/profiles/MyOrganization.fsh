Profile: MyOrganization
Parent: Organization
Id: MyOrganization
* ^url = "https://example.org/fhir/StructureDefinition/MyOrganization"
* ^status = #draft
* id 1..
* identifier 1..1
* identifier.type.coding.system 1..
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier.type.coding.code 1..
* identifier.type.coding.code = #TAX (exactly)
* identifier.type.coding.display 1..
* identifier.type.coding.display = "Tax ID number" (exactly)
* identifier.value 1..
* active 1..
* type 1..1
* type.coding.system 1..
* type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* type.coding.code 1..
* type.coding.code = #prov (exactly)
* type.coding.display 1..
* type.coding.display = "Healthcare Provider" (exactly)
* name 1..
* telecom 1..
* address 1..
* contact 1..
* contact.name 1..
* contact.telecom 1..