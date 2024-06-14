!#!/usr/bin/env bash
sudo pacman -S gcc make git ripgrep fd unzip neovim python-virtualenv neovide npm xclip --noconfirm --needed
git clone https://github.com/ordinaryDamian/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim