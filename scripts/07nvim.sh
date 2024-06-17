!#!/usr/bin/env bash
sudo pacman -S gcc make git ripgrep fd unzip python-virtualenv npm xclip neovim neovide --noconfirm --needed
git clone https://github.com/ordinaryDamian/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim