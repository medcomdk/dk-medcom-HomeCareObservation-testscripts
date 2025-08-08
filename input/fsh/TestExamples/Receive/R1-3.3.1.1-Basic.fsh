Instance: R1-3.3.1.1-Basic
InstanceOf: MedComHomeCareObservationMessage
Title: "Receive R1"
Description: "Test Example used in test step 3.3.1.1 of the HomeCareObservation receive test protocol"
Usage: #example
* type = $BundleType#message
* timestamp = 2025-08-07T15:00:00+02:00
* entry[+].fullUrl = Canonical(R1-3.3.1.1-MessageHeader)
* entry[+].resource = Reference(R1-3.3.1.1-MessageHeader)
* entry[+].fullUrl = Canonical(BrunoElmerPatient)
* entry[+].resource = Reference(BrunoElmerPatient)
* entry[+].fullUrl = Canonical(R1-3.3.1.1-DiagnosticReport)
* entry[+].resource = Reference(R1-3.3.1.1-DiagnosticReport)
* entry[+].fullUrl = Canonical(JohnAcuteNursePractitionerRole)
* entry[+].resource = Reference(JohnAcuteNursePractitionerRole)
* entry[+].fullUrl = Canonical(JohnAcuteNurse)
* entry[+].resource = Reference(JohnAcuteNurse)
* entry[+].fullUrl = Canonical(AgerskovsLaegePraksisRequesterOrg)
* entry[+].resource = Reference(AgerskovsLaegePraksisRequesterOrg)
* entry[+].fullUrl = Canonical(SkovlyAktivitetstilbudProducerOrg)
* entry[+].resource = Reference(SkovlyAktivitetstilbudProducerOrg)
* entry[+].fullUrl = Canonical(R1-3.3.1.1-Provenance)
* entry[+].resource = Reference(R1-3.3.1.1-Provenance)
* entry[+].fullUrl = Canonical(GlucoseObservationOnBruno)
* entry[+].resource = Reference(GlucoseObservationOnBruno)
* entry[+].fullUrl = Canonical(HeartRateObservationOnBrunoWithAnalysisComment)
* entry[+].resource = Reference(HeartRateObservationOnBrunoWithAnalysisComment)

Instance: R1-3.3.1.1-MessageHeader
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "Receive R1 Message Header"
Description: "Message Header for the HomeCareObservation message in test step 3.3.1.1"
Usage: #inline
* destination[primary].extension[use] = PrimaryDestination
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=73091000016008"
* destination[primary].receiver = Reference(AgerskovsLaegePraksisRequesterOrg)
* sender = Reference(SkovlyAktivitetstilbudProducerOrg)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1267041000016006"
* focus = Reference(R1-3.3.1.1-DiagnosticReport)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComHomeCareObservationMessageDefinition1.1"

Instance: R1-3.3.1.1-DiagnosticReport
InstanceOf: MedComHomeCareObservationDiagnosticReport
Title: "Receive R1 Diagnostic Report"
Description: "Diagnostic Report for the HomeCareObservation message in test step 3.3.1.1 with an analysis comment on the heart rate observation and clinical comment on the overall report"
Usage: #inline
* status = #final
* issued = 2025-08-07T15:00:00+02:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(BrunoElmerPatient)
* performer[ProducerOrganization] = Reference(SkovlyAktivitetstilbudProducerOrg)
* performer[PractitionerRole] = Reference(JohnAcuteNursePractitionerRole)
* result[+] = Reference(GlucoseObservationOnBruno)
* result[+] = Reference(HeartRateObservationOnBrunoWithAnalysisComment)
* conclusion = "Glucose measurement OK, heart rate elevated after exercise. Everything looks fine overall."

Instance: R1-3.3.1.1-Provenance
InstanceOf: MedComMessagingProvenance
Title: "Receive R1 Provenance"
Description: "Provenance for the HomeCareObservation message in test step 3.3.1.1"
Usage: #inline
* target = Reference(R1-3.3.1.1-MessageHeader)
* occurredDateTime = 2025-08-07T15:00:00+02:00
* recorded = 2025-08-07T15:00:00+02:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(SkovlyAktivitetstilbudProducerOrg)

