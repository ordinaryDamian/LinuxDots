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

read -p "Do you want to install Xorg support packages? (yes/no): " XORG
read -p "Do you want to install VirtualBox guest support packages? (yes/no): " VBOX
read -p "Do you want to install VMware guest support packages? (yes/no): " VMWARE
read -p "Do you want to install Qemu virt-manager guest support packages? (yes/no): " QEMU
read -p "Do you want to install EXT file system support or BTRFS file system support? (EXT/BTRFS): " filesystem
read -p "Do you want to install laptop support packages? (yes/no): " choiceLaptop
read -p "Do you want to install Wireless Network support packages? (yes/no): " WIFI
read -p "Do you want to install Bluetooth support packages? (yes/no): " BLUETOOTH
read -p "Do you want to install Printing support packages? (yes/no): " PRINT

sudo pacman -Syu --noconfirm

if [[ $XORG == "yes" ]]; then
    $yay_cmd xorg-server xorg-apps xorg-xinit xorg-xman 
fi

if [[ $VBOX == "yes" ]]; then
    $yay_cmd virtualbox-host-modules-arch virtualbox-guest-utils mesa 
fi
 
# Intel GPU drivers
$yay_cmd intel-ucode mesa lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader intel-media-driver intel-gmmlib onevpl-intel-gpu vulkan-mesa-layers libva-mesa-driver
# AMD  drivers
$yay_cmd amd-ucode 

# File system support

if [[ $filesystem == "EXT" ]]; then
    $yay_cmd e2fsprogs
fi

if [[ $filesystem == "BTRFS" ]]; then
    $yay_cmd btrfs-progs timeshift grub-btrfs
fi

if [[ $VMWARE == "yes" ]]; then
    $yay_cmd open-vm-tools xf86-video-vmware mesa lib32-mesa
    sudo systemctl enable vmtoolsd.service 
fi

# KVM drivers
if [[ $QEMU == "yes" ]]; then
    $yay_cmd virt-what vulkan-swrast lib32-vulkan-swrast vulkan-icd-loader lib32-vulkan-icd-loader spice-vdagent qemu-guest-agent hyperv 
fi

$yay_cmd curl zip unzip mlocate eza wget pkgfile openssl openssh git net-tools tldr trash-cli tar cmake bash-completion xz fzf moreutils
$yay_cmd man cowsay btop cmatrix ripgrep fd npm python hwinfo usbutils smartmontools flatpak flatpak-kcm bat bzip2 bzip3 gzip unarchiver  
$yay_cmd coreutils less duf btop fuse2fs exfatprogs fuse2 fuse3 man-db man-pages ffmpegthumbs nmap haskell-hostname
$yay_cmd polkit starship tree gdb lolcat thefuck bind ddrescue dmidecode ethtool exfatprogs ndisc6 
$yay_cmd avahi networkmanager ntfs-3g dosfstools hdparm lftp mkinitcpio-nfs-utils nfs-utils
$yay_cmd openconnect vpnc rp-pppoe rsync syncthing sg3_utils tcpdump terminus-font usb_modeswitch usbutils
$yay_cmd netctl nm-connection-editor nss-mdns whois yt-dlp
$yay_cmd xdg-utils xdg-user-dirs
xdg-user-dirs-update

# Laptop support
if [[ $choiceLaptop == "yes" ]]; then
    $yay_cmd acpi acpid acpi_call acpi_call acpi_call acpilight
    $yay_cmd powertop power-profiles-daemon tuned
    $yay_cmd tlp tlp-rdw threshy tlpui
    echo "Run command 'sudo tlp start' to start tlp"
    sudo systemctl enable acpid
    #sudo tlp start
fi

# Wireless Network support
if [[ $WIFI == "yes" ]]; then
    $yay_cmd wireless_tools wpa_supplicant iw iwd connman broadcom-wl
fi

# Bluetooth support
if [[ $BLUETOOTH == "yes" ]]; then
    $yay_cmd bluez bluez-utils bluez-plugins
    sudo systemctl enable bluetooth.service
fi

# Printing support
if [[ $PRINT == "yes" ]]; then
    $yay_cmd cups cups-pdf print-manager
    $yay_cmd ghostscript gsfonts cups-filters system-config-printer 
    $yay_cmd foomatic-db-engine foomatic-db foomatic-db-ppds foomatic-db-nonfree foomatic-db-nonfree-ppds gutenprint foomatic-db-gutenprint-ppds
    sudo systemctl enable cups.socket
fi

# Sound server configuration
$yay_cmd pipewire pipewire-audio pavucontrol lib32-pipewire pipewire-pulse pipewire-alsa pipewire-jack wireplumber alsa-utils alsa-firmware alsa-tools sof-firmware pamixer alsa-plugins alsa-ucm-conf alsa-card-profiles alsa-lib 
#Multimedia support
$yay_cmd ffmpeg ffmpegthumbnailer x264 x265 xvidcore
# Useful package installation
$yay_cmd hunspell hunspell-sk gstreamer-vaapi gst-plugins-bad gst-plugins-base gst-plugin-pipewire gst-plugins-ugly gst-plugins-good gst-libav gstreamer libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau lib32-mesa-vdpau xdg-desktop-portal-gtk xdg-desktop-portal fastfetch lib32-pipewire
#Fonts and icons
$yay_cmd ttf-opensans inter-font ttf-bitstream-vera ttf-caladea ttf-carlito ttf-cascadia-code ttf-croscore ttf-liberation noto-fonts ttf-roboto ttf-firacode-nerd cantarell-fonts noto-fonts-emoji noto-fonts-cjk adobe-source-code-pro-fonts otf-font-awesome ttf-meslo-nerd ttf-droid ttf-dejavu ttf-ubuntu-font-family

# Firewall
$yay_cmd ufw gufw ufw-extras iptables 

#Miscelanous
$yay_cmd downgrade arch-update 
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
# yay -S themechanger-git archlinux-tweak-tool-git --noconfirm --needed
sudo systemctl enable fstrim.timer
sudo systemctl enable sshd
sudo systemctl enable NetworkManager
sudo systemctl enable avahi-daemon.service
sudo systemctl enable ufw.service

