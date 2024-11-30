#!/bin/bash

# Directory where your wallpapers are stored
WALLPAPER_DIR="$HOME/.config/wallpapers"

# Get a random wallpaper from the directory
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Set the wallpaper using feh
feh --bg-scale "$WALLPAPER"
