# Checkup Sample Schema

Harness Local v0.25.4 adds a documented local checkup sample format.

Run:

```bash
./harness checkup-sample
```

Outputs:

```text
dist/evidence/CHECKUP-SAMPLE/checkup-sample.json
dist/evidence/CHECKUP-SAMPLE/CHECKUP-SAMPLE.md
```

This sample is deidentified and local-only. It is not a customer case, not paid traction, not external validation, and not production-readiness proof.

## Top-level fields

| Field | Type | Meaning |
| --- | --- | --- |
| `schema_version` | string | Sample schema version, for v0.25.4: `harness-checkup-sample-v0.25.4`. |
| `generated_at` | string | Local generation timestamp. |
| `sample_kind` | string | Example kind. Current value: `deidentified_internal_ai_project`. |
| `harness_version` | string | Harness Local version that generated the sample. |
| `readiness` | string | Overall project readiness, usually `red`, `yellow`, or `green`. |
| `diagnosis` | object | Bucketed findings: `must_fix`, `should_fix`, `can_ignore`. |
| `release_readiness` | object | Whether release/commercial claims are safe. |
| `claim_boundary` | object | Allowed and forbidden claims. |
| `safe_share_checklist` | array | Manual checks before sharing. |
| `share_contract` | object | Machine-readable privacy and claim boundary. |
| `publication_status` | string | Current publication meaning. |

## Diagnosis buckets

`diagnosis.buckets.must_fix` contains blockers. Do not turn a RED result into YELLOW/GREEN for sales optics.

`diagnosis.buckets.should_fix` contains issues that can confuse users or create claim risk.

`diagnosis.buckets.can_ignore` contains passing evidence or low-risk items.

Each item may include:

```json
{
  "id": "external_validation",
  "label": "External real-user validation",
  "status": "FAIL",
  "tier": "must_fix",
  "summary": "external_real_user_validation_count=0",
  "reason": "Company dogfood is not external validation.",
  "action": "Do not claim external validation until separate evidence exists."
}
```

## Share contract

The sample embeds the same style of contract produced by `./harness doctor`.

Important values:

```json
{
  "local_only": true,
  "upload_required": false,
  "source_code_required": false,
  "credentials_required": false,
  "raw_feedback_jsonl_included": false,
  "customer_data_allowed": false,
  "manual_review_required": true,
  "not_proof_of_external_validation": true,
  "not_proof_of_paid_customers": true,
  "not_proof_of_production_readiness": true
}
```

## Safe interpretation

You can say:

- “Harness generated a local project checkup sample.”
- “The sample lists blockers and claim boundaries.”
- “The sample is local-only and can be reviewed before sharing.”

Do not say:

- “This proves external users validated the project.”
- “This proves paid customers exist.”
- “This proves the project is production-ready.”
- “This report is a customer case.”

## Sharing rule

Before sharing any generated report, manually remove private paths, personal names, credentials, source code, raw feedback data, and customer data. If blockers remain, keep the RED verdict.
