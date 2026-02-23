#!/usr/bin/env bash
set -euo pipefail

echo "[1/4] Verifying tools..."
command -v python3 >/dev/null || { echo "python3 missing"; exit 1; }
command -v openclaw >/dev/null || { echo "openclaw CLI missing"; exit 1; }

echo "[2/4] Verifying repository structure..."
for p in README.md docs/ARCHITECTURE.md orchestration/cron-blueprint.md orchestration/runbook.md; do
  [[ -f "$p" ]] || { echo "Missing required file: $p"; exit 1; }
done

echo "[3/4] Optional cron verification (non-destructive)..."
openclaw cron list >/dev/null || echo "Warning: could not read cron list (check gateway/auth)"

echo "[4/4] Done."
echo "Next: follow orchestration/cron-blueprint.md to map these patterns into your OpenClaw workspace."
