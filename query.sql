Select * from wine;

SELECT wine.id, wine.country, wine.designation, wine.points, wine.price, wine.province, wine.region01 FROM wine;

SELECT country,
COUNT(*),
AVG(points) AS Average_points
FROM wine
GROUP BY country
ORDER BY AVG(points) DESC;


