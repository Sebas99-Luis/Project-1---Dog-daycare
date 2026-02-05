SELECT country_clean, COUNT(*) AS total_customers
FROM customers
GROUP BY country_clean
ORDER BY total_customers DESC;
