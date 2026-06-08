--Histogram of tweets
SELECT tweet_bucket, COUNT(user_id) as users_num
FROM (
    SELECT user_id, COUNT(tweet_id) as tweet_bucket
    FROM tweets
    WHERE tweet_date BETWEEN '01/01/2022' AND '12/31/2022'
    GROUP BY user_id
) AS a
GROUP BY tweet_bucket
ORDER BY tweet_bucket ASC
