# Identity Routing Overview — YubiKey‑Security

This document describes the high‑level, sanitized identity routing model used for YubiKey‑based authentication across VDI, ServiceNow, and IL4/IL5‑aligned environments.

It outlines how certificates, MFA providers, and identity domains interact during authentication.

---

## 🔑 Identity Providers

### 1. SNCA (Secure Network Certificate Authority)
- Primary certificate‑based authentication provider  
- Supports v2, v3, and legacy routing paths  
- Validates PIV certificates stored on YubiKeys  

### 2. Okta (Scoped MFA)
- Used for workflows requiring additional MFA  
- Provides step‑up authentication for sensitive operations  
- Integrated with certificate‑based identity  

---

## 🔐 Certificate Routing

### PIV Certificate Profiles
- GCC — General computing access  
- NSC — Secure operations  
- ADM — Administrative access  

### Routing Logic (Sanitized)
1. User inserts YubiKey  
2. Certificate is presented to identity provider  
3. SNCA determines routing path (v2/v3/Legacy)  
4. Okta invoked for scoped MFA (if required)  
5. Identity assertion passed to access gateway  

---

## 🧭 Identity Flow Summary

1. Token insertion  
2. Certificate validation  
3. MFA (if scoped)  
4. Identity assertion  
5. Access gateway evaluation  

---

## 📘 Scope

This document provides a sanitized overview only.  
No internal IdP configurations, certificate templates, or routing rules are included.
