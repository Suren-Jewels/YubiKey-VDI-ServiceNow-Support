-- SQL snippet to audit VDI access logs for compliance
-- Sanitized for confidentiality

SELECT user_id, login_time, access_type
FROM vdi_access_logs
WHERE login_time BETWEEN '2023-01-01' AND '2023-01-31'
ORDER

