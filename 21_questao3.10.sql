SELECT product.maker, MAX(pc.price) AS MaxPrice
FROM pc
join product on  product.model = pc.model
GROUP BY product.maker;