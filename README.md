# 🔐 YubiKey, VDI & ServiceNow Secure Access Support
**Identity Engineering • MFA • Zero Trust • Enterprise VDI • Access Reliability**

## 📌 Overview

This repository documents engineering work supporting secure authentication, YubiKey MFA, VDI access, and ServiceNow identity workflows across enterprise and federal-aligned environments.

The focus was on improving authentication reliability, troubleshooting MFA failures, and ensuring seamless access to mission-critical systems.

This project highlights hands-on experience with identity systems, secure access engineering, and Zero Trust authentication models.

## 🎯 Responsibilities & Scope

- Supported YubiKey MFA across VDI, ServiceNow, and cloud access layers
- Troubleshot authentication failures across Windows, VDI, and ServiceNow endpoints
- Ensured alignment with Zero Trust and MFA enforcement policies
- Assisted users with secure login workflows and identity recovery
- Collaborated with IAM, security, and platform teams to maintain access reliability
- Documented troubleshooting workflows and escalation paths

### Technology Stack

| Category | Technologies | Purpose |
|---------|--------------|---------|
| 🔑 Authentication | YubiKey (FIDO2, PIV, OTP) | Hardware-based MFA |
| 💻 Platforms | Windows VDI, ServiceNow | Virtual desktops & identity workflows |
| 🛡️ Identity & Access | MFA systems, SSO, RBAC, IdP | Authentication & authorization |
| ⚙️ Automation | PowerShell, SQL | Diagnostics & workflow automation |
| 📊 Monitoring | Secure logging, audit tools | Compliance & access analytics |
| 🏗️ Architecture | Zero Trust enforcement | Policy & identity posture |

────────────────────────────────────────────────────────────────────────

## 🧠 System Summary

This system provides secure, hardware-backed authentication across VDI, Windows, and ServiceNow environments using YubiKey MFA.

It integrates identity providers, Zero Trust enforcement layers, and access workflows to ensure reliable authentication for thousands of users.

The system supports token validation, session authorization, compliance checks, and troubleshooting workflows across multiple access layers.

## ⭐ Why This Work Matters

Strong authentication is essential for protecting enterprise and federal-aligned systems:

- **YubiKey MFA** significantly reduces credential theft, phishing, and unauthorized access
- Ensures reliable authentication across VDI and ServiceNow
- Strengthens Zero Trust posture
- Reduces access failures and improves user experience for mission-critical workflows


## 🚀 Deployment Workflow

**Pipeline:** *[CI] → [CD] → [Prod]*
| Stage | Description |
|-------|-------------|
| 1. Prepare Environment | Confirm VDI, identity provider, and ServiceNow environments are reachable and baseline policies are documented |
| 2. Configure YubiKey Profiles | Ensure YubiKey provisioning, credential profiles (FIDO2/PIV/OTP), and enrollment processes are aligned with org standards |
| 3. Validate Identity Provider | Test MFA + SSO flows with test accounts, confirm RBAC mappings, and validate posture/policy evaluation |
| 4. Integrate with VDI | Confirm MFA enforcement at VDI entry points, validate session brokering and access behavior for compliant vs non-compliant users |
| 5. Integrate with ServiceNow | Validate catalog items, identity workflows, and ticket logging for access and MFA-related issues |
| 6. Enable Monitoring | Confirm logging, audit trails, and dashboards capture MFA, VDI, and ServiceNow access events end-to-end |
| 7. Run Playbooks | Execute documented troubleshooting workflows for common failure modes before broad user rollout |

•••••••••••••••

## ✅ Key Outcomes

| Area | Impact |
|------|--------|
| 🔒 Authentication Reliability | Improved success rates for YubiKey-backed logins across VDI and ServiceNow access paths |
| 📉 Incident Reduction | Decrease in MFA-related support tickets through standardized troubleshooting and clearer workflows |
| 🛡️ Security Posture | Stronger enforcement of Zero Trust policies and identity posture without sacrificing usability |
| ✨ User Experience | Smoother login journeys, more predictable access behavior, and clearer recovery paths for users |
| 🏛️ Compliance Readiness | Better alignment with enterprise and federal-aligned identity and access control expectations |

•••••••••••••••

## 🚀 Key Achievements

| Metric | Achievement | Impact |
|--------|-------------|--------|
| 🔐 Authentication Reliability | Stabilized YubiKey MFA across VDI environments | Reduced login failures and support escalations |
| 🛠️ Troubleshooting Speed | Built diagnostic workflows for identity issues | Accelerated root‑cause analysis and resolution |
| 🧩 Integration Quality | Improved compatibility between VDI, IdP, and YubiKey | Ensured seamless authentication across systems |
| 📈 User Experience | Reduced friction during secure login | Increased adoption and reduced helpdesk load |

•••••••••••••••

## 🧩 Engineering Challenges Solved

| Area | Challenge | Outcome |
|------|-----------|---------|
| 🔑 YubiKey MFA Reliability | Intermittent token failures, driver issues, and inconsistent recognition across endpoints | Standardized diagnostics and remediation steps, reducing repeated incidents and support overhead |
| 💻 VDI Access Stability | Users unable to reach virtual desktops due to policy, RBAC, or posture checks | Tuned access policies and clarified RBAC mappings, improving successful session rates |
| 📋 ServiceNow Identity Flows | Broken or confusing access request and identity recovery workflows | Refined ServiceNow catalog flows and documentation, reducing ticket friction and escalation load |
| 🛡️ Zero Trust Alignment | Access denials caused by misaligned posture and policy definitions | Mapped identity posture checks to clear policies, improving predictability and auditability |
| 📊 Audit & Monitoring Gaps | Incomplete traceability for failed authentication events | Enhanced logging patterns and troubleshooting runbooks, improving time-to-resolution for MFA issues |

────────────────────────────────────────────────────────────────────────

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

## 📄 Key Files

| File | Description |
|------|-------------|
| [`architecture_overview.md`](https://github.com/Suren-Jewels/YubiKey-VDI-ServiceNow-Support/blob/main/docs/architecture_overview.md) | High-level identity & access architecture |
| [`confidentiality_note.md`](https://github.com/Suren-Jewels/YubiKey-VDI-ServiceNow-Support/blob/main/docs/confidentiality_note.md) | Sanitized NDA-aligned notice |
| [`vdi_access_audit.sql`](https://github.com/Suren-Jewels/YubiKey-VDI-ServiceNow-Support/blob/main/scripts/vdi_access_audit.sql) | VDI access validation and audit queries |
| [`yubikey_request_flow.ps1`](https://github.com/Suren-Jewels/YubiKey-VDI-ServiceNow-Support/blob/main/scripts/yubikey_request_flow.ps1) | YubiKey request and troubleshooting workflow |
| `Yubikey_VDI_Secure_Access_Architecture.png` | Architecture diagram |

────────────────────────────────────────────────────────────────────────

## 🔒 Confidentiality Notice

All content is fully sanitized.

No internal identity configurations, proprietary workflows, or sensitive operational details are included.

Only high-level engineering concepts and troubleshooting patterns are described.

## 📄 License

This repository contains fully sanitized, non‑sensitive documentation and support patterns for YubiKey MFA, VDI access, and ServiceNow identity workflows.  
All content is provided strictly for educational and portfolio demonstration purposes.

## 👔 Professional Context

**Suren Jewels**  
Senior Cloud Engineer | Infrastructure & Security Specialist

*For inquiries about this project or collaboration opportunities, please reach out via LinkedIn.*

────────────────────────────────────────────────────────────────────────
