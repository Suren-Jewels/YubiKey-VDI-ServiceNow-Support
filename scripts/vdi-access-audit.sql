-- vdi-access-audit.sql
-- Sanitized VDI access audit script for compliance and operational analysis.
-- No confidential schema, internal table names, or federal identifiers included.

-- This script demonstrates a standardized pattern for auditing VDI access events.
-- Replace table/column names with environment‑specific equivalents as needed.

SELECT 
    user_principal        AS user_id,
    session_start_time    AS login_time,
    session_end_time      AS logout_time,
    access_result         AS access_status,
    client_ip_address     AS source_ip,
    device_compliance     AS posture_state
FROM vdi_session_events
WHERE session_start_time BETWEEN @StartDate AND @EndDate
ORDER BY session_start_time DESC;

-- Recommended parameters:
-- DECLARE @StartDate DATE = '2023-01-01';
-- DECLARE @EndDate   DATE = '2023-01-31';

-- Notes:
-- - This script is intentionally generic and sanitized.
-- - Replace vdi_session_events with your environment’s audit table.
-- - Use this pattern for compliance reviews, Zero Trust validation, and access investigations.
