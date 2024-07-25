Alias: $breed = http://example.org/fhir/ValueSet/breed
Alias: $status = http://example.org/fhir/ValueSet/status

Extension: animal
Id: patient-animal
Title: "animal"
Description: "This patient is known to be an animal."
Context: Patient
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pa
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^url = "http://hl7.org/fhir/StructureDefinition/patient-animal"
* ^status = #draft
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7"
* . 0..1
* . ^short = "This patient is known to be an animal (non-human)"
* . ^definition = "This patient is known to be an animal."
* . ^comment = "The absence of the animal extension does not imply that the patient is a human. If a system requires such a positive assertion that the patient is human, an extension will be required.  (Do not use a species of homo-sapiens in animal species, as this would incorrectly infer that the patient is an animal)."
* extension contains
    species 1..1 and
    breed 0..1 and
    genderStatus 0..1
* extension[species] only Extension
* extension[species] ^short = "The animal species.  E.g. Dog, Cow."
* extension[species] ^definition = "Identifies the high level taxonomic categorization of the kind of animal."
* extension[species] ^comment = "If the patient is non-human, at least a species SHALL be specified. Species SHALL be a widely recognized taxonomic classification.  It might or might not be Linnaean taxonomy and might or might not be at the level of species. If the level is finer than species--such as a breed code--the code system used SHALL allow inference of the species.  (The common example is that the word \"Hereford\" does not allow inference of the species Bos taurus, because there is a Hereford pig breed, but the SNOMED CT code for \"Hereford Cattle Breed\" does.)."
* extension[species].url only uri
* extension[species].value[x] 1..
* extension[species].value[x] only CodeableConcept
* extension[species].value[x] from AnimalSpecies (example)
* extension[species].value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* extension[species].value[x] ^binding.extension.valueString = "AnimalSpecies"
* extension[species].value[x] ^binding.description = "The species of an animal."
* extension[breed] only Extension
* extension[breed] ^short = "The animal breed.  E.g. Poodle, Angus."
* extension[breed] ^definition = "Identifies the detailed categorization of the kind of animal."
* extension[breed] ^comment = "Breed MAY be used to provide further taxonomic or non-taxonomic classification.  It may involve local or proprietary designation--such as commercial strain--and/or additional information such as production type."
* extension[breed].url only uri
* extension[breed].value[x] 1..
* extension[breed].value[x] only CodeableConcept
* extension[breed].value[x] from AnimalBreeds (example)
* extension[breed].value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* extension[breed].value[x] ^binding.extension.valueString = "AnimalBreed"
* extension[breed].value[x] ^binding.description = "The breed of an animal."
* extension[genderStatus] only Extension
* extension[genderStatus] ^short = "The status of the animal's reproductive parts.  E.g. Neutered, Intact."
* extension[genderStatus] ^definition = "Indicates the current state of the animal's reproductive organs."
* extension[genderStatus].url only uri
* extension[genderStatus].value[x] 1..
* extension[genderStatus].value[x] only CodeableConcept
* extension[genderStatus].value[x] from GenderStatus (example)
* extension[genderStatus].value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* extension[genderStatus].value[x] ^binding.extension.valueString = "AnimalGenderStatus"
* extension[genderStatus].value[x] ^binding.description = "The state of the animal's reproductive organs."
* url = "http://hl7.org/fhir/StructureDefinition/patient-animal" (exactly)

Extension: Species
Id: species
Title: "Especie del Animal"
Description: "La especie del animal."
* ^version = "1.0.0"
* . ^short = "Especie del Animal"
* . ^definition = "La especie del animal."
* value[x] only CodeableConcept
* value[x] from AnimalSpeciesValueSet (required)

Extension: Breed
Id: breed
Title: "Raza del Animal"
Description: "La raza del animal."
* ^version = "1.0.0"
* . ^short = "Raza del Animal"
* . ^definition = "La raza del animal."
* value[x] only CodeableConcept
* value[x] from $breed (required)

Extension: GenderStatus
Id: gender-status
Title: "Estado del Género del Animal"
Description: "El estado del género del animal."
* ^version = "1.0.0"
* . ^short = "Estado del Género del Animal"
* . ^definition = "El estado del género del animal."
* value[x] only CodeableConcept
* value[x] from $status (required)

Extension: Age
Id: age
Title: "Edad del Animal"
Description: "La edad del animal."
* ^version = "1.0.0"
* . ^short = "Edad del Animal"
* . ^definition = "La edad del animal."
* extension ..0

ValueSet: AnimalSpeciesValueSet
Id: animalSpecies
Title: "Species Value Set"
Description: "Animal species codes"
* ^status = #active
* ^version = "1.0.1"
* ^url = "http://example.org/fhir/ValueSet/species"
* ^experimental = true
* ^purpose = "This FHIR resource type CodeSystem has been created to store animal species."
* include codes from system AnimalSpecies

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: animal
Target: "http://hl7.org/v3"
* -> "player[classCode=ANM]"
* extension[species] -> "code"
* extension[breed] -> "playedRole[classCode=GEN]/scoper[classCode=ANM, determinerCode=KIND]/code"
* extension[genderStatus] -> "genderStatusCode"

Mapping: v2
Id: v2
Title: "HL7 v2 Mapping"
Source: animal
Target: "http://hl7.org/v2"
* extension[species] -> "PID-35"
* extension[breed] -> "PID-35 (where more detailed value is present)"
* extension[genderStatus] -> "N/A"