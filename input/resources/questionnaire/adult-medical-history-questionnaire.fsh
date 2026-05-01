{
  "resourceType": "Bundle",
  "type": "transaction",
  "entry": [
    {
      "fullUrl": "urn:uuid:f508b2b8-b796-4931-ac92-de3817d71fc1",
      "request": {
        "method": "PUT",
        "url": "Questionnaire?name=patient-intake"
      },
      "resource": {
        "resourceType": "Questionnaire",
        "status": "active",
        "title": "Patient Intake + Adult Health History",
        "url": "https://medplum.com/Questionnaire/patient-intake-questionnaire-example",
        "name": "patient-intake",
        "subjectType": ["Patient"],
        "item": [
          {
            "linkId": "visit-information",
            "text": "Visit Information",
            "type": "group",
            "item": [
              {
                "linkId": "reason-for-visit",
                "text": "Reason for your visit today",
                "type": "text"
              },
              {
                "linkId": "other-concerns",
                "text": "Other concerns (optional)",
                "type": "text"
              }
            ]
          },
          {
            "linkId": "patient-demographics",
            "text": "Demographics",
            "type": "group",
            "item": [
              {
                "linkId": "first-name",
                "text": "First Name",
                "type": "string",
                "required": true
              },
              {
                "linkId": "middle-name",
                "text": "Middle Name",
                "type": "string"
              },
              {
                "linkId": "last-name",
                "text": "Last Name",
                "type": "string",
                "required": true
              },
              {
                "linkId": "dob",
                "text": "Date of Birth",
                "type": "date"
              },
              {
                "linkId": "street",
                "text": "Street",
                "type": "string"
              },
              {
                "linkId": "city",
                "text": "City",
                "type": "string"
              },
              {
                "linkId": "state",
                "text": "State",
                "type": "choice",
                "answerValueSet": "http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state"
              },
              {
                "linkId": "zip",
                "text": "Zip",
                "type": "string"
              },
              {
                "linkId": "phone",
                "text": "Phone",
                "type": "string"
              },
              {
                "linkId": "phone-sms",
                "text": "Phone (SMS)",
                "type": "string"
              },
              {
                "linkId": "email",
                "text": "Email",
                "type": "string"
              },
              {
                "linkId": "ssn",
                "text": "Social Security Number (optional)",
                "type": "string"
              },
              {
                "linkId": "race",
                "text": "Race (optional)",
                "type": "choice",
                "answerValueSet": "http://hl7.org/fhir/us/core/ValueSet/omb-race-category"
              },
              {
                "linkId": "ethnicity",
                "text": "Ethnicity (optional)",
                "type": "choice",
                "answerValueSet": "http://hl7.org/fhir/us/core/ValueSet/omb-ethnicity-category"
              },
              {
                "linkId": "marital-status",
                "text": "Marital Status (optional)",
                "type": "choice",
                "answerOption": [
                  { "valueString": "Single" },
                  { "valueString": "Married" },
                  { "valueString": "Divorced" },
                  { "valueString": "Widowed" },
                  { "valueString": "Partnered" },
                  { "valueString": "Prefer not to answer" }
                ]
              }
            ]
          },
          {
            "linkId": "emergency-contact",
            "text": "Emergency Contact",
            "type": "group",
            "repeats": true,
            "item": [
              {
                "linkId": "emergency-contact-first-name",
                "text": "First Name",
                "type": "string"
              },
              {
                "linkId": "emergency-contact-middle-name",
                "text": "Middle Name",
                "type": "string"
              },
              {
                "linkId": "emergency-contact-last-name",
                "text": "Last Name",
                "type": "string"
              },
              {
                "linkId": "emergency-contact-phone",
                "text": "Phone",
                "type": "string"
              }
            ]
          },
          {
            "linkId": "review-of-systems",
            "text": "Review of Symptoms",
            "type": "group",
            "item": [
              {
                "linkId": "ros-constitutional",
                "text": "General / Constitutional",
                "type": "group",
                "item": [
                  { "linkId": "ros-constitutional-present", "text": "Symptoms present?", "type": "boolean" },
                  { "linkId": "ros-constitutional-comments", "text": "Comments (optional)", "type": "string" }
                ]
              },
              {
                "linkId": "ros-ent",
                "text": "Ear / Nose / Throat",
                "type": "group",
                "item": [
                  { "linkId": "ros-ent-present", "text": "Symptoms present?", "type": "boolean" },
                  { "linkId": "ros-ent-comments", "text": "Comments (optional)", "type": "string" }
                ]
              },
              {
                "linkId": "ros-cardiovascular",
                "text": "Heart / Cardiovascular",
                "type": "group",
                "item": [
                  { "linkId": "ros-cardio-present", "text": "Symptoms present?", "type": "boolean" },
                  { "linkId": "ros-cardio-comments", "text": "Comments (optional)", "type": "string" }
                ]
              },
              {
                "linkId": "ros-respiratory",
                "text": "Lungs / Respiratory",
                "type": "group",
                "item": [
                  { "linkId": "ros-respiratory-present", "text": "Symptoms present?", "type": "boolean" },
                  { "linkId": "ros-respiratory-comments", "text": "Comments (optional)", "type": "string" }
                ]
              },
              {
                "linkId": "ros-gastrointestinal",
                "text": "Digestion / Gastrointestinal",
                "type": "group",
                "item": [
                  { "linkId": "ros-gi-present", "text": "Symptoms present?", "type": "boolean" },
                  { "linkId": "ros-gi-comments", "text": "Comments (optional)", "type": "string" }
                ]
              },
              {
                "linkId": "ros-musculoskeletal",
                "text": "Muscles / Bones",
                "type": "group",
                "item": [
                  { "linkId": "ros-msk-present", "text": "Symptoms present?", "type": "boolean" },
                  { "linkId": "ros-msk-comments", "text": "Comments (optional)", "type": "string" }
                ]
              },
              {
                "linkId": "ros-neurological",
                "text": "Neurological",
                "type": "group",
                "item": [
                  { "linkId": "ros-neuro-present", "text": "Symptoms present?", "type": "boolean" },
                  { "linkId": "ros-neuro-comments", "text": "Comments (optional)", "type": "string" }
                ]
              },
              {
                "linkId": "ros-psychiatric",
                "text": "Mood / Psychiatric",
                "type": "group",
                "item": [
                  { "linkId": "ros-psych-present", "text": "Symptoms present?", "type": "boolean" },
                  { "linkId": "ros-psych-comments", "text": "Comments (optional)", "type": "string" }
                ]
              },
              {
                "linkId": "ros-skin",
                "text": "Skin",
                "type": "group",
                "item": [
                  { "linkId": "ros-skin-present", "text": "Symptoms present?", "type": "boolean" },
                  { "linkId": "ros-skin-comments", "text": "Comments (optional)", "type": "string" }
                ]
              },
              {
                "linkId": "ros-endocrine",
                "text": "Hormones / Endocrine",
                "type": "group",
                "item": [
                  { "linkId": "ros-endo-present", "text": "Symptoms present?", "type": "boolean" },
                  { "linkId": "ros-endo-comments", "text": "Comments (optional)", "type": "string" }
                ]
              }
            ]
          },
          {
            "linkId": "allergies",
            "text": "Allergies",
            "type": "group",
            "repeats": true,
            "item": [
              {
                "linkId": "allergy-substance",
                "text": "Substance",
                "type": "choice",
                "answerValueSet": "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1186.8"
              },
              {
                "linkId": "allergy-reaction",
                "text": "Reaction",
                "type": "string"
              },
              {
                "linkId": "allergy-severity",
                "text": "Severity",
                "type": "choice",
                "answerOption": [
                  { "valueString": "Mild" },
                  { "valueString": "Moderate" },
                  { "valueString": "Severe" },
                  { "valueString": "Unknown" }
                ]
              },
              {
                "linkId": "allergy-treatment",
                "text": "Treatment info (optional)",
                "type": "string"
              },
              {
                "linkId": "allergy-onset",
                "text": "Onset (optional)",
                "type": "dateTime"
              }
            ]
          },
          {
            "linkId": "medications",
            "text": "Current medications",
            "type": "group",
            "repeats": true,
            "item": [
              {
                "linkId": "medication-code",
                "text": "Medication name",
                "type": "choice",
                "answerValueSet": "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1010.4"
              },
              {
                "linkId": "medication-dose",
                "text": "Dose",
                "type": "string"
              },
              {
                "linkId": "medication-frequency",
                "text": "Frequency",
                "type": "string"
              },
              {
                "linkId": "medication-note",
                "text": "Other notes",
                "type": "string"
              }
            ]
          },
          {
            "linkId": "medical-history",
            "text": "Medical History",
            "type": "group",
            "repeats": true,
            "item": [
              {
                "linkId": "medical-history-problem",
                "text": "Problem",
                "type": "choice",
                "answerValueSet": "http://hl7.org/fhir/us/core/ValueSet/us-core-condition-code"
              },
              {
                "linkId": "medical-history-clinical-status",
                "text": "Status",
                "type": "choice",
                "answerValueSet": "http://hl7.org/fhir/ValueSet/condition-clinical"
              },
              {
                "linkId": "medical-history-onset",
                "text": "Onset",
                "type": "dateTime"
              }
            ]
          },
          {
            "linkId": "surgeries",
            "text": "Surgeries",
            "type": "group",
            "repeats": true,
            "item": [
              { "linkId": "surgery-description", "text": "Surgery / procedure", "type": "string" },
              { "linkId": "surgery-date", "text": "Date (optional)", "type": "date" }
            ]
          },
          {
            "linkId": "hospitalizations",
            "text": "Major illnesses / hospitalizations",
            "type": "group",
            "repeats": true,
            "item": [
              { "linkId": "hospitalization-description", "text": "Description", "type": "string" },
              { "linkId": "hospitalization-date", "text": "Date (optional)", "type": "date" }
            ]
          },
          {
            "linkId": "diabetes-details",
            "text": "Diabetes details (optional)",
            "type": "group",
            "item": [
              { "linkId": "diabetes-year", "text": "Year of diagnosis", "type": "integer" },
              { "linkId": "diabetes-a1c", "text": "Last hemoglobin A1C (if known)", "type": "decimal" },
              { "linkId": "diabetes-blood-sugar", "text": "Last blood sugar value (if known)", "type": "decimal" },
              { "linkId": "diabetes-treatment", "text": "Treatments / medications (optional)", "type": "string" }
            ]
          },
          {
            "linkId": "family-member-history",
            "text": "Family Medical History",
            "type": "group",
            "repeats": true,
            "item": [
              {
                "linkId": "family-member-history-problem",
                "text": "Condition",
                "type": "choice",
                "answerValueSet": "http://hl7.org/fhir/us/core/ValueSet/us-core-condition-code"
              },
              {
                "linkId": "family-member-history-relationship",
                "text": "Relationship",
                "type": "choice",
                "answerValueSet": "http://terminology.hl7.org/ValueSet/v3-FamilyMember"
              },
              {
                "linkId": "family-member-history-deceased",
                "text": "Deceased (optional)",
                "type": "boolean"
              }
            ]
          },
          {
            "linkId": "vaccination-history",
            "text": "Vaccination History",
            "type": "group",
            "repeats": true,
            "item": [
              {
                "linkId": "immunization-vaccine",
                "text": "Vaccine",
                "type": "choice",
                "answerValueSet": "http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1010.6"
              },
              {
                "linkId": "immunization-date",
                "text": "Administration Date (optional)",
                "type": "dateTime"
              }
            ]
          },
          {
            "linkId": "preferred-pharmacy",
            "text": "Preferred Pharmacy",
            "type": "group",
            "item": [
              {
                "linkId": "preferred-pharmacy-reference",
                "text": "Pharmacy (optional reference)",
                "type": "reference",
                "extension": [
                  {
                    "id": "reference-pharmacy",
                    "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource",
                    "valueCodeableConcept": {
                      "coding": [
                        {
                          "system": "http://hl7.org/fhir/fhir-types",
                          "display": "Organizations",
                          "code": "Organization"
                        }
                      ]
                    }
                  }
                ]
              },
              { "linkId": "pharmacy-name", "text": "Pharmacy name", "type": "string" },
              { "linkId": "pharmacy-phone", "text": "Pharmacy phone", "type": "string" },
              { "linkId": "pharmacy-address", "text": "Pharmacy address", "type": "string" },
              { "linkId": "pharmacy-fax", "text": "Pharmacy fax (optional)", "type": "string" }
            ]
          },
          {
            "linkId": "coverage-information",
            "text": "Insurance Coverage",
            "type": "group",
            "repeats": true,
            "item": [
              {
                "linkId": "insurance-provider",
                "text": "Insurance Provider",
                "type": "reference",
                "extension": [
                  {
                    "id": "reference-insurance",
                    "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource",
                    "valueCodeableConcept": {
                      "coding": [
                        {
                          "system": "http://hl7.org/fhir/fhir-types",
                          "display": "Organizations",
                          "code": "Organization"
                        }
                      ]
                    }
                  }
                ]
              },
              {
                "linkId": "subscriber-id",
                "text": "Subscriber ID",
                "type": "string"
              },
              {
                "linkId": "relationship-to-subscriber",
                "text": "Relationship to Subscriber",
                "type": "choice",
                "answerValueSet": "http://hl7.org/fhir/ValueSet/subscriber-relationship"
              },
              {
                "linkId": "related-person",
                "text": "Subscriber Information (if not self)",
                "type": "group",
                "enableBehavior": "all",
                "enableWhen": [
                  {
                    "question": "relationship-to-subscriber",
                    "operator": "!=",
                    "answerCoding": {
                      "system": "http://terminology.hl7.org/CodeSystem/subscriber-relationship",
                      "code": "self",
                      "display": "Self"
                    }
                  }
                ],
                "item": [
                  { "linkId": "related-person-first-name", "text": "First Name", "type": "string" },
                  { "linkId": "related-person-middle-name", "text": "Middle Name", "type": "string" },
                  { "linkId": "related-person-last-name", "text": "Last Name", "type": "string" },
                  { "linkId": "related-person-dob", "text": "Date of Birth", "type": "date" }
                ]
              }
            ]
          },
          {
            "linkId": "personal-social-history",
            "text": "Personal & Social History",
            "type": "group",
            "item": [
              { "linkId": "living-arrangements", "text": "Living arrangements (optional)", "type": "string" },
              { "linkId": "occupation", "text": "Occupation(s) (optional)", "type": "string" },
              { "linkId": "occupational-exposure", "text": "Occupational exposure?", "type": "boolean" },
              { "linkId": "occupational-exposure-notes", "text": "If yes, describe exposure", "type": "string" },
              { "linkId": "recent-travel", "text": "Recent travel?", "type": "boolean" },
              { "linkId": "recent-travel-location", "text": "If yes, where?", "type": "string" },
              { "linkId": "alcohol-use", "text": "Alcohol use", "type": "string" },
              { "linkId": "recreational-substance-use", "text": "Recreational substance use", "type": "string" }
            ]
          },
          {
            "linkId": "social-determinants-of-health",
            "text": "Social Determinants of Health",
            "type": "group",
            "item": [
              {
                "linkId": "housing-instability",
                "text": "Housing Stability",
                "type": "choice",
                "answerValueSet": "http://hl7.org/fhir/us/core/ValueSet/us-core-housing-instability"
              },
              {
                "linkId": "education-level",
                "text": "Highest Education Level",
                "type": "choice",
                "answerValueSet": "http://terminology.hl7.org/ValueSet/v3-EducationLevel"
              },
              {
                "linkId": "tobacco-use",
                "text": "Tobacco Use",
                "type": "choice",
                "answerValueSet": "http://hl7.org/fhir/us/core/ValueSet/us-core-smoking-status"
              }
            ]
          },
          {
            "linkId": "languages-spoken",
            "text": "Languages Spoken",
            "type": "choice",
            "answerValueSet": "http://hl7.org/fhir/ValueSet/languages",
            "repeats": true
          },
          {
            "linkId": "preferred-language",
            "text": "Preferred Language",
            "type": "choice",
            "answerValueSet": "http://hl7.org/fhir/ValueSet/languages"
          },
          {
            "linkId": "patient-contact-preference",
            "text": "Contact Preferences",
            "type": "group",
            "item": [
              {
                "linkId": "patient-contact-preference-email",
                "text": "Ok to send email appointment reminders",
                "type": "boolean"
              },
              {
                "linkId": "patient-contact-preference-call-or-text",
                "text": "Ok to call/text",
                "type": "boolean"
              },
              {
                "linkId": "patient-contact-preference-voice-text-appointment-reminders",
                "text": "Ok to send voice/text messages",
                "type": "boolean"
              },
              {
                "linkId": "patient-contact-preference-preferred-method-for-phone-reminders",
                "text": "Preferred method for phone reminders",
                "type": "choice",
                "repeats": false,
                "answerOption": [
                  {
                    "valueCoding": {
                      "system": "http://hl7.org/fhir/contact-point-system",
                      "code": "sms",
                      "display": "Text message"
                    }
                  },
                  {
                    "valueCoding": {
                      "system": "http://hl7.org/fhir/contact-point-system",
                      "code": "phone",
                      "display": "Phone call"
                    }
                  }
                ],
                "extension": [
                  {
                    "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
                    "valueCodeableConcept": {
                      "coding": [
                        {
                          "system": "http://hl7.org/fhir/questionnaire-item-control",
                          "code": "radio-button"
                        }
                      ]
                    }
                  }
                ]
              }
            ]
          }
        ]
      }
    }
  ]
}
