#!/usr/bin/env bash
# Define the yay command with options
yay_cmd="yay -S --needed --noconfirm"

# Install the packages using the defined command
$yay_cmd vlc discord gimp obs-studio visual-studio-code-bin gparted gpart firefox brave-bin thunderbird obsidian signal-desktop wireshark-cli wireshark-qt 
$yay_cmd libreoffice-fresh libreoffice-fresh-sk libreoffice-extension-texmaths packettracer gitextensions git audacity gimp filezilla atac bitwarden gnome-nettool
# $yay_cmd inkscape kdenlive krita blender
