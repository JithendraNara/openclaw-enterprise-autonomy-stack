# Security & Secrets Hygiene

## Scope
This repository is a public showcase of architecture and orchestration patterns.
It should not contain live credentials, private endpoints, or personal identifiers.

## Rules
- Never commit API keys, tokens, cookies, private phone numbers, or session dumps.
- Redact local absolute paths if they reveal sensitive host/user details.
- Use placeholder values for examples.
- Keep operational secrets in local/private OpenClaw config, never in this repo.

## Pre-push checklist
- `git diff --cached` reviewed for secrets
- no `.env` / token files staged
- no private URLs or personal IDs in docs/examples

## Incident response
If a secret is committed:
1. Rotate/revoke immediately.
2. Remove from git history.
3. Force-push cleaned history.
4. Document incident in internal runbook.
