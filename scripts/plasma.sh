#!/usr/bin/env bash
sudo pacman -S plasma-desktop ark kvantum dolphin dolphin-plugins discover flatpak ffmpegthumbs kdegraphics-thumbnailers gimp spectacle kpipewire konsole sddm systemsettings krunner plasma-firewall kcalc sddm-kcm udiskie kcharselect kdf packagekit-qt6 fwupd --noconfirm --needed
sudo pacman -S kio-extras kio-fuse xwaylandvideobridge noto-sans xsettingsd xdg-desktop-portal-gtk packagekit qt5-graphicaleffects --noconfirm --needed
sudo systemctl enable sddm.service
yay -S ocs-url --noconfirm --needed