# 🔐 YubiKey, VDI & ServiceNow Secure Access Support
**Identity Engineering • MFA • Zero Trust • Enterprise VDI • Access Reliability**

## 📌 Overview

This repository documents engineering work supporting secure authentication, YubiKey MFA, VDI access, and ServiceNow identity workflows across enterprise and federal-aligned environments.

The focus was on improving authentication reliability, troubleshooting MFA failures, and ensuring seamless access to mission-critical systems.

This project highlights hands-on experience with identity systems, secure access engineering, and Zero Trust authentication models.

---

## 🧠 System Summary

This system provides secure, hardware-backed authentication across VDI, Windows, and ServiceNow environments using YubiKey MFA.

It integrates identity providers, Zero Trust enforcement layers, and access workflows to ensure reliable authentication for thousands of users.

The system supports token validation, session authorization, compliance checks, and troubleshooting workflows across multiple access layers.

---

## ⭐ Why This Work Matters

Strong authentication is essential for protecting enterprise and federal-aligned systems:

- **YubiKey MFA** significantly reduces credential theft, phishing, and unauthorized access
- Ensures reliable authentication across VDI and ServiceNow
- Strengthens Zero Trust posture
- Reduces access failures and improves user experience for mission-critical workflows

---

## 🧩 Challenges Solved

- Resolved YubiKey token failures and driver issues across Windows and VDI
- Diagnosed SSO and identity provider errors impacting ServiceNow access
- Identified RBAC misconfigurations causing session denials
- Improved Zero Trust policy alignment across multiple access layers
- Reduced MFA-related incidents through structured troubleshooting workflows
- Enhanced user onboarding and identity recovery processes

---

## 🎯 Responsibilities & Scope

- Supported YubiKey MFA across VDI, ServiceNow, and cloud access layers
- Troubleshot authentication failures across Windows, VDI, and ServiceNow endpoints
- Ensured alignment with Zero Trust and MFA enforcement policies
- Assisted users with secure login workflows and identity recovery
- Collaborated with IAM, security, and platform teams to maintain access reliability
- Documented troubleshooting workflows and escalation paths

---

### Technology Stack

| Category | Technologies | Purpose |
|---------|--------------|---------|
| 🔑 Authentication | YubiKey (FIDO2, PIV, OTP) | Hardware-based MFA |
| 💻 Platforms | Windows VDI, ServiceNow | Virtual desktops & identity workflows |
| 🛡️ Identity & Access | MFA systems, SSO, RBAC, IdP | Authentication & authorization |
| ⚙️ Automation | PowerShell, SQL | Diagnostics & workflow automation |
| 📊 Monitoring | Secure logging, audit tools | Compliance & access analytics |
| 🏗️ Architecture | Zero Trust enforcement | Policy & identity posture |

---

## 🧱 Architecture Overview
```
+-----------------------------------------------------------+
|                 Identity & Access Layer                   |
|     YubiKey • MFA • SSO • RBAC • Zero Trust Policies      |
+---------------------------+-------------------------------+
                            |
                            v
              +---------------------------+
              |     VDI Access Layer      |
              | Windows • Virtual Desktops|
              +-------------+-------------+
                            |
                            v
              +---------------------------+
              |   ServiceNow Workflows    |
              |  Access • Tickets • Logs  |
              +-------------+-------------+
                            |
                            v
              +---------------------------+
              |  Logging & Monitoring     |
              |  Audit • Compliance       |
              +---------------------------+
```

---

### 📷 Visual Architecture Diagram (PNG)

![YubiKey + VDI + ServiceNow Secure Access Architecture](https://github.com/Suren-Jewels/YubiKey-VDI-ServiceNow-Support/blob/main/Yubikey_VDI_Secure_Access_Architecture.png?raw=true)

---

## 🔐 Authentication Workflow

| Step | Action | Technology |
|------|--------|------------|
| 1 | User inserts YubiKey and initiates MFA challenge | YubiKey |
| 2 | Identity provider validates token | MFA, SSO |
| 3 | Access request flows through VDI or ServiceNow | VDI, ServiceNow |
| 4 | RBAC and Zero Trust policies are evaluated | Zero Trust |
| 5 | Session granted or denied based on compliance | RBAC, policy engine |
| 6 | Logging captures authentication events | Audit systems |
| 7 | Troubleshooting workflows triggered for failures | PowerShell, SQL |

---

## 🔧 Common Troubleshooting Scenarios

| Issue Type | Symptoms | Resolution |
|------------|----------|------------|
| 🔑 YubiKey Failures | Token not recognized, timeout | Check USB, drivers, token registration |
| 💻 VDI Access Issues | Session denied, cannot connect | Validate RBAC, Zero Trust, network |
| 📋 ServiceNow Auth | SSO failures, IdP errors | Check IdP logs, SSO config, attributes |
| 🛡️ Policy Violations | Access denied due to posture | Review Zero Trust, device posture, roles |

---

## 📁 Repository Structure
```
YubiKey-VDI-ServiceNow-Support/
│
├── docs/
│   ├── architecture_overview.md
│   └── confidentiality_note.md
│
├── scripts/
│   ├── vdi_access_audit.sql
│   └── yubikey_request_flow.ps1
│
├── Yubikey_VDI_Secure_Access_Architecture.png
└── README.md
```

---

## 📂 Key Files

| File | Description |
|------|-------------|
| [`architecture_overview.md`](https://github.com/Suren-Jewels/YubiKey-VDI-ServiceNow-Support/blob/main/docs/architecture_overview.md) | High-level identity & access architecture |
| [`confidentiality_note.md`](https://github.com/Suren-Jewels/YubiKey-VDI-ServiceNow-Support/blob/main/docs/confidentiality_note.md) | Sanitized NDA-aligned notice |
| [`vdi_access_audit.sql`](https://github.com/Suren-Jewels/YubiKey-VDI-ServiceNow-Support/blob/main/scripts/vdi_access_audit.sql) | VDI access validation and audit queries |
| [`yubikey_request_flow.ps1`](https://github.com/Suren-Jewels/YubiKey-VDI-ServiceNow-Support/blob/main/scripts/yubikey_request_flow.ps1) | YubiKey request and troubleshooting workflow |
| `Yubikey_VDI_Secure_Access_Architecture.png` | Architecture diagram |

---

## 🔒 Confidentiality Notice

All content is fully sanitized.

No internal identity configurations, proprietary workflows, or sensitive operational details are included.

Only high-level engineering concepts and troubleshooting patterns are described.

---

## 📫 Contact

**Suren Jewels**  
Senior Cloud Engineer | Infrastructure & Security Specialist

*For inquiries about this project or collaboration opportunities, please reach out via LinkedIn.*
