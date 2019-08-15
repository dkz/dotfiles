# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
  # Shell is non-interactive.  Be done now!
  return
fi

# Put your fun stuff here.

HISTCONTROL=ignoreboth
EDITOR="/usr/bin/vim"
PATH="$PATH:$HOME/.local/bin"

# Alias definitions.

alias r="ranger"
alias t="tmux"
alias v="vim"
alias c="cd ~ && clear"

# Shell options
shopt -s histverify

# Fasionable shell prompt.

source $HOME/.git.bashrc
ps1 () {
  PS1='\[\033]0;\u@\h:\w\007\]\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;37m\]$(__git_ps1 " [%s]") \[\033[01;34m\]\$\[\033[00m\] '
}
ps2 () {
  PS1='╭─\[\033]0;\u@\h:\w\007\]\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;37m\]$(__git_ps1 " [%s]")\n\[\033[00m\]╰─\[\033[01;34m\]\$\[\033[00m\] '
}
ps1
