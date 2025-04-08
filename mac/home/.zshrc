#!/usr/bin/env zsh

#---------------------------------------
# Node version manager (Fast node manager)
#---------------------------------------
eval "$(fnm env --use-on-cd --shell zsh)"
alias nvm="fnm" # until i'm used to fnm
# 

#---------------------------------------
# zoxide / AutoJump (faster dir nav)
#---------------------------------------
eval "$(zoxide init --cmd j zsh)"
# uses the command 'j' to jump to directories instead of the default 'z'
#

#---------------------------------------
# The Fuck
#---------------------------------------
eval $(thefuck --alias)
alias fk="fuck"
alias fy="fuck --yeah"
#

#---------------------------------------
# Python version manager
#---------------------------------------
eval "$(pyenv init -)"
#

#---------------------------------------
# Java version manager
#---------------------------------------
[ -s "/Users/koe7194/.jabba/jabba.sh" ] && source "/Users/koe7194/.jabba/jabba.sh"
#

# Set the default editor from the console to vs code
export VISUAL="code"
