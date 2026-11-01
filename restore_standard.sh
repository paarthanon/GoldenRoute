#!/bin/bash
# GoldenRoute Standard Baseline Restore Script
set -e
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
STANDARD_DIR="$SCRIPT_DIR/standards/goldenroute-standard-v1"

if [ ! -d "$STANDARD_DIR" ]; then
  echo "Error: Standard baseline directory not found at $STANDARD_DIR"
  exit 1
fi

echo "Restoring GoldenRoute standard version (v1.0)..."
cp "$STANDARD_DIR/index.html" "$SCRIPT_DIR/index.html"
cp "$STANDARD_DIR/dispatch.html" "$SCRIPT_DIR/dispatch.html"
if [ -d "$STANDARD_DIR/assets" ]; then
  cp -r "$STANDARD_DIR/assets/"* "$SCRIPT_DIR/assets/" 2>/dev/null || true
fi

echo "Successfully restored standard baseline!"
echo "  - index.html"
echo "  - dispatch.html"
