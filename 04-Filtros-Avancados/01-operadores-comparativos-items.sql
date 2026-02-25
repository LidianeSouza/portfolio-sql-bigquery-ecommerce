/* OBJETIVO: Filtrar volumes de vendas utilizando operadores matemáticos.
CONCEITO: Uso de >, >=, <, <= e = para identificar pedidos de alto e baixo volume.
*/

-- Pedidos com quantidade superior a 4 itens
SELECT * 
FROM `e-commerce-488001.Vendas.Items` 
WHERE quantity > 4;

-- Pedidos com quantidade exata de 4 itens e alto valor agregado
SELECT * 
FROM `e-commerce-488001.Vendas.Items` 
WHERE quantity = 4 AND total_price > 200;