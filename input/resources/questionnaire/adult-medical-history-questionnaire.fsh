{
  "resourceType": "Questionnaire",
  "status": "active",
  "title": "Patient Intake + Adult Health History",
  "name": "patient-intake",
  "url": "https://example.org/fhir/Questionnaire/patient-intake",
  "subjectType": ["Patient"],
  "item": [
    {
      "linkId": "visit-information",
      "text": "Visit Information",
      "type": "group",
      "item": [
        { "linkId": "reason-for-visit", "text": "Reason for your visit today", "type": "text" },
        { "linkId": "other-concerns", "text": "Other concerns (optional)", "type": "text" }
      ]
    },
    {
      "linkId": "patient-demographics",
      "text": "Demographics",
      "type": "group",
      "item": [
        { "linkId": "first-name", "text": "First Name", "type": "string", "required": true },
        { "linkId": "middle-name", "text": "Middle Name", "type": "string" },
        { "linkId": "last-name", "text": "Last Name", "type": "string", "required": true },
        { "linkId": "dob", "text": "Date of Birth", "type": "date" },
        { "linkId": "street", "text": "Street", "type": "string" },
        { "linkId": "city", "text": "City", "type": "string" },
        {
          "linkId": "state",
          "text": "State",
          "type": "choice",
          "answerValueSet": "http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state"
        },
        { "linkId": "zip", "text": "Zip", "type": "string" },
        { "linkId": "phone", "text": "Phone", "type": "string" },
        { "linkId": "phone-sms", "text": "Phone (SMS)", "type": "string" },
        { "linkId": "email", "text": "Email", "type": "string" },
        { "linkId": "ssn", "text": "Social Security Number (optional)", "type": "string" },
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
            { "valueString": "Widowed" }
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
        { "linkId": "ec-first-name", "text": "First Name", "type": "string" },
        { "linkId": "ec-middle-name", "text": "Middle Name", "type": "string" },
        { "linkId": "ec-last-name", "text": "Last Name", "type": "string" },
        { "linkId": "ec-phone", "text": "Phone", "type": "string" }
      ]
    },
    {
      "linkId": "review-of-systems",
      "text": "Review of Symptoms",
      "type": "group",
      "item": [
        {
          "linkId": "ros",
          "text": "Symptoms",
          "type": "group",
          "repeats": true,
          "item": [
            { "linkId": "ros-system", "text": "Body system", "type": "string" },
            { "linkId": "ros-present", "text": "Symptoms present?", "type": "boolean" },
            { "linkId": "ros-comments", "text": "Comments", "type": "string" }
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
        { "linkId": "allergy-substance", "text": "Substance", "type": "string" },
        { "linkId": "allergy-reaction", "text": "Reaction", "type": "string" },
        {
          "linkId": "allergy-severity",
          "text": "Severity",
          "type": "choice",
          "answerOption": [
            { "valueString": "Mild" },
            { "valueString": "Moderate" },
            { "valueString": "Severe" }
          ]
        },
        { "linkId": "allergy-treatment", "text": "Treatment (optional)", "type": "string" },
        { "linkId": "allergy-onset", "text": "Onset (optional)", "type": "dateTime" }
      ]
    },
    {
      "linkId": "medications",
      "text": "Current Medications",
      "type": "group",
      "repeats": true,
      "item": [
        { "linkId": "medication-name", "text": "Medication name", "type": "string" },
        { "linkId": "dose", "text": "Dose", "type": "string" },
        { "linkId": "frequency", "text": "Frequency", "type": "string" },
        { "linkId": "medication-notes", "text": "Other notes", "type": "string" }
      ]
    },

    {
      "linkId": "contact-preferences",
      "text": "Contact Preferences",
      "type": "group",
      "item": [
        { "linkId": "ok-email", "text": "Ok to send email appointment reminders", "type": "boolean" },
        { "linkId": "ok-call-text", "text": "Ok to call/text", "type": "boolean" },
        { "linkId": "ok-voice-text", "text": "Ok to send voice/text messages", "type": "boolean" },
        {
          "linkId": "preferred-reminder-method",
          "text": "Preferred method for phone reminders",
          "type": "choice",
          "answerOption": [
            { "valueString": "Text message" },
            { "valueString": "Phone call" }
          ]
        }
      ]
    }
  ]
}
