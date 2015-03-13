# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
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

alias ls="ls --color"
alias l="ls -l"
alias cp="rsync -avz"
alias netlist="netctl-auto list"
alias curnet="netctl-auto current"

export WALLPAPER="$HOME/images/wallpapers/city.jpg"
export PATH="$PATH:/home/don/bin:/home/don/.gem/ruby/2.2.0/bin"
export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="vim"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=($HOME/etc/t-completion.zsh $fpath)
