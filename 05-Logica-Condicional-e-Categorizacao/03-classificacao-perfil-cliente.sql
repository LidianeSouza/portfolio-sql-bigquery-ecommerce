/* OBJETIVO: Criar um sistema de pontuação/tier de clientes com base no volume de itens.
CONCEITO: Uso de CASE WHEN com intervalos numéricos para definir perfis de consumo.
*/

SELECT
  order_id,
  quantity,
  CASE
    WHEN quantity BETWEEN 0 AND 3 THEN 'Premium' -- Baixo volume/Alta exclusividade
    ELSE 'Gold' -- Alto volume
  END AS Tipo_Cliente
FROM `e-commerce-488001.Vendas.Items`;