#!/usr/bin/env zsh

#---------------------------------------
# Node version manager (Fast node manager)
#---------------------------------------
FNM_PATH="$HOME/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi
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
# Atuin
#---------------------------------------
. "$HOME/.atuin/bin/env"
eval "$(atuin init zsh)"
#

#---------------------------------------
# ZSH
#---------------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"
zstyle ':omz:update' mode auto      # update automatically without asking
HIST_STAMPS="yyyy-mm-dd"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
#

# Set the default editor from the console to vs code
export EDITOR="code"
