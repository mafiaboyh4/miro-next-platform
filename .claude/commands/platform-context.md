---
name: platform-context
description: Load MiroNext cross-repo platform map before any task that spans server, client, or admin
---

# Platform Context

Load cross-repo context **before** answering or writing code.

## Step 1 — Read platform docs (in order)

1. `D:\copyTrade\platform\REPOS.md`
2. `D:\copyTrade\platform\ARCHITECTURE.md`

## Step 2 — Load active repo context

Based on current working directory, also read:

| If cwd contains | Read |
|-----------------|------|
| `srcbase/backend` or `nestjs_zco` | `docs/ai-context/project-overview.md` |
| `nuxt_MiroNext` or `nuxt_zcoTrade` | `docs/ai-context/context.md` |
| `react_admin_MiroNext` | `docs/ai-context/context.md` |
| `platform` | all three per-repo context files above |

## Step 3 — Confirm

- Three repos: server (NestJS), client (Nuxt), admin (React)
- API source of truth: server OpenAPI at `/api/docs-json`
- Risk level: **CRITICAL** (real money)

Then proceed with the user's task.
