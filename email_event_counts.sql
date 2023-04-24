SELECT 
  user_id, 
  COUNT(*) AS email_events_count, 
  SUM(CASE WHEN action = 'email_open' THEN 1 ELSE 0 END) AS email_opens_count, 
  SUM(CASE WHEN action = 'email_clickthrough' THEN 1 ELSE 0 END) AS email_clickthrough_count,
  SUM(CASE WHEN action = 'sent_weekly_digest' THEN 1 ELSE 0 END) AS sent_weekly_digest_count,
  SUM(CASE WHEN action = 'sent_reengagement_email' THEN 1 ELSE 0 END) AS sent_reengagement_email_count
FROM email_events
GROUP BY user_id;
