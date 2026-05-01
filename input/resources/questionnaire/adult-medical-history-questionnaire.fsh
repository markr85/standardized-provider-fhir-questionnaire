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
      "text": "Social Security Number (if requested)",
      "type": "string"
    },
    {
      "linkId": "race",
      "text": "Race",
      "type": "choice",
      "answerValueSet": "http://hl7.org/fhir/us/core/ValueSet/omb-race-category"
    },
    {
      "linkId": "ethnicity",
      "text": "Ethnicity",
      "type": "choice",
      "answerValueSet": "http://hl7.org/fhir/us/core/ValueSet/omb-ethnicity-category"
    }
  ]
}
