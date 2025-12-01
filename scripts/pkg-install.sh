#!/bin/bash

sudo pacman -S --needed - < pkglist.txt
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
