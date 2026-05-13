-- Day 3: https://datalemur.com/questions/sql-page-with-no-likes

SELECT p.page_id
FROM pages p
LEFT JOIN page_likes pl ON pl.page_id = p.page_id
WHERE liked_date IS NULL
ORDER BY p.page_id ASC;