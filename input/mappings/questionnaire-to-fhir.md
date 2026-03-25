# Questionnaire → FHIR Mapping

This document describes how responses from the
Adult Medical History Questionnaire are mapped to
FHIR R4 resources.

The QuestionnaireResponse is retained as the
canonical intake artifact. Clinical and administrative
resources MAY be derived from it.

> **Note:**  
> This mapping is provided for implementation guidance only.
> Use of these mappings is not required for conformance.

Unless otherwise noted, repeating questionnaire items
map to repeating FHIR resources.

Some FHIR elements are **Derived** or **Defaulted**:
  - **Derived** elements are assigned by transformation logic (e.g., subject references).
  - **Defaulted** elements are set to a fixed value for patient‑reported intake data.

---

## Patient Demographics → `Patient`

| linkId | FHIRPath | Resource | Description |
|------|---------|----------|-------------|
| first-name | Patient.name.given | Patient | Patient-reported given name captured during intake |
| middle-name | Patient.name.given | Patient | Optional middle name provided by the patient |
| last-name | Patient.name.family | Patient | Patient-reported family name |
| dob | Patient.birthDate | Patient | Date of birth as reported by the patient |
| street | Patient.address.line | Patient | Street address reported by the patient |
| city | Patient.address.city | Patient | City of residence |
| state | Patient.address.state | Patient | State of residence |
| zip | Patient.address.postalCode | Patient | Postal code |
| phone | Patient.telecom.where(system='phone').value | Patient | Primary phone number |
| phone-sms | Patient.telecom.where(system='sms').value | Patient | Phone number used for SMS |
| email | Patient.telecom.where(system='email').value | Patient | Email address |
| race | Patient.extension[us-core-race].valueCodeableConcept | Patient | Race category per US Core extension |
| ethnicity | Patient.extension[us-core-ethnicity].valueCodeableConcept | Patient | Ethnicity category per US Core extension |
| gender-identity | Patient.extension[gender-identity].valueCodeableConcept | Patient | Patient-reported gender identity |
| sexual-orientation | Patient.extension[sexual-orientation].valueCodeableConcept | Patient | Patient-reported sexual orientation |
| languages-spoken | Patient.communication.language | Patient | Languages spoken by the patient |
| preferred-language | Patient.communication.language | Patient | Preferred language for communication |

---

## Emergency Contact → `RelatedPerson`

| linkId | FHIRPath | Resource | Description |
|------|---------|----------|-------------|
| emergency-contact-first-name | RelatedPerson.name.given | RelatedPerson | Emergency contact given name |
| emergency-contact-middle-name | RelatedPerson.name.given | RelatedPerson | Emergency contact middle name |
| emergency-contact-last-name | RelatedPerson.name.family | RelatedPerson | Emergency contact family name |
| emergency-contact-phone | RelatedPerson.telecom.where(system='phone').value | RelatedPerson | Emergency contact phone number |
| — (derived) | RelatedPerson.relationship | RelatedPerson | Relationship set to emergency contact |

---

## Past Medical History → `Condition`

| linkId | FHIRPath | Resource | Description |
|------|---------|----------|-------------|
| pmh-conditions | Condition.code | Condition | Patient-selected historical medical condition |
| — (derived) | Condition.subject | Condition | Reference to the patient completing the questionnaire |
| — (defaulted) | Condition.verificationStatus | Condition | Set to unconfirmed for patient-reported history |

---

## Medical History (Coded) → `Condition`

| linkId | FHIRPath | Resource | Description |
|------|---------|----------|-------------|
| medical-history-problem | Condition.code | Condition | Coded diagnosis or condition |
| medical-history-clinical-status | Condition.clinicalStatus | Condition | Current clinical status of the condition |
| medical-history-onset | Condition.onsetDateTime | Condition | Approximate onset date reported by the patient |
| — (derived) | Condition.subject | Condition | Reference to the patient completing the questionnaire |

---

## Allergies → `AllergyIntolerance`

