# Runbook — YubiKey‑Security

This runbook provides step‑by‑step operational procedures for managing YubiKey‑based authentication, posture validation, and secure access workflows across VDI, ServiceNow, and IL4/IL5 federal environments. It is designed for day‑to‑day operations, support teams, and controlled troubleshooting.

---

## 🧩 Purpose

- Provide repeatable operational steps  
- Standardize identity and access workflows  
- Reduce troubleshooting time  
- Ensure Zero Trust alignment  
- Support IL4/IL5 compliance requirements  

---

# 1. 🔐 YubiKey Lifecycle Operations

## 1.1 Issue a New YubiKey

1. Verify user adjudication status  
2. Assign correct key type (GCC / NSC / ADM)  
3. Enroll PIV certificate  
4. Validate certificate chain (SNCA v2/v3/Legacy)  
5. Register token with identity provider  
6. Confirm MFA + SSO functionality  
7. Document issuance in asset system  

---

## 1.2 Replace a Lost or Damaged YubiKey

1. Disable previous token in identity provider  
2. Revoke associated certificates  
3. Issue replacement hardware  
4. Enroll new PIV certificate  
5. Validate MFA + SSO flows  
6. Confirm posture + access compliance  
7. Update asset and audit records  

---

## 1.3 Renew Expiring Certificates

1. Notify user of upcoming expiration  
2. Validate device posture before renewal  
3. Re‑enroll PIV certificate  
4. Confirm certificate propagation to SNCA  
5. Test authentication across VDI + ServiceNow  
6. Update certificate renewal logs  

---

# 2. 🛡️ Identity & Authentication Operations

## 2.1 Validate Identity Provider Routing

1. Confirm certificate chain  
2. Check SNCA routing (v2/v3/Legacy)  
3. Validate Okta MFA (if scoped)  
4. Confirm RBAC mapping  
5. Test authentication event in logs  

---

## 2.2 Resolve Authentication Failures

1. Check token insertion + reader detection  
2. Validate certificate expiration  
3. Confirm MFA challenge delivery  
4. Review SNCA/Okta logs  
5. Test fallback identity domain (if applicable)  
6. Reissue certificate if corrupted  
7. Escalate if posture is blocking authentication  

---

# 3. 💻 Device Posture Operations

## 3.1 Validate Device Posture

1. Confirm encryption status  
2. Validate OS patch level  
3. Check endpoint protection status  
4. Confirm device identity registration  
5. Review trust score output  
6. Validate conditional access decision  

---

## 3.2 Resolve Posture Non‑Compliance

1. Identify failing posture attribute  
2. Apply required OS or security updates  
3. Re‑run posture evaluation  
4. Confirm trust score improvement  
5. Validate access gateway acceptance  

---

# 4. 🌐 Access Gateway Operations

## 4.1 Validate VDI Access

1. Confirm identity authentication  
2. Validate posture compliance  
3. Check VDI broker logs  
4. Confirm session establishment  
5. Review disconnect/reconnect patterns  

---

## 4.2 Validate ServiceNow Access

1. Confirm certificate authentication  
2. Validate RBAC mapping  
3. Test workflow access  
4. Confirm catalog item visibility  
5. Review audit logs for access events  

---

## 4.3 Validate IL4/IL5 Enclave Access

1. Confirm enclave‑specific certificate requirements  
2. Validate posture enforcement  
3. Confirm segmentation routing  
4. Review enclave gateway logs  
5. Validate successful session entry  

---

# 5. 📊 Logging & Monitoring Operations

## 5.1 Review Authentication Logs

- Token insertions  
- MFA challenges  
- Certificate validation events  
- Failed authentication attempts  

---

## 5.2 Review Posture Logs

- Encryption failures  
- OS health issues  
- Device identity mismatches  
- Trust score calculations  

---

## 5.3 Review Access Logs

- VDI session acceptance/denial  
- ServiceNow workflow access  
- IL4/IL5 segmentation decisions  
- Conditional access enforcement  

---

# 6. 🧭 Operational Decision Tree

## Authentication Failure  
→ Check token → Check certificate → Check MFA → Check SNCA routing → Check logs → Reissue if needed  

## Posture Failure  
→ Identify failing attribute → Apply fix → Re‑evaluate posture → Validate access  

## Access Denial  
→ Validate identity → Validate posture → Validate RBAC → Validate gateway logs  

---

# 📘 Scope

This runbook provides operational procedures only.  
It does **not** include implementation details, certificate profiles, or enclave‑specific configurations.
