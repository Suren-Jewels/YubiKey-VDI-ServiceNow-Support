# Data Dictionary — YubiKey‑Security

This document defines key terms, acronyms, and concepts used throughout the YubiKey‑Security repository. It ensures consistent language across architecture, deployment, and operational documentation.

---

## 🔐 Identity & Authentication

- **👤 Adjudicated Personnel**  
  Cleared users authorized to access IL4/IL5 environments.

- **🔑 PIV (Personal Identity Verification)**  
  Hardware‑rooted certificate stored on a YubiKey for identity authentication.

- **🟦 GCC / NSC / ADM Keys**  
  Role‑specific YubiKey profiles used for general computing, secure operations, and administrative access.

- **🏛️ SNCA (Secure Network Certificate Authority)**  
  Identity provider supporting v2, v3, and legacy certificate routing.

- **🛡️ Okta (Scoped)**  
  MFA provider used for specific identity domains requiring additional verification.

- **✔️ AuthN (Authentication)**  
  Verification of user identity using certificates and MFA.

---

## 💻 Device & Posture

- **🧭 Posture Validation**  
  Evaluation of device trustworthiness before granting access.

- **🔒 Encryption Status**  
  Verification that the device meets required encryption standards.

- **🩺 OS Health**  
  Operating system integrity and protection checks.

- **💼 Device Identity**  
  Hardware and configuration attributes used to validate endpoint trust.

- **📊 Trust Score**  
  Combined evaluation of user identity and device posture.

---

## 🚪 Access & Routing

- **⚙️ Conditional Access**  
  Policy‑based enforcement determining whether a user/device may proceed.

- **🌐 Access Gateways**  
  Systems that broker entry into VDI, ServiceNow, and IL4/IL5 enclaves.

- **🖥️ VDI (Virtual Desktop Infrastructure)**  
  Virtualized desktop environment accessed through secure gateways.

- **📄 ServiceNow Routing**  
  Controlled access to workflows and operational tools.

- **🏢 IL4 / IL5 Enclaves**  
  Segmented federal environments with increasing security requirements.

---

## 🛠️ Operational Terms

- **♻️ Certificate Renewal**  
  Process of updating expiring PIV certificates on YubiKeys.

- **🔀 Identity Routing**  
  Determining which identity provider handles a given authentication request.

- **🚫 Posture Non‑Compliance**  
  Condition where a device fails trust checks and is denied access.

- **❌ Access Denial**  
  Enforcement action when identity, posture, or routing fails.

---

## 📘 Scope
This dictionary defines terminology only. It does not describe implementation details, certificate profiles, or enclave‑specific configurations.
