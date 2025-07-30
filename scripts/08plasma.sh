#!/usr/bin/env bash

# ...  ...
# ..    ..
# .  DN  . 
# ..    ..
# ...  ...

# Define the yay command with options
yay_cmd="yay -S --needed --noconfirm"

# Core KDE Plasma packages
$yay_cmd plasma-desktop plasma-workspace plasma-nm plasma-pa plasma-firewall
$yay_cmd powerdevil print-manager plasma-browser-integration plasma-disks
$yay_cmd plasma-thunderbolt plasma-vault kdeplasma-addons plasma-sdk

# KDE System components
$yay_cmd bluedevil breeze-gtk drkonqi kde-gtk-config kgamma kinfocenter 
$yay_cmd krdp kscreen ksshaskpass kwallet-pam kwrited systemsettings krunner

# Display manager and themes
$yay_cmd sddm sddm-kcm breeze-grub breeze-plymouth flatpak-kcm plymouth-kcm
$yay_cmd qt5-graphicaleffects qt5-svg qt5-quickcontrols2

# File management and utilities
$yay_cmd ark dolphin dolphin-plugins ffmpegthumbs kdegraphics-thumbnailers
$yay_cmd partitionmanager gwenview kamera kcolorchooser svgpart

# Text editor and terminal
$yay_cmd kate konsole yakuake

# KDE applications
$yay_cmd okular spectacle qalculate-qt kcharselect elisa
$yay_cmd kdiff3 krename krdc kcron kfind kgpg

# KDE integration and extras
#$yay_cmd kio kio-extras kio-gdrive
$yay_cmd kvantum plasma5-integration plasma-applet-window-buttons plasma-activities 
$yay_cmd kdeconnect kdenetwork-filesharing
$yay_cmd packagekit-qt6 qt6-wayland kinit kaccounts-integration kdialog

# Desktop portals and additional components
$yay_cmd xdg-desktop-portal xdg-desktop-portal-kde kpipewire
$yay_cmd ocs-url kcm-grub2-git 

# Enable SDDM service
sudo systemctl enable sddm.service