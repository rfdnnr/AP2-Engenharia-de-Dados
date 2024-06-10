SELECT laptop.model, laptop.price
FROM product
JOIN laptop ON product.model = laptop.model
where maker = 'B'
UNION ALL
SELECT printer.model, printer.price
FROM product
JOIN printer ON product.model = printer.model
where maker = 'B'
union all
SELECT pc.model, pc.price
FROM product
JOIN pc ON product.model = pc.model
where maker = 'B'