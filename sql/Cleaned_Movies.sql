SELECT *
FROM indian_movies;
-- FINDING MISSING VALUES OF ALL THE COLOUMNS 
SELECT 
	SUM(CASE WHEN Movie_Name = '-' OR Movie_Name = ' ' THEN 1 else 0 END) AS missing_Movie_names,
    SUM(CASE WHEN `Year` = '-' OR `Year` = ' ' THEN 1 else 0 END) AS missing_Year,
    SUM(CASE WHEN Timing = '-' OR Timing = ' ' THEN 1 else 0 END) AS missing_Timing,
    SUM(CASE WHEN Rating = '-' OR Rating = ' ' THEN 1 else 0 END) AS missing_Rating,
    SUM(CASE WHEN Votes = '-' OR Votes = ' ' THEN 1 else 0 END) AS missing_Votes,
    SUM(CASE WHEN Genre = '-' OR Genre = ' ' THEN 1 else 0 END) AS missing_Genre,
    SUM(CASE WHEN Language = '-' OR Language = ' ' THEN 1 else 0 END) AS missing_Language
    FROM indian_movies;
    
    -- finding duplicate values
    SELECT 
    ID, Movie_name, Year, COUNT(*) AS repear_count
    FROM indian_movies
    GROUP BY ID, Movie_name ,Year
    HAVING COUNT(*);
    
    -- Duplicate only by Movie Name + Year:
    SELECT 
	Movie_name, Year, COUNT(*) AS duplicate
    FROM indian_movies
    GROUP BY Movie_name ,Year
    HAVING duplicate;
    
    -- Find total duplicates based on all columns
    SELECT COUNT(*) - COUNT(DISTINCT CONCAT(ID, Movie_Name, Year, Timing, Rating, Votes, Genre, Language)) AS duplicate_rows
    FROM indian_movies;

    
    
    
    
    
    
    