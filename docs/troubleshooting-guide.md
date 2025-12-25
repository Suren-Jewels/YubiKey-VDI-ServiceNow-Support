# Troubleshooting Guide — YubiKey‑Security

This guide provides structured diagnostic steps for resolving authentication, posture, and access issues across VDI, ServiceNow, and IL4/IL5 federal environments. It is designed for support teams, engineers, and operational responders.

---

# 1. 🔧 Common Troubleshooting Scenarios

| Issue Type | Symptoms | Resolution |
|------------|----------|------------|
| 🔑 **YubiKey Failures** | Token not recognized, timeout, no certificate prompt | Check USB ports, smart card drivers, token registration, replace hardware if needed |
| 💻 **VDI Access Issues** | Session denied, cannot connect, repeated disconnects | Validate RBAC, Zero Trust posture, network segmentation, broker logs |
| 📋 **ServiceNow Authentication** | SSO failures, IdP errors, missing catalog items | Check IdP logs, SSO configuration, user attributes, RBAC mapping |
| 🛡️ **Policy Violations** | Access denied due to posture or conditional access | Review Zero Trust policies, device posture, encryption, OS health, user roles |

---

# 2. 🔐 Authentication Issues

## 2.1 YubiKey Not Detected

### Symptoms
- No MFA prompt  
- Token insertion not recognized  
- Certificate not visible  

### Possible Causes
- Faulty USB port  
- Damaged YubiKey  
- Missing smart card drivers  
- Reader conflict  

### Resolution Steps
1. Reinsert YubiKey and test alternate USB ports.  
2. Validate smart card service is running.  
3. Check Device Manager for reader conflicts.  
4. Test token on a known‑good workstation.  
5. Replace hardware if detection fails consistently.  

---

## 2.2 Certificate Authentication Failure

### Symptoms
- “Invalid certificate”  
- “Certificate not trusted”  
- MFA challenge not triggered  

### Possible Causes
- Expired certificate  
- Incorrect certificate chain  
- SNCA routing mismatch  
- Corrupted PIV slot  

### Resolution Steps
1. Validate certificate expiration.  
2. Confirm SNCA v2/v3/Legacy routing.  
3. Re‑enroll PIV certificate if corrupted.  
4. Validate MFA provider (Okta) is reachable.  
5. Review identity provider logs for rejection reasons.  

---

## 2.3 MFA or SSO Failure

### Symptoms
- MFA prompt not delivered  
- SSO loop  
- Incorrect domain routing  

### Possible Causes
- Okta outage  
- Incorrect RBAC mapping  
- Identity domain mismatch  

### Resolution Steps
1. Validate MFA delivery channel.  
2. Confirm user’s RBAC group membership.  
3. Test authentication in alternate domain (if scoped).  
4. Review Okta/SNCA logs.  
5. Escalate if MFA provider is degraded.  

---

# 3. 🛡️ Posture & Device Compliance Issues

## 3.1 Device Fails Posture Check

### Symptoms
- “Device not compliant”  
- Access denied despite valid identity  

### Possible Causes
- Encryption disabled  
- OS out of date  
- Endpoint protection offline  
- Device identity mismatch  

### Resolution Steps
1. Validate encryption status.  
2. Apply OS and security updates.  
3. Restart endpoint protection services.  
4. Re‑register device identity if mismatched.  
5. Re‑evaluate posture and confirm trust score.  

---

## 3.2 Trust Score Too Low

### Symptoms
- Conditional access denial  
- Repeated posture failures  

### Possible Causes
- Multiple failing posture attributes  
- Device identity not linked to user  
- Outdated compliance policies  

### Resolution Steps
1. Identify failing posture attributes.  
2. Apply required remediations.  
3. Confirm device identity mapping.  
4. Validate conditional access policy version.  
5. Re‑run posture evaluation.  

---

# 4. 🌐 Access Gateway Issues

## 4.1 VDI Access Failure

### Symptoms
- Session not launching  
- Broker rejection  
- Unexpected disconnects  

### Possible Causes
- Authentication failure  
- Posture non‑compliance  
- Broker misconfiguration  
- Network segmentation issues  

### Resolution Steps
1. Validate identity authentication.  
2. Confirm posture compliance.  
3. Review VDI broker logs.  
4. Test session from alternate network segment.  
5. Restart VDI client and retry.  

---

## 4.2 ServiceNow Access Failure

### Symptoms
- Missing catalog items  
- Workflow access denied  
- SSO loop  

### Possible Causes
- RBAC mismatch  
- Certificate routing issue  
- Identity provider failure  

### Resolution Steps
1. Validate certificate authentication.  
2. Confirm RBAC group membership.  
3. Review ServiceNow access logs.  
4. Test workflow access in alternate domain.  
5. Re‑sync identity attributes if needed.  

---

## 4.3 IL4/IL5 Enclave Access Failure

### Symptoms
- Segmentation denial  
- Certificate rejection  
- Gateway timeout  

### Possible Causes
- Incorrect enclave certificate  
- Posture enforcement failure  
- Segmentation routing mismatch  

### Resolution Steps
1. Validate enclave‑specific certificate requirements.  
2. Confirm posture compliance.  
3. Review enclave gateway logs.  
4. Validate segmentation routing.  
5. Reattempt access after remediation.  

---

# 5. 📊 Logging & Diagnostics

## 5.1 Authentication Logs to Review
- Token insertion events  
- Certificate validation  
- MFA challenges  
- Identity provider routing decisions  

## 5.2 Posture Logs to Review
- Encryption failures  
- OS health issues  
- Endpoint protection status  
- Trust score calculations  

## 5.3 Access Logs to Review
- VDI session acceptance/denial  
- ServiceNow workflow access  
- IL4/IL5 segmentation decisions  
- Conditional access enforcement  

---

# 6. 🧭 Troubleshooting Decision Tree

### Authentication Failure  
→ Check token → Check certificate → Check MFA → Check SNCA routing → Review logs → Reissue if needed  

### Posture Failure  
→ Identify failing attribute → Apply fix → Re‑evaluate posture → Validate access  

### Access Denial  
→ Validate identity → Validate posture → Validate RBAC → Validate gateway logs  

---

# 📘 Scope

This guide provides troubleshooting procedures only.  
It does **not** include implementation details, certificate profiles, or enclave‑specific configurations.
