#!/bin/bash

sudo chmod +x ./scripts/pkg-install.sh
sudo chmod +x ./scripts/pkg-dump.sh
sudo ./scripts/pkg-install.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
./scripts/install-hooks.sh
./scripts/stow.sh

zsh -c "clear; echo 'Installation complete!'"
