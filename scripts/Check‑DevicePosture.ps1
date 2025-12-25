<# 
.SYNOPSIS
    Validates device posture for Zero Trust access.

.DESCRIPTION
    Checks encryption, OS patch level, endpoint protection, and device identity.
#>

Write-Host "🔍 Running device posture checks..." -ForegroundColor Cyan

# Encryption
$bitlocker = Get-BitLockerVolume -MountPoint "C:"
if ($bitlocker.ProtectionStatus -eq "On") {
    Write-Host "✔️ Disk encryption enabled." -ForegroundColor Green
} else {
    Write-Host "❌ Disk encryption disabled." -ForegroundColor Red
}

# OS Patch Level
$updates = (Get-WmiObject Win32_QuickFixEngineering).Count
Write-Host "✔️ Installed updates: $updates"

# Endpoint Protection
$av = Get-MpComputerStatus
if ($av.AntivirusEnabled -and $av.RealTimeProtectionEnabled) {
    Write-Host "✔️ Endpoint protection active." -ForegroundColor Green
} else {
    Write-Host "❌ Endpoint protection inactive." -ForegroundColor Red
}

# Device Identity
$deviceId = (Get-WmiObject Win32_ComputerSystemProduct).UUID
Write-Host "✔️ Device Identity: $deviceId"
