# Terminal Colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Aliases
# alias ls="ls -a"
alias vim="nvim"
alias v="nvim"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
alias autocl="./Repositories/autocl/autocl.py"
echo "$(<./.config/wave.txt)"
eval "$(starship init zsh)"
defaults write -g KeyRepeat -int 2
