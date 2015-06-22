# To see the key combo you want to use just do:
# cat > /dev/null
# And press it 

bindkey '^[[3~' delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[5~' history-beginning-search-backward
bindkey '^[[6~' history-beginning-search-forward
bindkey '^R' history-incremental-search-backward
bindkey '^t' expand-or-complete-prefix

