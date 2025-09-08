#!/bin/bash

# ------------------------------------------------------------------------------------
# Hyprland configs
# ------------------------------------------------------------------------------------
mkdir -p ~/.config/hypr
cp -r ./config/hypr/hyprland.conf  ~/.config/hypr/
cp -r ./config/hypr/hyprpaper.conf ~/.config/hypr/
cp -r ./config/hypr/hyprlock.conf  ~/.config/hypr/
cp -r ./config/hypr/hypridle.conf  ~/.config/hypr/
cp -r ./config/hypr/wallpapers     ~/.config/hypr/
cp -r ./config/hypr/colors.conf    ~/.config/hypr/
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
cp -r ./config/nwg-bar ~/.config/
cp -r ./config/rofi ~/.config/

chmod +x ~/.config/waybar/launch.sh