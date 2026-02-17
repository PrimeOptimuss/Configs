#!/usr/bin/env bash
set -euo pipefail

if pgrep -x hyprpaper >/dev/null 2>&1; then
	hyprctl hyprpaper unload all >/dev/null 2>&1 || true
	killall hyprpaper >/dev/null 2>&1 ||true
	exit 0
fi

nohup hyprpaper >/dev/null 2>&1 &
