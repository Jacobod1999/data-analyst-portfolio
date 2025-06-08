-- Top 5 genres
SELECT Genre, COUNT(*) AS Count
FROM imdb
GROUP BY Genre
ORDER BY Count DESC
LIMIT 5;

-- Average IMDb rating by decade
SELECT FLOOR(Released_Year/10)*10 AS Decade, ROUND(AVG(IMDB_Rating), 2) AS Avg_Rating
FROM imdb
GROUP BY Decade
ORDER BY Decade;

-- Top 10 movies by gross
SELECT Series_Title, Gross
FROM imdb
ORDER BY Gross DESC
LIMIT 10;

-- Top 5 directors
SELECT Director, COUNT(*) AS Movie_Count
FROM imdb
GROUP BY Director
ORDER BY Movie_Count DESC
LIMIT 5;