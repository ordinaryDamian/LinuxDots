#! /bin/bash

# echo "Setting up pacman package manager."

# Use sudo and sed to modify pacman.conf
sudo sed -i 's/^#Color/Color/' /etc/pacman.conf
sudo sed -i 's/^#VerbosePkgLists/VerbosePkgLists/' /etc/pacman.conf
sudo sed -i 's/^#ParallelDownloads = 5/ParallelDownloads = 5\nILoveCandy/' /etc/pacman.conf

# running update for pacman and reflector
sudo pacman -S pacman-contrib reflector rebuild-detector linux-headers --noconfirm --needed
#echo "Rating mirrors"
# sudo reflector --verbose --protocol https,http --latest 5 --sort rate --country Slovakia,Polland,Germany --save /etc/pacman.d/mirrorlist
sudo reflector --protocol https,http,ftp --latest 50 --score 50 --sort rate --country SK,CZ,DE,HU,PL --fastest 10 --save /etc/pacman.d/mirrorlist
#sudo pacman -Syyu --noconfirm

# Define the configuration
config="--protocol https,http,ftp
--latest 25
--score 25
--sort rate
--country SK,CZ,DE,HU,PL
--fastest 10
--save /etc/pacman.d/mirrorlist"

# Use sudo and sed to update reflector.conf
echo "$config" | sudo tee /etc/xdg/reflector/reflector.conf >/dev/null

sudo systemctl enable reflector.service
sudo systemctl enable paccache.timer