| linkId | FHIRPath | Resource | Description |
|------|---------|----------|-------------|
| allergy-name | AllergyIntolerance.code.text | AllergyIntolerance | Free-text allergy name |
| allergy-reaction | AllergyIntolerance.reaction.description | AllergyIntolerance | Description of allergic reaction |
| allergy-substance-coded | AllergyIntolerance.code | AllergyIntolerance | Coded allergy substance |
| allergy-reaction-coded | AllergyIntolerance.reaction.description | AllergyIntolerance | Coded reaction description |
| allergy-onset-coded | AllergyIntolerance.onsetDateTime | AllergyIntolerance | Onset of allergy |
| — (derived) | AllergyIntolerance.patient | AllergyIntolerance | Reference to the patient |
| — (defaulted) | AllergyIntolerance.verificationStatus | AllergyIntolerance | Set to unconfirmed for patient-reported data |

---

## Current Medications → `MedicationStatement`

| linkId | FHIRPath | Resource | Description |
|------|---------|----------|-------------|
| medication-name | MedicationStatement.medicationCodeableConcept.text | MedicationStatement | Medication name as reported by the patient |
| medication-strength | MedicationStatement.dosage.text | MedicationStatement | Medication strength |
| medication-dosing | MedicationStatement.dosage.text | MedicationStatement | Dosing instructions |
| medication-code | MedicationStatement.medicationCodeableConcept | MedicationStatement | Coded medication (e.g., RxNorm) |
| medication-note | MedicationStatement.note.text | MedicationStatement | Additional patient comments |
| — (defaulted) | MedicationStatement.status | MedicationStatement | Set to active for current medications |
| — (derived) | MedicationStatement.subject | MedicationStatement | Reference to the patient |

> Patient‑reported intake medications are represented as **MedicationStatement**, not MedicationRequest.

---

## Past Surgical History → `Procedure`

| linkId | FHIRPath | Resource | Description |
|------|---------|----------|-------------|
| surgery-type | Procedure.code.text | Procedure | Type of surgery performed |
| surgery-date | Procedure.performedDateTime | Procedure | Date of surgery |
| — (derived) | Procedure.subject | Procedure | Reference to the patient |

---

## Family History → `FamilyMemberHistory`

| linkId | FHIRPath | Resource | Description |
|------|---------|----------|-------------|
| family-history-condition | FamilyMemberHistory.condition.code.text | FamilyMemberHistory | Condition present in a family member |
| family-history-relative | FamilyMemberHistory.relationship | FamilyMemberHistory | Relationship to the patient |
| family-member-history-problem | FamilyMemberHistory.condition.code | FamilyMemberHistory | Coded family history condition |
| family-member-history-relationship | FamilyMemberHistory.relationship | FamilyMemberHistory | Coded family relationship |
| family-member-history-deceased | FamilyMemberHistory.deceasedBoolean | FamilyMemberHistory | Indicates whether the family member is deceased |
| — (derived) | FamilyMemberHistory.patient | FamilyMemberHistory | Reference to the patient |

---

## Vaccination History → `Immunization`

| linkId | FHIRPath | Resource | Description |
|------|---------|----------|-------------|
| immunization-vaccine | Immunization.vaccineCode | Immunization | Vaccine administered |
| immunization-date | Immunization.occurrenceDateTime | Immunization | Date vaccine was administered |
| — (defaulted) | Immunization.status | Immunization | Set to completed |
| — (derived) | Immunization.patient | Immunization | Reference to the patient |

---

## Tobacco, Drug, and Alcohol Use → `Observation`

