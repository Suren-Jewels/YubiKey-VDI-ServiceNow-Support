#!/bin/bash
# Checks for YubiKey presence on Linux systems.

echo "🔍 Checking for YubiKey..."

if lsusb | grep -qi "Yubico"; then
    echo "✔️ YubiKey detected."
else
    echo "❌ No YubiKey detected."
    exit 1
fi

echo "🔍 Checking smartcard interface..."
if pcsc_scan -n 2>/dev/null | grep -qi "Yubico"; then
    echo "✔️ Smartcard interface active."
else
    echo "⚠️ Smartcard interface not responding."
fi
