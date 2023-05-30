#!/usr/bin/env bash

killall -q polybar

polybar top 2>&1 | tee -a /tmp/polybar.log & disown

if [[ $(xrandr -q | grep "HDMI-1 connected") ]]; then
    polybar top_external 2>&1 | tee -a /tmp/polybar.log & disown
fi


echo "Polybar launched"
