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
read -p "Do you want to install AMD or Intel microcode(depending on your CPU)? (AMD/INTEL): " CPU
read -p "Do you want to install AMD or Intel GPU(Nvidia is manual only)? (AMD/INTEL): " GPU

sudo pacman -Syu --noconfirm

if [[ $XORG == "yes" ]]; then
    $yay_cmd xorg-server xorg-apps xorg-xinit xorg-xman 
fi

if [[ $VBOX == "yes" ]]; then
    $yay_cmd virtualbox-host-modules-arch virtualbox-guest-utils mesa 
fi
# Microcode
if [[ $CPU == "AMD" ]]; then
# AMD Microcode
    $yay_cmd amd-ucode
elif [[ $CPU == "INTEL" ]]; then
# Intel Microcode
    $yay_cmd intel-ucode
fi


# GPU drivers
if [[ $GPU == "AMD" ]]; then
    # AMD GPU drivers
    $yay_cmd mesa lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader vulkan-mesa-layers
elif [[ $GPU == "INTEL" ]]; then
    # Intel GPU drivers
    $yay_cmd mesa lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader intel-media-driver intel-gmmlib onevpl-intel-gpu vulkan-mesa-layers libva-mesa-driver
fi
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

# QEMU KVM drivers
if [[ $QEMU == "yes" ]]; then
    $yay_cmd virt-what vulkan-swrast lib32-vulkan-swrast vulkan-icd-loader lib32-vulkan-icd-loader spice-vdagent qemu-guest-agent hyperv 
fi

# Core system packages
$yay_cmd curl zip unzip tar xz bzip2 bzip3 gzip u
$yay_cmd mlocate plocate eza wget pkgfile openssl openssh git net-tools 
$yay_cmd trash-cli cmake bash-completion fzf moreutils
$yay_cmd man-db man-pages cowsay btop cmatrix ripgrep fd npm python 
$yay_cmd hwinfo usbutils smartmontools flatpak flatpak-kcm bat 
$yay_cmd coreutils less duf fuse2fs exfatprogs fuse2 fuse3 ffmpegthumbs nmap haskell-hostname
$yay_cmd polkit starship tree gdb lolcat  bind ddrescue dmidecode ethtool ndisc6 
$yay_cmd avahi networkmanager ntfs-3g dosfstools hdparm lftp mkinitcpio-nfs-utils nfs-utils sshfs 
$yay_cmd openconnect vpnc rp-pppoe rsync syncthing sg3_utils tcpdump terminus-font usb_modeswitch
$yay_cmd netctl nm-connection-editor nss-mdns whois yt-dlp
$yay_cmd xdg-utils xdg-user-dirs
xdg-user-dirs-update

# Laptop support
if [[ $choiceLaptop == "yes" ]]; then
    $yay_cmd acpi acpid acpi_call acpilight
    $yay_cmd powertop tuned
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
$yay_cmd pipewire pipewire-audio pavucontrol lib32-pipewire pipewire-pulse pipewire-alsa pipewire-jack 
$yay_cmd wireplumber alsa-utils alsa-firmware alsa-tools sof-firmware pamixer 
$yay_cmd alsa-plugins alsa-ucm-conf alsa-card-profiles alsa-lib 

# Multimedia support
$yay_cmd ffmpeg ffmpegthumbnailer x264 x265 xvidcore
$yay_cmd hunspell hunspell-sk gstreamer-vaapi gst-plugins-bad gst-plugins-base 
$yay_cmd gst-plugin-pipewire gst-plugins-ugly gst-plugins-good gst-libav gstreamer 
$yay_cmd libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau lib32-mesa-vdpau 
$yay_cmd xdg-desktop-portal-gtk xdg-desktop-portal fastfetch

# Fonts and icons
$yay_cmd ttf-opensans inter-font ttf-bitstream-vera ttf-caladea ttf-carlito 
$yay_cmd ttf-cascadia-code ttf-croscore ttf-liberation noto-fonts ttf-roboto 
$yay_cmd ttf-firacode-nerd cantarell-fonts noto-fonts-emoji noto-fonts-cjk 
$yay_cmd adobe-source-code-pro-fonts otf-font-awesome ttf-meslo-nerd 
$yay_cmd ttf-droid ttf-dejavu ttf-ubuntu-font-family

# Security and system utilities
$yay_cmd ufw ufw-extras iptables-nft 

# System maintenance and utilities
$yay_cmd downgrade arch-update rebuild-detector
$yay_cmd zoxide ncdu dysk tmon tuned-ppd-git systemd-manager-tui

# Development tools  
$yay_cmd go rust gcc-rust

# Miscellaneous applications

$yay_cmd unp 

# Flatpak setup
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Enable essential services
sudo mandb
sudo updatedb
sudo systemctl enable tuned
sudo systemctl enable fstrim.timer
sudo systemctl enable sshd
sudo systemctl enable NetworkManager
sudo systemctl enable avahi-daemon.service
sudo systemctl enable ufw.service

