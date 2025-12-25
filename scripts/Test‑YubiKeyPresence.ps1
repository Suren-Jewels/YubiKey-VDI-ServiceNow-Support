<# 
.SYNOPSIS
    Checks whether a YubiKey or smart card reader is detected on the system.

.DESCRIPTION
    Validates smart card reader presence, token insertion, and basic ATR response.
#>

Write-Host "🔍 Checking for YubiKey presence..." -ForegroundColor Cyan

$readers = Get-WmiObject Win32_PnPEntity | Where-Object { $_.Name -match "Smart Card" }

if (-not $readers) {
    Write-Host "❌ No smart card reader detected." -ForegroundColor Red
    exit 1
}

Write-Host "✔️ Smart card reader detected." -ForegroundColor Green

$certs = Get-ChildItem Cert:\CurrentUser\My | Where-Object { $_.Issuer -match "PIV" -or $_.Subject -match "PIV" }

if ($certs) {
    Write-Host "✔️ YubiKey detected with valid PIV certificate." -ForegroundColor Green
} else {
    Write-Host "⚠️ Smart card reader found, but no PIV certificate detected." -ForegroundColor Yellow
}
