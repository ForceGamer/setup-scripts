#!/usr/bin/env bash

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload example &
done

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch top and bottom bars
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar top 2>&1 | tee -a /tmp/polybar1.log & disown
polybar bottom 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."