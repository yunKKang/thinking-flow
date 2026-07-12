---
name: calibrate
description: >-
  Use only for an explicit confidence or evidence-weighting audit: the user
  invokes `$calibrate` or asks how certain to be, whether evidence is sufficient,
  how conflicting evidence should change a belief, or what would change a
  conclusion. Do not trigger merely because evidence is incomplete, a fact needs
  verification, or a task contains uncertainty. Do not use for ordinary research,
  source fetching, or data analysis. Do not automatically invoke another
  thinking skill afterward.
---

# Calibrate

Calibrate aligns belief strength with evidence strength.

It applies Bayesian updating, evidence weighting, and uncertainty management. Numerical probabilities are optional; qualitative confidence is often better.

## Activation Contract

- Trigger only for an explicit `$calibrate` request or an unmistakable confidence audit.
- Ordinary uncertainty is not a trigger; verify facts and answer normally when confidence itself is not the user's question.
- Use at most one of `frame`, `simplify`, `calibrate`, `explain`, and `attack` in a response by default.
- Never load another thinking skill as an automatic handoff. Complete the calibration pass first.
- If another mode could materially help later, mention at most one optional next pass after delivering the current result.

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

- If the claim is too poorly defined to evaluate, state that limitation; do not chain to another thinking skill.
- If complexity, communication, or robustness is the real bottleneck, say calibration is not the right audit instead of loading another mode.
- If fresh facts could change the conclusion, verify them with the appropriate tool before calibrating.
- Separate confidence in evidence from confidence in the decision that follows from it.

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

## Optional Next Pass

Do not automatically invoke another thinking skill. After completing the calibration, mention at most one optional explicit command only when a separate pass would materially change the decision.
