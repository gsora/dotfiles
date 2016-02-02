# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gsora/.zshrc'

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ''
setopt completealiases
# End of lines added by compinstall

typeset -U path
path=($path)

autoload -U colors
colors
PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg_no_bold[yellow]%}%1~ %{$reset_color%}%# "

export EDITOR=vim

# go exports
export GOPATH=/home/gsora/GoPath
export PATH=$PATH:$GOPATH/bin:/opt/android-sdk/platform-tools/
export TERM=xterm-256color

zstyle ':completion:*' rehash true

alias ls='ls --color=auto'

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
