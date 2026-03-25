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

---

## Patient Demographics

| linkId | FHIRPath | Resource |
|-------|----------|----------|
| first-name | Patient.name.given | Patient |
| last-name | Patient.name.family | Patient |
``
