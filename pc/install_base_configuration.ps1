# Set-ExecutionPolicy RemoteSigned

# Install chocolatey
# iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
# OR 
# iwr https://chocolatey.org/install.ps1 | iex
#
# Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://boxstarter.org/bootstrapper.ps1')); Get-Boxstarter -Force
# Install-BoxstarterPackage C:\src\github.com\mkoelle\template-computer-setup-master\pc\install_base_configuration.ps1

# This has to be updated with the script location for supporting files to be found (bloatware list)
# $scriptLocation="C:\src\github.com\mkoelle\template-computer-setup-master\pc"

# Windows preferences (commands seem to be removed)
# Set-WindosExplorerOptions -EnableShowFileExtensions -EnableShowFullPathInTitleBar
# Set-TaskbarOptions -Size Small -Lock -Dock Bottom


winget install --id Starship.Starship
winget install ajeetdsouza.zoxide
winget install fzf
winget install Schniz.fnm

#Install basic needs
choco install starship
choco install 7zip
choco install awscli
choco install firefox
choco install firacode
choco install git
choco install googlechrome
choco install jq
choco install powershell-core
choco install vlc
choco install vscode --params "/NoDesktopIcon"
choco install windirstat
choco install yq
choco install pyenv-win
choco install telegram

# Pin items to taskbar  (commands seem to be removed)
# Install-ChocolateyPinnedTaskBarItem -TargetFilePath $env:SystemRoot\system32\WindowsPowerShell\v1.0\powershell.exe
# taskbar pinning unavialable for now https://github.com/chocolatey/choco/issues/627

# Run Updates
# Install-WindowsUpdate -getUpdatesFromMS -acceptEula -SuppressReboots
# if (Test-PendingReboot) { Invoke-Reboot }