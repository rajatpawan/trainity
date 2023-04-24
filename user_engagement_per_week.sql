SELECT 
    user_id,
    ((COUNT(*)) / (COUNT(DISTINCT (EXTRACT(WEEK FROM occurred_at))))) AS user_engagement_per_week
FROM
    events
GROUP BY user_id
ORDER BY user_id;