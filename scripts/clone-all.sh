#!/usr/bin/env bash
# Fresh machine: clone all MiroNext repos into the standard layout.
set -euo pipefail

BASE="${1:-D:/copyTrade}"
mkdir -p "$BASE" "$BASE/srcbase"
cd "$BASE"

clone_if_missing() {
  local dir="$1"
  local url="$2"
  if [[ -d "$dir/.git" ]]; then
    echo "exists: $dir"
    return
  fi
  git clone "$url" "$dir"
}

clone_if_missing "$BASE/platform" "https://github.com/mafiaboyh4/miro-next-platform.git"
clone_if_missing "$BASE/srcbase/backend" "https://github.com/mafiaboyh4/nestjs_MiroNext.git"
clone_if_missing "$BASE/nuxt_MiroNext" "https://github.com/mafiaboyh4/nuxt_MiroNext.git"
clone_if_missing "/d/react/react_admin_MiroNext" "https://github.com/mafiaboyh4/react_admin_MiroNext.git"

echo ""
echo "Open in Cursor: $BASE/MiroNext.code-workspace"
