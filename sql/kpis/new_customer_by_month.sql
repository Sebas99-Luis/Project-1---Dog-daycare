SELECT COUNT(DISTINCT customer_id) AS active_customers
FROM bookings
WHERE booking_date_clean >= CURRENT_DATE - INTERVAL '90 days';

