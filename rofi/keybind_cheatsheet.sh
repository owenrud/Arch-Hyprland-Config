#!/bin/sh

# Manually define the keybinds with echo and newlines
echo -e "<b></b> Alt + Enter:        Open terminal
Alt + B:        Launch browser
Alt + F:        Open Rofi launcher
Alt + E:        Open file manager
Alt + T:        Open text editor
Alt + Q:  Close active window
Alt + M:        Exit Hyprland
Alt + SHIFT + S:  Take screenshot" | rofi -dmenu -i -p "Hyprland Keybinds" -markup-rows -theme ~/.config/rofi/keybinds_config.rasi
