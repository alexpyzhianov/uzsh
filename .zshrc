# version control
autoload -Uz vcs_info
precmd() {
    vcs_info
}
zstyle ':vcs_info:git:*' formats '%b '

# prompt
setopt PROMPT_SUBST
export PROMPT='%F{white}%~%f %F{cyan}${vcs_info_msg_0_}%f'

# editor
export EDITOR="vim"

# syntax highlighting
source "/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

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
alias l="exa --long --header --all --git --group-directories-first"
alias dot="code ~/repos/dotfiles"
alias src="source ~/.zshrc"
alias brewu="brew update && brew upgrade && brew cleanup && brew autoremove"

# z
eval "$(zoxide init zsh)"

# fzf
if [ -f ~/.fzf.zsh ]; then
    source ~/.fzf.zsh
else
    echo "Please install fzf to enable fuzzy search."
    return 1
fi

export FZF_DEFAULT_OPTS='--height 100% --layout=reverse'

# ruby
export PATH=/opt/homebrew/opt/ruby/bin:$PATH
export PATH=/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH

# bash
export PATH=/opt/homebrew/bin:$PATH

# node
export PATH=~/.node_versions/v20/bin:$PATH

# go
export PATH=~/go/bin:$PATH

# sound input/output
alias sooa="SwitchAudioSource -t output -u '74-15-F5-28-97-B9:output'"
alias soia="SwitchAudioSource -t input -u '74-15-F5-28-97-B9:input'"
alias soom="SwitchAudioSource -t output -u 'BuiltInSpeakerDevice'"
alias soim="SwitchAudioSource -t input -u 'BuiltInMicrophoneDevice'"
alias meet="soim && sooa"

# private
[ -f ~/.zprivate ] && source ~/.zprivate
