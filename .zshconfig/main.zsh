alias ls='ls --color'

source ~/.zshconfig/utils/nvim.zsh
source ~/.zshconfig/utils/sessions.zsh
source ~/.zshconfig/utils/shopify.zsh
source ~/.zshconfig/utils/git.zsh
source ~/.zshconfig/utils/python.zsh

alias stowf="~/dotfiles/scripts/stow.sh"
alias zshrc="cd ~/dotfiles && v && stowf && gpush && zsh -c 'clear'"

function mkcd
{
  command mkdir $1 && cd $1
}
