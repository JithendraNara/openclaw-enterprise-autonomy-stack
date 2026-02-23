# Operations Runbook

## Incident tiers

- **Tier 1 (log):** monitor only
- **Tier 2 (digest):** include in ops digest and next remediation cycle
- **Tier 3 (immediate):** execute safe playbook + notify

## Rollback procedure

1. Confirm regression signal (pass-rate drop or hallucination increase)
2. Force rollout mode to baseline
3. Execute stabilization cycle (`art_phase4_cycle.sh`)
4. Verify release health + promotion decision
5. Record in playbook audit

## Memory integrity recovery

1. Run memory integrity check
2. Generate contradiction queue
3. Apply safe fixes
4. Re-run convergence pipeline
5. Verify integrity score and gate status

## Performance hygiene

- Run retention cleanup daily
- Keep only latest + bounded history
- Prefer digest over immediate alerts for non-critical changes
