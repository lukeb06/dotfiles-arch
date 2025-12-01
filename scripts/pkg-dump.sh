#!/bin/bash

echo "Dumping packages..."
rm pkglist.txt
pacman -Qqe > pkglist.txt
