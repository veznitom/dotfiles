#!/bin/bash
CONF_DIR="/home/liz/TMP/dotfiles"
# ------------------------------------------------------------------------------------
# Hyprland configs
# ------------------------------------------------------------------------------------
mkdir -p ~/.config/hypr
cp -r $CONF_DIR/config/hypr/hyprland.conf  ~/.config/hypr/
cp -r $CONF_DIR/config/hypr/hyprpaper.conf ~/.config/hypr/
cp -r $CONF_DIR/config/hypr/hyprlock.conf  ~/.config/hypr/
cp -r $CONF_DIR/config/hypr/hypridle.conf  ~/.config/hypr/
cp -r $CONF_DIR/config/hypr/wallpapers     ~/.config/hypr/
cp -r $CONF_DIR/config/hypr/colors.conf    ~/.config/hypr/
case $HOSTNAME in
  ("Note") cp -r    $CONF_DIR/config/hypr/monitors-notebook.conf ~/.config/hypr/monitors.conf;;
  ("PrahaPC") cp -r $CONF_DIR/config/hypr/monitors-desktop.conf  ~/.config/hypr/monitors.conf;;
  (*) cp -r         $CONF_DIR/config/hypr/monitors-desktop.conf  ~/.config/hypr/monitors.conf;;
esac
# ------------------------------------------------------------------------------------
# Other configs
# ------------------------------------------------------------------------------------
mkdir -p ~/.local/share/rofi/themes

cp -r $CONF_DIR/config/waybar  ~/.config/
cp -r $CONF_DIR/config/kitty   ~/.config/
cp -r $CONF_DIR/config/nwg-bar ~/.config/
cp -r $CONF_DIR/config/rofi    ~/.config/
cp -r $CONF_DIR/config/eww     ~/.config/
cp    $CONF_DIR/config/rofi/Breeze-Dark.rasi ~/.local/share/rofi/themes/

chmod +x ~/.config/waybar/launch.sh
chmod +x ~/.config/eww/launch.sh
chmod +x ~/.config/eww/scripts/power-perf.sh
chmod +x ~/.config/eww/scripts/power-bal.sh
chmod +x ~/.config/eww/scripts/power-save.sh

