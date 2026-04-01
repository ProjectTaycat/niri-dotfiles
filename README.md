# Taycat Pancake's Personal Dotfiles

This repository contains my dotfiles, centered around my installation of the [niri scrolling window manager](https://github.com/niri-wm/niri) on Fedora Linux. Shoutouts to the [Catppuccin Mocha color scheme](https://www.catppuccin.com) which is used throughout these configuration files

## How to quickly apply these dotfiles

Git and [GNU Stow](https://www.gnu.org/software/stow/) are used to manage these dotfiles. When you clone this repository, open your terminal to this directory (niri-dotfiles) and run the command `stow .` to integrate all of these dotfiles into your home directory (Make sure these dotfiles don't already exist when running the command) 

## Configured applications 

Alongisde niri are all of these other applications that I would consider essential to the experience I have set up, so install these as well.

### Essential to the niri experience

- `waybar`: Top panel
    - `pavucontrol` for clicking on the "pulseaudio" module
- `rofi`: Application launcher
    - `rofimoji` is added onto `rofi`, for searching through and copying emojis
- `mako`: Receive notifications
- `wlogout`: Logout screen
- `swayidle` and `swaylock`:[^1] Automatically lock the screen after some time
- `swaybg`:[^1] Set wallpaper

[^1]: These have been configured to display images that have not been included in this repository. Make sure to replace them with your own images.

### Other features, not as essential but still configured

- System tray icons:
    - `nm-applet`: Network connection
    - `blueman`: Configure Bluetooth
    - `udiskie`: Easier mounting of external drives
- Terminals:
    - `alacritty` or `kitty`: Terminal emulators
    - `fastfetch`: Configured to spawn upon terminal opening
    - `starship`: Sets up the bash prompt
- `gammastep`: Adjust the monitor's color temperature late at night

### Miscellaneous

- `neovim`: text editor
- `qt6ct`: Theming of Qt applications with the Catppuccin Mocha color scheme

## Caveats

My installation of niri is built upon an installation of Fedora KDE Plasma Desktop 43. This has led to some aspects of KDE being left over while setting up niri. In my experience, this has mainly affected the default applications for certain file types as well as the themes of Qt and GTK applications. I cannot guarantee that the theming of Qt and GTK apps will work the same on other environments, but I have done what I can to consider them, namely with the inclusion of the `qt6ct` configuration. GTK theming, however, I still need to figure out
