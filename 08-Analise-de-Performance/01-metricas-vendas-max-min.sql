/* OBJETIVO: Identificar recordes positivos e negativos de vendas.
CONCEITO: Uso de MAX e MIN para encontrar os maiores e menores valores de faturamento e quantidade.
*/

SELECT 
  MAX(total_de_vendas) as V_Max,
  MIN(total_de_vendas) as V_Min,
  MAX(Quantidade_Vendida) as Qtd_Max
FROM `e-commerce-488001.Join.Vendas`;