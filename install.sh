#!/bin/bash

echo "Choose from 1 to 4 depending of your distro to install the dotfiles!"

echo "1. Arch Linux"
echo "2. Nixos"
echo "3. Fedora"
read -p "Enter your choice: " choice

case $choice in
    1)
        echo "Installing apps for Arch Linux..."
        sudo pacman -Syu
        sudo pacman -S  swaybg sway alacritty rofi neovim fastfetch pcmanfm papirus-icon-theme
        echo "Copying dotfiles..."
        cp -r alacritty ~/.config/
        cp -r gtk-3.0 ~/.config/
        cp -r sway ~/.config/
        cp -r fastfetch ~/.config/
        cp -r nvim ~/.config/
        cp -r pcmanfm ~/.config/
        cp -r rofi ~/.config/
        cp -r swaybg ~/.config
        cp -r wallpapers ~/.config
        cp -r .bashrc ~/
        echo "Setup finish succesfuly"
        ;;
    2)
        echo "Copying configuration.nix to /etc/nixos/configuration.nix..."
        sudo cp -r configuration.nix /etc/nixos/
        echo "Copying dotfiles..."
        cp -r alacritty ~/.config/
        cp -r gtk-3.0 ~/.config/
        cp -r sway ~/.config/
        cp -r fastfetch ~/.config/
        cp -r nvim ~/.config/
        cp -r pcmanfm ~/.config/
        cp -r rofi ~/.config/
        cp -r swaybg ~/.config
        cp -r wallpapers ~/.config
        cp -r .bashrc ~/
        echo "Setup finish succesfuly"
        ;;
    3)
        echo "Installing apps for Fedora..."
        sudo dnf update
        sudo dnf install swaybg sway alacritty rofi neovim fastfetch pcmanfm papirus-icon-theme
        echo "Copying dotfiles..."
        cp -r alacritty ~/.config/
        cp -r gtk-3.0 ~/.config/
        cp -r sway ~/.config/
        cp -r fastfetch ~/.config/
        cp -r nvim ~/.config/
        cp -r pcmanfm ~/.config/
        cp -r rofi ~/.config/
        cp -r swaybg ~/.config
        cp -r wallpapers ~/.config
        cp -r .bashrc ~/
        echo "Setup finish succesfuly"
        ;;
    *)
        echo "Invalid option. Exiting..."
        exit 1
        ;;
esac
