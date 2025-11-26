#!/bin/sh

nix.env -iA nixpkgs.pcmanfm #desktop
nix.env -iA nixpkgs.tint2 #taskbar
nix.env -iA nixpkgs.rofi #start menu
nix.env -iA nixpkgs.fastfetch #beceause it looks cool

ln -s ~/afs/Desktop ~/Desktop #make sure Desktop is saved between sessions
