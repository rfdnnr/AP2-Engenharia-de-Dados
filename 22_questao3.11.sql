(SELECT model, price FROM PC)
UNION ALL
(SELECT model, price FROM Laptop)
UNION ALL
(SELECT model, price FROM Printer)
ORDER BY price DESC
LIMIT 1;