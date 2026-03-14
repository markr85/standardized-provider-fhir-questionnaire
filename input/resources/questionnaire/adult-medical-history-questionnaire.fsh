Instance: AdultMedicalHistoryQuestionnaire
InstanceOf: ProviderIntakeQuestionnaire
Title: "Adult Medical History Questionnaire"
Description: "Adult medical history intake questionnaire based on the Provider Intake Questionnaire profile."
Usage: #definition

* status = #draft
* subjectType = #Patient

// -------------------------------
// Past Medical History
// -------------------------------
* item[+].linkId = "pmh-conditions"
* item[=].text = "Do you have a history of any of the following conditions?"
* item[=].type = #choice
* item[=].repeats = true
* item[=].answerOption[+].valueString = "Acid Reflux/GERD"
* item[=].answerOption[+].valueString = "ADD/ADHD"
* item[=].answerOption[+].valueString = "Alcoholism"
* item[=].answerOption[+].valueString = "Allergies"
* item[=].answerOption[+].valueString = "Anemia"
* item[=].answerOption[+].valueString = "Anxiety"
* item[=].answerOption[+].valueString = "Arthritis"
* item[=].answerOption[+].valueString = "Asthma"
* item[=].answerOption[+].valueString = "Bleeding Disorder"
* item[=].answerOption[+].valueString = "Cancer"
* item[=].answerOption[+].valueString = "Chronic Pain"
* item[=].answerOption[+].valueString = "Depression"
* item[=].answerOption[+].valueString = "Diabetes"
* item[=].answerOption[+].valueString = "Emphysema/COPD"
* item[=].answerOption[+].valueString = "Epilepsy/Seizure Disorder"
* item[=].answerOption[+].valueString = "Glaucoma/Cataracts"
* item[=].answerOption[+].valueString = "Headaches"
* item[=].answerOption[+].valueString = "Heart Disease"
* item[=].answerOption[+].valueString = "Hearing Loss"
* item[=].answerOption[+].valueString = "High Blood Pressure"
* item[=].answerOption[+].valueString = "High Cholesterol"
* item[=].answerOption[+].valueString = "Irritable Bowel"
* item[=].answerOption[+].valueString = "Kidney Disease"
* item[=].answerOption[+].valueString = "Liver Disease"
* item[=].answerOption[+].valueString = "Memory Loss"
* item[=].answerOption[+].valueString = "Osteoporosis"
* item[=].answerOption[+].valueString = "Stroke"
* item[=].answerOption[+].valueString = "Thyroid Disease"
* item[=].answerOption[+].valueString = "Other"

// -------------------------------
// Allergies
// -------------------------------
* item[+].linkId = "allergies-section"
* item[=].text = "Allergies"
* item[=].type = #group

* item[=].item[+].linkId = "allergy-types"
* item[=].item[=].text = "Please indicate any allergies you have"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[+].valueString = "No known allergies"
* item[=].item[=].answerOption[+].valueString = "Medication allergies"
* item[=].item[=].answerOption[+].valueString = "Environmental / seasonal allergies"
* item[=].item[=].answerOption[+].valueString = "Latex allergy"

* item[=].item[+].linkId = "allergy-list"
* item[=].item[=].text = "List any allergies and reactions"
* item[=].item[=].type = #group
* item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "allergy-name"
* item[=].item[=].item[=].text = "Allergy"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "allergy-reaction"
* item[=].item[=].item[=].text = "Reaction"
* item[=].item[=].item[=].type = #string

// -------------------------------
// Current Medications
// -------------------------------
* item[+].linkId = "current-medications-section"
* item[=].text = "Current Medications"
* item[=].type = #group

* item[=].item[+].linkId = "current-medications"
* item[=].item[=].text = "Please list all current medications"
* item[=].item[=].type = #group
* item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "medication-name"
* item[=].item[=].item[=].text = "Medication name"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "medication-strength"
* item[=].item[=].item[=].text = "Strength (e.g., 500 mg)"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "medication-dosing"
* item[=].item[=].item[=].text = "Dosing instructions"
* item[=].item[=].item[=].type = #string

// -------------------------------
// Past Surgical History
// -------------------------------
* item[+].linkId = "past-surgical-history-section"
* item[=].text = "Past Surgical History"
* item[=].type = #group

* item[=].item[+].linkId = "past-surgeries"
* item[=].item[=].text = "List past surgeries"
* item[=].item[=].type = #group
* item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "surgery-type"
* item[=].item[=].item[=].text = "Type of surgery (e.g., right knee replacement)"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "surgery-date"
* item[=].item[=].item[=].text = "Date"
* item[=].item[=].item[=].type = #date

