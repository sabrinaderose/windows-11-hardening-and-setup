# Remove preinstalled UWP apps
Get-AppxPackage -AllUsers | Where-Object { $_.Name -notmatch 'Microsoft.WindowsStore|Microsoft.WindowsCalculator' } | Remove-AppxPackage
