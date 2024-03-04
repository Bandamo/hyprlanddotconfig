#!/bin/bash
# This script is used to install the necessary packages for the project

# Install yay package manager

echo -e "\e[1;32mInstalling yay package manager\e[0m"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay

# Install necessary packages

echo -e "\e[1;32mInstalling necessary packages\e[0m"
yay -S --noconfirm hyprland waybar rofi hyprpaper grim slurm kitty stow

# Install the configuration files

echo -e "\e[1;32mInstalling configuration files\e[0m"
mkdir $HOME/.dotfiles
mkdir $HOME/.config
mv .config/* $HOME/.dotfiles/
cd $HOME/.dotfiles
stow .

# Install the necessary fonts
echo -e "\e[1;32mInstalling fonts\e[0m"
yay -S --noconfirm ttf-nerd-fonts-symbols ttf-jetbrains-mono-nerd

# Install utils
echo -e "\e[1;32mInstalling utils\e[0m"
yay -S --noconfirm minicom picocom htop neofetch firefox sshfs neovim tmux zsh oh-my-zsh-git openssh netcat nmap gnu-netcat vlc eog zathura zathura-pdf-mupdf thunar cmake make gcc gdb thunderbird

echo -e "\e[1;32mEverything is done\e[0m"
