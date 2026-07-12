---
name: attack
description: >-
  Use only for an explicit adversarial or stress-test request: the user invokes
  `$attack` or asks what would break, for the strongest objections, a pre-mortem,
  reviewer-style criticism, counterfactual failure modes, or downside risks. Do
  not trigger merely because a plan is important, near execution, or would
  benefit from ordinary review. Do not use for routine code review, personal
  attack, or cybersecurity exploitation. Do not automatically invoke another
  thinking skill afterward.
---

# Attack

Attack finds where an idea, plan, argument, or decision is most likely to fail.

It applies adversarial review, Murphy's Law, counterfactual thinking, sensitivity thinking, failure mode analysis, and risk control. The goal is constructive robustness, not generic negativity.

## Activation Contract

- Trigger only for an explicit `$attack` request or an unmistakable adversarial review.
- Importance, risk, or proximity to execution alone is not a trigger.
- Use at most one of `frame`, `simplify`, `calibrate`, `explain`, and `attack` in a response by default.
- Never load another thinking skill as an automatic handoff. Complete the attack pass first.
- If another mode could materially help later, mention at most one optional next pass after delivering the current result.

## When To Use

Use this skill when:

- A plan, model, argument, conclusion, or decision is close to completion.
- The user wants to know whether something is robust.
- The work is being prepared for review, publication, presentation, execution, or commitment.
- The agent detects overconfidence, fragile assumptions, or hidden dependencies.
- A decision has meaningful downside risk.
- The user wants to anticipate criticism, failure, or objections.

Do not use it to attack people, evade systems, exploit software, or generate harmful tactics.

## Trigger Boundary

Use `attack` only when there is a concrete thing to stress-test.

- If the target is too vague to attack, state what is missing; do not chain to another thinking skill.
- If complexity, evidence strength, or communication is the real bottleneck, say adversarial review is not the right audit instead of loading another mode.
- For routine PR or code review, use the normal code-review path; reserve `attack` for broader adversarial review.
- If the task asks for harmful tactics, exploitation, evasion, or personal abuse, refuse that part and redirect to safe robustness review.

## What To Do

Stress-test from the strongest useful angles:

- Logical weakness.
- Unsupported assumptions.
- Alternative explanations.
- Data, measurement, or implementation errors.
- Boundary errors.
- Communication risks.
- Sensitivity to key variables.
- Failure under different conditions.
- Overclaiming beyond the evidence.

When useful, simulate roles such as skeptical reviewer, domain expert, data engineer, operator, user, regulator, competitor, or real-world failure scenario.

Ask counterfactual questions:

- What if the key assumption is false?
- What if the opposite mechanism is true?
- What if another explanation fits the same evidence?
- What if the input data are wrong?
- What if the environment changes?
- What if the strongest evidence is removed?
- What if the plan works locally but fails systemically?

End with practical repairs: what to revise, test, qualify, monitor, simplify, or defend.

## Output Standard

A good attack should identify:

- The most important vulnerabilities.
- The criticism most likely to matter.
- The highest-risk failure modes.
- The specific revisions or tests that would make the work stronger.
- Which risks are worth acting on now and which can be accepted or monitored.

## Stop Rule

Stop attacking when the most important vulnerabilities, likely objections, and practical repairs are ranked. Do not create endless doubt or require perfect robustness before action.

## Avoid

- Generic negativity.
- Listing trivial risks while missing structural weakness.
- Treating all risks as equally important.
- Creating endless doubt without decision support.
- Demanding perfect certainty before action.
- Confusing possible failure with probable failure.

## Optional Next Pass

Do not automatically invoke another thinking skill. After completing the attack, mention at most one optional explicit command only when a separate pass would materially change the decision. A second attack pass requires a revised artifact or an explicit user request.
