SELECT *
FROM bookings
WHERE is_cancelled_clean = TRUE
ORDER BY booking_date_clean DESC;

