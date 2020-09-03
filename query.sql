--Query All
Select * from wine;

--Query relevant columns
SELECT wine.id, wine.country, wine.designation, wine.points, wine.price, wine.province, wine.region01 FROM wine;
SELECT country,
COUNT(*),
AVG(points) AS Average_points
FROM wine
GROUP BY country
ORDER BY AVG(points) DESC;

--Query for wine value: The best rated wine for less than $40
SELECT id, variety, points, price, country, province, winery 
FROM wine
WHERE price <=40
ORDER BY points DESC;

--Query for high quality (>$90) wine for less than $15
SELECT id, variety, points, price, country, province, winery 
FROM wine
WHERE points >=90
AND price<=15
ORDER BY price;

--Find countries with the cheapest wine
SELECT country,
ROUND(AVG(price),2) AS avg_price
FROM wine
GROUP BY country
ORDER BY avg_price;

--Find countries with the highest value wine (cheapest with quality >90)
SELECT country,
ROUND(AVG(price),2) AS avg_price
FROM wine
WHERE points >=90
GROUP BY country
ORDER BY avg_price;

--Find the lowest priced wine(s) & then query it
SELECT ROUND(MIN(price),2) AS min_price FROM wine;

SELECT id, variety, points, price, country, province, winery 
FROM wine
WHERE price = 4;

--Find the highest priced wine(s) & then query it
SELECT ROUND(MAX(price),2) AS min_price FROM wine;

SELECT id, variety, points, price, country, province, winery 
FROM wine
WHERE price = 2300;

--Query wines with a perfect score
SELECT id, variety, points, price, country, province, winery 
FROM wine
WHERE points = 100;


