#!/bin/bash
source ./.functions.sh

echo_doing 'Installing ZSH'
sudo apt install -y zsh
chsh -s $(which zsh)
echo_done

echo_doing 'Installing Oh My ZSH'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo_done
