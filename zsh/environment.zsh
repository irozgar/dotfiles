# History
export HISTFILE="$ZSH_CACHE/zsh_history"
export HISTSIZE=100000
export SAVEHIST="$HISTSIZE"
export HISTTIMEFORMAT='%F %T '

[[ ! -d "$ZSH_CACHE" ]] && mkdir -p $ZSH_CACHE

# executable path
export PATH="$HOME/.local/bin:$HOME/.composer/vendor/bin:$PATH"

# if ruby is found, add the user gems dir to the path
which ruby > /dev/null
if [ "$?" -eq 0 ]; then
    export PATH="$(ruby -rubygems -e "puts Gem.user_dir")/bin:$PATH"
fi

# CDPATH
export CDPATH="$HOME"

# Editor
export EDITOR="vim"

# Colors
LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'

