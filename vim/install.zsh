#!/bin/zsh

echo "# Vim configuration installer"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create destination config and cache dirs
DESTDIR="$XDG_CONFIG_HOME/vim"
CACHEDIR="$XDG_CACHE_HOME/vim"

[[ ! -d "$DESTDIR" ]] && mkdir -p "$DESTDIR"
[[ ! -d "$CACHEDIR" ]] && mkdir -p "$CACHEDIR"

echo "  > Copying files"
cp -f "$DIR/vimrc" "$DESTDIR/vimrc"
cp -Rf "$DIR/colors" "$DESTDIR"


echo "  > Exporting some vars in zprofile"

echo -e "# Set where vimrc is located\nexport VIMINIT='let \$MYVIMRC=\"\$XDG_CONFIG_HOME/vim/vimrc\" | source \$MYVIMRC'" >> "$HOME/.zprofile"
source "$HOME/.zprofile"
