# YubiKey Identity & Zero Trust Architecture — Summary

This document provides a high‑level overview of how YubiKey‑based identity assurance integrates with Zero Trust access controls across VDI, ServiceNow, and federal IL4/IL5 environments.

All users were adjudicated personnel, and issuance of a YubiKey required in‑person identity proofing with **two valid government‑issued photo IDs**. Based on role and enclave requirements, users received one of three key types:

- **GCC YubiKey** — General user access  
- **NSC YubiKey** — Elevated enclave access  
- **ADM YubiKey** — Privileged administrator access  

Authentication paths varied by user group, including **SNCA v2/v3/legacy routing** and **Okta‑backed MFA flows** for specific identity domains.

Once issued, the YubiKey served as the hardware root of trust for PIV‑based MFA, certificate‑based authentication, and continuous identity validation. Combined with posture checks and VDI gateway controls, only verified users on compliant endpoints could access ServiceNow, VDI, or federal enclaves.
