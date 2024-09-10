!#!/usr/bin/env bash

# ...  ...
# ..    ..
# .  DN  . 
# ..    ..
# ...  ...

yay_cmd="yay -S --needed --noconfirm"

$yay_cmd gcc make git ripgrep fd unzip python-virtualenv npm xclip neovim neovide 
git clone https://github.com/ordinaryDamian/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim