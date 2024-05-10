#!/bin/bash

# Array of wallpapers
WALLPAPERS_DIR="$HOME/.config/wallpapers"
wallpapers=($(find "$WALLPAPERS_DIR" -type f -name '*.jpg' -o -name '*.png'))

# Choose a random wallpaper from the wallpapers directory
selected_wallpaper="${wallpapers[RANDOM % ${#wallpapers[@]}]}"

# Set the wallpaper
swaybg -i "$selected_wallpaper"
