#!/usr/bin/env bash

# ...  ...
# ..    ..
# .  DN  . 
# ..    ..
# ...  ...

# Define the yay command with options
yay_cmd="yay -S --needed --noconfirm"

# plasma-meta 
$yay_cmd bluedevil breeze-gtk drkonqi kde-gtk-config kdeplasma-addons kgamma kinfocenter krdp kscreen ksshaskpass kwallet-pam kwrited plasma-browser-integration plasma-desktop plasma-disks plasma-nm plasma-pa plasma-thunderbolt plasma-vault powerdevil print-manager xdg-desktop-portal xdg-desktop-portal-kde breeze-grub breeze-plymouth flatpak-kcm plasma-sdk plymouth-kcm 

$yay_cmd plasma-workspace ark kvantum dolphin dolphin-plugins flatpak ffmpegthumbs kdegraphics-thumbnailers kpipewire konsole sddm sddm-kcm systemsettings krunner plasma-firewall qalculate-qt kcharselect packagekit-qt6  #kcalc
$yay_cmd egl-wayland kate kinit kaccounts-integration kdialog okular partitionmanager gparted yakuake plasma5-integration plasma-applet-window-buttons plasma-activities koko 
$yay_cmd qt6-wayland kio kio-extras kio-gdrive packagekit qt5-graphicaleffects kdeconnect kdiff3 krename krusader gwenview kamera kcolorchooser svgpart elisa #kvantum-theme-materia materia-kde kvantum
$yay_cmd kdenetwork-filesharing krdc kcron kfind kgpg spectacle kcm-grub2-git orca
# THEME
$yay_cmd sddm qt5-graphicaleffects qt5-svg qt5-quickcontrols2

#sudo pacman -S --noconfirm --needed gimp
sudo systemctl enable sddm.service
$yay_cmd ocs-url