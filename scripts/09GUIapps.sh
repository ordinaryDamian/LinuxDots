#!/usr/bin/env bash
# Define the yay command with options
yay_cmd="yay -S --needed --noconfirm"

# Web browsers and communication
$yay_cmd firefox brave-bin thunderbird signal-desktop vivaldi vivaldi-ffmpeg-codecs

# Media and entertainment
$yay_cmd haruna mpv

# Development and productivity
$yay_cmd visual-studio-code-bin obsidian

# Graphics and design
#$yay_cmd gimp 

# System tools and utilities
$yay_cmd obs-studio gpart wireshark-cli wireshark-qt outfieldr
$yay_cmd atac bitwarden gnome-nettool parsec-bin github-desktop-bin 

# Office suite
$yay_cmd libreoffice-fresh libreoffice-fresh-sk libreoffice-extension-texmaths
flatpak install flathub com.discordapp.Discord
flatpak install flathub io.github.flattool.Warehouse
flatpak install flathub org.localsend.localsend_app
# Audio/Video editing (commented out - uncomment if needed)
# $yay_cmd audacity inkscape kdenlive krita blender
