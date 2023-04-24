SELECT EXTRACT(WEEK FROM occurred_at) AS weeks,
       COUNT(CASE WHEN e.event_type = 'signup_flow' THEN e.user_id ELSE NULL END) AS signup
FROM events e
GROUP BY weeks
ORDER BY weeks;