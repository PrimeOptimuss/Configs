#!/usr/bin/env bash

set -euo pipefail

if pgrep -x waybar >/dev/null; then
	pkill -x waybar
	exit0
fi

if command -v waybar >/dev/null; then
	setsid waybar >/dev/null 2>&1 &
else
	echo "waybar:not found in PATH" >&2
	exit 1
fi
