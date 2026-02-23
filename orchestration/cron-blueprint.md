# Cron Blueprint (Enterprise Lean Mode)

## Core loops

### ART cycle (every 8h)
- `art-phase4-cycle`
- Responsibilities:
  - extraction + scoring + gating
  - rollout/canary decisions
  - rollback guard + release health

### ART alert notify (every 8h offset)
- `art-alert-notify`
- Sends only when alert criteria met

### Watcher core (hourly)
- `state-change-watcher`
- Runs watcher v2 + action engine v3
- Sends only meaningful changes

### Watcher advanced (daily)
- `state-change-advanced-daily`
- Runs v4/v5/v6/v7 advanced analytics

### Retention cleanup (daily)
- `retention-cleanup-daily`
- Keeps latest artifacts, prunes stale noise

### Ops digest (daily)
- `proactive-daily-ops-digest`

### Opportunity mining (daily)
- `automation-opportunity-miner`

### ROI outcomes (weekly)
- `outcomes-roi-weekly`

---

## Lean-mode policies

- Advanced watchers do **not** run every 30m (moved to daily)
- Max 1 playbook action per run (loop prevention)
- Critical alerts immediate, others digest/log
- Silent mode (`NO_REPLY`) when no actionable signal
