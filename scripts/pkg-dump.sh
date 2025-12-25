#!/bin/bash

echo "Dumping packages..."
rm pkglist.txt
rm yaylist.txt
pacman -Qqe > pkglist.txt
yay -Qqe > yaylist.txt
