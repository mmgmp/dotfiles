#!/bin/bash

# Ejecutar desde ~/.local/bin
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/.local/scripts" ] && PATH="$HOME/.local/scripts:$PATH"
[ -d "$HOME/.local/share/cargo/bin" ] && PATH="$HOME/share/cargo/bin:$PATH"

# Programas predeterminados
export EDITOR="nvim"
export BROWSER="brave-browser"
export TERMINAL="foot"
export TERMINAL_RUN="foot sh -c"
export FILE_MANAGER="$TERMINAL_RUN lf"
export CALENDAR="$TERMINAL_RUN calcurse"
export RSS_READER="$TERMINAL_RUN newsboat"
export RUN_LAUNCHER="tofi-drun"
export PASSWORD_MENU="askpass"

# Wayland
export XDG_SESSION_TYPE="wayland"
export XDG_CURRENT_DESKTOP="sway"

# Organización
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/password-store"
export HISTFILE="${XDG_STATE_HOME}/bash/history"
export GTK2_RC_FILES="${XDG_CONFIG_HOME}/gtk-2.0/gtkrc-2.0"
export BOOKMARK_FILE="$XDG_DATA_HOME/bookmarks/bookmark-list"
export GRIM_DEFAULT_DIR="$HOME/Imágenes/capturas-de-pantalla"
export NOTIFY_ICONS="$HOME/.local/share/icons/awesome"
