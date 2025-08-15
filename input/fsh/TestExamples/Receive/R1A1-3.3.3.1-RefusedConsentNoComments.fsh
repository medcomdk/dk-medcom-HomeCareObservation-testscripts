Instance: R1A1-3.3.3.1-RefusedConsentToShareResultsNoComments
InstanceOf: MedComHomeCareObservationMessage
Title: "Receive R1.A1 Refused Consent Without Comments"
Description: "Test Example used in test step 3.3.3.1 of the HomeCareObservation receive test protocol"
Usage: #example
* type = $BundleType#message
* timestamp = 2025-08-08T15:00:00+02:00
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/MessageHeader/R1A1-3.3.3.1-MessageHeader"
* entry[=].resource = R1A1-3.3.3.1-MessageHeader
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Patient/BrunoElmerPatient"
* entry[=].resource = BrunoElmerPatient
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/DiagnosticReport/R1A1-3.3.3.1-DiagnosticReport"
* entry[=].resource = R1A1-3.3.3.1-DiagnosticReport
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/PractitionerRole/JohnAcuteNursePractitionerRole"
* entry[=].resource = JohnAcuteNursePractitionerRole
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Practitioner/JohnAcuteNurse"
* entry[=].resource = JohnAcuteNurse
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/AgerskovsLaegePraksisRequesterOrg"
* entry[=].resource = AgerskovsLaegePraksisRequesterOrg
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/SkovlyAktivitetstilbudProducerOrg"
* entry[=].resource = SkovlyAktivitetstilbudProducerOrg
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/R1A1-3.3.3.1-Provenance"
* entry[=].resource = R1A1-3.3.3.1-Provenance
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Media/PngImageMedComLogo"
* entry[=].resource = PngImageMedComLogo
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/GlucoseObservationOnBrunoNoComment"
* entry[=].resource = GlucoseObservationOnBrunoNoComment


Instance: R1A1-3.3.3.1-MessageHeader
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "Receive R1A1 Message Header With Attached File"
Description: "Message Header for the HomeCareObservation message in test step 3.3.3.1"
Usage: #inline
* destination[primary].extension[use] = PrimaryDestination
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=73091000016008"
* destination[primary].receiver = Reference(AgerskovsLaegePraksisRequesterOrg)
* sender = Reference(SkovlyAktivitetstilbudProducerOrg)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1267041000016006"
* focus = Reference(R1A1-3.3.3.1-DiagnosticReport)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComHomeCareObservationMessageDefinition1.1"

Instance: R1A1-3.3.3.1-DiagnosticReport
InstanceOf: MedComHomeCareObservationDiagnosticReport
Title: "Receive R1A1 Diagnostic Report"
Description: "Diagnostic Report for the HomeCareObservation message in test step 3.3.3.1 with attached file and no comments"
Usage: #inline
* status = #final
* issued = 2025-08-07T15:00:00+02:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(BrunoElmerPatient)
* performer[ProducerOrganization] = Reference(SkovlyAktivitetstilbudProducerOrg)
* performer[PractitionerRole] = Reference(JohnAcuteNursePractitionerRole)
* result[+] = Reference(GlucoseObservationOnBrunoNoComment)
* meta.security.code = $v3-Confidentiality#R
* meta.security.display = "Restricted"

Instance: R1A1-3.3.3.1-Provenance
InstanceOf: MedComMessagingProvenance
Title: "Receive R1A1 Provenance"
Description: "Provenance for the HomeCareObservation message in test step 3.3.3.1"
Usage: #inline
* target = Reference(R1A1-3.3.3.1-MessageHeader)
* occurredDateTime = 2025-08-07T15:00:00+02:00
* recorded = 2025-08-07T15:00:00+02:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(SkovlyAktivitetstilbudProducerOrg)