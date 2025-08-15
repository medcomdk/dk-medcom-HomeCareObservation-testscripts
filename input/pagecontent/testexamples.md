The examples presented below are intended to be used in the test protocol for receiving a HomeCareObservation (HCO) message. Testprotocols can be found on the [GitHub pages for HomeCareObservation](https://medcomdk.github.io/dk_HomeCareObservations/#2-test-and-certification). All test examples are created by MedCom. 

#### Test patient/citizens
Most examples are based on the test patient:
* Name: Bruno Elmer
* CPR-nr.: 250947-9989


For the tests regarding a temporary CPR, the following patient is used:
* Name: Peter Hansen
* CPR-nr.: 250947-9989


#### Test examples for receiving HomeCareObservation

|  Test example     |     Description     |
|---|---|
[R1-3.3.1.1](./Bundle-R1-3.3.1.1-Basic.html) | A basic example with two observations |
[R1-3.3.2.1](./Bundle-R1-3.3.2.1-BasicWithFileAndComments.html) | Similar to R1-3.3.1.1, but with an image, a clinical comment and an analysis comment. |
[R1-3.3.2.4](./Bundle-R1-3.3.2.4-BasicWithAttachedFileAndNoComments.html) | Similar to R1-3.3.1.1, but with an image and only on observation with no comment |
[R1A1-3.3.1](./Bundle-R1A1-3.3.3.1-RefusedConsentToShareResultsNoComments.html) | An alternative flow where the patient has refused consent to share results |
[3.4.1](./Bundle-3.4.1-TemporaryCPRAndNoComments.html) | An example where the patient has a temporary e-cpr |
[3.4.5](./Bundle-3.4.5-BigExampleWithFilesCommentsAndMultipleObservations.html) | An example with a lot of observations and multiple images to showcase requirement of supporting both XML and JSON |
