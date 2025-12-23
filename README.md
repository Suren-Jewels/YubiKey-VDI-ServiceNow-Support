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

## 🧩 Engineering Challenges Solved

| Area | Challenge | Outcome |
|------|-----------|---------|
| 🔑 YubiKey MFA Reliability | Intermittent token failures, driver issues, and inconsistent recognition across endpoints | Standardized diagnostics and remediation steps, reducing repeated incidents and support overhead |
| 💻 VDI Access Stability | Users unable to reach virtual desktops due to policy, RBAC, or posture checks | Tuned access policies and clarified RBAC mappings, improving successful session rates |
| 📋 ServiceNow Identity Flows | Broken or confusing access request and identity recovery workflows | Refined ServiceNow catalog flows and documentation, reducing ticket friction and escalation load |
| 🛡️ Zero Trust Alignment | Access denials caused by misaligned posture and policy definitions | Mapped identity posture checks to clear policies, improving predictability and auditability |
| 📊 Audit & Monitoring Gaps | Incomplete traceability for failed authentication events | Enhanced logging patterns and troubleshooting runbooks, improving time-to-resolution for MFA issues |

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

## 📈 Secure Access Workflow

| Stage | Description |
|-------|-------------|
| 1. YubiKey Provisioning | Configure YubiKey profiles (FIDO2/PIV/OTP), enroll users, and validate token registration |
| 2. Identity Provider Validation | Test MFA + SSO flows, confirm RBAC mappings, and verify posture/policy evaluation |
| 3. VDI Access Integration | Validate MFA enforcement at VDI entry points, session brokering, and compliant access behavior |
| 4. ServiceNow Workflow Alignment | Ensure catalog items, identity workflows, and access request processes function end‑to‑end |
| 5. Logging & Monitoring Enablement | Confirm audit trails capture MFA, VDI, and ServiceNow authentication events |
| 6. Troubleshooting Playbook Execution | Run diagnostics for token failures, SSO issues, RBAC mismatches, and posture denials |
| 7. User Experience Validation | Test login flows, recovery paths, and ensure predictable access behavior for end users |
| 8. Compliance Review | Validate Zero Trust alignment, audit completeness, and identity posture requirements |

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

### 📁 Directory Descriptions

| Directory | Purpose |
|-----------|---------|
| `doc/` | High‑level architecture notes, workflow overviews, and sanitized identity documentation |
| `scripts/` | PowerShell tools for YubiKey diagnostics, VDI access validation, and ServiceNow log parsing |
| `diagrams/` | Visual architecture diagrams, including the YubiKey + VDI + ServiceNow PNG |

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

## 🚀 Deployment Workflow

| Stage | Description |
|-------|-------------|
| 1. Prepare Environment | Confirm VDI, identity provider, and ServiceNow environments are reachable and baseline policies are documented |
| 2. Configure YubiKey Profiles | Ensure YubiKey provisioning, credential profiles (FIDO2/PIV/OTP), and enrollment processes are aligned with org standards |
| 3. Validate Identity Provider | Test MFA + SSO flows with test accounts, confirm RBAC mappings, and validate posture/policy evaluation |
| 4. Integrate with VDI | Confirm MFA enforcement at VDI entry points, validate session brokering and access behavior for compliant vs non-compliant users |
| 5. Integrate with ServiceNow | Validate catalog items, identity workflows, and ticket logging for access and MFA-related issues |
| 6. Enable Monitoring | Confirm logging, audit trails, and dashboards capture MFA, VDI, and ServiceNow access events end-to-end |
| 7. Run Playbooks | Execute documented troubleshooting workflows for common failure modes before broad user rollout |

---

## ✅ Key Outcomes

| Area | Impact |
|------|--------|
| 🔒 Authentication Reliability | Improved success rates for YubiKey-backed logins across VDI and ServiceNow access paths |
| 📉 Incident Reduction | Decrease in MFA-related support tickets through standardized troubleshooting and clearer workflows |
| 🛡️ Security Posture | Stronger enforcement of Zero Trust policies and identity posture without sacrificing usability |
| ✨ User Experience | Smoother login journeys, more predictable access behavior, and clearer recovery paths for users |
| 🏛️ Compliance Readiness | Better alignment with enterprise and federal-aligned identity and access control expectations |

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

## 📄 License

This repository contains fully sanitized, non‑sensitive documentation and support patterns for YubiKey MFA, VDI access, and ServiceNow identity workflows.  
All content is provided strictly for educational and portfolio demonstration purposes.

No proprietary configurations, internal authentication logic, or confidential operational details are included.

You may reference or adapt the public patterns in this repository, but all real‑world implementations must follow your organization’s security, compliance, and identity governance requirements.
