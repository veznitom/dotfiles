#!/bin/bash

# ------------------------------------------------------------------------------------
# Hyprland configs
# ------------------------------------------------------------------------------------
mkdir -p ~/.config/hypr
cp -r ./config/hypr/hyprland.conf ~/.config/hypr/
cp -r ./config/hypr/hyprpaper.conf ~/.config/hypr/
cp -r ./config/hypr/load_wallpaper.sh ~/.config/hypr/
cp -r ./config/hypr/wallpapers ~/.config/wallpapers

case $HOSTNAME in
  ("Note") cp -r ./config/hypr/monitors-notebook.conf ~/.config/hypr/monitors.conf;;
  ("PrahaPC") cp -r ./config/hypr/monitors-desktop.conf ~/.config/hypr/monitors.conf;;
  (*) cp -r ./config/hypr/monitors-desktop.conf ~/.config/hypr/monitors.conf;;
esac
# ------------------------------------------------------------------------------------
# Other configs
# ------------------------------------------------------------------------------------
cp -r ./config/waybar ~/.config/
cp -r ./config/kitty ~/.config/
cp -r ./config/wlogout ~/.config/
cp -r ./config/rofi ~/.config/
