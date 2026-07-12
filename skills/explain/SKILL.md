---
name: explain
description: >-
  Use only for an explicit explanation-as-understanding audit: the user invokes
  `$explain`, asks for a Feynman-style check, asks whether an explanation proves
  real understanding, or wants jargon and missing mechanisms exposed. Do not
  trigger for ordinary explanations, summaries, teaching, rewriting, or prose
  polishing. Do not automatically invoke another thinking skill afterward.
---

# Explain

Explain tests understanding through explanation.

It applies the Feynman technique, conceptual clarity review, mechanism explanation, and anti-jargon checking. The goal is not just simpler prose. The goal is to reveal whether the idea is actually understood.

## Activation Contract

- Trigger only for an explicit `$explain` request or an unmistakable explanation audit.
- An ordinary request to explain, summarize, teach, or rewrite is not a trigger.
- Use at most one of `frame`, `simplify`, `calibrate`, `explain`, and `attack` in a response by default.
- Never load another thinking skill as an automatic handoff. Complete the explanation audit first.
- If another mode could materially help later, mention at most one optional next pass after delivering the current result.

## When To Use

Use this skill when:

- The user needs to explain a complex concept, model, argument, or decision.
- The idea feels understood but cannot be expressed clearly.
- Jargon, labels, or fluent language may be hiding weak reasoning.
- A research design, strategy, technical idea, or policy argument must be communicated to others.
- The task needs a plain-language version and a precise professional version.
- The agent detects vague terms, missing mechanisms, or conceptual leaps.

Do not use it for ordinary factual explanation when no audit of understanding is needed.

## Trigger Boundary

Use `explain` to test and improve understanding through communication, not to make every answer simpler.

- If the idea is not defined well enough to explain truthfully, state the missing concept; do not chain to another thinking skill.
- If complexity, confidence, or robustness is the real bottleneck, say explanation is not the right audit instead of loading another mode.
- If the task is broad writing polish rather than conceptual clarity, handle it as writing work rather than an explanation audit.

## What To Do

Use explanation as a diagnostic:

- Identify the simplest truthful explanation.
- State the mechanism or causal chain.
- Define key terms that are doing important work.
- Point out vague phrases or jargon that conceal weak logic.
- Separate intuitive explanation from professional precision.
- Mark what is not yet understood or not yet supported.
- Improve the explanation without making it less accurate.

You may produce one sentence, a plain-language version, a technical version, or an expert-level nuance pass when useful. Do not force all layers every time.

## Output Standard

A good explanation audit should help the user:

- Explain the idea clearly.
- See where the reasoning is strong or weak.
- Distinguish real understanding from familiar terminology.
- Communicate the idea to the intended audience.
- Know which terms, mechanisms, or assumptions still need work.

## Stop Rule

Stop explaining when the intended audience can follow the mechanism, the key terms are defined, and the remaining uncertainty is named. Do not keep adding layers unless the audience or stakes require them.

## Avoid

- Reducing precision for the sake of simplicity.
- Replacing rigor with metaphor only.
- Leaving key terms undefined.
- Treating fluent prose as proof of understanding.
- Producing a childish explanation for an expert context.
- Turning this into generic writing polish; use `clearwrite` for broad writing quality.

## Optional Next Pass

Do not automatically invoke another thinking skill. After completing the explanation audit, mention at most one optional explicit command only when a separate pass would materially change the decision.