// -------------------------------
// Family History
// -------------------------------
* item[+].linkId = "family-history-section"
* item[=].text = "Family History"
* item[=].type = #group

* item[=].item[+].linkId = "family-history-entries"
* item[=].item[=].text = "List any family history conditions"
* item[=].item[=].type = #group
* item[=].item[=].repeats = true

* item[=].item[=].item[+].linkId = "family-history-condition"
* item[=].item[=].item[=].text = "Condition"
* item[=].item[=].item[=].type = #string

* item[=].item[=].item[+].linkId = "family-history-relative"
* item[=].item[=].item[=].text = "Family member"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[+].valueString = "Mother"
* item[=].item[=].item[=].answerOption[+].valueString = "Father"
* item[=].item[=].item[=].answerOption[+].valueString = "Brother"
* item[=].item[=].item[=].answerOption[+].valueString = "Sister"
* item[=].item[=].item[=].answerOption[+].valueString = "Son"
* item[=].item[=].item[=].answerOption[+].valueString = "Daughter"
* item[=].item[=].item[=].answerOption[+].valueString = "Maternal grandmother"
* item[=].item[=].item[=].answerOption[+].valueString = "Paternal grandmother"
* item[=].item[=].item[=].answerOption[+].valueString = "Maternal grandfather"
* item[=].item[=].item[=].answerOption[+].valueString = "Paternal grandfather"
* item[=].item[=].item[=].answerOption[+].valueString = "Other"

// -------------------------------
// Social History: Tobacco/Vaping, Drug Use, Alcohol Use
// -------------------------------
* item[+].linkId = "social-history-section"
* item[=].text = "Tobacco, Vaping, Drug Use, and Alcohol Use"
* item[=].type = #group

// Tobacco and Vaping
* item[=].item[+].linkId = "tobacco-vaping-section"
* item[=].item[=].text = "Tobacco and Vaping"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "tobacco-ever"
* item[=].item[=].item[=].text = "Have you ever smoked or used any tobacco products?"
* item[=].item[=].item[=].type = #boolean

* item[=].item[=].item[+].linkId = "tobacco-type"
* item[=].item[=].item[=].text = "What type? (check all that apply)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[+].valueString = "Cigarettes"
* item[=].item[=].item[=].answerOption[+].valueString = "Chew"
* item[=].item[=].item[=].answerOption[+].valueString = "Cigars"
* item[=].item[=].item[=].answerOption[+].valueString = "Snus"
* item[=].item[=].item[=].answerOption[+].valueString = "Vape"

* item[=].item[=].item[+].linkId = "tobacco-current"
* item[=].item[=].item[=].text = "Are you still smoking or using tobacco/vaping products?"
* item[=].item[=].item[=].type = #boolean

* item[=].item[=].item[+].linkId = "tobacco-years"
* item[=].item[=].item[=].text = "How many years have you used tobacco/vaping products?"
* item[=].item[=].item[=].type = #integer

* item[=].item[=].item[+].linkId = "tobacco-packs-per-day"
* item[=].item[=].item[=].text = "How many packs per day? (if applicable)"
* item[=].item[=].item[=].type = #decimal

* item[=].item[=].item[+].linkId = "tobacco-tried-quit"
* item[=].item[=].item[=].text = "Have you ever tried to quit?"
* item[=].item[=].item[=].type = #boolean

* item[=].item[=].item[+].linkId = "tobacco-quit-how-long-ago"
* item[=].item[=].item[=].text = "If you quit, how long ago did you quit? (optional)"
* item[=].item[=].item[=].type = #string

// Drug Use
* item[=].item[+].linkId = "drug-use-section"
* item[=].item[=].text = "Drug Use"
* item[=].item[=].type = #group

* item[=].item[=].item[+].linkId = "drug-use-past-year"
* item[=].item[=].item[=].text = "In the past year, have you used any drugs or prescription drugs for non-medical reasons?"
* item[=].item[=].item[=].type = #boolean

* item[=].item[=].item[+].linkId = "drug-types"
* item[=].item[=].item[=].text = "If yes, which drugs did you use? (check all that apply)"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[+].valueString = "Amphetamines"
* item[=].item[=].item[=].answerOption[+].valueString = "Barbiturates"
* item[=].item[=].item[=].answerOption[+].valueString = "Benzodiazepines"
* item[=].item[=].item[=].answerOption[+].valueString = "Cocaine"
* item[=].item[=].item[=].answerOption[+].valueString = "Ecstasy"
* item[=].item[=].item[=].answerOption[+].valueString = "Fentanyl"
* item[=].item[=].item[=].answerOption[+].valueString = "Hallucinogens / LSD"
*
