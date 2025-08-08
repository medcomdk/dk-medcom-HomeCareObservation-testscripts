Instance: 3.4.1-EcprAndNoComments
InstanceOf: MedComHomeCareObservationMessage
Title: "Receive HCO with E-cpr and no comments"
Description: "Test Example used in test step 3.4.1 of the HomeCareObservation receive test protocol"
Usage: #example
* type = $BundleType#message
* timestamp = 2025-08-08T15:00:00+02:00
* entry[+].fullUrl = Canonical(3.4.1-MessageHeader)
* entry[+].resource = Reference(3.4.1-MessageHeader)
* entry[+].fullUrl = Canonical(PeterHansenECPRPatient)
* entry[+].resource = Reference(PeterHansenECPRPatient)
* entry[+].fullUrl = Canonical(3.4.1-DiagnosticReport)
* entry[+].resource = Reference(3.4.1-DiagnosticReport)
* entry[+].fullUrl = Canonical(JohnAcuteNursePractitionerRole)
* entry[+].resource = Reference(JohnAcuteNursePractitionerRole)
* entry[+].fullUrl = Canonical(JohnAcuteNurse)
* entry[+].resource = Reference(JohnAcuteNurse)
* entry[+].fullUrl = Canonical(AgerskovsLaegePraksisRequesterOrg)
* entry[+].resource = Reference(AgerskovsLaegePraksisRequesterOrg)
* entry[+].fullUrl = Canonical(SkovlyAktivitetstilbudProducerOrg)
* entry[+].resource = Reference(SkovlyAktivitetstilbudProducerOrg)
* entry[+].fullUrl = Canonical(3.4.1-Provenance)
* entry[+].resource = Reference(3.4.1-Provenance)
* entry[+].fullUrl = Canonical(GlucoseObservationOnPeterNoComment)
* entry[+].resource = Reference(GlucoseObservationOnPeterNoComment)

Instance: 3.4.1-MessageHeader
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "Receive 3.4.1 Message Header With Attached File"
Description: "Message Header for the HomeCareObservation message in test step 3.4.1"
Usage: #inline
* destination[primary].extension[use] = PrimaryDestination
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=73091000016008"
* destination[primary].receiver = Reference(AgerskovsLaegePraksisRequesterOrg)
* sender = Reference(SkovlyAktivitetstilbudProducerOrg)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1267041000016006"
* focus = Reference(3.4.1-DiagnosticReport)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComHomeCareObservationMessageDefinition1.1"

Instance: 3.4.1-DiagnosticReport
InstanceOf: MedComHomeCareObservationDiagnosticReport
Title: "Receive 3.4.1 Diagnostic Report"
Description: "Diagnostic Report for the HomeCareObservation message in test step 3.4.1 with ecpr patient and no comments"
Usage: #inline
* status = #final
* issued = 2025-08-07T15:00:00+02:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(PeterHansenECPRPatient)
* performer[ProducerOrganization] = Reference(SkovlyAktivitetstilbudProducerOrg)
* performer[PractitionerRole] = Reference(JohnAcuteNursePractitionerRole)
* result[+] = Reference(GlucoseObservationOnPeterNoComment)

Instance: 3.4.1-Provenance
InstanceOf: MedComMessagingProvenance
Title: "Receive 3.4.1 Provenance"
Description: "Provenance for the HomeCareObservation message in test step 3.4.1"
Usage: #inline
* target = Reference(3.4.1-MessageHeader)
* occurredDateTime = 2025-08-07T15:00:00+02:00
* recorded = 2025-08-07T15:00:00+02:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(SkovlyAktivitetstilbudProducerOrg)