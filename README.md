# 🔐 YubiKey, VDI & ServiceNow Secure Access Engineering  
**Hardware‑rooted authentication • Zero Trust posture • Enterprise & federal‑aligned access reliability**

---

## ✨ Overview
This project delivers secure, hardware‑backed authentication across VDI, Windows, and ServiceNow environments using YubiKey MFA.  
It strengthens Zero Trust posture, stabilizes authentication workflows, and improves access reliability for mission‑critical systems.

The work spans identity engineering, MFA troubleshooting, posture validation, and cross‑platform access integration.

---

## ⚡ Quick Start
- Review [`/docs`](docs/) for architecture, deployment, posture, and troubleshooting workflows  
- Use [`/scripts`](scripts/) for diagnostics, posture checks, and access auditing  
- Reference [`/architecture`](architecture/) for system flow and visual context  
- Explore [`/config`](config/) for posture, identity, and access policy definitions  

---

## 🧾 System Summary
The system integrates YubiKey MFA, identity providers, posture enforcement, and access gateways to ensure secure, predictable authentication across:

- Windows VDI  
- ServiceNow identity workflows  
- IL4/IL5‑aligned access paths  
- Zero Trust policy enforcement  

It supports token validation, certificate routing, posture checks, and session authorization across multiple enterprise layers.

---

## 💡 Why This Work Matters
Strong authentication is foundational for enterprise and federal‑aligned systems:

- YubiKey MFA reduces credential theft and phishing  
- Zero Trust posture ensures only compliant devices gain access  
- VDI + ServiceNow integration improves operational reliability  
- Standardized troubleshooting reduces incident volume and escalation load  

---

## 🎯 Responsibilities & Scope
- Supported YubiKey MFA across VDI, ServiceNow, and cloud access layers  
- Troubleshot authentication failures across Windows, VDI, and ServiceNow endpoints  
- Ensured alignment with Zero Trust and MFA enforcement policies  
- Assisted users with secure login workflows and identity recovery  
- Collaborated with IAM, security, and platform teams  
- Documented troubleshooting workflows and escalation paths  

---

## 🛠️ Technologies & Tools

### Platform Stack
| Category | Technologies | Purpose |
|---------|--------------|---------|
| 🔑 Authentication | YubiKey (FIDO2, PIV, OTP) | Hardware‑based MFA |
| 💻 Platforms | Windows VDI, ServiceNow | Virtual desktops & identity workflows |
| 🛡️ Identity & Access | MFA systems, SSO, RBAC, IdP | Authentication & authorization |
| ⚙️ Automation | PowerShell, SQL, Bash | Diagnostics & workflow automation |
| 📊 Monitoring | Secure logging, audit tools | Compliance & access analytics |
| 🏗️ Architecture | Zero Trust enforcement | Policy & identity posture |

---

## 🗂️ Repository Structure
```
YubiKey-Security/
│
├── docs/
│   ├── data-dictionary.md
│   ├── deployment-overview.md
│   ├── runbook.md
│   ├── troubleshooting-guide.md
│   └── vdi-authentication-overview.md
│
├── scripts/
│   ├── Test-YubiKeyPresence.ps1
│   ├── Get-PIVCertificateInfo.ps1
│   ├── Check-DevicePosture.ps1
│   ├── Export-AuthLogs.ps1
│   ├── check_yubikey.sh
│   ├── vdi-access-audit.sql
│   └── yubikey-request-flow.ps1
│
├── config/
│   ├── posture-baseline.md
│   ├── identity-routing.md
│   ├── access-policy-reference.md
│   ├── sample-posture.json
│   └── sample-access-policy.json
│
├── architecture/
│   ├── architecture-summary.md
│   ├── architecture-layers.md
│   ├── architecture-diagram.md
│   └── Yubikey-Security_Zero-trust.png
│
├── README.md
└── Yubikey_VDI_Secure_Access_Architecture.png

```

---

### ▣ Key Files (Linked)

#### 📐 Architecture  
- [`architecture-summary.md`](architecture/architecture-summary.md)  
- [`architecture-layers.md`](architecture/architecture-layers.md)  
- [`architecture-diagram.md`](architecture/architecture-diagram.md)  
- [`Yubikey-Security_Zero-trust.png`](architecture/Yubikey-Security_Zero-trust.png)  

