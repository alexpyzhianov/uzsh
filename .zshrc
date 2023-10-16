# This loads the Version Control System into your prompt
autoload -Uz vcs_info
precmd() { vcs_info }

# Sets up the Git branch details into your prompt
zstyle ':vcs_info:git:*' formats '%b '

# Change the prompt
setopt PROMPT_SUBST
PROMPT='%F{white}%~%f %F{cyan}${vcs_info_msg_0_}%f$ '

# Enable syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enable fzf (make sure you have installed it)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 100% --layout=reverse'

# More history! (only 1000 by default)
export HISTFILE=~/.zsh_history
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE

# Autocomplete
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select

# Zoxide
eval "$(zoxide init zsh)"

# Aliases
alias l='exa -la'
alias grep='rg'
alias vim='nvim'
alias top='htop'
alias du='dua'
alias fd='find'
alias g='lazygit'

# Git aliases
source ~/.zgit

# Tool configs
source ~/.ztool


### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/alpy/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
