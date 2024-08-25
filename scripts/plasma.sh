#!/usr/bin/env bash
sudo pacman -S --noconfirm --needed plasma-desktop plasma-workspace ark kvantum dolphin dolphin-plugins bluedevil kdeplasma-addons flatpak ffmpegthumbs kdegraphics-thumbnailers kpipewire konsole sddm sddm-kcm systemsettings krunner plasma-firewall kcalc kcharselect packagekit-qt6  

sudo pacman -S --noconfirm --needed plasma-meta plasma ark dolphin dolphin-plugins kdeplasma-addons flatpak ffmpegthumbs sddm-kcm systemsettings egl-wayland kate kinit kscreen plasma-nm plasma-pa kaccounts-integration kdialog
sudo pacman -S --noconfirm --needed kmix okular partitionmanager gparted yakuake
sudo pacman -S --noconfirm --needed qt6-wayland xdg-desktop-portal kio kio-extras xdg-desktop-portal-kde packagekit qt5-graphicaleffects kdeconnect kdeconnect

#sudo pacman -S --noconfirm --needed gimp
sudo systemctl enable sddm.service
yay -S ocs-url --noconfirm --needed