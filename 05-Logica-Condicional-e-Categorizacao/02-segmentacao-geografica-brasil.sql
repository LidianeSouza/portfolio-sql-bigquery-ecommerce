/* OBJETIVO: Agrupar Estados em Regiões (Sul, Sudeste, Outros).
CONCEITO: Transformação de dados geográficos para facilitar relatórios gerenciais de vendas.
*/

SELECT
  first_name AS Nome,
  email,
  State AS Estado,
  CASE
    WHEN State IN ('Paraná', 'Santa Catarina', 'Rio Grande do Sul') THEN 'Sul'
    WHEN State IN ('São Paulo', 'Minas Gerais', 'Rio de Janeiro', 'Espírito Santo') THEN 'Sudeste'
    ELSE 'Outros'
  END AS Regiao
FROM `e-commerce-488001.Vendas.Clientes`
WHERE state IS NOT NULL;