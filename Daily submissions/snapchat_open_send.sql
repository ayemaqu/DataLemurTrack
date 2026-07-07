WITH activity_totals AS (
  SELECT ab.age_bucket,
  SUM(CASE WHEN ac.activity_type = 'send' THEN ac.time_spent
    ELSE 0
    END) AS send_time, 

  SUM(CASE WHEN ac.activity_type = 'open' THEN ac.time_spent
    ELSE 0
    END) AS open_time 

FROM activities ac
LEFT JOIN age_breakdown ab ON ab.user_id = ac.user_id
WHERE ac.activity_type IN ('send', 'open')
GROUP BY ab.age_bucket
)
SELECT
    age_bucket,
    ROUND(send_time / (send_time + open_time)  * 100.0,2)  as  send_perc,
    ROUND(open_time / (send_time + open_time) * 100.0 ,2) as open_perc
FROM activity_totals;