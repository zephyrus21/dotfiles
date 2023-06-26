# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH=/opt/homebrew/bin:$PATH:/Users/piyush/flutter/bin:$PATH:$HOME/.pub-cache/bin
export GOPATH=/Users/piyush/Developer/projects/go

ZSH_THEME="mytheme"

# it will clear the screen before the session starts.
clear

# Tmux
[[ -n $TMUX ]] && export TERM="xterm-256color"

# Plugins
plugins=(git macos colorize zsh-autosuggestions zsh-syntax-highlighting copybuffer mvn)

source $ZSH/oh-my-zsh.sh

# pnpm
export PNPM_HOME="/Users/piyush/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"

# Neovim
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Aliases
alias z='cd'
alias p='z /Users/piyush/Developer/projects'
alias d='z /Users/piyush/Developer'
alias zgo='z /Users/piyush/Developer/projects/go/src/github.com/zephyrus21'

# using exa and bat package for ls and cat
alias g++='g++ -std=c++11'
alias ls='exa'
alias ll='exa -alh'
alias tree='exa -tree'
alias cat='bat'
alias y='yarn'
alias yd='yarn dlx'
alias lzd='lazydocker'

function cppout() {
    g++ -std=c++11 $1.cpp -o $1 && ./$1 && rm ./$1
}

# Git aliases
function gra() {
  git remote add origin $1
}

function gac() { #! it will git add, commit with message.
  ga . && gc -m "$1"
}

function gacp() { #! it will git add, commit with message and push.
  ga . && gc -m "$1" && gp
}

test -d "$HOME/.tea" && source <("$HOME/.tea/tea.xyz/v*/bin/tea" --magic=zsh --silent)

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
