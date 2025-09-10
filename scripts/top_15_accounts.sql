SELECT a.name AS account_name, COUNT(*) AS total_events
FROM web_events AS w
INNER JOIN accounts AS a ON w.account_id = a.id
GROUP BY a.name
ORDER BY total_events DESC;
