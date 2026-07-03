# Thinking Flow

Personal cross-agent thinking skills for problem framing, simplification, calibrated judgment, explanation audits, and adversarial review.

## Skills

- `frame`: First-principles problem framing and system-boundary clarification.
- `simplify`: Occam's Razor, opportunity cost, bounded rationality, and minimum meaningful versions.
- `calibrate`: Bayesian-style evidence weighting and confidence calibration.
- `explain`: Feynman-style explanation audit and anti-jargon clarity review.
- `attack`: Adversarial review, counterfactual stress testing, Murphy's Law, sensitivity analysis, and risk control.

## Layout

```text
skills/
  frame/SKILL.md
  simplify/SKILL.md
  calibrate/SKILL.md
  explain/SKILL.md
  attack/SKILL.md
scripts/
  sync-from-local.ps1
tests/
  README.md
  runbook.md
  scenarios.md
  iteration-2-parameterized-scenarios.md
  results/
```

## Sync From Local

This repository treats the local cc-switch skill directory as the source of truth:

```powershell
.\scripts\sync-from-local.ps1
```

To sync, commit, and push in one step:

```powershell
.\scripts\sync-from-local.ps1 -Push
```

The script copies from:

```text
%USERPROFILE%\.cc-switch\skills\<skill>\SKILL.md
```

Then validates that all five `SKILL.md` files exist in this repository.

## Benchmark

The benchmark package lives in `tests/`:

- `tests/README.md`: protocol, scoring discipline, and RED-GREEN-REFACTOR rules.
- `tests/runbook.md`: handoff entry for another agent to run the full matrix.
- `tests/scenarios.md`: original route, execution, collision, cross-language, and handoff scenarios.
- `tests/iteration-2-parameterized-scenarios.md`: holdout scenarios for boundary and wording variance.
- `tests/results/`: dated run records and failure summaries.

For handoff, start with `tests/results/2026-07-02-iteration-2-smoke.md`. It is the current completion record after the failure list and targeted refactor validation. `tests/results/2026-07-02-failures.md` is historical evidence; read it with `tests/results/2026-07-02-refactor-validation.md` and the iteration-2 smoke record before treating any item as still open.
