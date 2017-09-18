#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll="ls -laGhp"

alias steam-wine='WINEDEBUG=-all wine ~/.wine/drive_d/Program\ Files\ \(x86\)/Steam/Steam.exe >/dev/null 2>&1 &'

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

source ~/.git_autocomplete.sh
source ~/.git-prompt.sh

PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] : \[\033[01;36m\]\w\[\033[00m\]\[\e[033;01m\]\[\e[00m\] \[\e[0;93m\]\$(__git_ps1)\[\e[00m\] $ "

PATH="${PATH}:/home/bclougherty/bin:/home/bclougherty/code/go/bin:/home/bclougherty/.config/composer/vendor/bin"

export GOPATH=~/code/go
export SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS=0

eval $(systemctl --user show-environment | grep SSH_AUTH_SOCK)
export SSH_AUTH_SOCK

ssh-add -l |grep -q SHA256:0BnBC1J5stOtgLq54D0pucAQZFS/xF7enkSKnQpsGxU || ssh-add ~/.ssh/id_rsa
