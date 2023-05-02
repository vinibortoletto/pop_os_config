#!/bin/bash
source ./.functions.sh

echo_doing 'Updating system'
sudo apt update -y
sudo apt upgrade -y
echo_done

echo_doing 'Installing Nala'
sudo apt install nala -y
echo_done

echo_doing 'Installing Blueman'
sudo apt install blueman -y
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

echo_doing 'Installing Python Env'
sudo nala install python python3.10-venv -y
echo_done
