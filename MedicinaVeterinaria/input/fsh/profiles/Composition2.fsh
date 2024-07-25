Profile: MyComposition
Parent: Composition
Id: MyComposition
* ^url = "https://example.org/fhir/StructureDefinition/MyComposition"
* ^status = #draft
* identifier 1..
* identifier.system 1..
* identifier.system = "http://myvet.example.com/document-identifier" (exactly)
* identifier.value 1..
* type.coding 1..1
* type.coding.system 1..
* type.coding.system = "http://loinc.org" (exactly)
* type.coding.code 1..
* type.coding.display 1..
* category 1..1
* category.coding 1..1
* category.coding.system 1..
* category.coding.system = "http://loinc.org" (exactly)
* category.coding.code 1..
* category.coding.display 1..
* subject = Reference(Patient) (exactly)
* subject 1..
* subject.reference 1..
* author only Reference (Practitioner)
* author ..1
* author.reference 1..
* attester 1..1
* attester.mode = #professional (exactly)
* attester.party 1..
* attester.party.reference = "Practitioner" (exactly)
* custodian only Reference(Organization)
* custodian 1..
* custodian.reference 1..
* section 1..
* section ^label = "HistoriaClinicaVeterinaria"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    sliceSection 0..* and
    sliceSection2 0..* and
    sliceSection3 0..* and
    sliceSection4 0..* and
    sliceSection5 0..* and
    sliceSection6 0..* and
    sliceSection7 0..* and
    sliceSection8 0..* and
    sliceSection9 0..* and
    sliceSection10 0..* and
    sliceSection11 0..* and
    sliceSection12 0..* and
    sliceSection13 0..*
* section[sliceSection].title 1..
* section[sliceSection].title = "Datos del propietario" (exactly)
* section[sliceSection].entry 1..1
* section[sliceSection].entry.reference 1..
* section[sliceSection].entry.reference = "RelatedPerson" (exactly)
* section[sliceSection2].title 1..
* section[sliceSection2].title = "Reseña" (exactly)
* section[sliceSection2].entry 1..
* section[sliceSection2].entry.reference 1..
* section[sliceSection3].title 1..
* section[sliceSection3].title = "Anamnesis" (exactly)
* section[sliceSection4].title 1..
* section[sliceSection4].title = "Examen físico general" (exactly)
* section[sliceSection5].title 1..
* section[sliceSection5].title = "Abordaje diagnóstico" (exactly)
* section[sliceSection6].title 1..
* section[sliceSection6].title = "Exámenes complementarios y resultados" (exactly)
* section[sliceSection7].title 1..
* section[sliceSection7].title = "Diagnóstico presuntivo y justificado" (exactly)
* section[sliceSection8].title 1..
* section[sliceSection8].title = "Diagnóstico definitivo" (exactly)
* section[sliceSection9].title 1..
* section[sliceSection9].title = "Plan terapéutico" (exactly)
* section[sliceSection10].title 1..
* section[sliceSection11].title 1..
* section[sliceSection11].title = "Evolución" (exactly)
* section[sliceSection12].title 1..
* section[sliceSection12].title = "Observaciones" (exactly)
* section[sliceSection13].title 1..
