#!/bin/bash

# Main modular installer with per-step confirmation
SCRIPTS_DIR="$HOME/LinuxDots/scripts"
start_time=$(date +"%T")

# --- sanity checks -------------------------------------------------------
if [ "$EUID" -eq 0 ]; then
    echo "Please do not run this script as root."
    exit 1
fi

if [ -z "$HOME" ] || [ ! -d "$HOME" ]; then
    echo "The user does not have a valid home directory."
    exit 1
fi

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null 2>&1; then
    echo "Internet connection is available."
else
    echo "No internet connection detected. Some steps may fail."
fi

# --- helpers ------------------------------------------------------------
ask_confirm() {
    # ask_confirm "Prompt text" -> returns 0 if yes, 1 if no
    local prompt="${1:-Continue?}"
    local ans
    while true; do
        read -r -p "$prompt [y/N]: " ans
        case "$ans" in
            [Yy]|[Yy][Ee][Ss]) return 0 ;;
            [Nn]|[Nn][Oo]|"") return 1 ;;
            *) echo "Please answer yes or no." ;;
        esac
    done
}

safe_source() {
    # safe_source "/abs/path/to/script.sh"
    local file="$1"
    if [ -f "$file" ]; then
        # shellcheck source=/dev/null
        source "$file"
    else
        echo "Missing script: $file -- skipping."
    fi
}

echo "This script will ask confirmation before each step. Reply 'y' to run a step."

# Ensure scripts are executable when the user agrees
if ask_confirm "Make all scripts in $SCRIPTS_DIR executable?"; then
    chmod u+x "$SCRIPTS_DIR"/*.sh 2>/dev/null || true
fi

# Per-step prompts -------------------------------------------------------
if ask_confirm "Install system packages (00pacman.sh)?"; then
    safe_source "$SCRIPTS_DIR/00pacman.sh"
fi

if ask_confirm "Install AUR packages (01AURInstall.sh)?"; then
    safe_source "$SCRIPTS_DIR/01AURInstall.sh"
fi

if ask_confirm "Apply GRUB2 theme (02grub2theme.sh)?"; then
    safe_source "$SCRIPTS_DIR/02grub2theme.sh"
fi

if ask_confirm "Apply desktop theme (03theme.sh)?"; then
    safe_source "$SCRIPTS_DIR/03theme.sh"
fi

if ask_confirm "Install Plymouth (04plymouth.sh)? (shows extra instructions)"; then
    echo "If you run this step: add 'plymouth' to HOOKS in /etc/mkinitcpio.conf and add 'quiet splash' to GRUB_CMDLINE_LINUX_DEFAULT in /etc/default/grub"
    safe_source "$SCRIPTS_DIR/04plymouth.sh"
fi

if ask_confirm "Run programs installer (05programs.sh)?"; then
    echo "Edit 05programs.sh first if you want to customize which programs are installed."
    safe_source "$SCRIPTS_DIR/05programs.sh"
fi

if ask_confirm "Install Nerd Fonts (06nerdfonts.sh)?"; then
    safe_source "$SCRIPTS_DIR/06nerdfonts.sh"
fi

if ask_confirm "Install Neovim and config (07nvim.sh)?"; then
    safe_source "$SCRIPTS_DIR/07nvim.sh"
fi

# Desktop choice
echo "Choose a desktop environment to install when prompted."
if ask_confirm "Install a desktop environment (Gnome/Plasma/Hyperland)?"; then
    while true; do
        read -r -p "Choose (A) Gnome  (B) Plasma-KDE  (C) Hyperland  [A/B/C]: " option
        case "$option" in
            [Aa]) echo "Gnome selected."; safe_source "$SCRIPTS_DIR/08gnome.sh"; break ;;
            [Bb]) echo "Plasma-KDE selected."; safe_source "$SCRIPTS_DIR/08plasma.sh"; break ;;
            [Cc]) echo "Hyperland selected."; safe_source "$SCRIPTS_DIR/08hyprland.sh" 2>/dev/null || echo "Hyperland script not found, skipping."; break ;;
            *) echo "Invalid option. Please try again." ;;
        esac
    done
fi

if ask_confirm "Install GUI applications (09GUIapps.sh)?"; then
    safe_source "$SCRIPTS_DIR/09GUIapps.sh"
fi

if ask_confirm "Run architect script (architect.sh)?"; then
    safe_source "$SCRIPTS_DIR/architect.sh"
fi

if ask_confirm "Install qemu/virt-manager and related setup?"; then
    echo "TUTORIAL: https://sysguides.com/install-kvm-on-linux"
    echo "TUTORIAL 2: https://sysguides.com/install-a-windows-11-virtual-machine-on-kvm"
fi

# New: Gaming step (uses existing gaming_update.sh if present)
if ask_confirm "Run gaming setup/update (gaming_update.sh)?"; then
    safe_source "$SCRIPTS_DIR/gaming_update.sh"
fi

# Update locate and man databases (no confirmation)
if command -v updatedb >/dev/null 2>&1; then
    echo "Running updatedb (may require sudo)..."
    if command -v sudo >/dev/null 2>&1; then
        sudo updatedb || true
    else
        updatedb || true
    fi
else
    echo "updatedb not available, skipping."
fi

if command -v mandb >/dev/null 2>&1; then
    echo "Running mandb (may require sudo)..."
    if command -v sudo >/dev/null 2>&1; then
        sudo mandb || true
    else
        mandb || true
    fi
else
    echo "mandb not available, skipping."
fi

current_time=$(date +"%T")
echo "Script started at: $start_time"
echo "Script finished at: $current_time"