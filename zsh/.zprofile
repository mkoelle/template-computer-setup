# ~/.zshrc
# Loads for interactive shells only.
# Put prompts, aliases, keybindings, zoxide, fzf, starship, atuin, etc.
# No PATH manipulation or heavy environment setup.

# Homebrew environment (expensive → login shell only)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Initialize mise (unified runtime manager)
eval "$(mise activate zsh)"
