# ~/.zshenv
# Loads for every shell (login + non‑login, interactive + non‑interactive).
# Keep this file minimal: PATH, XDG vars, universal env vars only.
# No aliases, no prompts, no interactive tools, no heavy init.

# XDG base directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Antigravity
export PATH="/Users/mkoelle/.antigravity/antigravity/bin:$PATH"

# Homebrew (PATH only)
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# mise shims early in PATH
export PATH="$HOME/.local/share/mise/shims:$PATH"

# Default editor
export VISUAL="code"
export EDITOR="code"
