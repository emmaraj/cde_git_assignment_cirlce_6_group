SELECT channel, COUNT(*) AS total_events
FROM web_events
GROUP BY channel
ORDER BY total_events DESC;
