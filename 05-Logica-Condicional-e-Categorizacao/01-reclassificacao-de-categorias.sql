/* OBJETIVO: Criar uma nova taxonomia para o catálogo de produtos.
CONCEITO: Uso do CASE WHEN para agrupar categorias específicas em grupos maiores.
*/

SELECT
  Id,
  Name,
  CASE
    WHEN Name IN ('Moda e Acessórios', 'Cosméticos e Perfumaria', 'Livros') THEN 'Bem estar'
    WHEN Name IN ('Celulares', 'Informática', 'Eletrônicos') THEN 'Tecnologia'
    WHEN Name = 'Brinquedos e Games' THEN 'Kids'
    ELSE 'Outros'
  END AS Cat_Geral
FROM `e-commerce-488001.Vendas.Categoria`;