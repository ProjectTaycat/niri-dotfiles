# Taycat Pancake's Personal Dotfiles

This repository contains my dotfiles, centered around my installation of the [niri scrolling window manager](https://github.com/niri-wm/niri) on Fedora Linux. Shoutouts to the [Catppuccin Mocha color scheme](https://www.catppuccin.com) which is used throughout these configuration files

## How to quickly apply these dotfiles

Git and [GNU Stow](https://www.gnu.org/software/stow/) are used to manage these dotfiles. When you clone this repository, open your terminal to this directory (niri-dotfiles) and run the command `stow .` to integrate all of these dotfiles into your home directory (Make sure these dotfiles don't already exist when running the command) 

## Configured applications 

Alongisde niri are all of these other applications that I would consider essential to the experience I have set up, so be sure fo install these.

The fonts [Google Sans](https://fonts.google.com/specimen/Google+Sans?query=google+sans) and [Google Sans Code](https://fonts.google.com/specimen/Google+Sans+Code) are used throughout these configuration files. Consider installing them as well. In the case of Google Sans Code, I actually took the time to patch them with the [Nerd Font](https://github.com/ryanoasis/nerd-fonts?tab=readme-ov-file#option-10-patch-your-own-font) icons (Propo for waybar and Mono for everything else) and I would recommend that for a nicer-looking Waybar.

### Essential to the niri experience

- `waybar`: Top panel
    - `pavucontrol` for clicking on the "pulseaudio" module
- `rofi`: Application launcher
    - `rofimoji` for searching through and copying emojis
    - `rofi-calc` for doing calculations (built from source on my Fedora install)
    - When Fedora 44 releases, `cliphist` will be added to for looking through clipboard history
- `SwayNotificationCenter` or `mako`: Receive notifications
- `swayosd`: On-screen display for actions like toggling caps lock and changing volume
- `wlogout`: Logout screen
- `swayidle` and `swaylock`[^1]: Automatically lock the screen after some time
- `swaybg`[^1]: Set wallpaper

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
- `fastfetch`: The cool system information showcase!
- `qt5ct` and `qt6ct`: Theming of Qt applications with the Catppuccin Mocha color scheme

## Caveats

My installation of niri is built upon an installation of Fedora KDE Plasma Desktop 43. This has led to some aspects of KDE being left over while setting up niri. In my experience, this has mainly affected the default applications for certain file types (you can figure those out on your own) as well as the themes of Qt and GTK applications. I cannot guarantee that the theming of Qt and GTK apps will work the same on other environments, but I have done what I can to consider them, namely with the inclusion of the `qt5ct` and `qt6ct` configuration files. GTK theming, however, I have decided to leave alone and live with what I have

## NOTE TO SELF

Hi Taycat from another universe. If you ever decide to change the border width and gaps of the windows on niri, don't forget to also change them lower down in the `niri` config file as well as in the `swaync` and `rofi` configs!!!
