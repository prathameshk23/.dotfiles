# Dotfiles

These are my dotfiles 

## Dependencies
To install the packages 

```sh
paru -S bspwm picom-git rofi kitty fish stow neovim
```


## Clone Repository

```sh
cd ~
```

```sh
git clone https://github.com/prathameshk23/.dotfiles
```

## Change directory into .dotfiles

```sh
cd .dotfiles
```

## Link files

```sh
stow .
```
## Installing Hyprland

I have `paru` as my AUR helper. You can use whatever you want!

```
paru -S wayland libdrm pixman libxkbcommon python libxml2 llvm libpng gegl mtdev xorg-xwayland qt5-wayland qt6-wayland hyprland swww waybar xdg-desktop-portal-wlr wlroots xdg-desktop-portal
```

## Setting up volume, brightness, and other stuff

```
paru -S polkit-kde-agent kitty pcmanfm-qt neovim gedit swaylock-effects brightnessctl pavucontrol alsa-utils grim slurp wl-clipboard mpv python-pip rofi blueberry bluez bluez-utils ranger ts-node zsh ttf-jetbrains-mono ttf-jetbrains-mono-nerd inotify-tools sddm-sugar-candy-git thunar ark playerctl pamixer whitesur-icon-theme-git whitesur-cursor-theme-git whitesur-gtk-theme-git xdg-user-dirs nwg-look-bin python-pillow python-pywalfox pywal-discord-git mako-git viewnior gnome-keyring neofetch imagemagick wtype inter-font-beta rofi-emoji noto-fonts-emoji ttf-droid alsa-firmware tumbler wal-telegram-git
```

## Installing all other applications

Here are the apps that I normally have installed on distros that I use. Feel free to remove those that you're not using anyway.

```
paru -S google-chrome firefox-developer-edition microsoft-edge-stable-bin discord betterdiscordctl betterdiscord-git telegram-desktop spotify spicetify-cli cider visual-studio-code-bin cava cmatrix tty-clock pipes.sh obs-studio vlc
```
