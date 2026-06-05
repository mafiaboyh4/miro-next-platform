# MiroNext Platform Docs

Cross-repo context for **Cursor** and **Claude Code**.

## Quick start

### Cursor

1. **File → Open Workspace from File**
2. Select `D:\copyTrade\MiroNext.code-workspace`
3. All three repos + this `platform` folder open together
4. Rule `miro-platform` loads automatically from each repo's `.cursor/rules/`

### Claude Code

**Option A — platform root (best for cross-repo tasks):**

```bash
cd D:/copyTrade/platform
claude
```

**Option B — from any single repo:**

```bash
cd D:/copyTrade/srcbase/backend   # or client / admin
claude
# then run: /platform-context
```

## Files

| File | Purpose |
|------|---------|
| [REPOS.md](./REPOS.md) | Paths, GitHub URLs, per-repo context entry points |
| [ARCHITECTURE.md](./ARCHITECTURE.md) | System diagram, boundaries, cross-repo checklist |
| [CLAUDE.md](./CLAUDE.md) | Claude Code instructions when cwd is `platform/` |

## Fresh clone (new machine)

```bash
bash D:/copyTrade/platform/scripts/clone-all.sh
```

Then open `D:\copyTrade\MiroNext.code-workspace` in Cursor.

## Sync rules into all repos

After editing `platform/.cursor/rules/` or `platform/.claude/commands/`:

```bash
bash D:/copyTrade/platform/scripts/sync-platform-rules.sh
```
