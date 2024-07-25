Profile: MyMascota
Parent: Patient
Id: MyMascota
* ^url = "http://hl7.org.co/fhir/structureDefinition/MyMascota"
* ^status = #draft
* extension contains
    $patient-animal named animal 1..1 MS
* identifier 1..*
* identifier ^slicing.rules = #open
* identifier contains
    MedicalRecordNumber 1..* and
    MicrochipNumber 0..1 
* identifier[MedicalRecordNumber].type.coding.system 1..1
* identifier[MedicalRecordNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[MedicalRecordNumber].type.coding.code 1..1
* identifier[MedicalRecordNumber].type.coding.code = #MR (exactly)
* identifier[MedicalRecordNumber].type.coding.display 1..1
* identifier[MedicalRecordNumber].type.coding.display = "Medical record number" (exactly)
* identifier[MedicalRecordNumber].system 1..1
* identifier[MedicalRecordNumber].value 1..1
* identifier[MicrochipNumber].type.coding.system 1..1
* identifier[MicrochipNumber].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[MicrochipNumber].type.coding.code 1..1
* identifier[MicrochipNumber].type.coding.code = #MCN (exactly)
* identifier[MicrochipNumber].type.coding.display 1..1
* identifier[MicrochipNumber].type.coding.display = "Microchip Number" (exactly)
* identifier[MicrochipNumber].system 1..1
* identifier[MicrochipNumber].value 1..1
* active 1..1
* name 1..1
* name.text 1..1
* gender 1..1
* birthDate 1..1
* contact 1..1
* contact.relationship 1..1
* contact.name 1..1
* contact.telecom 1..*
* link 1..1
* link.other.reference = "RelatedPerson" (exactly)
* link.type = #refer