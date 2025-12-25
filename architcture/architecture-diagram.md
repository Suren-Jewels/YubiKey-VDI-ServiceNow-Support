# YubiKey‑Security Zero Trust Architecture — High‑Level Diagram

This document provides a conceptual overview of how identity, authentication, posture, and access controls interact across VDI, ServiceNow, and IL4/IL5 federal environments. It illustrates the flow of trust from adjudicated users and compliant devices through authentication gateways and posture validation into protected enclaves.

---

## 🖼️ High‑Level Architecture Diagram

![YubiKey‑Security Architecture Diagram](https://raw.githubusercontent.com/Suren-Jewels/YubiKey-Security/main/architcture/Yubikey-Security_Zero-trust.png)

---

![YubiKey + VDI + ServiceNow Secure Access Architecture](https://github.com/Suren-Jewels/YubiKey-VDI-ServiceNow-Support/blob/main/Yubikey_VDI_Secure_Access_Architecture.png?raw=true)

---

## 🖼️ High‑Level Architecture Diagram (ASCII)


---

## 🖼️ High‑Level Architecture Diagram (ASCII)

```
        ┌──────────────────────────┐
        │      User + Device       │
        │  (Adjudicated Personnel) │
        └─────────────┬────────────┘
                      │
                      ▼
        ┌──────────────────────────┐
        │     YubiKey Hardware     │
        │  (GCC / NSC / ADM Keys)  │
        └─────────────┬────────────┘
                      │  PIV Cert
                      ▼
        ┌──────────────────────────┐
        │   Identity Providers     │
        │  SNCA v2/v3/Legacy, MFA  │
        │        Okta (Scoped)     │
        └─────────────┬────────────┘
                      │  AuthN
                      ▼
        ┌──────────────────────────┐
        │   Posture Validation     │
        │  Encryption • OS Health  │
        │  Device Identity Checks  │
        └─────────────┬────────────┘
                      │  Trust Score
                      ▼
        ┌──────────────────────────┐
        │     Access Gateways      │
        │  VDI • ServiceNow • IL4  │
        │       IL5 Enclaves       │
        └─────────────┬────────────┘
                      │  Conditional Access
                      ▼
        ┌──────────────────────────┐
        │   Authorized Resources   │
        │  Virtual Desktops (VDI)  │
        │  ServiceNow Workflows    │
        │  Federal IL4/IL5 Apps    │
        └──────────────────────────┘
```

---

## 🔍 Flow Explanation

### **1. User & Device**
- Adjudicated personnel  
- Managed or compliant endpoints  
- Device identity contributes to trust  

### **2. YubiKey Hardware Token**
- GCC / NSC / ADM keys  
- Hardware‑rooted PIV certificate  
- Identity separation by role  

### **3. Identity Providers**
- SNCA v2/v3/legacy routing  
- Okta MFA for scoped domains  
- Certificate‑based authentication  

### **4. Posture Validation**
- Encryption status  
- OS health and protection  
- Device identity merged with user identity  
- Continuous posture evaluation  

### **5. Access Gateways**
- VDI brokers  
- ServiceNow access routing  
- IL4/IL5 enclave segmentation  
- Zero Trust conditional access  

### **6. Authorized Resources**
- Virtual desktops  
- ServiceNow workflows  
- Federal enclave applications  

---

## 📘 Scope
This diagram provides a conceptual overview only. It excludes implementation details, routing logic, certificate profiles, and enclave‑specific configurations.
