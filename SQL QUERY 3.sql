SELECT Country, COUNT(*) AS num_cities
FROM `world largest cities by population 2024`
GROUP BY Country
ORDER BY num_cities DESC
LIMIT 1;