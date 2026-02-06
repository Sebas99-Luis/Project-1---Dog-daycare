SELECT
    DATE_TRUNC('month', booking_date_clean) AS month,
    COUNT(*) AS total_bookings
FROM bookings
GROUP BY month
ORDER BY month;
