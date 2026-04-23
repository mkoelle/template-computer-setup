# ~/.zshrc
# Loads for interactive shells only.
# Put prompts, aliases, keybindings, zoxide, fzf, starship, atuin, etc.
# No PATH manipulation or heavy environment setup.

# History (Atuin)
eval "$(atuin init zsh)"

# Directory jumping (zoxide)
eval "$(zoxide init --cmd j zsh)"

# FZF keybindings
source /opt/homebrew/opt/fzf/shell/key-bindings.zsh

# The Fuck
eval "$(thefuck --alias)"
alias fk="fuck"
alias fy="fuck --yeah"

# Prompt (Starship)
eval "$(starship init zsh)"

# Aliases
alias ll="ls -lah"
alias gs="git status"
alias docker="podman"
