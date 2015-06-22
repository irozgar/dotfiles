#!/bin/zsh

echo "# Instalando configuración de ZSH"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$DIR/zprofile"

# Create destination config dir
DESTDIR="$XDG_CONFIG_HOME/zsh"

[[ ! -d "$DESTDIR" ]] && mkdir -p "$DESTDIR"

# Copy files
echo "  > Copiando archivos"
cp -Rf $DIR/* $DESTDIR

# Create symlinks
echo "  > Creando enlaces simbólicos"


[[ -h "$HOME/.zprofile" ]] && rm "$HOME/.zprofile"
[[ -h "$HOME/.zshrc" ]] && rm "$HOME/.zshrc"
ln -s "$DESTDIR/zprofile" "$HOME/.zprofile"
ln -s "$DESTDIR/zshrc" "$HOME/.zshrc"

