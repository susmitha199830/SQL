 -- Exploratory Data Analysis
 
 SELECT *
 FROM layoffs_staging2;
 
 SELECT MAX(total_laid_off), MAX(percentage_laid_off)
 FROM layoffs_staging2;
 
SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1;

SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
order by funds_raised_millions DESC;
 
SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
group by company;

SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
group by company
order by 2 DESC;

select MIN(`date`), MAX(`date`)
FROM layoffs_staging2;

SELECT country, SUM(total_laid_off)
FROM layoffs_staging2
group by country
order by 2 DESC;  

SELECT *
FROM layoffs_staging2;

SELECT stage, SUM(total_laid_off)
FROM layoffs_staging2
group by stage
order by 1 DESC;  

SELECT company, SUM(percentage_laid_off)
FROM layoffs_staging2
group by company
order by 2 DESC;  


SELECT company, avg(percentage_laid_off)
FROM layoffs_staging2
group by company
order by 2 DESC;  

SELECT *
FROM layoffs_staging2;

SELECT substring(`date`,6,2) AS `Month`,SUM(total_laid_off)
FROM layoffs_staging2
group by substring(`date`,6,2)  ;


SELECT substring(`date`,1,7) AS `Month`,SUM(total_laid_off)
FROM layoffs_staging2
WHERE substring(`date`,1,7) IS NOT NULL
group by `Month` 
ORDER BY 1 ASC ;




WITH rolling_total AS
(
SELECT substring(`date`,1,7) AS `Month`,SUM(total_laid_off)  AS total_off
FROM layoffs_staging2
WHERE substring(`date`,1,7) IS NOT NULL
group by `Month` 
ORDER BY 1 ASC 
)
SELECT `Month`, total_off,
SUM(total_off) OVER(ORDER BY `Month`) AS rolling_total
FROM rolling_total;
 
 
 
SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
group by company
order by 2 DESC;

SELECT company, YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
group by company, YEAR(`date`)
ORDER BY 3 DESC ;

WITH company_year( company, year, total_laid_off) AS
(
SELECT company, YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
group by company, YEAR(`date`)
)
SELECT * 
FROM company_Year;
 

WITH company_year ( company, years, total_laid_off) AS
(
SELECT company, YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
group by company, YEAR(`date`)
),company_year_rank AS
( SELECT *,
DENSE_RANK() OVER (PARTITION BY years ORDER BY total_laid_off DESC) AS ranking
FROM company_Year
WHERE years IS NOT NULL
)
SELECT *
FROM company_year_rank
where ranking <= 5 
;
	




































































 