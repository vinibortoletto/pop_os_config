#!/bin/bash
source ./.functions.sh

echo_doing 'Updating apt'
sudo apt update -y
sudo apt upgrade -y
echo_done

echo_doing 'Updating flatpak'
flatpak upgrade -y
echo_done

echo_doing 'Cleaning dependencies'
sudo apt autoremove -y
echo_done

echo_doing 'Updating Gnome CSS'
sudo cp dark.css /usr/share/gnome-shell/extensions/pop-shell@system76.com/
echo_done