# Uncomplicated zsh

This is a basic zsh configuration designed to be both simple and powerful. Use it as a turnkey configuration for everyday use, and don't hesitate to modify it to better suit your needs.

## Installation

1. Install the dependencies

```
brew install zsh-syntax-highlighting zoxide fzf jq && /opt/homebrew/opt/fzf/install
```

1. Clone this repository

```
git clone git@github.com:alexpyzhianov/uzsh.git
```

1. Set up symbolic links to the configuration files

```
ln -s $HOME/repo_location/.zgit $HOME
ln -s $HOME/repo_location/.zshrc $HOME
```

1. (optional) Create .zprivate file for API keys and other sensitive information

```
cp $HOME/repo_location/.zprivate $HOME
```

1. Restart your terminal
