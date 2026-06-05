# MiroNext — Repository Map

> Single source of truth for all three repos.  
> Used by Cursor (`.cursor/rules`) and Claude Code (`/platform-context`).

## Repositories

| Part | Role | Local path | GitHub |
|------|------|------------|--------|
| **server** | NestJS API, MT5 connector, signals, payments | `D:\copyTrade\srcbase\backend` | https://github.com/mafiaboyh4/nestjs_zco |
| **client** | Nuxt 3 user-facing app | `D:\copyTrade\nuxt_MiroNext` | https://github.com/mafiaboyh4/nuxt_zcoTrade |
| **admin** | React admin panel | `D:\react\react_admin_MiroNext` | https://github.com/mafiaboyh4/react_admin_zcotrade |
| **platform** | Cross-repo docs + workspace | `D:\copyTrade\platform` | https://github.com/mafiaboyh4/miro-next-platform |

## Production URLs

| Service | URL |
|---------|-----|
| API | https://api.mironext.com |
| API prefix | `/api/v1` |
| Swagger | https://api.mironext.com/api/docs |
| OpenAPI JSON | https://api.mironext.com/api/docs-json |
| Client | https://mironext.com |
| WebSocket | Socket.IO namespace `/ws` |

## Per-repo AI context

| Repo | Context entry point |
|------|---------------------|
| server | `docs/ai-context/project-overview.md` |
| client | `docs/ai-context/context.md` |
| admin | `docs/ai-context/context.md` |

## How to open (recommended)

| Tool | Action |
|------|--------|
| **Cursor** | Open `D:\copyTrade\MiroNext.code-workspace` or `D:\copyTrade\platform\MiroNext.code-workspace` |
| **Claude Code** | `cd D:\copyTrade\platform` or run `/platform-context` from any repo |
