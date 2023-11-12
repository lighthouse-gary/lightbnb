SELECT r.id, p.title, p.cost_per_night, r.start_date, AVG(pr.rating) AS average_rating
FROM reservations r
JOIN properties p ON r.property_id = p.id
JOIN property_reviews pr ON p.id = pr.property_id
WHERE r.guest_id = 1
GROUP BY r.id, p.title, p.cost_per_night, r.start_date
ORDER BY r.start_date
LIMIT 10;