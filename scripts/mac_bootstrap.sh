#!/usr/bin/env bash

set -e

echo "🚀 Starting macOS bootstrap..."

# -----------------------------
# Install Homebrew if missing
# -----------------------------
if ! command -v brew >/dev/null 2>&1; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "🍺 Homebrew already installed."
fi

# Ensure brew is in PATH for this script
eval "$(/opt/homebrew/bin/brew shellenv)"

# -----------------------------
# Install Brewfile packages
# -----------------------------
echo "📦 Installing packages from Brewfile..."
brew bundle --file="$(dirname "$0")/../brew/Brewfile"

# -----------------------------
# Symlink dotfiles using stow (if installed)
# -----------------------------
if command -v stow >/dev/null 2>&1; then
  echo "🔗 Symlinking dotfiles with stow..."
  cd "$(dirname "$0")/.."

  stow --verbose --target=$HOME zsh
  stow --verbose --target=$HOME git
  stow --verbose --target=$HOME mise
else
  echo "⚠️ GNU stow not installed. Skipping symlinks."
  echo "Install with: brew install stow"
fi

# -----------------------------
# Symlink vscode settings
# -----------------------------
echo "🔗 Symlinking VS Code settings..."

mkdir -p ~/Library/Application\ Support/Code/User

# Determine repo root
REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

# Symlink settings.json
ln -sf "$REPO_ROOT/vscode/settings.json" \
  "$HOME/Library/Application Support/Code/User/settings.json"

# Symlink extensions.json
ln -sf "$REPO_ROOT/vscode/extensions.json" \
  "$HOME/Library/Application Support/Code/User/extensions.json"

# -----------------------------
# Set zsh as default shell
# -----------------------------
if [[ "$SHELL" != "/bin/zsh" ]]; then
  echo "🐚 Setting zsh as default shell..."
  chsh -s /bin/zsh
fi

echo "🎉 macOS bootstrap complete!"