--Day 4: https://datalemur.com/questions/laptop-mobile-viewership


SELECT COUNT(*) FILTER (WHERE device_type = 'laptop') AS laptop_views,
  COUNT(*) FILTER (WHERE device_type = 'tablet' OR device_type = 'phone') AS mobile_views
FROM viewership;
