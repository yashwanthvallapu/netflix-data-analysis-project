-- Netflix Data Analysis Queries

-- 1. Total number of titles on Netflix
SELECT COUNT(*) AS total_titles
FROM netflix;

-- 2. Movies vs TV Shows distribution
SELECT type, COUNT(*) AS total_content
FROM netflix
GROUP BY type;

-- 3. Top 10 countries producing Netflix content
SELECT country, COUNT(*) AS total_titles
FROM netflix
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;

-- 4. Content added to Netflix by year
SELECT YEAR(date_added_new) AS year_added,
COUNT(*) AS content_added
FROM netflix
GROUP BY year_added
ORDER BY year_added;

-- 5. Most common content ratings
SELECT rating, COUNT(*) AS total_titles
FROM netflix
GROUP BY rating
ORDER BY total_titles DESC;

-- 6. Movies longer than 120 minutes
SELECT title, duration_number
FROM netflix
WHERE type = 'Movie'
AND duration_number > 120;