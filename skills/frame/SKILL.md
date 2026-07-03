---
name: frame
description: >-
  Use this skill first when the real problem is vague, poorly bounded, or
  prematurely framed and needs clearer structure before solving. Use for
  research design, strategy, decisions, models, conceptual clarification, and
  complex diagnosis when facts, assumptions, inferences, constraints,
  objectives, and key uncertainties must be separated. Also use when the user
  invokes first-principles thinking, system boundaries, boundary thinking,
  problem framing, or asks what is inside versus outside the problem. Do not
  use when the objective is already stated and overload lives in the solution:
  too many features, options, or requirements; use simplify directly. Do not
  use for open-ended idea generation for something that does not exist yet; use
  brainstorming or ideation. Do not use for simple factual answers or routine
  execution tasks.
---

# Frame

Frame clarifies what problem is actually being solved.

Use it to turn confusion into structure before giving advice, making a plan, or drawing a conclusion. It applies first-principles thinking, boundary thinking, and fact-assumption-inference separation.

## When To Use

Use this skill when:

- The user's request is broad, ambiguous, overloaded, or conceptually messy.
- The user may be asking a surface question while the deeper problem is different.
- Goals, methods, constraints, preferences, and assumptions are mixed together.
- A research question, strategy, model, product decision, career choice, or major judgment needs a clearer foundation.
- Answering directly would likely produce shallow or misleading advice.

Do not use it when the task is already well-bounded and the user mainly needs execution.

## Trigger Boundary

Use `frame` to decide what problem should be solved, not to solve it fully.

- If the problem is clear but too complex, use `simplify` instead.
- If the user has already stated the real objective and the complexity lives in the plan or requirement list, skip frame and use `simplify` directly.
- If the user wants ideas or directions for something that does not exist yet, use a brainstorming or ideation skill; frame clarifies existing problems, it does not generate options.
- If the problem is clear but the evidence is uncertain, use `calibrate` instead.
- If the user mainly needs a clearer explanation for an already-understood idea, use `explain` instead.
- If the work is close to adoption and needs stress-testing, use `attack` instead.
- If multiple skills seem relevant and the boundary is unclear, start with `frame` and hand off once the boundary is stable.

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

## Handoff

After framing:

- Use `simplify` if the problem is now clear but too complex to act on.
- Use `calibrate` if the next issue is uncertain evidence or confidence.
- Use `explain` if the clarified idea needs to be communicated.
- Use `attack` if the framing itself is still fragile or contestable.
