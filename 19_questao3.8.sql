SELECT DISTINCT product.maker, printer.price
FROM printer
join product on product.model = printer.model
WHERE color = 'y'
ORDER BY price ASC
LIMIT 1;
