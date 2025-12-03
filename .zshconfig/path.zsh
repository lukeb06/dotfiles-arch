# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export NVM_DIR="/home/$(whoami)/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# tmuxifier
export PATH="$HOME/.tmuxifier/bin:$PATH"

# export DYLD_FALLBACK_LIBRARY_PATH="$(brew --prefix)/lib:$DYLD_FALLBACK_LIBRARY_PATH"

export EDITOR="$(which nvim)"
export VISUAL="$EDITOR"

function _gi() { curl -sLw "\n" https://www.toptal.com/developers/gitignore/api/$@ ;}

function gi
{
    _gi $(_gi list | sed 's/,/\n/g' | fzf),macos,linux,windows
}
