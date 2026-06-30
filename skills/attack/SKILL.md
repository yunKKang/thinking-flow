---
name: attack
description: >-
  Use this skill to stress-test a conclusion, plan, argument, model, design, or
  decision before publication, presentation, execution, or commitment. Use when
  the user wants robustness, criticism, failure modes, hidden assumptions,
  alternative explanations, sensitivity checks, downside risks, or reviewer-style
  objections. Also use when the user invokes adversarial review, counterfactual
  thinking, Murphy's Law, sensitivity analysis, risk control, stress testing, or
  asks what would break. Prefer frame, simplify, calibrate, or explain first if
  the work is not yet concrete enough to attack. This is adversarial review of
  ideas and plans, not personal attack and not cybersecurity exploitation.
---

# Attack

Attack finds where an idea, plan, argument, or decision is most likely to fail.

It applies adversarial review, Murphy's Law, counterfactual thinking, sensitivity thinking, failure mode analysis, and risk control. The goal is constructive robustness, not generic negativity.

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

Use `attack` when there is a concrete thing to stress-test.

- If the problem is still vague, use `frame` first.
- If the plan is too large or fragile because of complexity, use `simplify` before attacking.
- If the main issue is evidence strength or confidence, use `calibrate` before attacking.
- If the main issue is whether others can understand the idea, use `explain` before attacking.
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

## Handoff

After attack:

- Use `frame` if the attack shows the original problem is misframed.
- Use `simplify` if the plan is too complex and fragile.
- Use `calibrate` if the main weakness is uncertain evidence.
- Use `explain` if the main weakness is unclear communication.
- Run another attack pass after revision when stakes justify it.
