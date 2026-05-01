{
  "resourceType": "Questionnaire",
  "status": "active",
  "title": "Patient Intake Questionnaire",
  "name": "patient-intake",
  "url": "https://medplum.com/Questionnaire/patient-intake-questionnaire-example",

  "subjectType": ["Patient"],

  "item": [
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
          "linkId": "ssn",
          "text": "Social Security Number (if requested)",
          "type": "string"
        },

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
          "linkId": "allergy-onset",
          "text": "Onset",
          "type": "dateTime"
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
      "linkId": "coverage-information",
      "text": "Coverage Information",
      "type": "group",
      "repeats": true,
      "item": [
        {
          "linkId": "insurance-provider",
          "text": "Insurance Provider",
          "type": "reference",
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource",
              "valueCodeableConcept": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/fhir-types",
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
        }
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
    }
  ]
}
