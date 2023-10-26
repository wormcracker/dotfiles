#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar conky
conky &

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar $1 -r -c ~/.config/polybar/config.ini bspwm-top-main &
if [[ $(xrandr -q | grep 'HDMI-1-0 connected') ]];then
 polybar $1 -r -c ~/.config/polybar/config.ini bspwm-external &
fi
