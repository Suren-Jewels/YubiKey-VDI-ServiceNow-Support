# Access Policy Reference — YubiKey‑Security

This document provides a sanitized, high‑level overview of the access policies used to enforce Zero Trust authentication across VDI, ServiceNow, and IL4/IL5‑aligned environments.

It defines the core policy categories and the conditions required for access.

---

## 🛡️ Zero Trust Access Requirements

### 1. Verified Identity
- Valid PIV certificate  
- Identity provider assertion (SNCA/Okta)  
- No expired or revoked credentials  

### 2. Compliant Device
- Encryption enabled  
- OS health validated  
- Endpoint protection active  
- Device identity registered  

### 3. Policy Alignment
- RBAC group membership validated  
- Conditional access rules satisfied  
- No conflicting or deprecated roles  

---

## 🚪 Access Gateways

### VDI Gateway
- Enforces MFA + posture  
- Validates session brokering  
- Applies segmentation rules  

### ServiceNow Gateway
- Validates certificate authentication  
- Confirms RBAC mapping  
- Enforces workflow‑specific access  

### IL4/IL5 Enclave Gateways
- Enforce enclave‑specific certificate requirements  
- Validate posture at higher sensitivity  
- Apply segmentation and isolation policies  

---

## 🧭 Access Decision Flow

1. Identity validated  
2. Device posture evaluated  
3. RBAC + policy mapping checked  
4. Access gateway enforces segmentation  
5. Access granted or denied  

---

## 📘 Scope

This reference is fully sanitized and does not include internal policy definitions, enforcement engines, or environment‑specific segmentation logic.
