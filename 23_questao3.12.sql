--PCs com a menor quantidade de RAM.
WITH menores_ram AS (
  SELECT MIN(ram) AS ram FROM PC
),

-- entre eles, encontrar os com a maior velocidade de processamento.
maior_velocidade_com_menos_ram AS (
  SELECT model, MAX(speed) AS speed
  FROM PC, menores_ram
  WHERE PC.ram = menores_ram.ram
  GROUP BY PC.model
),

--verificando quais fabricantes desses PCs também fabricam impressoras.
printer_makers AS (
  SELECT DISTINCT maker
  FROM Product
  WHERE model IN (SELECT model FROM Printer)
),

makers_de_pc_com_menor_ram_e_maior_velocidade AS (
  SELECT DISTINCT maker
  FROM Product
  WHERE model IN (SELECT model FROM maior_velocidade_com_menos_ram)
)

-- seleção final
SELECT maker
FROM makers_de_pc_com_menor_ram_e_maior_velocidade
WHERE maker IN (SELECT maker FROM printer_makers);