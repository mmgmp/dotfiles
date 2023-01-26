#!/bin/bash

#  __  __     __  __   
# |  \/  |   |  \/  |  
# | |\/| |   | |\/| |  
# | |  | |_  | |  | |_ 
# |_|  |_(_) |_|  |_(_)
#    _               _              
#   | |__   __ _ ___| |__  _ __ ___ 
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__ 
# (_)_.__/ \__,_|___/_| |_|_|  \___|


## HISTORIAL ##

# historial de comandos
HISTCONTROL=ignoreboth

# tamaño del historial
HISTSIZE=1000
HISTFILESIZE=2000

## EXPORTS ##

# variables de entorno
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# mover historial a .local/state/bash
export HISTFILE="${XDG_STATE_HOME}"/bash/history

## PERSONALIZACION ##

# prompt personalizada
PS1='\n\[\033[01;34m\]\w\n\[\033[01;32m\]\u@\h\[\033[00m\]:$ \[$(tput sgr0)\]'

# carpetas de colores
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# ignorar MAYUSCULAS al pulsar TAB
bind "set completion-ignore-case on"

## ALIASES ##

# colores y ajustes de ls
alias ls='ls --color=auto'
alias ll='ls -lh -a --group-directories-first'

# colores para grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# nvim >> vim
alias vim='nvim'

# pedir confirmación
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# la pereza de escribir
alias c='clear'

## AUTOEJECUTAR ##

# limpia la terminal al inicio
clear
