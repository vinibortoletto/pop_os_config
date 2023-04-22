#!/bin/bash

source ./.functions.sh

echo_doing 'Updating system'
sudo apt update -y
sudo apt upgrade -y
echo_done

echo_doing 'Installing VSCode'
sudo apt install code -y
echo_done

echo_doing 'Installing Zoom'
flatpak install zoom -y
echo_done

echo_doing 'Installing qBittorrent'
flatpak install qbittorrent -y
echo_done

echo_doing 'Installing MPV'
sudo apt install mpv -y
cp -r mpv ~/.config 
echo_done

echo_doing 'Installing Steam'
sudo apt install steam -y
echo_done

echo_doing 'Installing PCSX2'
flatpak install pcsx2 -y
echo_done

echo_doing 'installing Duckstation'
flatpak install duckstation -y
echo_done

echo_doing 'Installing Flameshot'
flatpak install flameshot -y
echo_done

echo_doing 'Installing Gnome Extension Manager'
sudo apt install gnome-shell-extension-manager -y
echo_done

echo_doing 'Installing ZSH'
sudo apt install -y zsh
chsh -s $(which zsh)
echo_done

echo_doing 'Installing Oh My ZSH'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo_done

reboot