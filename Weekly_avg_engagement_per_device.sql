SELECT 
    device,
    (COUNT(event_name) /
    (COUNT(DISTINCT(EXTRACT(WEEK FROM occurred_at))))) AS weekly_avg_engagement_per_device
FROM
    events
GROUP BY device
ORDER BY weekly_avg_engagement_per_device DESC;