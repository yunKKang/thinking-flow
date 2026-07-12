---
name: frame
description: >-
  Use only for an explicit problem-framing audit: the user invokes `$frame` or
  asks to define the real problem, system boundary, objective, assumptions, or
  decisive uncertainty before solving. Do not trigger merely because a task is
  complex, strategic, research-related, or mildly ambiguous. Do not use for
  ordinary clarification, idea generation, factual answers, or routine
  execution. Do not automatically invoke another thinking skill afterward.
---

# Frame

Frame clarifies what problem is actually being solved.

Use it to turn confusion into structure before giving advice, making a plan, or drawing a conclusion. It applies first-principles thinking, boundary thinking, and fact-assumption-inference separation.

## Activation Contract

- Trigger only for an explicit `$frame` request or an unmistakable framing audit.
- Complexity alone is not a trigger; answer directly when the task is already actionable.
- Use at most one of `frame`, `simplify`, `calibrate`, `explain`, and `attack` in a response by default.
- Never load another thinking skill as an automatic handoff. Complete the framing pass first.
- If another mode could materially help later, mention at most one optional next pass after delivering the current result.

## When To Use

Use this skill when:

- The user's request is broad, ambiguous, overloaded, or conceptually messy.
- The user may be asking a surface question while the deeper problem is different.
- Goals, methods, constraints, preferences, and assumptions are mixed together.
- A research question, strategy, model, product decision, career choice, or major judgment needs a clearer foundation.
- Answering directly would likely produce shallow or misleading advice.

Do not use it when the task is already well-bounded and the user mainly needs execution.

## Trigger Boundary

Use `frame` only to decide what problem should be solved, not to solve it fully.

- If the problem is already clear, do not force a framing pass.
- If the user wants ideas for something that does not yet exist, generate or discuss options directly; do not route to a missing ideation skill.
- If evidence strength, communication, simplification, or robustness is the real bottleneck, say that framing is not the right audit instead of loading another thinking skill.
- If several modes appear relevant, choose the single dominant bottleneck for this response.

## What To Do

Identify the real structure of the problem:

- Restate the surface problem and the deeper underlying problem.
- Clarify what the user is trying to optimize, explain, predict, decide, or create.
- Define what is inside and outside the boundary.
- Separate facts, assumptions, interpretations, and inferences.
- Identify hard constraints, soft preferences, actors, variables, mechanisms, and tradeoffs.
- Name the most consequential uncertainty.

Use whatever structure helps: short paragraphs, bullets, a compact map, or a small table. Do not force a template when a direct explanation is clearer.

If the user requests a solution artifact such as a plan, roadmap, schedule, or table before the problem is framed, the deliverable of this skill is the frame itself: the sharper problem statement, the boundary, the assumptions that matter, the decisive uncertainty, and the specific information still needed before the artifact can be responsibly built. Offer at most a decision gate or validation path. That gate should state the immediate evidence, threshold, or next question needed to choose a path; it should not become a month-by-month, year-by-year, option-by-option roadmap that resembles the requested artifact. Produce the full artifact only after these are settled, as a separate step.

## Output Standard

A good frame should leave the user with:

- A sharper problem statement.
- A clear boundary.
- The main variables or forces.
- The assumptions that matter most.
- The uncertainty that should drive the next step.
- The next action or next skill, if further work is needed.

## Stop Rule

Stop framing once the problem statement, boundary, main variables, and most important uncertainty are clear enough to choose a next action. Do not keep adding abstractions if they will not change the decision.

## Avoid

- Jumping to advice before defining the problem.
- Treating the user's first framing as automatically correct.
- Turning every issue into an academic model.
- Adding abstractions that do not change the decision.
- Presenting unclear assumptions as facts.

## Optional Next Pass

Do not automatically invoke another thinking skill. After completing the frame, mention at most one optional explicit command only when a separate pass would materially change the decision.
