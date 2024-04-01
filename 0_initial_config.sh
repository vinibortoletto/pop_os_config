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

echo_doing 'Fixing Screen tearing'
sudo cp ./nvidia-settings/xorg.conf /etc/X11/xorg.conf
echo_done

echo_doing 'Settings PopOs CSS'
sudo cp ./system-theme/dark.css /usr/share/gnome-shell/extensions/pop-shell@system76.com
echo_done

echo_doing 'Add IntelliJ PT-BR dictionary'

wget https://github.com/rafaelsc/IntelliJ.Portuguese.Brazil.Dictionary/archive/refs/heads/master.zip
unzip master.zip
mkdir -p ~/.local/share/dictionaries/

cp portuguese-brazil.dic ~/.local/share/dictionaries/
cp portuguese-brazil_technical-terms.dic ~/.local/share/dictionaries/
cp portuguese-brazil_technical-terms_without-accents.dic ~/.local/share/dictionaries/
cp portuguese-brazil_without-accents.dic ~/.local/share/dictionaries/

echo_done
