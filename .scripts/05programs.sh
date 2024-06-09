#! /bin/bash
# Sources:
# https://wiki.archlinux.org/title/VirtualBox/Install_Arch_Linux_as_a_guest
# https://github.com/K4rlosReyes/arch-bspwm
# https://wiki.archlinux.org/title/Systemd/Timers Timers

sudo pacman -Syyu --noconfirm

echo "Installing Xorg and graphics drivers"
sudo pacman -S xorg-server --noconfirm --needed
sudo pacman -S xorg-apps --noconfirm --needed
sudo pacman -S virtualbox-host-modules-arch virtualbox-guest-utils mesa --noconfirm --needed
sudo pacman -S xdg-user-dirs --noconfirm --needed
xdg-user-dirs-update
sudo pacman -S xorg-xinit xdg-utils --noconfirm --needed
sudo pacman -S xorg-xman iwd --noconfirm --needed

echo "Installing system tools"
# TODO: gxkb keyboard switcher
sudo pacman -S curl zip unzip mlocate eza wget openssl openssh git net-tools tldr trash-cli tar cmake --noconfirm --needed
sudo pacman -S man cowsay btop cmatrix ripgrep fd npm python hwinfo usbutils smartmontools flatpak bat --noconfirm --needed
sudo pacman -S coreutils less findutils diffutils grep sed gawk util-linux procps-ng binutils findutils file --noconfirm --needed
#sudo pacman -S wireless_tools wpa_supplicant --noconfirm

#echo "Installing Printer suuport (CUPS)"
#sudo pacman -S cups cups-pdf print-manager --noconfirm
#sudo systemctl enable cups.socket

echo "Installing networking tools"
sudo pacman -S avahi networkmanager network-manager-applet ufw --noconfirm --needed

echo "Installing applications"
# pulseaudio-bluetooth
sudo pacman -S thunderbird ark vlc notepadqq arandr ntfs-3g pulseaudio pulseaudio-alsa yt-dlp noto-fonts-emoji --noconfirm --needed

echo "Installing office package"
sudo pacman -S libreoffice-fresh-en-gb libreoffice-extension-texmaths libreoffice-extension-writer2latex --noconfirm --needed
sudo pacman -S fastfetch --noconfirm --needed
sudo pacman -S starship iptables --noconfirm --needed
sudo pacman -S ttf-roboto ttf-firacode-nerd cantarell-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji --noconfirm --needed
# yay -S nerd-fonts-jetbrains-mono --noconfirm # not found
yay -S themechanger-git --noconfirm --needed
yay -S brave-bin --noconfirm --needed
yay -S archlinux-tweak-tool-git --noconfirm --needed
sudo systemctl enable fstrim.timer
sudo systemctl enable NetworkManager
sudo systemctl enable avahi-daemon.service
# TODO: check default config allow SSH
sudo systemctl enable ufw.service