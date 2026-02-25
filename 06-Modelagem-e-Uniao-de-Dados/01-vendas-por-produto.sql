/* OBJETIVO: Enriquecer a tabela de vendas com informações do cadastro de produtos.
CONCEITO: Uso do INNER JOIN para combinar dados de tabelas distintas via chave SKU.
*/

SELECT  
  v.SKU,
  v.Quantidade_Vendida,
  p.Produto
FROM `e-commerce-488001.Join.Vendas` v
JOIN `e-commerce-488001.Join.Cad_Produto` p ON v.SKU = p.SKU;