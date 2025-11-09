#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Если fish установлен и это интерактивная сессия, запустить fish
if [ -f /usr/bin/fish ]; then
  exec fish
fi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
