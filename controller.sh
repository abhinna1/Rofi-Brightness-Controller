#!/bin/bash

monitors=$(xrandr --listmonitors | grep -v "Monitors:" | awk '{print $4}')

selected_display=$(echo $monitors | rofi -dmenu -p "Select display:")

selected_brightness=$(echo "20\n40\n60\n80\n100" | rofi -dmenu -p "Select brightness:")

exec xrandr --output $selected_display --brightness $(echo "scale=2; $selected_brightness / 100" | bc)

