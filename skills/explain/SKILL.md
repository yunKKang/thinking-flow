---
name: explain
description: >-
  Use this skill when an idea, concept, model, argument, plan, or decision needs
  an explanation audit: testing whether it is genuinely understood,
  mechanically clear, and communicable without hiding weak reasoning behind
  jargon. Use when the user cannot explain an idea clearly, needs both
  plain-language and professional versions, or when terms, mechanisms, causal
  paths, or conceptual leaps are unclear. Do not use for every ordinary request
  to explain; use it when explanation is being used to audit understanding and
  improve communication. Also use when the user invokes Feynman review, Feynman
  technique, explanation audit, anti-jargon checking, or asks whether they
  genuinely understand an idea.
---

# Explain

Explain tests understanding through explanation.

It applies the Feynman technique, conceptual clarity review, mechanism explanation, and anti-jargon checking. The goal is not just simpler prose. The goal is to reveal whether the idea is actually understood.

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

- If the idea itself is not yet bounded, use `frame` first.
- If the idea is too complex to explain because it is overbuilt, use `simplify` first.
- If the explanation depends on uncertain claims, use `calibrate` before or during explanation.
- If the explanation sounds clear but may fail under criticism, use `attack` after explanation.
- If the task is broad writing polish rather than conceptual clarity, use a writing-quality skill such as `clearwrite` instead.

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

## Handoff

After explanation:

- Use `frame` if the explanation reveals the problem is unclear.
- Use `simplify` if the idea is too overbuilt to explain.
- Use `calibrate` if the explanation relies on uncertain claims.
- Use `attack` if the explanation sounds clear but may fail under criticism.
