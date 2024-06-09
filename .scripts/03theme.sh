#! /bin/bash

# sudo pacman -S gnome-themes-extra --noconfirm
# sudo pacman -S gtk-engine-murrine gtk-engines --noconfirm
sudo pacman -S tar --noconfirm --needed
sudo pacman -S sassc --noconfirm --needed
sudo pacman -S kvantum --noconfirm --needed
#yay -S qogir-gtk-theme --noconfirm
yay -S bibata-cursor-theme --noconfirm --needed

wget https://github.com/ful1e5/Bibata_Cursor/releases/download/v2.0.6/Bibata-Modern-Classic.tar.xz
tar -xvf Bibata-Modern-Classic.tar.xz
rm Bibata-Modern-Classic.tar.xz

git clone https://github.com/vinceliuice/Tela-circle-icon-theme
cd Tela-circle-icon-theme
./install.sh

cd ..

git clone https://github.com/vinceliuice/Graphite-gtk-theme
cd Graphite-gtk-theme/
./install.sh

cd ..

git clone https://github.com/vinceliuice/Graphite-cursors
cd Graphite-cursors
./install.sh

cd ..

git https://github.com/vinceliuice/Graphite-kde-theme
cd Graphite-kde-theme
./install.sh

cd ..

# git clone https://github.com/varlesh/oreo-cursors.git
# cd oreo-cursors
# make build
# sudo make install

# git clone https://github.com/alvatip/Nordzy-cursors
# cd Nordzy-cursors
# sudo ./install.sh


# Additional themes
# https://www.pling.com/s/All-Linux/p/1277095
# https://github.com/EliverLara/Ant
# https://github.com/vinceliuice/Colloid-gtk-theme
# https://github.com/rtlewis1/GTK/tree/VALYRIAN
# https://github.com/EliverLara/Nordic
