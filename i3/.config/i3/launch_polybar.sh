#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar compton
# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar -l=info top &
MONITOR=HDMI1 polybar top-left &
MONITOR=DP2 polybar top-left &

echo "Bars launched..."
# Assure that applications with tray icon are starting before compton
pkill telegram-desktop; telegram-desktop
pkill cernbox; cernbox


sleep 5

while pgrep -x compton >/dev/null; do
	  sleep 1;
done
compton -b --config ~/.config/compton.conf &
