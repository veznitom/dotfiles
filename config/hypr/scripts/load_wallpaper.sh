#!/bin/bash

WALLPAPER_DIR="$HOME/.config/hypr/Wallpapers/"
CURRENT_WALLPAPER=$(hyprctl hyprpaper listloaded)
WALLPAPER=$(find $WALLPAPER_DIR -type f ! -name $(basename $CURRENT_WALLPAPER) | shuf -n 1)

wal --cols16 lighten -ni $WALLPAPER
hyprctl hyprpaper reload ,"$WALLPAPER"