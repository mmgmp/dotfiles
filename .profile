#!/bin/bash

# Ejecutar desde ~/.local/bin
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"

# Programas predeterminados
export EDITOR="nvim"
export TERMINAL="foot"
export BROWSER="firefox"
export FILE_MANAGER="foot sh -c lf"
export RSS_READER="foot sh -c newsboat"
export RUN_LAUNCHER="tofi-drun"
export PASSWORD_MENU="tofi-password-menu"

# Limpiar ~/
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export HISTFILE="${XDG_STATE_HOME}/bash/history"

# Rutas personalizadas
export BOOKMARK_FILE="$HOME/.local/share/bookmarks/bookmark-list"
