# prompt
autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{white}%~%f %F{cyan}${vcs_info_msg_0_}%f$ '

# syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# history (more of it)
export HISTFILE=~/.zsh_history
export HISTSIZE=1000000
export SAVEHIST=$HISTSIZE

# autocomplete
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select

# silent login
[ ! -f ~/.hushlogin ] && touch ~/.hushlogin

# git (aliases)
source ~/.zgit

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 100% --layout=reverse'

# exa
alias l="exa -la"

# z
eval "$(zoxide init zsh)"

# aws
alias aws="aws-mfa-secure session"
alias awsd="export AWS_PROFILE=default && aws-mfa-secure session"

# ruby
export PATH=/opt/homebrew/opt/ruby/bin:$PATH
export PATH=/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH

# node
export PATH=~/.node_versions/v20/bin:$PATH

# terraform
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
