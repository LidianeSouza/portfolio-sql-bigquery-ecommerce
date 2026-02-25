/* OBJETIVO: Refinar buscas dentro de faixas de valores (Preço e Quantidade).
CONCEITO: Uso do BETWEEN para simplificar filtros de "de/até".
*/

-- Itens com preço total entre 200 e 400 reais
SELECT * 
FROM `e-commerce-488001.Vendas.Items` 
WHERE quantity = 4 AND total_price BETWEEN 200 AND 400;

-- Combinação de intervalos: Quantidade (3 a 5) e Preço (100 a 350)
SELECT * 
FROM `e-commerce-488001.Vendas.Items` 
WHERE quantity BETWEEN 3 AND 5 
  AND total_price BETWEEN 100 AND 350;