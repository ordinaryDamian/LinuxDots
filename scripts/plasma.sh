#!/usr/bin/env bash
sudo pacman -S plasma-desktop plasma-workspace ark kvantum dolphin dolphin-plugins bluedevil kdeplasma-addons flatpak ffmpegthumbs kdegraphics-thumbnailers gimp kpipewire konsole sddm sddm-kcm systemsettings krunner plasma-firewall kcalc udiskie kcharselect kdf packagekit-qt6 fwupd --noconfirm --needed
sudo pacman -S egl-wayland kde-gtk-config kinit libplasma kscreen plasma-nm plasma-pa powerdevil kaccounts-integration kscreen plasma-nm plasma-pa qt6-wayland xdg-desktop-portal --noconfirm --needed
sudo pacman -S kio-extras kio-fuse xwaylandvideobridge noto-sans xsettingsd xdg-desktop-portal-kde packagekit qt5-graphicaleffects --noconfirm --needed
sudo systemctl enable sddm.service
yay -S ocs-url --noconfirm --needed