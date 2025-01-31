WALLPAPER_DIR=~/.config/wallpapers
WALLPAPER=$(find $WALLPAPER_DIR -type f | shuf -n 1)
swaybg -i $WALLPAPER
