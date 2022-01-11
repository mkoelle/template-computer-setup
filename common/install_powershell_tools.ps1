Install-Module posh-git -Scope CurrentUser -Force
Install-Module InvokeBuild -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Repository PSGallery -Force
Install-Module Terminal-Icons -Scope CurrentUser -Repository PSGallery -Force
iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/mattparkes/PoShFuck/master/Install-TheFucker.ps1'))

function addLineToProfile {
  param([String]$profileLine )
    if ($null -eq $PROFILE.CurrentUserAllHosts -or (-not(Test-Path $PROFILE.CurrentUserAllHosts))) {
        Write-Output "$profileLine" | Out-File $PROFILE.CurrentUserAllHosts -Force -encoding utf8
        Write-Output "Created $PROFILE.CurrentUserAllHosts"
    } elseif ( -not(Select-String -Path $PROFILE.CurrentUserAllHosts -Pattern "$profileLine")) {
        Write-Output "`n$profileLine" | Out-File $PROFILE.CurrentUserAllHosts -Append -encoding utf8
        Write-Output "Added $profileLine to profile"
    }
}

addLineToProfile("Import-Module posh-git")
addLineToProfile("Import-Module oh-my-posh")
addLineToProfile("Set-PoshPrompt -Theme powerlevel10k_rainbow")
addLineToProfile("Import-Module Terminal-Icons -Scope Local -Force")
addLineToProfile("Set-Alias -Name fy -Value fuck!")

# $Personal_cert = $(Join-Path $home .ssh/personal_github)
# ssh-keygen -t ed25519 -C "mkoelle@gmail.com" -f $Personal_cert -q -N """"
# install https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hasklig.zip