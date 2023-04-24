SELECT 
  YEAR(created_at) AS year,
  MONTH(created_at) AS month,
  COUNT(DISTINCT user_id) AS user_counts,
  (COUNT(DISTINCT user_id) 
    / LAG(COUNT(DISTINCT user_id)) OVER (ORDER BY YEAR(created_at), MONTH(created_at)) - 1)*100
    AS user_percentage_growth
FROM users
GROUP BY year, month;
