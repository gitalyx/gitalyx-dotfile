#!/bin/bash

echo "Do you want to install: Hyprland, Polybar, Waybar, Swaybg Alacritty, Pcmanfm, Rofi, Neovim and Neofetch?"

echo
    read -n 1 -s -r -p "Press 'y' to continue or 'n' to exit: " key
    echo
    case "$key" in
        [Yy]) echo "Continuing...";;
        [Nn]) echo "Exiting."; exit;;
        *) echo "Invalid input. Press 'y' to continue or 'n' to exit."; pause;;
    esac

sudo pacman -Syu 
sudo pacman -S hyprland polybar waybar alacritty rofi neovim neofetch pcmanfm swaybg


echo "Do you want to copy the configurations to ~/.config and rewrite .bashrc"


echo
    read -n 1 -s -r -p "Press 'y' to continue or 'n' to exit: " key
    echo
    case "$key" in
        [Yy]) echo "Continuing...";;
        [Nn]) echo "Exiting."; exit;;
        *) echo "Invalid input. Press 'y' to continue or 'n' to exit."; pause;;
    esac

cp alacritty ~/.config/
cp gtk-3.0 ~/.config/
cp hypr ~/.config/
cp neofetch ~/.config/
cp nvim ~/.config/
cp pcman/default ~/.config/
cp rofi ~/.config/
cp swaybg ~/.config/
cp wallpapers ~/.config/
cp .bashrc ~/

echo "Setup completed successfully."
