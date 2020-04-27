
[CmdletBinding()]
param( 
  [Parameter(Mandatory=$false)]
  [Switch]$WhatIf
)
$extension_list="extension_list.txt"

foreach($extension in Get-Content $extension_list) {
  Write-Output "Installing https://marketplace.visualstudio.com/items?itemName=$extension"
  if (! $WhatIf) {
    code --install-extension $extension
  }
}