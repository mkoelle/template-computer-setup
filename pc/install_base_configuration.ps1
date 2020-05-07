# Set-ExecutionPolicy RemoteSigned

# Install chocolatey
# iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
# OR 
# iwr https://chocolatey.org/install.ps1 | iex

#windows preferences
Set-WindowsExplorerOptions -EnableShowFileExtensions -EnableShowFullPathInTitleBar
Set-TaskbarOptions -Size Small -Lock -Dock Bottom

#Install basic needs
choco install 7zip
choco install boxstarter
choco install chocolatey
choco install firefox
choco install git
choco install googlechrome
choco install jq
choco install nodejs
choco install vscode --params "/NoDesktopIcon"
choco install windirstat
choco install yq

#Remove the default apps
Get-AppxPackage *3dbuilder* | Remove-AppxPackage
Get-AppxPackage *bingfinance* | Remove-AppxPackage
Get-AppxPackage *bingnews* | Remove-AppxPackage
Get-AppxPackage *bingsports* | Remove-AppxPackage
Get-AppxPackage *bingweather* | Remove-AppxPackage
Get-AppxPackage *CandyCrush* | Remove-AppxPackage
Get-AppxPackage *CommsPhone* | Remove-AppxPackage
Get-AppxPackage *getstarted* | Remove-AppxPackage
Get-AppxPackage *Messaging* | Remove-AppxPackage
Get-AppxPackage *officehub* | Remove-AppxPackage
Get-AppxPackage *onenote* | Remove-AppxPackage
Get-AppxPackage *people* | Remove-AppxPackage
Get-AppxPackage *solitairecollection* | Remove-AppxPackage
Get-AppxPackage *sway* | Remove-AppxPackage
Get-AppxPackage *twitter* | Remove-AppxPackage
Get-AppxPackage *windowsalarms* | Remove-AppxPackage
Get-AppxPackage *WindowsCamera* | Remove-AppxPackage
Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
Get-AppxPackage *windowsmaps* | Remove-AppxPackage
Get-AppxPackage *windowsphone* | Remove-AppxPackage
Get-AppxPackage *WindowsSoundRecorder* | Remove-AppxPackage
Get-AppxPackage *xboxapp* | Remove-AppxPackage
Get-AppxPackage *zunemusic* | Remove-AppxPackage
Get-AppxPackage *zunevideo* | Remove-AppxPackage

# Pin items to taskbar
Install-ChocolateyPinnedTaskBarItem $env:SystemRoot\system32\WindowsPowerShell\v1.0\powershell.exe

# Run Updates
Install-WindowsUpdate -getUpdatesFromMS -acceptEula -SuppressReboots
if (Test-PendingReboot) { Invoke-Reboot }
