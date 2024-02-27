#!/bin/bash
source ./.functions.sh

echo_doing 'Installing PHP'

sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo nala install php php-mysql php-zip php-curl -y

echo_done

echo_doing 'Installing Composer'

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'edb40769019ccf227279e3bdd1f5b2e9950eb000c3233ee85148944e555d97be3ea4f40c3c2fe73b22f875385f6a5155') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

echo_done

echo_doing 'Installing XAMPP'

curl -O https://sinalbr.dl.sourceforge.net/project/xampp/XAMPP%20Linux/8.2.12/xampp-linux-x64-8.2.12-0-installer.run
chmod +x script.sh xampp-linux-x64-8.2.12-0-installer.run
sudo ./xampp-linux-x64-8.2.12-0-installer.run

echo '[Desktop Entry]
Comment=Start or Stop XAMPP
Name=XAMPP Control Panel
Exec=sh -c "pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY sudo /opt/lampp/manager-linux-x64.run"
Encoding=UTF-8
Terminal=false
Name[en_US]=XAMPP Control Panel
Comment[en_US]=Start or Stop XAMPP GUI
Type=Application
Icon=xampp' > ~/.local/share/applications/xampp.desktop

chmod +x ~/.local/share/applications/xampp.desktop
update-desktop-database ~/.local/share/applications/
rm xampp-linux-x64-8.2.12-0-installer.run

echo_done