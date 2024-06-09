#!/usr/bin/env bash
sudo pacman -S plasma-desktop ark kvantum dolphin dolphin-plugins discover flatpak ffmpegthumbs kdegraphics-thumbnailers gimp spectacle kate kpipewire konsole sddm systemsettings krunner plasma-firewall dragon elisa kcalc sddm-kcm udiskie kcharselect kdf plasma-systemmonitor packagekit-qt6 fwupd --noconfirm --needed
sudo pacman -S kio-extras kio-fuse xwaylandvideobridge noto-sans xsettingsd xdg-desktop-portal-gtk packagekit --noconfirm --needed
sudo systemctl enable sddm.service
yay -S ocs-url --noconfirm --needed
# SDDM themes
# https://github.com/MarianArlt/sddm-chili
# https://github.com/MarianArlt/sddm-sugar-dark