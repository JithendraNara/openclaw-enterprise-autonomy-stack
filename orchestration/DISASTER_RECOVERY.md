# Disaster Recovery (10-minute restore target)

## Goal
Recover core autonomous operations quickly after host loss or severe config corruption.

## Recovery checklist
1. **Clone repo**
   - `git clone <repo-url>`
2. **Install prerequisites**
   - Python 3.x, OpenClaw CLI, gateway access
3. **Run bootstrap check**
   - `bash scripts/setup.sh`
4. **Reapply cron topology**
   - Follow `orchestration/cron-blueprint.md`
5. **Validate core loops**
   - run one ART cycle
   - run watcher core cycle
   - verify release health + latest reports
6. **Verify alert routing**
   - ensure digest/critical channels still deliver

## Minimum viable restored state
- ART gate + rollback operational
- Watcher core operational
- Daily digest + weekly ROI operational

## Post-recovery hardening
- Recheck secrets and auth
- Re-enable advanced watchers gradually (daily cadence)
- Confirm retention cleanup is active
