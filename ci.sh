#!/bin/bash

sudo chmod +x ./scripts/pkg-install.sh
sudo chmod +x ./scripts/pkg-dump.sh
git clone https://aur.archlinux.org/yay-bin.git ~/.yay-bin && cd ~/.yay-bin && makepkg -si && cd ~/dotfiles
sleep 10
./scripts/pkg-install.sh
./scripts/install-hooks.sh
rm -rf ~/.config/hypr
./scripts/stow.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
