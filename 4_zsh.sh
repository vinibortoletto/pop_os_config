echo " "
echo "######################"
echo "### INSTALLING ZSH ###"
echo "######################"
echo " "

sudo apt install -y zsh
chsh -s $(which zsh)

echo " "
echo "############################"
echo "### INSTALLING OH MY ZSH ###"
echo "############################"
echo " "

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
