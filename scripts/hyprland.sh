#!/usr/bin/env bash
# spustit KDE polkit agent
# https://github.com/dianaw353/hyprland-starter?tab=readme-ov-file
sudo pacman -S polkit-kde-agent wayland xorg-xwayland gtk4 gtk3 hyprland hyprpaper swww python-pywal xdg-desktop-portal-hyprland --noconfirm
sudo systemctl enable polkit-kde-agent.service
sudo pacman -S waybar wofi wlogout swaylock mako dunst wl-clipboard cliphist slurp swayidle --noconfirm
sudo pacman -S thunderbird firefox ark vlc notepadqq yt-dlp ffmpeg libnotify --noconfirm 
sudo pacman -S nwg-look qt5ct qt6ct kvantum kvantum-qt5 qt5-wayland qt6-wayland
sudo pacman -S libreoffice-fresh-en-gb libreoffice-extension-texmaths libreoffice-extension-writer2latex --noconfirm
sudo pacman -S sddm sddm-kcm qt5-quickcontrols qt5-quickcontrols2 qt5-graphicaleffects --noconfirm
sudo pacman -S firefox kitty nemo nemo-image-converter nemo-preview --noconfirm
