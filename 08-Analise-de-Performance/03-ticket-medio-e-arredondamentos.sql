/* OBJETIVO: Calcular o ticket médio de vendas por vendedor, ano e filial.
CONCEITO: Uso de AVG para média e ROUND para garantir a precisão financeira (2 casas decimais).
*/

-- Média de vendas anual arredondada

SELECT
  FORMAT_TIMESTAMP('%Y', Data) AS Ano,
  ROUND(AVG(total_de_vendas), 2) as Media_Anual
FROM `e-commerce-488001.Join.Vendas`
GROUP BY Ano
ORDER BY Ano;

-- Ticket Médio por Filial e Produto

SELECT
  Filial,
  Produto,
  ROUND(AVG(total_de_vendas), 2) as Ticket_Medio
FROM `e-commerce-488001.Join.Vendas`
GROUP BY Filial, Produto
ORDER BY Filial;

-- ESTUDO DE CASO 1: Ticket Médio por Filial e Vendedor

SELECT
  Filial,
  Vendedor,
  ROUND(AVG(total_de_vendas), 2) as Ticket_Medio
FROM `e-commerce-488001.Join.Vendas`
GROUP BY Filial, Vendedor
ORDER BY Ticket_Medio DESC;