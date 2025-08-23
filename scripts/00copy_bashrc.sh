#!/bin/bash
set -euo pipefail

# Copy .bashrc from the repository root (one folder above this script)
# into the current user's home directory, overwriting it.
# A timestamped backup of any existing ~/.bashrc will be created.

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$DIR/../.bashrc"
DEST="$HOME/.bashrc"

if [ ! -f "$SRC" ]; then
  echo "Source file not found: $SRC" >&2
  exit 1
fi

if [ -f "$DEST" ]; then
  timestamp=$(date +"%Y%m%d%H%M%S")
  backup="$DEST.backup.$timestamp"
  cp -a -- "$DEST" "$backup"
  echo "Existing $DEST backed up to $backup"
fi

cp -a -- "$SRC" "$DEST"
chmod 644 "$DEST" 2>/dev/null || true
echo "Copied $SRC -> $DEST"

exit 0
