echo " "
echo "#######################"
echo "### UPDATING SYSTEM ###"
echo "#######################"
echo " "

sudo apt update -y
sudo apt upgrade -y

echo " "
echo "#####################################"
echo "### INSTALLING VISUAL STUDIO CODE ###"
echo "#####################################"
echo " "

sudo apt install code -y

echo " "
echo "#######################"
echo "### INSTALLING ZOOM ###"
echo "#######################"
echo " "

flatpak install zoom -y

echo " "
echo "##############################"
echo "### INSTALLING QBITTORRENT ###"
echo "##############################"
echo " "

flatpak install qbittorrent -y

echo " "
echo "########################"
echo "### INSTALLING STEAM ###"
echo "########################"
echo " "

sudo apt install steam -y

echo " "
echo "########################"
echo "### INSTALLING PCSX2 ###"
echo "########################"
echo " "

flatpak install pcsx2 -y

echo " "
echo "##############################"
echo "### INSTALLING DUCKSTATION ###"
echo "##############################"
echo " "

flatpak install duckstation -y

echo " "
echo "############################"
echo "### INSTALLING FLAMESHOT ###"
echo "############################"
echo " "

flatpak install flameshot -y

echo " "
echo "####################################"
echo "### INSTALLING EXTENSION MANAGER ###"
echo "####################################"
echo " "

sudo apt install gnome-shell-extension-manager -y

