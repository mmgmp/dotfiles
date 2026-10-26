#!/bin/bash

# No duplicar el historial
HISTCONTROL=ignoreboth

# Añadir al archivo del historial, no reemplazarlo
shopt -s histappend

# Tamaño del historial
HISTSIZE=1000
HISTFILESIZE=2000

# Ignorar mayúsculas al pulsar TAB
bind "set completion-ignore-case on"

# Starship prompt
eval "$(starship init bash)"

# Cargar los modulos
for f in ~/.local/share/bash/*; do source "$f"; done 
