# Terminal Colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# pip
export PATH=$PATH:/Users/carter/Library/Python/3.9/bin

# Aliases
# alias ls="ls -a"
alias vim="nvim"
alias v="nvim"

alias python=/usr/bin/python3

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
alias autocl="./Repositories/autocl/autocl.py"
# echo "$(<./.config/wave.txt)"
eval "$(starship init zsh)"
defaults write -g KeyRepeat -int 2

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

