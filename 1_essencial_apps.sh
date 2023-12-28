#!/bin/bash
source ./.functions.sh

echo_doing 'Updating system'
sudo apt update -y
sudo apt upgrade -y
echo_done

echo_doing 'Installing Nala'
sudo apt install nala -y
echo_done

echo_doing 'Installing Brave Browser'
sudo nala install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo nala  update
sudo nala install brave-browser

echo_doing 'Installing Blueman'
sudo nala install blueman -y
echo_done

echo_doing 'Installing VSCode'
sudo nala install code -y
echo_done

echo_doing 'Installing Discord'
sudo nala install discord -y
echo_done

echo_doing 'Installing qBittorrent'
flatpak install qbittorrent -y
echo_done

echo_doing 'Installing MPV'
sudo nala install mpv -y
cp -r mpv ~/.config 
echo_done

echo_doing 'Installing Steam'
sudo flatpak install com.valvesoftware.Steam -y
sudo nala install steam-devices -y
echo_done

echo_doing 'Installing PCSX2'
flatpak install pcsx2 -y
echo_done

echo_doing 'installing Duckstation'
flatpak install duckstation -y
echo_done

echo_doing 'Installing Gnome Extension Manager'
sudo nala install gnome-shell-extension-manager -y
echo_done

echo_doing 'Installing Python Env'
sudo nala install python3 python3.10-venv python3-pip -y
echo_done

echo_doing 'Installing IntelliJ Community'
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community -y
echo_done
