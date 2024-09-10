#! /bin/bash

# ...  ...
# ..    ..
# .  DN  . 
# ..    ..
# ...  ...

# Sources:
# https://wiki.archlinux.org/title/VirtualBox/Install_Arch_Linux_as_a_guest
# https://github.com/K4rlosReyes/arch-bspwm
# https://wiki.archlinux.org/title/Systemd/Timers
# https://github.com/Cardiacman13/tuto-archlinux-fr
# https://github.com/stephenstechtalks/ArchLinux

yay_cmd="yay -S --needed --noconfirm"

sudo pacman -Syyu --noconfirm

#echo "Installing Xorg and graphics drivers"
#sudo pacman -S xorg-server xorg-apps xorg-xinit--noconfirm xorg-xman --needed
# Virtual box drivers
#sudo pacman -S virtualbox-host-modules-arch virtualbox-guest-utils mesa --noconfirm --needed

# Intel GPU drivers
$yay_cmd intel-ucode mesa lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader intel-media-driver intel-gmmlib onevpl-intel-gpu vulkan-mesa-layers libva-mesa-driver
# AMD  drivers
$yay_cmd amd-ucode 

# EXT file system support
$yay_cmd e2fsprogs

# BTRFS file system support
$yay_cmd btrfs-progs timeshift grub-btrfs

#VMware drivers
$yay_cmd open-vm-tools xf86-video-vmware mesa lib32-mesa
sudo systemctl enable vmtoolsd.service

# KVM drivers
#$yay_cmd virt-what vulkan-swrast lib32-vulkan-swrast vulkan-icd-loader lib32-vulkan-icd-loader spice-vdagent qemu-guest-agent hyperv

$yay_cmd curl zip unzip mlocate eza wget pkgfile openssl openssh git net-tools tldr trash-cli tar cmake bash-completion xz fzf moreutils
$yay_cmd man cowsay btop cmatrix ripgrep fd npm python hwinfo usbutils smartmontools flatpak flatpak-kcm bat bzip2 bzip3 gzip unarchiver  
$yay_cmd coreutils less $yay_cmd pacman -S --needed --noconfirm duf btop fuse2fs exfatprogs fuse2 fuse3 man-db man-pages ffmpegthumbs nmap
$yay_cmd polkit starship tree gdb lolcat thefuck bind ddrescue dmidecode ethtool exfatprogs ndisc6 
$yay_cmd avahi networkmanager ntfs-3g dosfstools hdparm lftp mkinitcpio-nfs-utils nfs-utils
$yay_cmd openconnect vpnc rp-pppoe rsync syncthing sg3_utils tcpdump terminus-font usb_modeswitch usbutils
$yay_cmd netctl nm-connection-editor nss-mdns whois yt-dlp
$yay_cmd xdg-utils xdg-user-dirs
xdg-user-dirs-update

# Laptop support
$yay_cmd acpi acpid acpi_call acpi_call acpi_call acpilight
$yay_cmd powertop power-profiles-daemon tuned
    #TODO: manualne
    #yay -S --needed --noconfirm tlp tlp-rdw threshy tlpui 
    #sudo tlp start
# Wireless Network support
$yay_cmd wireless_tools wpa_supplicant iw iwd connman broadcom-wl
# Bluetooth support
$yay_cmd bluez bluez-utils bluez-plugins
sudo systemctl enable bluetooth.service
# Printing support
$yay_cmd cups cups-pdf print-manager
$yay_cmd ghostscript gsfonts cups-filters system-config-printer 
$yay_cmd foomatic-db-engine foomatic-db foomatic-db-ppds foomatic-db-nonfree foomatic-db-nonfree-ppds gutenprint foomatic-db-gutenprint-ppds
sudo systemctl enable cups.socket
# Sound server configuration
$yay_cmd pipewire pipewire-audio pavucontrol lib32-pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber alsa-utils alsa-firmware alsa-tools sof-firmware pamixer alsa-plugins alsa-ucm-conf alsa-card-profiles alsa-lib 
#Multimedia support
$yay_cmd ffmpeg ffmpegthumbnailer x264 x265 xvidcore
# Useful package installation
$yay_cmd hunspell hunspell-sk gstreamer-vaapi gst-plugins-bad gst-plugins-base gst-plugin-pipewire gst-plugins-ugly gst-plugins-good gst-libav gstreamer libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau lib32-mesa-vdpau xdg-desktop-portal-gtk xdg-desktop-portal fastfetch lib32-pipewire
#Fonts and icons
$yay_cmd  ttf-opensans inter-font ttf-bitstream-vera ttf-caladea ttf-carlito ttf-cascadia-code ttf-croscore ttf-liberation noto-fonts ttf-roboto ttf-firacode-nerd cantarell-fonts noto-fonts-emoji noto-fonts-cjk adobe-source-code-pro-fonts otf-font-awesome ttf-meslo-nerd ttf-droid ttf-dejavu ttf-ubuntu-font-family

# Firewall
$yay_cmd ufw gufw ufw-extras iptables 

#Miscelanous
$yay_cmd downgrade arch-update 
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
# yay -S themechanger-git archlinux-tweak-tool-git --noconfirm --needed
sudo systemctl enable fstrim.timer
sudo systemctl enable sshd
sudo systemctl enable acpid
sudo systemctl enable NetworkManager
sudo systemctl enable avahi-daemon.service
sudo systemctl enable ufw.service

