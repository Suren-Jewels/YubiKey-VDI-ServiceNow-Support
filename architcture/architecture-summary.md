# YubiKey Identity & Zero Trust Architecture — Summary

## 🎯 Purpose
This summary outlines how YubiKey‑based identity assurance integrates with Zero Trust access controls across VDI, ServiceNow, and federal IL4/IL5 enclaves. It provides a high‑level view of the identity, authentication, and access‑control architecture without exposing implementation‑specific details.

## 🪪 Identity Assurance & Issuance Model
All users were adjudicated personnel, and issuance of a YubiKey required in‑person identity proofing with **two valid government‑issued photo IDs**. Based on role and enclave requirements, users received one of three key types:

- 🔹 **GCC YubiKey** — General user access  
- 🔸 **NSC YubiKey** — Elevated enclave access  
- 🔻 **ADM YubiKey** — Privileged administrator access  

This ensured hardware‑rooted identity separation across user groups and enclaves.

## 🔐 Authentication Architecture
Authentication paths varied by user group and identity domain, including:

- 🛂 **SNCA v2/v3/legacy routing** for federal enclave access  
- 🧩 **Okta‑backed MFA flows** for enterprise identity domains  
- 🪪 **PIV‑based certificate authentication** for VDI and ServiceNow  
- 🛡️ **Continuous identity validation** enforced through posture checks and gateway controls  

The YubiKey functioned as the hardware root of trust for all certificate‑based and MFA workflows.

## 🧭 Zero Trust Enforcement
Access to VDI, ServiceNow, and IL4/IL5 enclaves required:

- ✔️ Verified user identity  
- ✔️ Valid PIV certificate  
- ✔️ Compliant endpoint posture  
- ✔️ Successful gateway validation  

Only users with the correct YubiKey type, valid certificates, and compliant devices could access protected systems.

## 📘 Scope
This summary describes the identity and authentication architecture only. Detailed configuration, routing logic, certificate profiles, and enclave‑specific controls are intentionally excluded.
