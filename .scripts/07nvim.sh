!#!/usr/bin/env bash
sudo pacman -S gcc make git ripgrep fd unzip neovim python3.11-venv neovide npm xclip --noconfirm --needed
git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim