# This loads the Version Control System into your prompt
autoload -Uz vcs_info
precmd() { vcs_info }

# Sets up the Git branch details into your prompt
zstyle ':vcs_info:git:*' formats '%b '

# Change the prompt
setopt PROMPT_SUBST
PROMPT='%F{white}%~%f %F{cyan}${vcs_info_msg_0_}%f$ '

# Enable syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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

# z - jump around
source ~/zsh-z/zsh-z.plugin.zsh

# Git aliases
source ~/.zgit

# Other aliases
alias l='exa -la'
alias cat='bat'
alias grep='rg'
