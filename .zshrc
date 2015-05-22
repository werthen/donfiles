# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
bindkey "^[[3~" delete-char
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/don/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
autoload -U colors && colors
autoload -U promptinit
promptinit

PROMPT="%F{green}%n@%m%f %~
%F{black}令%f "
zstyle ':completion:*' menu select

alias ls="ls -h --color"
alias l="ls -l"
alias netlist="netctl-auto list"
alias curnet="netctl-auto current"
alias netbeans="netbeans -J-Dnetbeans.slow.system.clipboard.hack=false"
alias mv="mv -i"
alias rm="rm -I"
alias open="mimeopen"
alias ctrlc="xclip -sel clip"
alias ctrlv="xclip -o -sel clip"
alias fuck='$(thefuck $(fc -ln -1))'
alias menu=''

export WALLPAPER="$HOME/images/wallpapers/sea.jpg"
export PATH="$PATH:/home/don/bin:/home/don/.gem/ruby/2.2.0/bin:/home/don/.cabal/bin"
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="vim"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=($HOME/etc/t-completion.zsh $fpath)

# Colored man pages
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;33;246m'   # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

# CTRL-S hangs terminal fix
stty -ixon
