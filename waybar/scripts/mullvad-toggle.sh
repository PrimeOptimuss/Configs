#!/bin/bash

if mullvad status | grep -q "Connected"; then
	mullvad disconnect
else
	mullvad connect
fi

pkill -RTMIN+1 waybar
