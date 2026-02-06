SELECT
    COUNT(*) FILTER (WHERE is_cancelled_clean = TRUE) * 1.0 /
    COUNT(*) AS cancellation_rate
FROM bookings;
