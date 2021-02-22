Install-Module posh-git -Scope CurrentUser -Force
Install-Module InvokeBuild -Scope CurrentUser -Force
iex ((new-object net.webclient).DownloadString('https://raw.githubusercontent.com/mattparkes/PoShFuck/master/Install-TheFucker.ps1'))

function addLineToProfile {
  param([String]$profileLine )
    if ($null -eq $profile -or (-not(Test-Path $profile))) {
        Write-Output "$profileLine" | Out-File $profile -Force -encoding utf8
        Write-Output "Created $profile"
    } elseif ( -not(Select-String -Path $profile -Pattern "$profileLine")) {
        Write-Output "`n$profileLine" | Out-File $profile -Append -encoding utf8
        Write-Output "Added $profileLine to profile"
    }
}

addLineToProfile("Import-Module posh-git")
addLineToProfile("Set-Alias -Name fy -Value fuck!")
