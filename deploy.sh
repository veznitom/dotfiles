#!/bin/bash
cp -r ./config/hypr/hyprland.conf ~/.config/hypr/
cp -r ./config/hypr/hyprpaper.conf ~/.config/hypr/
cp -r ./config/hypr/load_wallpaper.sh ~/.config/hypr/

if [[ $hostname -eq "Note" ]]; then
cp -r ./config/hypr/monitors-notebook.conf ~/.config/hypr/monitors.conf
fi