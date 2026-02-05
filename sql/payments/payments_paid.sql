SELECT *
FROM payments
WHERE status_clean = 'Paid'
ORDER BY paid_at_clean DESC;
