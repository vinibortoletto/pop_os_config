echo ""
echo "#########################"
echo "### UPDATING APT REPO ###"
echo "#########################"
echo ""

sudo apt update -y
sudo apt upgrade -y

echo ""
echo "#############################"
echo "### UPDATING FLATPAK APPS ###"
echo "#############################"
echo ""

flatpak upgrade -y

echo ""
echo "################################"
echo "### CLEANING UP DEPENDENCIES ###"
echo "################################"
echo ""

sudo apt autoremove -y