Instance: AdultMedicalHistoryQuestionnaire
InstanceOf: ProviderIntakeQuestionnaire
Title: "Adult Medical History Questionnaire"
Description: "Adult medical history intake questionnaire based on the Provider Intake Questionnaire profile."
Usage: #definition

* item[+].linkId = "pmh-conditions"
* item[=].text = "Do you have a history of any of the following conditions?"
* item[=].type = #choice
* item[=].repeats = true

