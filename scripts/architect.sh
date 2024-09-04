#!/usr/bin/env bash

# ...  ...
# ..    ..
# .  DN  . 
# ..    ..
# ...  ...

# https://github.com/Cardiacman13/Architect?tab=readme-ov-file
sudo pacman -S --needed git base-devel \
  && git clone https://github.com/Gaming-Linux-FR/Architect.git ~/Architect \
  && cd ~/Architect \
  && chmod +x ./architect.sh \
  && ./architect.sh