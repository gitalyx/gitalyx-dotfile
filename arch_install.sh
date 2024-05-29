#!/bin/bash

echo "Do you want to install: Hyprland, papirus-icon-theme, Waybar, Swaybg Alacritty, Pcmanfm, Rofi, Neovim and Neofetch?"

echo
    read -n 1 -s -r -p "Press 'y' to continue or 'n' to exit: " key
    echo
    case "$key" in
        [Yy]) echo "Continuing...";;
        [Nn]) echo "Exiting."; exit;;
        *) echo "Invalid input. Press 'y' to continue or 'n' to exit."; pause;;
    esac

sudo pacman -Syu 
sudo pacman -S hyprland waybar alacritty rofi neovim neofetch pcmanfm swaybg papirus-icon-theme


echo "Do you want to copy the configurations to ~/.config and rewrite .bashrc"


echo
    read -n 1 -s -r -p "Press 'y' to continue or 'n' to exit: " key
    echo
    case "$key" in
        [Yy]) echo "Continuing...";;
        [Nn]) echo "Exiting."; exit;;
        *) echo "Invalid input. Press 'y' to continue or 'n' to exit."; pause;;
    esac

cp -r  alacritty ~/.config/
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
