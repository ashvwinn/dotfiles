# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="refined"

# Plugins
plugins=()

source $ZSH/oh-my-zsh.sh
###################################################

#### Prompt ####
eval "$(starship init zsh)"
##################

# zsh-autosuggestions and zsh-syntax-highlighting plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fzf
source <(fzf --zsh)

# spicetify
export PATH=$PATH:/home/ashvin/.spicetify

# zoxide(better cd)
eval "$(zoxide init zsh)"

# try
eval "$(/usr/bin/try init ~/src/tries)"

# mise
eval "$(mise activate zsh)"

# . "$HOME/.local/share/../bin/env"

# aliases
alias ls="eza --color=always --git --icons=always"
alias cd="z"
alias v="nvim"
alias tmux-sessionizer="~/.local/bin/scripts/tmux-sessionizer"
alias gl="git --no-pager log --oneline --graph --all --decorate -n 10"

# opencode
export PATH=/home/ashvin/.opencode/bin:$PATH

# go binaries
export PATH="$PATH:$HOME/go/bin"
