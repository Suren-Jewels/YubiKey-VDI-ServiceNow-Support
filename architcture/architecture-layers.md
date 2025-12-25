# YubiKey‑Security Zero Trust Architecture — Layered Breakdown

This document outlines the layered architecture used to secure identity, authentication, posture, and access across VDI, ServiceNow, and federal IL4/IL5 environments. It reflects the YubiKey‑Security repository’s focus on hardware‑rooted identity assurance and Zero Trust enforcement.

---

## 🔐 Identity Layer
- Adjudicated personnel  
- Two‑photo‑ID identity verification  
- GCC / NSC / ADM YubiKey assignment  
- Hardware‑rooted identity separation across user groups  
- PIV certificate lifecycle (issuance → renewal → revocation)  

---

## 🧭 Authentication Layer
- PIV‑based MFA  
- Certificate mapping for GCC/NSC/ADM keys  
- SNCA v2 / SNCA v3 / legacy routing  
- Okta MFA for specific identity domains  
- Certificate validation at VDI and ServiceNow gateways  
- Hardware token as the root of trust  

---

## 🛡️ Posture Layer
- Endpoint compliance checks  
- Encryption, OS health, protection status  
- Device identity merged with user identity  
- Continuous posture validation before and during sessions  

---

## 🚪 Access Layer
- IL4/IL5 enclave segmentation  
- VDI gateway enforcement  
- ServiceNow access routing  
- Zero Trust conditional access decisions  
- Continuous evaluation of user + device trust  

---

## 📊 Audit Layer
- Certificate events  
- MFA logs  
- Routing logs  
- Access decisions and posture failures  
- Session activity and compliance reporting  

---

## 🧩 Architecture Layers (Consolidated View)

| Layer | Description |
|-------|-------------|
| **1. Identity & Access Layer** | Establishes user identity using YubiKey hardware tokens, PIV certificates, and MFA policies. |
| **2. Endpoint Security Layer** | Validates device posture, enforces secure USB handling, and applies OS‑level hardening for VDI endpoints. |
| **3. Virtual Desktop Infrastructure (VDI) Layer** | Hosts virtual desktops, manages session brokering, and enforces secure access to enterprise and federal applications. |
| **4. Connection Broker Layer** | Routes authenticated users to the correct VDI pools, applies access rules, and manages session lifecycle. |
| **5. Network Security Layer** | Applies segmentation, firewall rules, and encrypted transport between clients, brokers, and VDI hosts. |
| **6. Logging & Monitoring Layer** | Captures authentication events, token usage, session activity, and security alerts for audit and compliance. |
| **7. Compliance & Policy Enforcement Layer** | Ensures adherence to MFA requirements, Zero Trust principles, and IL4/IL5 security standards. |

---

## 📘 Scope
This layered breakdown describes the high‑level architecture only. Detailed routing logic, certificate profiles, enclave‑specific controls, and implementation details are intentionally excluded.
