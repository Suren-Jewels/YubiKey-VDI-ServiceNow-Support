# 🔐 YubiKey, VDI & ServiceNow Secure Access Support  
**Identity Engineering • MFA • Zero Trust • Enterprise VDI • Access Reliability**

## 📌 Overview

This repository documents engineering work supporting **secure authentication, YubiKey MFA, VDI access, and ServiceNow identity workflows** across enterprise and federal-aligned environments.

The focus was on improving authentication reliability, troubleshooting MFA failures, and ensuring seamless access to mission-critical systems.

This project highlights hands-on experience with **identity systems, secure access engineering, and Zero Trust authentication models**.

---

## 🎯 Responsibilities & Scope

- Supported YubiKey MFA across VDI, ServiceNow, and cloud access layers
- Troubleshot authentication failures across Windows, VDI, and ServiceNow endpoints
- Ensured alignment with Zero Trust and MFA enforcement policies
- Assisted users with secure login workflows and identity recovery
- Collaborated with IAM, security, and platform teams to maintain access reliability
- Documented troubleshooting workflows and escalation paths

---

## 🛠️ Tools & Technologies

- **Authentication**: YubiKey (FIDO2, PIV, OTP)
- **Platforms**: Windows VDI, ServiceNow (identity workflows & access modules)
- **Identity & Access**: MFA systems, SSO, RBAC, identity providers
- **Automation**: PowerShell
- **Security & Monitoring**: Secure logging, monitoring tools
- **Architecture**: Zero Trust enforcement layers

---

## 🔐 Authentication Workflow Overview

1. User inserts YubiKey and initiates MFA challenge
2. Identity provider validates token (FIDO2/PIV/OTP)
3. Access request flows through VDI or ServiceNow authentication layers
4. RBAC and Zero Trust policies are evaluated
5. Session is granted or denied based on compliance and identity posture
6. Logging and monitoring capture authentication events
7. Troubleshooting workflows are triggered for failures

---

## 🧩 Architecture Overview (Sanitized)
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

## ✅ Key Outcomes

- Improved authentication reliability across VDI and ServiceNow
- Reduced MFA-related incidents through structured troubleshooting
- Strengthened Zero Trust enforcement and identity posture
- Enhanced user experience with secure access workflows
- Supported enterprise and federal-aligned environments requiring high-assurance identity controls

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
