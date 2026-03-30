#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# Show fastfetch (system info) upon starting
fastfetch

# That thing for Micro text editor (to add catppuccin color scheme)
export MICRO_TRUECOLOR=1

# Misc Environment Variables
export EDITOR=nvim
export SSL_CERT_FILE=/etc/ca-certificates/extracted/tls-ca-bundle.pem # For osu! Archipelago

### ALIASES ###
# ProtonVPN CLI
alias reconnect='protonvpn-cli d && protonvpn-cli c -fp tcp'
alias connect='protonvpn-cli c -fp tcp'
alias disconnect='protonvpn-cli d'
alias protonstat='protonvpn-cli s'
alias pvpn='protonvpn-cli'

# File Management
alias ls='ls -lh --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."

# Text Editors
alias vim='nvim'
alias diditwork='echo "Yes it did!"'

# Rsync System Backup
alias backup-ssd="rsync -av --delete --exclude={'.cache','arch-dotfiles'} /home/projecttaycat /run/media/projecttaycat/Extreme\ SSD/Linux\ Backup/$(date +%Y-%m-%d_%H.%M.%S)"

# Starship Bash Prompt
eval "$(starship init bash)"
export PATH=/home/projecttaycat/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/var/lib/flatpak/exports/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

