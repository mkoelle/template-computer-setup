iex "$(thefuck --alias)"
Import-Module posh-git
$env:PATH += ';/usr/local/bin/aws2'
Set-Alias -Name aws -Value aws2
Invoke-Expression (&starship init powershell)
