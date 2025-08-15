Instance: 3.4.1-TemporaryCPRAndNoComments
InstanceOf: MedComHomeCareObservationMessage
Title: "Receive HCO with E-cpr and no comments"
Description: "Test Example used in test step 3.4.1 of the HomeCareObservation receive test protocol"
Usage: #example
* type = $BundleType#message
* timestamp = 2025-08-08T15:00:00+02:00
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/MessageHeader/3.4.1-MessageHeader"
* entry[=].resource = 3.4.1-MessageHeader
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Patient/PeterHansenECPRPatient"
* entry[=].resource = PeterHansenECPRPatient
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/DiagnosticReport/3.4.1-DiagnosticReport"
* entry[=].resource = 3.4.1-DiagnosticReport
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/PractitionerRole/JohnAcuteNursePractitionerRole"
* entry[=].resource = JohnAcuteNursePractitionerRole
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Practitioner/JohnAcuteNurse"
* entry[=].resource = JohnAcuteNurse
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/AgerskovsLaegePraksisRequesterOrg"
* entry[=].resource = AgerskovsLaegePraksisRequesterOrg
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/SkovlyAktivitetstilbudProducerOrg"
* entry[=].resource = SkovlyAktivitetstilbudProducerOrg
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/3.4.1-Provenance"
* entry[=].resource = 3.4.1-Provenance
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/GlucoseObservationOnPeterNoComment"
* entry[=].resource = GlucoseObservationOnPeterNoComment

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