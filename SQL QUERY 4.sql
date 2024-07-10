SELECT c.Country, ROUND(AVG(c.`Growth Rate`), 4) AS avg_growth_rate
FROM `world largest cities by population 2024` c
JOIN (
    SELECT Country, SUM(`Population (2024)`) AS total_population
    FROM `world largest cities by population 2024`
    GROUP BY Country
    ORDER BY total_population DESC
    LIMIT 5
) AS top_countries ON c.Country = top_countries.Country
GROUP BY c.Country;