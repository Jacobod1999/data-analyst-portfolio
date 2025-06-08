-- Trim whitespace from titles
UPDATE imdb SET Series_Title = TRIM(Series_Title);

-- Handle invalid year entries and convert to INT
UPDATE imdb SET Released_Year = NULL WHERE Released_Year = 'PG';
ALTER TABLE imdb MODIFY Released_Year INT;

-- Clean Gross column (remove commas and convert to INT)
UPDATE imdb SET Gross = REPLACE(Gross, ',', '');
ALTER TABLE imdb MODIFY Gross INT;