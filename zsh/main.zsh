# 1. Prompt first for instant prompt
source ~/.config/zsh/prompt.zsh

# 2. Env variables
source ~/.config/zsh/user.zsh

# 3. Plugins
source ~/.config/zsh/plugins.zsh

# 4. Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

# 5. History options
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# 6. Aliases
alias ls='ls --color'
alias vim='nvim'
alias c='clear'

# 7. ASDF
source ~/.config/zsh/asdf.zsh

# Miss
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
