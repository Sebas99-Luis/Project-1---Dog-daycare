SELECT
    DATE_TRUNC('month', paid_at_clean) AS month,
    SUM(amount_net_clean) AS revenue_net,
    SUM(amount_gross_clean) AS revenue_gross
FROM payments
WHERE status_clean = 'Paid'
GROUP BY month
ORDER BY month;

