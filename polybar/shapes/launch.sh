#!/usr/bin/env bash

# Add this script to your wm startup file.

DIR="$HOME/.config/polybar/shapes"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch the bar
polybar -q main -c "$DIR"/config.ini &

# Check if the --shapes flag was passed
# if [[ "$1" == "--shapes" ]]; then
#     # Adjust the path below to where your shapes config.ini is located
#     polybar -q main -c "$DIR"/config.ini &
# else
#     polybar -q main &
# fi