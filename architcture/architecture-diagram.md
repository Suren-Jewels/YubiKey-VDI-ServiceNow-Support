# YubiKey‑Security Zero Trust Architecture — High‑Level Diagram

This document provides a conceptual view of how identity, authentication, posture, and access controls interact across VDI, ServiceNow, and IL4/IL5 federal environments. The diagram illustrates the flow of trust from the user and device through authentication gateways and into protected enclaves.

---

## 🖼️ High‑Level Architecture Diagram (Conceptual)

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
- Okta MFA for specific domains  
- Certificate‑based authentication  

### **4. Posture Validation**
- Encryption status  
- OS health and protection  
- Device identity merged with user identity  

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
