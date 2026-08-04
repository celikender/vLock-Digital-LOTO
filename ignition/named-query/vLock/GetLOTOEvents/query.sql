SELECT
    id,
    equipment_name,
    action,
    username,
    reason,
    event_time
FROM loto_events
ORDER BY event_time DESC
LIMIT 50;