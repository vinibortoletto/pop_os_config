echo " "
echo "#####################################"
echo "### GIT EMAIL AND NAME CONFIGURED ###"
echo "#####################################"
echo " "

git config --global user.email "ovinibortoletto@gmail.com"
git config --global user.name "Vinicius Bortoletto"

echo " "
echo "##################################################"
echo "### WALLPAPERS FOLDER COPIED TO PICTURES FOLDER###"
echo "##################################################"
echo " "

cp -r Wallpapers ~/Pictures

echo " "
echo "###########################################"
echo "### FIRA CODE AND MESLO FONTS INSTALLED ###"
echo "###########################################"
echo " "

cp -r fonts/fira_code ~/.local/share/fonts
cp -r fonts/meslo_lgs ~/.local/share/fonts

echo " "
echo "############################"
echo "### UNINSTALLING FIREFOX ###"
echo "############################"
echo " "

sudo apt purge firefox -y
rm -rf ~/.mozilla
rm -rf ~/.cache/mozilla
