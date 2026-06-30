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
