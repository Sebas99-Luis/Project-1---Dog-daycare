SELECT DISTINCT c.*
FROM customers c
JOIN bookings b ON c.customer_id = b.customer_id
ORDER BY c.customer_id;