| linkId | FHIRPath | Resource | Description |
|------|---------|----------|-------------|
| tobacco-ever | Observation.valueBoolean | Observation | Indicates whether the patient has ever used tobacco |
| tobacco-type | Observation.valueCodeableConcept | Observation | Type of tobacco or vaping product |
| tobacco-current | Observation.valueBoolean | Observation | Indicates current use |
| tobacco-years | Observation.valueInteger | Observation | Duration of use in years |
| tobacco-packs-per-day | Observation.valueDecimal | Observation | Average packs per day |
| tobacco-tried-quit | Observation.valueBoolean | Observation | Indicates prior quit attempts |
| tobacco-quit-how-long-ago | Observation.note.text | Observation | Time since quitting |
| drug-use-past-year | Observation.valueBoolean | Observation | Indicates drug use in past year |
| drug-types | Observation.valueCodeableConcept | Observation | Types of drugs used |
| drug-types-other | Observation.note.text | Observation | Free-text drug information |
| — (derived) | Observation.category | Observation | Categorized as social-history |
| — (derived) | Observation.subject | Observation | Reference to the patient |

---

## Social Determinants of Health → `Observation`

| linkId | FHIRPath | Resource | Description |
|------|---------|----------|-------------|
| housing-status | Observation.valueCodeableConcept | Observation | Current housing situation |
| education-level | Observation.valueCodeableConcept | Observation | Highest education level |
| smoking-status-standard | Observation.valueCodeableConcept | Observation | Standardized smoking status |
| veteran-status | Observation.valueBoolean | Observation | Indicates veteran status |
| — (derived) | Observation.category | Observation | Categorized as social-history |

---

## Pregnancy → `Observation`

| linkId | FHIRPath | Resource | Description |
|------|---------|----------|-------------|
| pregnancy-status | Observation.valueCodeableConcept | Observation | Indicates pregnancy status |
| estimated-delivery-date | Observation.valueDateTime | Observation | Estimated delivery date |

---

## Coverage / Insurance → `Coverage`

| linkId | FHIRPath | Resource | Description |
|------|---------|----------|-------------|
| insurance-provider | Coverage.payor | Coverage | Insurance payer organization |
| subscriber-id | Coverage.subscriberId | Coverage | Subscriber identifier |
| relationship-to-subscriber | Coverage.relationship | Coverage | Relationship to the subscriber |
| — (derived) | Coverage.beneficiary | Coverage | Patient receiving coverage |

---

## Subscriber (if not self) → `RelatedPerson`

| linkId | FHIRPath | Resource | Description |
|------|---------|----------|-------------|
| subscriber-first-name | RelatedPerson.name.given | RelatedPerson | Subscriber given name |
| subscriber-middle-name | RelatedPerson.name.given | RelatedPerson | Subscriber middle name |
| subscriber-last-name | RelatedPerson.name.family | RelatedPerson | Subscriber family name |
| subscriber-dob | RelatedPerson.birthDate | RelatedPerson | Subscriber date of birth |
| subscriber-gender-identity | RelatedPerson.extension[gender-identity] | RelatedPerson | Subscriber gender identity |

---

## Consents and Acknowledgements → `Consent`

| linkId | FHIRPath | Resource | Description |
|------|---------|----------|-------------|
| consent-for-treatment-signature | Consent.provision.actor | Consent | Indicates consent for treatment |
| consent-for-treatment-date | Consent.dateTime | Consent | Date consent was provided |
| agreement-to-pay-for-treatment-help | Consent.provision | Consent | Agreement to financial responsibility |
| agreement-to-pay-for-treatment-date | Consent.dateTime | Consent | Date agreement was acknowledged |
| notice-of-privacy-practices-signature | Consent.provision.actor | Consent | Acknowledgement of privacy practices |
| notice-of-privacy-practices-date | Consent.dateTime | Consent | Date acknowledgement was provided |
| acknowledgement-for-advance-directives-signature | Consent.provision.actor | Consent | Acknowledgement of advance directives |
| acknowledgement-for-advance-directives-date | Consent.dateTime | Consent | Date acknowledgement was provided |
| — (defaulted) | Consent.status | Consent | Set to active |
| — (derived) | Consent.patient | Consent | Reference to the patient |

---

## Provenance (Recommended)


All derived resources **SHOULD** include a reference back to the
originating QuestionnaireResponse to preserve traceability and
support reconciliation workflows.

Resource.derivedFrom → QuestionnaireResponse


``
