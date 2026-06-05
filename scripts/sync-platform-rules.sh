#!/usr/bin/env bash
# Sync platform rule + Claude command from platform/ into all three repos.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
PLATFORM="$ROOT/platform"
RULE_SRC="$PLATFORM/.cursor/rules/miro-platform.mdc"
CMD_SRC="$PLATFORM/.claude/commands/platform-context.md"

REPOS=(
  "$ROOT/srcbase/backend"
  "$ROOT/nuxt_MiroNext"
  "/d/react/react_admin_MiroNext"
)

for repo in "${REPOS[@]}"; do
  if [[ ! -d "$repo" ]]; then
    echo "skip missing: $repo"
    continue
  fi
  mkdir -p "$repo/.cursor/rules" "$repo/.claude/commands"
  cp "$RULE_SRC" "$repo/.cursor/rules/miro-platform.mdc"
  cp "$CMD_SRC" "$repo/.claude/commands/platform-context.md"
  echo "synced: $repo"
done

echo "done"
