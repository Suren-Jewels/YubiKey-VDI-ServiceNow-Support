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

### **Technology Stack**

<table>
<thead>
<tr>
<th>Category</th>
<th>Technologies</th>
<th>Purpose</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>🔑 Authentication</strong></td>
<td>YubiKey (FIDO2, PIV, OTP)</td>
<td>Hardware-based MFA for secure access</td>
</tr>
<tr>
<td><strong>💻 Platforms</strong></td>
<td>Windows VDI<br>ServiceNow (identity workflows & access modules)</td>
<td>Virtual desktop infrastructure and service management</td>
</tr>
<tr>
<td><strong>🛡️ Identity & Access</strong></td>
<td>MFA systems<br>SSO<br>RBAC<br>Identity providers</td>
<td>Authentication and authorization frameworks</td>
</tr>
<tr>
<td><strong>⚙️ Automation</strong></td>
<td>PowerShell</td>
<td>Identity workflow automation and diagnostics</td>
</tr>
<tr>
<td><strong>📊 Security & Monitoring</strong></td>
<td>Secure logging<br>Monitoring tools</td>
<td>Audit trails and access analytics</td>
</tr>
<tr>
<td><strong>🏗️ Architecture</strong></td>
<td>Zero Trust enforcement layers</td>
<td>Security framework and policy enforcement</td>
</tr>
</tbody>
</table>

---

## 🔐 Authentication Workflow Overview

### **Step-by-Step Process**

| Step | Action | Technology |
|------|--------|------------|
| **1** | User inserts YubiKey and initiates MFA challenge | 🔑 YubiKey (FIDO2/PIV/OTP) |
| **2** | Identity provider validates token | 🛡️ MFA systems, SSO |
| **3** | Access request flows through VDI or ServiceNow authentication layers | 💻 VDI, ServiceNow |
| **4** | RBAC and Zero Trust policies are evaluated | 🏗️ Zero Trust framework |
| **5** | Session is granted or denied based on compliance and identity posture | 🛡️ RBAC, policy engine |
| **6** | Logging and monitoring capture authentication events | 📊 Audit systems |
| **7** | Troubleshooting workflows are triggered for failures | ⚙️ PowerShell, diagnostics |

### **Architecture Diagram**
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

### **System Components**

| Layer | Components | Function |
|-------|------------|----------|
| 🔑 **Identity & Access** | YubiKey, MFA, SSO, RBAC, Zero Trust | Authentication and policy enforcement |
| 💻 **VDI Access** | Windows Virtual Desktops | Secure remote desktop infrastructure |
| 📋 **ServiceNow** | Identity workflows, Access modules | Service management and ticketing |
| 📊 **Monitoring** | Logging, Audit systems | Compliance tracking and analytics |

---

## 🔧 Common Troubleshooting Scenarios

<table>
<thead>
<tr>
<th>Issue Type</th>
<th>Symptoms</th>
<th>Resolution Approach</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>🔑 YubiKey Failures</strong></td>
<td>Token not recognized, authentication timeout</td>
<td>Verify USB connection, check driver status, validate token registration</td>
</tr>
<tr>
<td><strong>💻 VDI Access Issues</strong></td>
<td>Cannot connect to virtual desktop, session denied</td>
<td>Check RBAC permissions, validate Zero Trust policies, review network connectivity</td>
</tr>
<tr>
<td><strong>📋 ServiceNow Auth</strong></td>
<td>SSO failures, identity provider errors</td>
<td>Verify SSO configuration, check identity provider logs, validate user attributes</td>
</tr>
<tr>
<td><strong>🛡️ Policy Violations</strong></td>
<td>Access denied due to compliance check</td>
<td>Review Zero Trust policies, verify device posture, check user roles</td>
</tr>
</tbody>
</table>

---

## ✅ Key Outcomes

<table>
<thead>
<tr>
<th>Area</th>
<th>Impact</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>🔒 Reliability</strong></td>
<td>Improved authentication reliability across VDI and ServiceNow</td>
</tr>
<tr>
<td><strong>📉 Incidents</strong></td>
<td>Reduced MFA-related incidents through structured troubleshooting</td>
</tr>
<tr>
<td><strong>🛡️ Security</strong></td>
<td>Strengthened Zero Trust enforcement and identity posture</td>
</tr>
<tr>
<td><strong>✨ User Experience</strong></td>
<td>Enhanced user experience with secure access workflows</td>
</tr>
<tr>
<td><strong>🏛️ Compliance</strong></td>
<td>Supported enterprise and federal-aligned environments requiring high-assurance identity controls</td>
</tr>
</tbody>
</table>

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
