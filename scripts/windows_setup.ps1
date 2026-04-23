<#
Windows Setup Script
Place this in: ~/.dotfiles/scripts/windows_setup.ps1
Run in an elevated PowerShell session.
#>

Write-Host "Starting Windows setup..."

# -----------------------------
# Install Chocolatey (if missing)
# -----------------------------
if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Chocolatey..."
    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = `
        [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
} else {
    Write-Host "Chocolatey already installed."
}

# -----------------------------
# Install Winget packages
# -----------------------------
$wingetPackages = @(
    "Starship.Starship",
    "ajeetdsouza.zoxide",
    "fzf",
    "Schniz.fnm"
)

foreach ($pkg in $wingetPackages) {
    Write-Host "Installing (winget): $pkg"
    winget install --id $pkg --silent --accept-package-agreements --accept-source-agreements
}

# -----------------------------
# Install Chocolatey packages
# -----------------------------
$chocoPackages = @(
    "starship",
    "7zip",
    "awscli",
    "firefox",
    "firacode",
    "git",
    "googlechrome",
    "jq",
    "powershell-core",
    "vlc",
    "vscode",
    "windirstat",
    "yq",
    "pyenv-win",
    "telegram"
)

foreach ($pkg in $chocoPackages) {
    Write-Host "Installing (choco): $pkg"
    choco install $pkg -y --no-progress
}

Write-Host "Windows setup complete."
