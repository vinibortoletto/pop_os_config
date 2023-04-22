#!/bin/bash
source ./.functions.sh

echo_doing 'Settings Git email and name'
git config --global user.email "ovinibortoletto@gmail.com"
git config --global user.name "Vinicius Bortoletto"
echo_done

echo_doing 'Copying Wallpapers folder'
cp -r Wallpapers ~/Pictures
echo_done

echo_doing 'Copying fonts'
cp -r fonts/fira_code ~/.local/share/fonts
cp -r fonts/meslo_lgs ~/.local/share/fonts
echo_done

echo_doing 'Removing Firefox'
sudo apt purge firefox -y
rm -rf ~/.mozilla
rm -rf ~/.cache/mozilla
echo_done