#### 🧰 Scripts  
- [`Test-YubiKeyPresence.ps1`](scripts/Test-YubiKeyPresence.ps1)  
- [`Get-PIVCertificateInfo.ps1`](scripts/Get-PIVCertificateInfo.ps1)  
- [`Check-DevicePosture.ps1`](scripts/Check-DevicePosture.ps1)  
- [`Export-AuthLogs.ps1`](scripts/Export-AuthLogs.ps1)  
- [`check_yubikey.sh`](scripts/check_yubikey.sh)  
- [`vdi-access-audit.sql`](scripts/vdi-access-audit.sql)  
- [`yubikey-request-flow.ps1`](scripts/yubikey-request-flow.ps1)  

#### ⚙ Configuration  
- [`posture-baseline.md`](config/posture-baseline.md)  
- [`identity-routing.md`](config/identity-routing.md)  
- [`access-policy-reference.md`](config/access-policy-reference.md)  
- [`sample-posture.json`](config/examples/sample-posture.json)  
- [`sample-access-policy.json`](config/examples/sample-access-policy.json)  

#### 📄 Documentation  
- [`deployment-overview.md`](docs/deployment-overview.md)  
- [`troubleshooting-guide.md`](docs/troubleshooting-guide.md)  
- [`runbook.md`](docs/runbook.md)  
- [`data-dictionary.md`](docs/data-dictionary.md)  
- [`vdi-authentication-overview.md`](docs/vdi-authentication-overview.md)  

---

## 🚀 Deployment Workflow
| Stage | Description |
|-------|-------------|
| 1. Prepare Environment | Validate VDI, IdP, and ServiceNow readiness |
| 2. Configure YubiKey Profiles | Align PIV/FIDO2/OTP provisioning with org standards |
| 3. Validate Identity Provider | Test MFA + SSO flows, RBAC mappings, and posture checks |
| 4. Integrate with VDI | Confirm MFA enforcement and session brokering |
| 5. Integrate with ServiceNow | Validate catalog items, workflows, and access requests |
| 6. Enable Monitoring | Ensure audit trails capture MFA, VDI, and ServiceNow events |
| 7. Run Playbooks | Execute troubleshooting workflows before rollout |

---

## ✅ Key Outcomes
| Area | Impact |
|------|--------|
| 🔒 Authentication Reliability | Stabilized YubiKey MFA across VDI and ServiceNow |
| 📉 Incident Reduction | Reduced MFA‑related support tickets |
| 🛡️ Security Posture | Stronger Zero Trust enforcement |
| ✨ User Experience | Smoother login flows and recovery paths |
| 🏛️ Compliance Readiness | Improved auditability and posture alignment |

---

## 🔓 Engineering Challenges Solved
| Area | Challenge | Outcome |
|------|-----------|---------|
| 🔑 MFA Reliability | Token failures, driver issues | Standardized diagnostics and remediation |
| 💻 VDI Access | Policy/RBAC/posture denials | Improved mappings and session success rates |
| 📋 ServiceNow Flows | Broken identity workflows | Refined catalog flows and documentation |
| 🛡️ Zero Trust | Misaligned posture definitions | Clear posture mapping and enforcement |
| 📊 Audit Gaps | Missing authentication traceability | Enhanced logging and troubleshooting runbooks |

---

## 🔐 Security & Access Control
- Hardware‑rooted identity (PIV/FIDO2)  
- Certificate‑based authentication  
- Posture‑driven conditional access  
- RBAC‑aligned access segmentation  
- IL4/IL5‑aligned enforcement patterns  

---

## 🔒 Confidentiality Notice
All content is fully sanitized.  
No internal configurations, proprietary workflows, or sensitive operational details are included.  
Only high‑level engineering concepts and troubleshooting patterns are documented.

---

## 👔 Professional Context  

**Suren Jewels**  
Cloud & Infrastructure Engineer • Security & Automation Specialist  

This repository showcases sanitized engineering patterns and automation workflows used in enterprise ServiceNow environments.

- **LinkedIn:** [https://www.linkedin.com/in/suren-jewels/](https://www.linkedin.com/in/suren-jewels/)
- **GitHub:** [https://github.com/Suren-Jewels](https://github.com/Suren-Jewels)
- **Email:** [SurenJewelsPro@gmail.com](mailto:SurenJewelsPro@gmail.com)

---
