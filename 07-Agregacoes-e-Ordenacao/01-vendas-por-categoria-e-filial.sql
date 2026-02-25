/* OBJETIVO: Agrupar vendas por Vendedor e Filial para análise de performance.
CONCEITO: Uso de GROUP BY associado à função de agregação COUNT e ordenação (ORDER BY).
*/

-- Ranking de Vendedores por volume de vendas
SELECT  
  Vendedor,
  COUNT(Quantidade_Vendida) AS Vendas
FROM `e-commerce-488001.Join.Vendas` 
GROUP BY Vendedor
ORDER BY Vendas;

-- Performance por Filial
SELECT  
  Filial,
  COUNT(Quantidade_Vendida) AS Vendas_Filial
FROM `e-commerce-488001.Join.Vendas` 
GROUP BY Filial
ORDER BY Vendas_Filial DESC;