---
name: calibrate
description: >-
  Use this skill when a judgment, claim, diagnosis, research interpretation, or
  decision depends on incomplete, conflicting, weak, uneven, or newly changed
  evidence. Use to update confidence, distinguish strong from weak evidence,
  separate signal from noise, identify what should change the conclusion, and
  avoid both overconfidence and paralysis. Also use when the user invokes
  Bayesian updating, bounded Bayesian reasoning, confidence calibration,
  evidence weighting, priors, posteriors, or asks how strongly to believe a
  claim. Prefer frame first if the question is not well-defined. Do not use for
  ordinary source fetching or data analysis unless the central task is
  evidence-weighted judgment. If the user mainly asks how strongly to believe a
  claim, use calibrate even if publication may follow; hand off to attack only
  when a concrete claim, document, decision, funding request, or rollout
  commitment is ready for review.
---

# Calibrate

Calibrate aligns belief strength with evidence strength.

It applies Bayesian updating, evidence weighting, and uncertainty management. Numerical probabilities are optional; qualitative confidence is often better.

## When To Use

Use this skill when:

- Evidence is incomplete, conflicting, indirect, uneven, or newly changed.
- The user needs to know how much to trust a claim, result, source, or interpretation.
- A new fact may update a previous judgment.
- The user may be overreacting to weak evidence or underreacting to strong evidence.
- The task requires a decision despite limited information.
- The conclusion should be stated with calibrated confidence.

Do not use it merely because a task mentions evidence. Use it when judgment under uncertainty is the bottleneck.

## Trigger Boundary

Use `calibrate` to decide how strongly to believe something, not to gather all possible evidence.

- If the claim or decision itself is poorly defined, use `frame` first.
- If the issue is too many moving parts rather than uncertain evidence, use `simplify` instead.
- If the user needs to communicate a calibrated judgment, use `explain` after calibration.
- If a calibrated judgment may still fail under objections or alternative explanations, use `attack` after calibration.
- If the user is moving from belief update to commitment action, such as announcing, launching, publishing, submitting, applying for funding, or rolling out, use `attack` for pre-commitment stress testing instead of continuing to calibrate.
- If fresh facts are required and could have changed, fetch or verify them with the appropriate tool before calibrating.

## What To Do

Update the judgment explicitly:

- State the current judgment or prior belief.
- Identify the new evidence.
- Assess relevance, reliability, directness, and independence.
- Decide whether the evidence supports, weakens, complicates, or reframes the judgment.
- Explain how much confidence should change.
- Identify remaining uncertainty.
- Name the evidence that would most improve confidence.

Use calibrated language such as low confidence, moderate confidence, strong confidence, provisional judgment, evidence-weighted judgment, or insufficient evidence for a strong conclusion.

## Output Standard

A good calibration should tell the user:

- What to currently believe.
- How strongly to believe it.
- Why the evidence changes or does not change the judgment.
- What would change the conclusion.
- Whether the next step is act, verify, qualify, or defer.

## Stop Rule

Stop calibrating when the confidence level, key evidence, remaining uncertainty, and most useful next evidence are explicit. Do not demand perfect certainty before a practical decision.

## Avoid

- Treating all evidence as equal.
- Treating repeated weak evidence as independent strong evidence.
- Ignoring contradictory evidence.
- Hiding uncertainty behind confident language.
- Overusing mathematical formality when qualitative updating is enough.
- Claiming certainty when the evidence only supports a tentative conclusion.

## Handoff

After calibration:

- Use `frame` if the evidence suggests the original problem is misframed.
- Use `simplify` if too many factors are overwhelming the decision.
- Use `explain` if the updated judgment needs to be communicated clearly.
- Use `attack` if alternative explanations or hidden risks remain strong.
- Use `attack` when the user moves to a commitment action such as announcing, applying for funding, launching, submitting, or rolling out; do not keep calibrating.
