/* OBJETIVO: Analisar a recência (última compra) e antiguidade (primeira compra) dos clientes.
CONCEITO: Uso de MAX(Date) e MIN(Date) com JOINs para mapear o comportamento por nome do cliente.
*/

-- ESTUDO DE CASO 3:Identificando a data da última compra convertida para formato DATE

SELECT
  c.first_name AS Nome_Cliente,
  MAX(DATE(o.created_at)) AS Ultima_Compra
FROM `e-commerce-488001.Vendas.Ordens` o
JOIN `e-commerce-488001.Vendas.Clientes` c ON o.customer_id = c.id
GROUP BY Nome_Cliente
ORDER BY Ultima_Compra DESC;

-- Identificando a data da primeira compra convertida para formato DATE

SELECT
  c.first_name AS Nome_Cliente,
  MIN(DATE(o.created_at)) AS Primeira_Compra
FROM `e-commerce-488001.Vendas.Ordens` o
JOIN `e-commerce-488001.Vendas.Clientes` c ON o.customer_id = c.id
GROUP BY Nome_Cliente
ORDER BY Primeira_Compra ASC;

-- Analisando a recência e antiguidade dos clientes em um único resultado

SELECT
  c.first_name AS Nome_Cliente,
  MIN(DATE(o.created_at)) AS Primeira_Compra, -- Antiguidade
  MAX(DATE(o.created_at)) AS Ultima_Compra     -- Recência
FROM `e-commerce-488001.Vendas.Ordens` o
JOIN `e-commerce-488001.Vendas.Clientes` c ON o.customer_id = c.id
GROUP BY Nome_Cliente
ORDER BY Ultima_Compra DESC;
