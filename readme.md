# Dotfiles

A cross-platform dotfiles setup for macOS, Linux (Debian/Ubuntu), and Windows.
This repo manages:

- Zsh configuration (`.zshrc`, `.zshenv`, `.zprofile`)
- Git configuration (`.gitconfig` with custom aliases)
- VS Code settings and extensions
- mise runtime manager configuration
- PowerShell profile (Windows)
- Brewfile (macOS package management)
- OS-specific bootstrap scripts

The goal is a clean, unified environment across all machines with minimal duplication.

## Repository Structure

```
.
+-- brew/
|   +-- BrewFile              # Homebrew packages, casks, and fonts
+-- git/
|   +-- .gitconfig            # Shared Git config and aliases
|   +-- .personal.gitconfig   # Personal email and SSH key location
+-- mise/
|   +-- .config/mise/
|       +-- config.toml       # Runtime versions (Node, Python, Go, etc.)
+-- powershell/
|   +-- Microsoft.PowerShell_profile.ps1
+-- scripts/
|   +-- mac_bootstrap.sh      # macOS full setup
|   +-- windows_setup.ps1     # Windows full setup
|   +-- powershell_tools_setup.ps1
|   +-- debian/               # Debian install scripts
|   +-- ubuntu/               # Ubuntu install scripts
+-- vscode/
|   +-- extensions.json
|   +-- settings.json
+-- zsh/
    +-- .zprofile
    +-- .zshenv
    +-- .zshrc
```

---

## macOS Setup

1. Install Xcode CLI tools:

   ```sh
   xcode-select --install
   ```

2. Clone the repo:

   ```sh
   git clone https://github.com/mkoelle/dotfiles.git ~/.dotfiles
   cd ~/.dotfiles
   ```

3. Run the macOS bootstrap script:

   ```sh
   ./scripts/mac_bootstrap.sh
   ```

This will:

- Install Homebrew (if not already installed)
- Install all packages from `brew/BrewFile`
- Symlink `zsh/`, `git/`, and `mise/` into `$HOME` using GNU stow
- Symlink VS Code settings and extensions into the macOS config directory
- Set zsh as the default shell

## Linux Setup (Debian/Ubuntu)

Use the scripts under `scripts/debian/` or `scripts/ubuntu/`:

```sh
./scripts/ubuntu/install_packages.sh
./scripts/ubuntu/install_scripted.sh
```

## Windows Setup

Run from PowerShell:

```pwsh
.\scripts\windows_setup.ps1
```

This installs:

- Chocolatey
- Winget packages
- PowerShell profile
- Developer tools

## Runtime Management

[mise](https://mise.jdx.dev/) is the unified runtime manager. Config lives in
`mise/.config/mise/config.toml` and manages:

- Node (LTS)
- Python 3.12 (versions only; uv manages environments)
- Go
- Java (Temurin 21)
- Rust (stable)
- Gradle
- Sonar-scanner
- uv
- Godot (CLI)

## Git Aliases

The Git config (`git/.gitconfig`) includes custom aliases for branch hygiene:

| Alias              | Description                                                   |
| ------------------ | ------------------------------------------------------------- |
| `list-gone`        | List branches whose remote upstream has been deleted (`[gone]`) |
| `list-local-only`  | List branches with no remote upstream (superset of `list-gone`) |
| `nuke <branch...>` | Force-delete branches by name or via stdin                     |
| `nuke-gone`        | Show and delete all `[gone]` branches                          |
| `nuke-local-only`  | Show and delete all local-only branches                        |

Other shortcuts: `fix`, `undo`, `unstage`, `prettyhistory`, `quicklog`, and rebase helpers (`rc`, `ra`, `rs`).

## VS Code

- Extensions: `vscode/extensions.json`
- Settings: `vscode/settings.json`

## License

Use however you like.