# Prompt
# autoload -U promptinit; promptinit
# prompt suse

PROMPT='%(?.%F{green}√.%F{red}%?%f) %F{blue}%~ >%f '

# Terminal Colors
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Aliases
alias ls="ls -a"
alias vim="nvim"
alias v="nvim"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
alias autocl="./Repositories/autocl/autocl.py"

# Miscellaneous
# fortune -s
