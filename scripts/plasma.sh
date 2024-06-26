#!/usr/bin/env bash
sudo pacman -S plasma-desktop plasma-workspace plasma-meta ark kvantum dolphin dolphin-plugins discover flatpak ffmpegthumbs kdegraphics-thumbnailers gimp kpipewire konsole sddm sddm-kcm systemsettings krunner plasma-firewall kcalc udiskie kcharselect kdf packagekit-qt6 fwupd --noconfirm --needed
sudo pacman -S egl-wayland kde-gtk-config kinit libplasma kscreen plasma-nm plasma-pa powerdevil qt6-wayland xdg-desktop-portal --noconfirm --needed
sudo pacman -S kio-extras kio-fuse xwaylandvideobridge noto-sans xsettingsd xdg-desktop-portal-kde packagekit qt5-graphicaleffects --noconfirm --needed
sudo systemctl enable sddm.service
yay -S ocs-url --noconfirm --needed