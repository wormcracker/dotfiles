#!/bin/sh

# Prompt the user to select an option using dmenu
option=$(echo -e "enable\ndisable" |  dmenu -i -fn Monospace-16 -p "Keyboard Backlight")

# Check if the user selected the "enable" option
if [[ "$option" == "enable" ]]; then
  # Enable the keyboard backlight
  xset led on

# Check if the user selected the "disable" option
elif [[ "$option" == "disable" ]]; then
  # Disable the keyboard backlight
  xset led off
fi

