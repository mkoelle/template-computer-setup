eval $(thefuck --alias)
alias "fk=fuck"
alias "fy=fuck --yeah"

# for the lazy
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."
alias cd..="cd .."

# Node version manager
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh

# Python version manager
eval "$(pyenv init -)"

# Java version manager
[ -s "/Users/koe7194/.jabba/jabba.sh" ] && source "/Users/koe7194/.jabba/jabba.sh"

# Set the default editor from the console to vs code
export VISUAL="code"

# Add RVM to PATH for ruby scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

function aws-sso-login {
    profile="${1:-${AWS_PROFILE:="mk-hb-dev-devops"}}"
    aws sso login --profile "${profile}"
    ssocreds --profile "${profile}"
    export AWS_PROFILE="${profile}"
}
