#Auto start hyprland on login from tty
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
	exec start-yprland
fi
