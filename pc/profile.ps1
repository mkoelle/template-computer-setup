# code $PROFILE.CurrentUserAllHosts

Invoke-Expression (&starship init powershell)

Invoke-Expression (& { (zoxide init --cmd j powershell | Out-String) })

fnm env --use-on-cd --shell powershell | Out-String | Invoke-Expression
Set-Alias -Name nvm -Value fnm

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
