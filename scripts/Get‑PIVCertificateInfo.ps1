<# 
.SYNOPSIS
    Retrieves metadata for PIV certificates stored on a YubiKey.

.DESCRIPTION
    Displays subject, issuer, expiration, thumbprint, and key usage.
#>

Write-Host "🔍 Retrieving PIV certificate information..." -ForegroundColor Cyan

$certs = Get-ChildItem Cert:\CurrentUser\My | Where-Object { $_.Issuer -match "PIV" -or $_.Subject -match "PIV" }

if (-not $certs) {
    Write-Host "❌ No PIV certificates found." -ForegroundColor Red
    exit 1
}

foreach ($cert in $certs) {
    Write-Host "----------------------------------------"
    Write-Host "Subject:      $($cert.Subject)"
    Write-Host "Issuer:       $($cert.Issuer)"
    Write-Host "Expires:      $($cert.NotAfter)"
    Write-Host "Thumbprint:   $($cert.Thumbprint)"
    Write-Host "Key Usage:    $($cert.Extensions | Where-Object { $_.Oid.FriendlyName -eq 'Key Usage' })"
}
