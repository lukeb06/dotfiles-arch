#!/bin/bash

sudo ./scripts/pkg-install.sh
./scripts/install-hooks.sh
./scripts/stow.sh

zsh -c "clear; echo 'Installation complete!'"
