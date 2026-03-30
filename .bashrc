#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# Show fastfetch (system info) upon starting
fastfetch

# Environment Variables
export MICRO_TRUECOLOR=1 # That thing for Micro text editor (to add catppuccin color scheme)
export EDITOR=nvim # Make Neovim the default editor
export SSL_CERT_FILE=/etc/ca-certificates/extracted/tls-ca-bundle.pem # For osu! Archipelago

### ALIASES ###
# File Management
alias ls='ls -lh --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
# Text Editors
alias vim='nvim'

# Starship Bash Prompt
eval "$(starship init bash)"

alias diditwork='echo "Yes it did!"'
