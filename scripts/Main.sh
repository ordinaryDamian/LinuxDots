#!/bin/bash
#SCRIPTS_DIR="$HOME/LinuxDots/scripts"
start_time=$(date +"%T")
# Check if the script is being run as root
if [ "$EUID" -eq 0 ]; then
  echo "Please do not run this script as root."
  exit 1
fi

# Check if the custom user has a home directory
if [ -z "$HOME" ] || [ ! -d "$HOME" ]; then
  echo "The user does not have a valid home directory."
  exit 1
fi

# Check internet connection
if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
    echo "Internet connection is available."
else
    echo "No internet connection."
fi

echo "installing .bashrc because default is shajt."
cp $HOME/LinuxDots/.bashrc $HOME/.bashrc

sudo pacman -Syu --noconfirm

chmod u+x *.sh
source ./00pacman.sh
source ./01AURInstall.sh
source ./02grub2theme.sh
source ./03theme.sh

# Prompt user to install Plymouth
read -p "Do you want to install Plymouth? (yes/no): " install_plymouth

if [[ $install_plymouth == "yes" ]]; then
    echo "Instructions to install plymouth"
    echo "open the /etc/mkinitcpio.conf and add the plymouth at the end of the HOOKS parameter"
    echo "open the /etc/default/grub append the quiet splash under parameter GRUB_CMDLINE_LINUX_DEFAULT"
    source ./04plymouth.sh
else
    echo "Skipping Plymouth installation."
fi

echo "Now change 05programs.sh to install the programs you want and do not need, once done press any key to continue"
# Pause for user input
read -p "Press any key to continue..."
source ./05programs.sh

echo "Now change 06nerdfonts.sh to install the fonts you wantand do not nee, once done press any key to continue"
read -p "Press any key to continue..."
source ./06nerdfonts.sh

echo "Neovim install"
source ./07nvim.sh

# Prompt user to choose an option
while true; do
    read -p "Choose an option (A - Gnome|B - Plasma-KDE|C - Hyperland): " option
    case $option in
        A)
            echo "Option A - Gnome selected."
            source ./08gnome.sh
            break
            ;;
        B)
            echo "Option B - Plasma-KDE selected."
            source ./08plasma.sh
            break
            ;;
        C)
            echo "Option C - HyperLand selected."
            echo "Yeah, no i have life man. :)"
            break
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
echo "Installing GUI applications"
source ./09GUIapps.sh

echo "Lastly install qemu and virt-manager"
echo "TUTORIAL: https://sysguides.com/install-kvm-on-linux"
echo "TUTORIAL 2: https://sysguides.com/install-a-windows-11-virtual-machine-on-kvm"
sudo updatedb
current_time=$(date +"%T")
echo "Script started at: $start_time"
echo "Script finished at: $current_time"