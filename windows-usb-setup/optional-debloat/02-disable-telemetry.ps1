# Disable core telemetry services
Set-Service -Name 'DiagTrack' -StartupType Disabled
Stop-Service -Name 'DiagTrack'
Set-Service -Name 'dmwappushservice' -StartupType Disabled
Stop-Service -Name 'dmwappushservice'
