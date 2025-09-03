# Arch Linux Hyprland dotfiles
This repository contains dotfiles and programs used in my Arch Hyprland setup. The goal is to have fully fledged desktop environment.
## Arch Linux Desktop Environment
| Component                   |                                                   | Key bindings       |
| --------------------------- | ------------------------------------------------- | ------------------ |
| Application launcher        | `rofi-wayland`                                    | Super + D          |
| Audio control               | `pwvucontrol`, `cable`, `pipewire`, `wireplumber` |                    |
| Backlight control           | `brightnessctl`                                   |                    |
| Bluetooth manager           | `blueman`                                         |                    |
| Clipboard manager           | `cliphist`                                        |                    |
| Display manager             | `sddm`                                            |                    |
| Logout dialogue             | `wlogout`                                         |                    |
| Network management          | `iwd`, `dhcpcd`, `openresolv`                     |                    |
| Notification daemon         | `mako`                                            |                    |
| Polkit authentication agent | `hyprpolkitagent`                                 |                    |
| Power control               | `tuned-ppd`                                       |                    |
| Power management            | `poweralertd`                                     |                    |
| Taskbar                     | `waybar`                                          | Super + M (reload) |
| Terminal emulator           | `kitty`                                           | Super + Return     |
| Screen capture              | `grim`                                            |                    |
| Screen locker               | `hyprlock`, `hypridle`                            | Super + L          |
| Screen temperature          | `hyprsunset`                                      |                    |
| Shell                       | `fish`                                            |                    |
| Wallpaper setter            | `hyprpaper`                                       |                    |

### Additional applications
| Category             |                      | Key bindings |
| -------------------- | -------------------- | ------------ |
| File manager         | `dolphin` (`ark`)    | Super + A    |
| Text editor          | `visual-studio-code` | Super + E    |
| Internet browser     | `firefox`            | Super + B    |
| Document viewer      | `okular`             |              |
| Office applications  | `libreoffice-fresh`  |              |
| Boot manager theming | `plymouth`           |              |

### Requirements
A notification daemon, `pipewire`, `wireplumber`, `xdg-desktop-portal-hyprland`, authentication agent, `qt5-wayland`, `qt6-wayland`, `noto-fonts`.

### Hyprland specific
To enable more Hyprland features a `uwsm` to manage start and polkit.

### Configuration utilities
Selecting default applications `selectdefaultapplication-git`.

## Configuration
### Outside `.config`
**Default applications**
- `~/.config/mimeapps.list`

**SDDM**
- `/etc/sddm.conf.d/`
- Default `/usr/lib/sddm/sddm.conf.d/default.conf`

**Plymouth**
- `/etc/plymouth/plymouthd.conf`
- Add to `/etc/mkinitcpio.conf`

**NVIDIA compatibility**
- This is required only is using onlder NVIDIA proprietary drivers or GPU
- `/etc/environment`
  ```
  GBM_BACKEND=nvidia-drm
  __GLX_VENDOR_LIBRARY_NAME=nvidia
  GTK_USE_PORTAL=1
  ```
- `/etc/default/grub`
  ```
  GRUB_CMDLINE_LINUX_DEFAULT="... nvidia_drm.modeset=1 nvidia_drm.fbdev=1 ..."
  ```
- `/etc/mkinitcpio.conf`
  ```
  MODULES=(nvidia nvidia_modeset nvidia_uvm nvidia_drm)
  ```

**Bluetooth**
- To enable "smarter" behavior of some bluetooth devices
- `/etc/bluetooth/main.conf`
  ```
  FastConnectable = true
  ReconnectAttempts=7
  ReconnectIntervals=1, 2, 3
  ```

**Pipewire**
- To enable default higher sampling rate
- `~/.config/pipewire/pipewire.conf`
  ```
  default.clock.rate          = 176000
  default.clock.allowed-rates = [ 44100 48000 88200 96000 176400 192000 352800 384000 705600 768000 ]
  ```

**Networking**
- `/etc/iwd/main.conf`
  ```
  [General]
  EnableNetworkConfiguration=true
  ```
- `/etc/resolv.conf`
  ```
  nameserver 8.8.8.8
  ```

To easily enable `pacman` multilib use:
```
sudo sed -i -e '/#\[multilib\]/,+1s/^#//' /etc/pacman.conf
```

Services to enable:
```
systemctl --user enable --now hyprpolkitagent.service
sudo systemctl enable --now sddm.service
sudo systemctl enable --now power-profiles-daemon.service
sudo systemctl enable --now bluetooth.service
sudo systemctl enable --now iwd.service
```

## Theming
`pywal16` is used to set theme colors from image, ideally a wallpaper.

My fonts of choice are Noto fonts as they are simple and provide all necessary symbols, additionally for icon support all Nerd fonts are installed.

I personally use GRUB and to theme is I use `plymouth`.

As an icon theme I use Papirus.

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

## Installation
To simplify setup there is a application install script `install.sh` for core applications and `install-rest.sh`.
### Requirements
As not all applications are available only in AUR an AUR helper is needed. In this case I use `yay`.

