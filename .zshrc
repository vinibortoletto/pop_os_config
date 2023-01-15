export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
git
zsh-syntax-highlighting
fzf
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Git shortcut
function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}

# Update shortcut
function up() {
  sh ~/Code/pop_os_config/update_system.sh
}
