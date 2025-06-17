# Verifies the presence of Windows ISO on USB drive
Get-ChildItem -Path D:\ -Filter *.iso | ForEach-Object {
    Write-Host "ISO found: $($_.Name)"
}
