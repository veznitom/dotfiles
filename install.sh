#!/bin/bash
sudo pacman -Suy
yay -Suy

# Core utilities
sudo pacman -S  hyprland hyprpolkitagent hyprlock hypridle hyprsunset hyprpaper xdg-desktop-portal-hyprland             \
                waybar rofi-wayland pipewire wireplumber brightnessctl grim kitty cliphist qt5-wayland qt6-wayland      \
                uwsm power-profiles-daemon fish papirus-icon-theme xdg-desktop-portal-gtk btop                          \
                noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra nwg-bar playerctl eww fastfetch lm_sensors

yay -S maplemono-ttf cable poweralertd nerd-fonts selectdefaultapplication-git pwvucontrol

# Fixes
sudo pacman -S archlinux-xdg-menuv nvidia nvidia-utils

# Theming
sudo pacman -S breeze breeze5 breeze-gtk dconf dconf-editor qt5ct
yay -S plymouth-git plymouth-theme-hexagon-2-git grub-theme-minegrub-world-selection-git qt6ct-kde

# Apps
sudo pacman -S  firefox okular dolphin ark ffmpegthumbs ffmpegthumbnailer kdegraphics-thumbnailers \
                libreoffice-fresh zed vlc vlc-plugins-all
yay -S vscodium-bin syncthingtray-qt6 syncthing
