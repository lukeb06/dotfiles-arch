# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export NVM_DIR="/home/luke/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# bun completions
[ -s "/home/luke/.bun/_bun" ] && source "/home/luke/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# tmuxifier
export PATH="$HOME/.tmuxifier/bin:$PATH"

# export DYLD_FALLBACK_LIBRARY_PATH="$(brew --prefix)/lib:$DYLD_FALLBACK_LIBRARY_PATH"

# Shopify Hydrogen alias to local projects
alias h2='$(npm prefix -s)/node_modules/.bin/shopify hydrogen'

# export EDITOR="/opt/homebrew/bin/nvim"
export EDITOR="$(which nvim)"
export VISUAL="$EDITOR"

function _gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/$@ ;}

function gi
{
    _gi $(_gi list | sed 's/,/\n/g' | fzf),macos,linux,windows
}
