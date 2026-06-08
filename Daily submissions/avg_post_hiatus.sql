SELECT user_id, (max(DATE(post_date)) - min(DATE(post_date))) AS days_between
FROM posts
WHERE EXTRACT(YEAR FROM post_date) = 2021
GROUP BY user_id
HAVING COUNT(user_id) >= 2