#!/usr/bin/env bash
# career-ops daily scan — run via cron or manually
# Tries zero-token scan.mjs first; falls back to claude -p for agent-based scan.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_FILE="$SCRIPT_DIR/data/scan-cron.log"
DATE="$(date '+%Y-%m-%d %H:%M:%S')"

mkdir -p "$SCRIPT_DIR/data"
echo "[$DATE] Starting daily scan..." >> "$LOG_FILE"

cd "$SCRIPT_DIR"

# Try zero-token scanner first (no LLM cost, Greenhouse/Ashby/Lever APIs)
if node scan.mjs >> "$LOG_FILE" 2>&1; then
  echo "[$DATE] Zero-token scan completed." >> "$LOG_FILE"
else
  echo "[$DATE] Zero-token scan failed or returned errors, running agent scan..." >> "$LOG_FILE"
  claude -p '/career-ops scan' >> "$LOG_FILE" 2>&1
  echo "[$DATE] Agent scan completed." >> "$LOG_FILE"
fi

echo "[$DATE] Done." >> "$LOG_FILE"
