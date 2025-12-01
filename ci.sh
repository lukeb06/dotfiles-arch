#!/bin/bash

sudo chmod +x ./scripts/pkg-install.sh
sudo chmod +x ./scripts/pkg-dump.sh
sudo ./scripts/pkg-install.sh
./scripts/install-hooks.sh
./scripts/stow.sh

zsh -c "clear; echo 'Installation complete!'"
