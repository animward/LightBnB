SELECT city, COUNT(*) AS total_reservations
FROM properties
GROUP BY city
ORDER BY total_reservations DESC;