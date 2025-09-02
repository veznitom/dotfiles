# Arch Linux Hyprland dotfiles
This repository contains dotfiles and programs used in my Arch Hyprland setup. The goal is to have fully fledged desktop environment.
## Arch Linux Desktop Environment
| Component                   |                                    | Key bindings |
| --------------------------- | ---------------------------------- | ------------ |
| Application launcher        | `wofi`                             | Super + D    |
| Audio control               | `cable`, `pipewire`, `wireplumber` |              |
| Backlight control           | `brightnessctl`                    |              |
| Display manager             | `sddm`                             |              |
| Logout dialogue             | `wlogout`                          |              |
| Notification daemon         | `mako`                             |              |
| Polkit authentication agent | `hyprpolkitagent`                  |              |
| Power management            | `poweralertd`                      |              |
| Screen capture              | `grim`                             |              |
| Screen locker               | `hyprlock`, `hypridle`             | Super + L    |
| Screen temperature          | `hyprsunset`                       |              |
| Wallpaper setter            | `hyprpaper`                        |              |

### Additional Core applications
| Category          |                      | Key bindings       |
| ----------------- | -------------------- | ------------------ |
| Taskbar           | `waybar`             | Super + M (reload) |
| Terminal emulator | `kitty`              | Super + Return     |
| File manager      | `dolphin` (`ark`)    | Super + A          |
| Text editor       | `visual-studio-code` | Super + E          |
| Internet browser  | `firefox`            | Super + B          |
| Clipboard manager | `cliphist`           |                    |

### Requirements
A notification daemon, `pipewire`, `wireplumber`, `xdg-desktop-portal-hyprland`, authentication agent, `qt5-wayland`, `qt6-wayland`, `noto-fonts`.

## Theming
`pywal16` is used to set theme colors from image, ideally a wallpaper.

## Miscellaneous Key Bindings
| Key bindings                 | Purpose                     |
| ---------------------------- | --------------------------- |
| Super + [arrow keys]         | Move window focus           |
| Super + Shift + [arrow keys] | Moves window                |
| Super + Ctrl + [arrow keys]  | Resizes window              |
| Super + [number #]           | Switches to workplace #     |
| Super + Shift + [number #]   | Moves window to workplace # |
| Super + Shift + Q            | Kills focused window        |
| Super + Space                | Switches language           |
| Super + Ctrl + P             | Exit prompt                 |
| Super + V                    | Toggle floating             |
| Super + F                    | Toggle fullscreen           |
| Super + Mouse:left           | Move window                 |
| Super + Mouse:right          | Resize window               |
| Mouse:middle                 | Move window                 |



