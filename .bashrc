#!/bin/bash

# No duplicar el historial
HISTCONTROL=ignoreboth

# Añadir al archivo del historial, no reemplazarlo
shopt -s histappend

# Tamaño del historial
HISTSIZE=1000
HISTFILESIZE=2000

# Autocompletar
source /etc/profile.d/bash_completion.sh

# Ignorar mayúsculas al pulsar TAB
bind "set completion-ignore-case on"

# Prompt personalizada
PS1='\n\[\e[01;34m\]\w\n\[\e[01;32m\]>\[\e[0m\] '

# Aliases
alias ls='ls -lh --color=auto --time-style=long-iso'
alias ll='ls -lhA --color=auto --time-style=long-iso'
alias c='clear'
alias abook="abook --config "$XDG_CONFIG_HOME"/abook/abookrc --datafile "$XDG_CONFIG_HOME"/abook/addressbook"

# Aliases para paquetes
alias up='sudo apt update && sudo apt upgrade'
alias clean='sudo apt autoremove && flatpak remove --unused'
