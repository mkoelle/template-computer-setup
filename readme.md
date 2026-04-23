# Dotfiles

A cross‑platform dotfiles setup for macOS, Linux (Debian/Ubuntu), and Windows.  
This repo manages:

- Zsh configuration
- Git configuration
- VS Code settings + extensions
- mise runtime manager configuration
- PowerShell profile (Windows)
- Brewfile (macOS)
- OS‑specific bootstrap scripts

The goal is a clean, unified environment across all machines with minimal duplication.

---

## 🚀 macOS Setup

1. Install Xcode CLI tools:

```sh
xcode-select --install
```

2. Clone the dotfiles repo:

```sh
git clone https://github.com/<your-username>/<your-dotfiles-repo>.git ~/.dotfiles
cd ~/.dotfiles
```

3. Run the macOS bootstrap script:

```sh
./scripts/macos_bootstrap.sh
```

This will:
- Install Homebrew
- Install all packages from brew/Brewfile
- Symlink dotfiles into place
- Set up zsh, mise, VS Code, and PowerShell (pwsh)

## Linux Setup (Debian/Ubuntu)
Use the scripts under:
```Code
scripts/debian/
scripts/ubuntu/
```
Example:
```sh
./scripts/ubuntu/install_packages.sh
./scripts/ubuntu/install_scripted.sh
```

## Windows Setup
Run:
```pwsh
.\scripts\windows_setup.ps1
```
This installs:
- Chocolatey
- Winget packages
- PowerShell profile
- Developer tools

## Runtime Management
I use mise as the unified runtime manager for:
- Node
- Python (versions only; uv manages environments)
- Go
- Java
- Rust
- Gradle
- Sonar-scanner
- uv
- Godot CLI

Config lives in:
```Code
mise/config.toml
```

## 📝 VS Code
Extensions are defined in:
```Code
vscode/extensions.json
```
Settings in:
```Code
vscode/settings.json
```

## 🧑‍💻 License
Use however you like.