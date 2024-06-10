SELECT maker, COUNT(DISTINCT model) AS num_modelos
FROM product
WHERE type = 'PC'
GROUP BY maker
HAVING COUNT(DISTINCT model) >= 3;
