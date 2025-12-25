# Device Posture Baseline — YubiKey‑Security

This document defines the sanitized, high‑level device posture requirements used to evaluate endpoint trust before granting access to VDI, ServiceNow, or IL4/IL5‑aligned environments.

These posture attributes support Zero Trust enforcement and ensure only compliant devices can authenticate using YubiKey MFA.

---

## 🔐 Core Posture Requirements

### 1. Encryption
- Full‑disk encryption enabled  
- Encryption keys protected by platform‑approved mechanisms  
- No unencrypted secondary volumes used for authentication workflows  

### 2. OS Health
- Operating system fully patched  
- No critical or high‑severity vulnerabilities present  
- Kernel and system integrity checks passing  

### 3. Endpoint Protection
- Real‑time protection enabled  
- Anti‑malware signatures up to date  
- Tamper protection active  

### 4. Device Identity
- Hardware UUID registered  
- Device identity mapped to user identity  
- No mismatched or duplicate device records  

### 5. Secure Boot & Firmware
- Secure Boot enabled  
- Firmware integrity validated  
- No unsupported BIOS/UEFI configurations  

---

## 🧭 Posture Evaluation Flow

1. Collect device posture attributes  
2. Validate encryption, OS health, and protection status  
3. Confirm device identity registration  
4. Calculate trust score  
5. Enforce conditional access policies  

---

## 📘 Scope

This baseline is fully sanitized and does not include internal compliance thresholds, vendor‑specific tooling, or environment‑specific enforcement logic.
