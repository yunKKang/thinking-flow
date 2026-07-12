---
name: simplify
description: >-
  Use only for an explicit complexity-reduction audit: the user invokes
  `$simplify` or asks what can be removed, what the smallest meaningful version
  is, where to start among overloaded requirements, or how to define a baseline
  or MVP. Do not trigger merely because a task has several steps or could be
  shorter. Never simplify away safety, validation, data integrity, or the core
  mechanism. Do not automatically invoke another thinking skill afterward.
---

# Simplify

Simplify reduces complexity to an actionable level without destroying the core logic.

It applies Occam's Razor, minimal viable model thinking, opportunity cost, and bounded rationality. The goal is not to make the problem simplistic. The goal is to find the simplest version that still answers the real question.

## Activation Contract

- Trigger only for an explicit `$simplify` request or an unmistakable complexity-reduction audit.
- Multiple steps alone are not a trigger; use normal concise execution when no audit is requested.
- Use at most one of `frame`, `simplify`, `calibrate`, `explain`, and `attack` in a response by default.
- Never load another thinking skill as an automatic handoff. Complete the simplification pass first.
- If another mode could materially help later, mention at most one optional next pass after delivering the current result.

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

- If the objective or boundary is not clear enough to simplify safely, stop and name the missing boundary; do not load another thinking skill.
- If confidence, communication, or robustness is the real bottleneck, say that simplification is not the right audit instead of chaining.
- Keep the mechanism that makes the problem real.
- Never simplify redundancy, watchdogs, validation layers, safety-critical systems, medical safeguards, or data-integrity controls.

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

## Optional Next Pass

Do not automatically invoke another thinking skill. After completing the simplification, mention at most one optional explicit command only when a separate pass would materially change the decision.
