# Configurar directorios XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
export HISTFILE="${XDG_STATE_HOME}"/bash/history

# No duplicar el historial
HISTCONTROL=ignoreboth

# Añadir al archivo del historial, no reemplazarlo
shopt -s histappend

# Tamaño del historial
HISTSIZE=1000
HISTFILESIZE=2000

# Ignorar mayúsculas al pulsar TAB
bind "set completion-ignore-case on"

# Permitir ejecutar desde ~/.local/bin
if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi

# Aliases
alias ls='ls -lh --color=auto --time-style=long-iso'
alias ll='ls -lhA --color=auto --time-style=long-iso'
alias vim='nvim'
alias c='clear'

# Aliases para paquetes
alias nalup='sudo nala update && sudo nala upgrade'
alias nalin='sudo nala install'
alias nalre='sudo nala remove'
alias update='sudo nala update && sudo nala upgrade && flatpak update'
alias clean='sudo nala autoremove && flatpak remove --unused'

# Prompt personalizada
PS1='\n\[\e[01;34m\]\w\n\[\e[01;32m\]>\[\e[0m\] '
