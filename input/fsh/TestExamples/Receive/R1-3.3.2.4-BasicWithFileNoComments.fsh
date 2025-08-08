Instance: R1-3.3.2.4-BasicWithAttachedFileAndNoComments
InstanceOf: MedComHomeCareObservationMessage
Title: "Receive R1 Attached File Without Comments"
Description: "Test Example used in test step 3.3.2.4 of the HomeCareObservation receive test protocol"
Usage: #example
* type = $BundleType#message
* timestamp = 2025-08-08T15:00:00+02:00
* entry[+].fullUrl = Canonical(R1-3.3.2.4-MessageHeader)
* entry[+].resource = Reference(R1-3.3.2.4-MessageHeader)
* entry[+].fullUrl = Canonical(BrunoElmerPatient)
* entry[+].resource = Reference(BrunoElmerPatient)
* entry[+].fullUrl = Canonical(R1-3.3.2.4-DiagnosticReport)
* entry[+].resource = Reference(R1-3.3.2.4-DiagnosticReport)
* entry[+].fullUrl = Canonical(JohnAcuteNursePractitionerRole)
* entry[+].resource = Reference(JohnAcuteNursePractitionerRole)
* entry[+].fullUrl = Canonical(JohnAcuteNurse)
* entry[+].resource = Reference(JohnAcuteNurse)
* entry[+].fullUrl = Canonical(AgerskovsLaegePraksisRequesterOrg)
* entry[+].resource = Reference(AgerskovsLaegePraksisRequesterOrg)
* entry[+].fullUrl = Canonical(SkovlyAktivitetstilbudProducerOrg)
* entry[+].resource = Reference(SkovlyAktivitetstilbudProducerOrg)
* entry[+].fullUrl = Canonical(R1-3.3.2.4-Provenance)
* entry[+].resource = Reference(R1-3.3.2.4-Provenance)
* entry[+].fullUrl = Canonical(PngImageMedComLogo)
* entry[+].resource = Reference(PngImageMedComLogo)
* entry[+].fullUrl = Canonical(GlucoseObservationOnBrunoNoComment)
* entry[+].resource = Reference(GlucoseObservationOnBrunoNoComment)


Instance: R1-3.3.2.4-MessageHeader
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "Receive R1 Message Header With Attached File"
Description: "Message Header for the HomeCareObservation message in test step 3.3.2.4"
Usage: #inline
* destination[primary].extension[use] = PrimaryDestination
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=73091000016008"
* destination[primary].receiver = Reference(AgerskovsLaegePraksisRequesterOrg)
* sender = Reference(SkovlyAktivitetstilbudProducerOrg)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1267041000016006"
* focus = Reference(R1-3.3.2.4-DiagnosticReport)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComHomeCareObservationMessageDefinition1.1"

Instance: R1-3.3.2.4-DiagnosticReport
InstanceOf: MedComHomeCareObservationDiagnosticReport
Title: "Receive R1 Diagnostic Report"
Description: "Diagnostic Report for the HomeCareObservation message in test step 3.3.2.4 with attatched file and no comments"
Usage: #inline
* status = #final
* issued = 2025-08-07T15:00:00+02:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(BrunoElmerPatient)
* performer[ProducerOrganization] = Reference(SkovlyAktivitetstilbudProducerOrg)
* performer[PractitionerRole] = Reference(JohnAcuteNursePractitionerRole)
* media.link[+] = Reference(PngImageMedComLogo)
* result[+] = Reference(GlucoseObservationOnBrunoNoComment)

Instance: R1-3.3.2.4-Provenance
InstanceOf: MedComMessagingProvenance
Title: "Receive R1 Provenance"
Description: "Provenance for the HomeCareObservation message in test step 3.3.2.4"
Usage: #inline
* target = Reference(R1-3.3.2.4-MessageHeader)
* occurredDateTime = 2025-08-07T15:00:00+02:00
* recorded = 2025-08-07T15:00:00+02:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(SkovlyAktivitetstilbudProducerOrg)