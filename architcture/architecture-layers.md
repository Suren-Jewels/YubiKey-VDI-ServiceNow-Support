# YubiKey Zero Trust Architecture — Layered Breakdown

This document outlines the layered architecture used to secure identity, authentication, posture, and access across VDI, ServiceNow, and federal environments.

---

## 🔐 Identity Layer
- Adjudicated personnel  
- Two‑photo‑ID identity verification  
- GCC / NSC / ADM YubiKey assignment  
- PIV certificate lifecycle (issuance → renewal → revocation)

---

## 🧭 Authentication Layer
- PIV‑based MFA  
- Certificate mapping for GCC/NSC/ADM keys  
- SNCA v2/v3/legacy routing  
- Okta MFA for specific user groups  
- Certificate validation at VDI and ServiceNow gateways  

---

## 🛡️ Posture Layer
- Endpoint compliance checks  
- Encryption, OS health, protection status  
- Device identity merged with user identity  

---

## 🚪 Access Layer
- IL4/IL5 enclave segmentation  
- VDI gateway enforcement  
- ServiceNow access routing  
- Continuous Zero Trust evaluation  

---

## 📊 Audit Layer
- Certificate events  
- MFA logs  
- Routing logs  
- Access decisions and posture failures  
