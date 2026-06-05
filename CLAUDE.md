# MiroNext Platform

You are working across the **MiroNext copy-trading platform** — three separate repos.

## Repos (read REPOS.md first)

| Part | Path | Stack |
|------|------|-------|
| server | `D:\copyTrade\srcbase\backend` | NestJS 11, MongoDB, Redis |
| client | `D:\copyTrade\nuxt_MiroNext` | Nuxt 3, Vue 3, Pinia |
| admin | `D:\react\react_admin_MiroNext` | React 18, Vite, Zustand |

Full map: [REPOS.md](./REPOS.md)  
Architecture: [ARCHITECTURE.md](./ARCHITECTURE.md)

## Rules

- **Scope:** work **only in the current repo** unless the user explicitly asks for cross-repo changes or runs `/platform-context`
- **CRITICAL risk** — financial platform; verify math and full data paths
- Never mutate DTOs; always add tests
- Run `/verification-before-completion` before claiming done

## Per-repo deep context (current repo only)

Load **only** the repo you are working in:

- server → `srcbase/backend/docs/ai-context/project-overview.md`
- client → `nuxt_MiroNext/docs/ai-context/context.md`
- admin → `react_admin_MiroNext/docs/ai-context/context.md`
