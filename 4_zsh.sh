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

# echo " "
# echo "######################################"
# echo "### INSTALLING POWERLEVEL10K ###"
# echo "######################################"
# echo " "

# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
