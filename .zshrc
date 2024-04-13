# version control
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '

# prompt
setopt PROMPT_SUBST
PROMPT='%F{white}%~%f %F{cyan}${vcs_info_msg_0_}%f'

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

# aliases
source ~/.zgit
alias c="clear"
alias x="exit"
alias l="exa -la"
alias rc="code ~/repos/uzsh"
alias src="source ~/.zshrc"

# z
eval "$(zoxide init zsh)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--height 100% --layout=reverse'

# aws
alias aws="aws-mfa-secure session"
alias awsd="export AWS_PROFILE=default && aws-mfa-secure session"

# ruby
export PATH=/opt/homebrew/opt/ruby/bin:$PATH
export PATH=/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH

# bash
export PATH=/opt/homebrew/bin:$PATH

# node
export PATH=~/.node_versions/v20/bin:$PATH

# sound input/output
alias sooa="SwitchAudioSource -t output -u '74-15-F5-28-97-B9:output'"
alias soia="SwitchAudioSource -t input -u '74-15-F5-28-97-B9:input'"
alias soom="SwitchAudioSource -t output -u 'BuiltInSpeakerDevice'"
alias soim="SwitchAudioSource -t input -u 'BuiltInMicrophoneDevice'"
alias meet="soim && sooa"

# fns
[ -f ~/.zfns ] && source ~/.zfns

# private
[ -f ~/.zprivate ] && source ~/.zprivate
