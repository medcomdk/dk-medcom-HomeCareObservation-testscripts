Instance: 3.4.5-BigExampleWithFilesCommentsAndMultipleObservations
InstanceOf: MedComHomeCareObservationMessage
Title: "Receive Big Example And Prove It's Working Both as XML and JSON"
Description: "Test Example used in test step 3.4.5 of the HomeCareObservation receive test protocol"
Usage: #example
* type = $BundleType#message
* timestamp = 2025-08-08T15:00:00+02:00
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/MessageHeader/3.4.5-MessageHeader"
* entry[=].resource = 3.4.5-MessageHeader
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Patient/BrunoElmerPatient"
* entry[=].resource = BrunoElmerPatient
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/DiagnosticReport/3.4.5-DiagnosticReport"
* entry[=].resource = 3.4.5-DiagnosticReport
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/PractitionerRole/JohnAcuteNursePractitionerRole"
* entry[=].resource = JohnAcuteNursePractitionerRole
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Practitioner/JohnAcuteNurse"
* entry[=].resource = JohnAcuteNurse
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/AgerskovsLaegePraksisRequesterOrg"
* entry[=].resource = AgerskovsLaegePraksisRequesterOrg
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Organization/SkovlyAktivitetstilbudProducerOrg"
* entry[=].resource = SkovlyAktivitetstilbudProducerOrg
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Provenance/3.4.5-Provenance"
* entry[=].resource = 3.4.5-Provenance
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/GlucoseObservationOnBrunoNoComment"
* entry[=].resource = GlucoseObservationOnBrunoNoComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/HeartRateObservationOnBrunoWithAnalysisComment"
* entry[=].resource = HeartRateObservationOnBrunoWithAnalysisComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/CReaktiveProteinObservationOnBrunoWithComment"
* entry[=].resource = CReaktiveProteinObservationOnBrunoWithComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/HaemoglobinObservationOnBrunoWithComment"
* entry[=].resource = HaemoglobinObservationOnBrunoWithComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/LeukocytObservationOnBrunoWithComment"
* entry[=].resource = LeukocytObservationOnBrunoWithComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/LymphocyteObservationOnBrunoWithComment"
* entry[=].resource = LymphocyteObservationOnBrunoWithComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/MonocytesObservationOnBrunoWithComment"
* entry[=].resource = MonocytesObservationOnBrunoWithComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/NeutrophilocytesObservationOnBrunoWithComment"
* entry[=].resource = NeutrophilocytesObservationOnBrunoWithComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Observation/EosinofilocytObservationOnBrunoWithComment"
* entry[=].resource = EosinofilocytObservationOnBrunoWithComment
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Media/PngImageMedComLogo"
* entry[=].resource = PngImageMedComLogo
* entry[+].fullUrl = "http://medcomfhir.dk/ig/homecareobservation/Media/PngImageEKG"
* entry[=].resource = PngImageEKG


Instance: 3.4.5-MessageHeader
InstanceOf: MedComHomeCareObservationMessageHeader
Title: "Receive Message Header For 3.4.5 Big Example"
Description: "Message Header for the HomeCareObservation message in test step 3.4.5"
Usage: #inline
* destination[primary].extension[use] = PrimaryDestination
* eventCoding = $MessageEvents#homecareobservation-message
* destination[primary].endpoint = "https://sor2.sum.dsdn.dk/#id=73091000016008"
* destination[primary].receiver = Reference(AgerskovsLaegePraksisRequesterOrg)
* sender = Reference(SkovlyAktivitetstilbudProducerOrg)
* source.endpoint = "https://sor2.sum.dsdn.dk/#id=1267041000016006"
* focus = Reference(3.4.5-DiagnosticReport)
* definition = "http://medcomfhir.dk/ig/messagedefinitions/MessageDefinition/MedComHomeCareObservationMessageDefinition1.1"

Instance: 3.4.5-DiagnosticReport
InstanceOf: MedComHomeCareObservationDiagnosticReport
Title: "Receive 3.4.5 Diagnostic Report"
Description: "Diagnostic Report for the HomeCareObservation message in test step 3.4.5"
Usage: #inline
* status = #final
* issued = 2025-08-07T15:00:00+02:00
* code.coding = $DiagnosticReportCodeSystem#HomeCareReport
* subject = Reference(BrunoElmerPatient)
* performer[ProducerOrganization] = Reference(SkovlyAktivitetstilbudProducerOrg)
* performer[PractitionerRole] = Reference(JohnAcuteNursePractitionerRole)
* media[+].link = Reference(PngImageMedComLogo)
* media[+].link = Reference(PngImageEKG)
* result[+] = Reference(GlucoseObservationOnBrunoNoComment)
* result[+] = Reference(HeartRateObservationOnBrunoWithAnalysisComment)
* result[+] = Reference(CReaktiveProteinObservationOnBrunoWithComment)
* result[+] = Reference(HaemoglobinObservationOnBrunoWithComment)
* result[+] = Reference(LeukocytObservationOnBrunoWithComment)
* result[+] = Reference(LymphocyteObservationOnBrunoWithComment)
* result[+] = Reference(MonocytesObservationOnBrunoWithComment)
* result[+] = Reference(NeutrophilocytesObservationOnBrunoWithComment)
* result[+] = Reference(EosinofilocytObservationOnBrunoWithComment)
* conclusion = "All observations are within normal limits, except for the heart rate which is elevated after exercise. Further monitoring is recommended.
Lorem Ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi"

Instance: 3.4.5-Provenance
InstanceOf: MedComMessagingProvenance
Title: "Receive 3.4.5 Provenance"
Description: "Provenance for the HomeCareObservation message in test step 3.4.5"
Usage: #inline
* target = Reference(3.4.5-MessageHeader)
* occurredDateTime = 2025-08-07T15:00:00+02:00
* recorded = 2025-08-07T15:00:00+02:00
* activity.coding = $HCOActivityCodes#new-message
* agent.who = Reference(SkovlyAktivitetstilbudProducerOrg)