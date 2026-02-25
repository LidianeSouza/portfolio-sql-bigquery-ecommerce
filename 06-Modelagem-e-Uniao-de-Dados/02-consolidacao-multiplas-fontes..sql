/* OBJETIVO: Consolidar um relatório completo unindo Vendas, Vendedores e Produtos.
CONCEITO: Encadeamento de múltiplos JOINs para criar uma visão única de performance.
*/

SELECT  
  v.SKU,
  v.ID_Vendedor,
  v.total_de_vendas,
  i.Vendedor,
  c.Produto
FROM `e-commerce-488001.Join.Vendas` v
JOIN `e-commerce-488001.Join.Vendedor` i ON v.ID_Vendedor = i.ID_Vendedor
JOIN `e-commerce-488001.Join.Cad_Produto` c ON v.SKU = c.SKU;