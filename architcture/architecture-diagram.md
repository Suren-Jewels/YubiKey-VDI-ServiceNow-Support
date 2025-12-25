# YubiKey Authentication Flow — Diagram Explanation

The diagram illustrates the end‑to‑end identity workflow from adjudication to enclave access.

## 1. Identity Proofing & Issuance
- User completes adjudication process  
- Identity verified using **two government‑issued photo IDs**  
- GCC / NSC / ADM YubiKey assigned based on role  

## 2. PIV Certificate Provisioning
- PIV slots written to the YubiKey  
- Certificates mapped to identity attributes  
- ADM keys receive elevated certificate profiles  

## 3. Authentication Path
Depending on user group:
- **SNCA v2/v3/legacy routing**  
- **Okta MFA** for specific identity domains  
- Certificate validation performed at the gateway  

## 4. Posture + Identity Merge
- Endpoint compliance validated  
- Encryption, OS health, and protection signals merged with identity  

## 5. Access Decision
- IL4/IL5 enclave segmentation  
- VDI gateway enforcement  
- ServiceNow access routing  
- Continuous Zero Trust evaluation  
