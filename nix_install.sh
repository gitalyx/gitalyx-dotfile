#!/bin/bash

echo "Do you want to copy configuration.nix to /etc/nixos/"

echo
    read -n 1 -s -r -p "Press 'y' to continue or 'n' to exit: " key
    echo
    case "$key" in
        [Yy]) echo "Continuing...";;
        [Nn]) echo "Exiting."; exit;;
        *) echo "Invalid input. Press 'y' to continue or 'n' to exit."; pause;;
    esac

sudo cp configuration.nix /etc/nixos/

sudo nixos-rebuild switch

echo
    read -n 1 -s -r -p "Press 'y' to continue or 'n' to exit: " key
    echo
    case "$key" in
        [Yy]) echo "Continuing...";;
        [Nn]) echo "Exiting."; exit;;
        *) echo "Invalid input. Press 'y' to continue or 'n' to exit."; pause;;
    esac

cp -r alacritty ~/.config/
cp -r gtk-3.0 ~/.config/
cp -r hypr ~/.config/
cp -r neofetch ~/.config/
cp -r nvim ~/.config/
cp -r pcman/default ~/.config/
cp -r rofi ~/.config/
cp -r swaybg ~/.config/
cp -r wallpapers ~/.config/
cp -r .bashrc ~/

echo "Setup completed successfully."


