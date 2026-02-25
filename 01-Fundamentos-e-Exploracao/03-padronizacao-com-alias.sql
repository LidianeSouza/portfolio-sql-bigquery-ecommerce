/* OBJETIVO: Criar uma visualização amigável para o usuário final (Relatório).
CONCEITO: Uso de ALIAS (AS) para tradução de cabeçalhos e organização de colunas de contato.
*/

-- Relatório de Contatos de Clientes
SELECT 
  first_name AS Nome,
  cell_phone AS Telefone,
  email AS E_mail
FROM `e-commerce-488001.Vendas.Clientes`;

-- Consulta de Catálogo com Alias de Tabela
SELECT 
  cadastro.name AS Nome_Produto,
  cadastro.price AS Preco,
  cadastro.category_id AS ID_Categoria
FROM `e-commerce-488001.Vendas.Produto` AS Cadastro;