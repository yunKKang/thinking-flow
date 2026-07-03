---
name: simplify
description: >-
  Use this skill when a problem, plan, model, research design, or decision is
  already roughly framed but has become too complex to act on and needs the
  smallest meaningful version. Use when there are too many variables, too many
  possible directions, premature optimization, unclear first steps, or a need for
  a baseline, prototype, minimum viable model, or staged expansion path. Prefer
  this when the user invokes Occam's Razor, razor thinking, opportunity cost,
  bounded rationality, MVP thinking, or asks what can be safely removed. Prefer
  this directly, without frame first, when the objective is already stated and
  the user asks where to start among overloaded requirements. Prefer frame first
  if the problem boundary is unclear. Do not use to remove complexity that is
  essential to the real mechanism, or to target safety mechanisms: redundancy,
  watchdogs, validation layers, safety-critical or medical systems. Requests to
  simplify those mechanisms should route to frame or attack, not simplify.
---

# Simplify

Simplify reduces complexity to an actionable level without destroying the core logic.

It applies Occam's Razor, minimal viable model thinking, opportunity cost, and bounded rationality. The goal is not to make the problem simplistic. The goal is to find the simplest version that still answers the real question.

## When To Use

Use this skill when:

- The user is overwhelmed by variables, options, methods, or directions.
- A model, plan, workflow, or research design is overbuilt.
- The user cannot start because they are trying to account for everything.
- The task needs a first version, prototype, baseline, or minimum viable approach.
- Extra detail is increasing cost faster than it improves insight.
- The agent detects conceptual clutter or diminishing returns.

Do not use it when the problem is unclear; use `frame` first.

## Trigger Boundary

Use `simplify` to reduce a known problem to an actionable version, not to redefine the problem from scratch.

- If the user has not clarified the real objective or boundary, use `frame` first.
- If the objective is already stated and the complexity lives in the plan or requirement list, use `simplify` directly instead of framing again.
- If the bottleneck is confidence in evidence or a claim, use `calibrate` instead.
- If the bottleneck is communication, use `explain` instead.
- If the plan is already chosen and needs failure-mode review, use `attack` instead.
- If simplification would remove the mechanism that makes the problem real, keep that mechanism in scope.
- If simplification would target redundancy, watchdogs, validation layers, safety-critical systems, or medical systems, do not include `simplify` in the initial route. Use `frame` or `attack` to fence the risk. Only after the safety mechanism is explicitly preserved may later work simplify surrounding workflow, presentation, or non-safety code.

## What To Do

Compress the problem while preserving what matters:

- Identify the core mechanism that cannot be removed.
- Define the smallest version that still produces meaningful insight.
- Separate essential components from deferrable details.
- Name which complexities are useful and which are anxiety-driven.
- Explain the opportunity cost of including more detail now.
- Provide a practical path from the simple version to stronger later versions.

When useful, reason in stages: first version, stronger version, complete version. Do not force this staging if the direct answer is enough.

## Output Standard

A good simplification should make clear:

- What to start with.
- Why that smaller version is still valid.
- What it excludes.
- What would justify expanding it later.
- What the user can do next without adding more structure.

## Stop Rule

Stop simplifying when there is a smallest meaningful version with a clear next action and a known list of excluded details. Do not keep compressing if the result would no longer answer the real question.

## Avoid

- Removing the main causal or operational mechanism.
- Treating the simplest explanation as automatically correct.
- Ignoring high-impact risks that must stay in scope.
- Encouraging premature optimization.
- Producing a version so minimal that it no longer answers the real question.

## Handoff

After simplifying:

- Use `calibrate` if the simplified version depends on uncertain assumptions.
- Use `explain` if the simplified model needs to be communicated clearly.
- Use `attack` if the simplification might hide important risks.
- Return to `frame` if simplification reveals the original problem was poorly defined.
