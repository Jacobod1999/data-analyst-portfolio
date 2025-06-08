# 🎬 IMDb Top 1000 Movies & TV Shows - Data Analysis Project  
👤 *By Jacobo Ochoa*  
🔗 *Dataset from [Kaggle](https://www.kaggle.com/datasets/harshitshankhdhar/imdb-dataset-of-top-1000-movies-and-tv-shows)*  

---

## 📌 Project Summary

**What makes a movie "Top Rated"?**  
This project analyzes the top 1000 movies and TV shows listed on IMDb to discover the patterns and characteristics that define highly-rated and high-grossing productions.

---

## 🎯 Objectives

- Import a public IMDb dataset into MySQL.
- Clean and explore data using SQL.
- Analyze key metrics (KPIs): top genres, gross revenue, ratings by decade, and more.
- Document the process in a professional format for your portfolio (Notion & GitHub).
- Design Tableau dashboards for visual storytelling *(optional future step)*.

---

## 🧰 Tools Used

| Tool | Purpose |
|------|---------|
| **MySQL** | Data storage, cleaning, querying |
| **Tableau Public** | Visualization and dashboards |
| **Notion** | Documentation and case study |
| **GitHub** | Project backup and publication |

---

## 🗂 Dataset Overview

- **Source**: IMDb via Kaggle
- **Format**: CSV, uploaded to MySQL
- **Rows**: 1000
- **Key Columns**:  
  `Series_Title`, `Released_Year`, `Genre`, `Director`, `IMDB_Rating`, `No_of_Votes`, `Gross`, etc.

---

## 🔧 Data Cleaning (SQL)

```sql
-- Remove extra whitespace
UPDATE imdb SET Series_Title = TRIM(Series_Title);

-- Fix year column: remove invalid data and convert to INT
UPDATE imdb SET Released_Year = NULL WHERE Released_Year = 'PG';
ALTER TABLE imdb MODIFY Released_Year INT;

-- Clean Gross column: remove commas and cast to INT
UPDATE imdb SET Gross = REPLACE(Gross, ',', '');
ALTER TABLE imdb MODIFY Gross INT;
```

---

## 📊 Exploratory SQL Queries

```sql
-- Top 5 most common genres
SELECT Genre, COUNT(*) AS Count
FROM imdb
GROUP BY Genre
ORDER BY Count DESC
LIMIT 5;

-- Average IMDb rating per decade
SELECT FLOOR(Released_Year/10)*10 AS Decade, ROUND(AVG(IMDB_Rating), 2) AS Avg_Rating
FROM imdb
GROUP BY Decade
ORDER BY Decade;

-- Top 10 highest grossing titles
SELECT Series_Title, Gross
FROM imdb
ORDER BY Gross DESC
LIMIT 10;

-- Top 5 directors with most entries
SELECT Director, COUNT(*) AS Movie_Count
FROM imdb
GROUP BY Director
ORDER BY Movie_Count DESC
LIMIT 5;
```

---

## 📈 Key Insights

- 🎭 **Most frequent genres**: Drama, Action, Crime
- 📈 **Highest average ratings**: 1990s and 1970s
- 🎬 **Most featured directors**: Christopher Nolan, Steven Spielberg
- 💰 **Top grossing movies**: *The Dark Knight*, *Inception*, *Avengers* titles
- 🎥 **Gross doesn’t always correlate with ratings**

---

## 📝 CV-Ready Description

> **IMDb Top 1000 Data Analysis (MySQL + Tableau)**  
> Imported a Kaggle dataset into MySQL, performed data cleaning and exploration using SQL, and uncovered insights such as top genres, ratings by decade, and top-grossing movies. Documented the entire process and structured it into a project-ready format for Notion and GitHub.

---

## ✅ Next Steps *(Optional)*

- Build interactive Tableau dashboards (filters by genre, ranking charts, decade trends)
- Add dashboard screenshots or live Tableau Public link
- Add GitHub Page for online publication