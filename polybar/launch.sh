#!/usr/bin/env bash

THEME="dracula"

killall polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# CONFIG_DIR=$(dirname $0)/$THEME/config.ini
CONFIG_DIR=$HOME/polybar/dracula/config.ini
if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m polybar main -c $CONFIG_DIR &
	done
else
	polybar main -c $CONFIG_DIR &
fi
