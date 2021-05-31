#!/bin/sh
xrandr --output $(echo "$(xrandr | grep "connected primary" | awk '{print$1}')") --brightness $(echo "$(cat ~/.session | grep -oP '(?<=Brightness=)[^ ]*')")
