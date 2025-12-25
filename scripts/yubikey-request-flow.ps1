<# 
yubikey-request-flow.ps1
Sanitized simulation of a YubiKey provisioning workflow using a request queue.

This script:
- Reads a list of users from a queue file
- Validates basic identity attributes
- Simulates a ServiceNow catalog request
- Logs each action for auditability

No confidential API endpoints, tokens, or internal logic included.
#>

$QueuePath = ".\request_queue.txt"
$LogPath   = ".\yubikey_provisioning.log"

if (-not (Test-Path $QueuePath)) {
    Write-Host "❌ Request queue not found: $QueuePath" -ForegroundColor Red
    exit 1
}

$Users = Get-Content $QueuePath

foreach ($User in $Users) {

    if ([string]::IsNullOrWhiteSpace($User)) { continue }

    Write-Host "🔍 Processing YubiKey request for: $User" -ForegroundColor Cyan

    # Step 1 — Basic identity validation (sanitized)
    if ($User -notmatch "^[a-zA-Z0-9._-]+$") {
        Write-Host "⚠️ Invalid username format: $User" -ForegroundColor Yellow
        Add-Content -Path $LogPath -Value "$(Get-Date) | INVALID | $User | Invalid username format"
        continue
    }

    # Step 2 — Simulate ServiceNow catalog submission
    Write-Host "📨 Submitting YubiKey provisioning request..." -ForegroundColor Green
    Start-Sleep -Milliseconds 500

    # Step 3 — Simulate approval workflow
    Write-Host "✔️ Request approved for $User" -ForegroundColor Green
    Start-Sleep -Milliseconds 300

    # Step 4 — Simulate YubiKey issuance
    Write-Host "🔑 Issuing YubiKey to $User..." -ForegroundColor Cyan
    Start-Sleep -Milliseconds 400

    # Step 5 — Log the action
    Add-Content -Path $LogPath -Value "$(Get-Date) | SUCCESS | $User | YubiKey provisioned"
}

Write-Host "📘 Processing complete. Log saved to: $LogPath" -ForegroundColor Green
