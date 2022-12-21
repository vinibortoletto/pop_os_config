echo " "
echo "######################################"
echo "### CONFIGURING GIT EMAIL AND NAME ###"
echo "######################################"
echo " "

git config --global user.email "ovinibortoletto@gmail.com"
git config --global user.name "Vinicius Bortoletto"

echo " "
echo "###########################"
echo "### CONFIGURING SSH KEY ###"
echo "###########################"
echo " "

ssh-keygen -t ed25519 -C "ovinibortoletto@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub

echo " "
echo "#################################"
echo "### COPYING WALLPAPERS FOLDER ###"
echo "#################################"
echo " "

cp -r Wallpapers ~/Pictures

echo " "
echo "########################################"
echo "### ADDING FIRA CODE AND MESLO FONTS ###"
echo "########################################"
echo " "

cp fonts/fira_code ~/.local/share/fonts
cp fonts/meslo_lgs ~/.local/share/fonts
