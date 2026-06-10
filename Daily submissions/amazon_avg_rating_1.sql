--https://datalemur.com/questions/sql-avg-review-ratings

SELECT EXTRACT(MONTH FROM submit_date) AS mnth, product_id AS product, ROUND(AVG(stars),2) AS avg_stars
FROM reviews
GROUP BY mnth, product
ORDER BY mnth, product ASC

