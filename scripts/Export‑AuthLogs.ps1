<# 
.SYNOPSIS
    Exports authentication-related events for analysis.

.DESCRIPTION
    Pulls smart card, MFA, and login events from Windows Event Logs.
#>

Write-Host "📤 Exporting authentication logs..." -ForegroundColor Cyan

$path = "$env:USERPROFILE\Desktop\auth_logs.evtx"

wevtutil epl Security $path /q:"*[System[(EventID=4624 or EventID=4625 or EventID=4768 or EventID=4769 or EventID=4770)]]"

Write-Host "✔️ Logs exported to: $path" -ForegroundColor Green
