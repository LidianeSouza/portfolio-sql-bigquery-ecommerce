/* OBJETIVO: Identificar a diversidade de nomes e a abrangência estadual da base.
CONCEITO: Uso do DISTINCT para remover duplicatas e entender a cardinalidade dos dados.
*/

-- Lista de nomes únicos na base
SELECT DISTINCT
    first_name
FROM `e-commerce-488001.Vendas.Clientes`;

-- Lista de estados onde temos clientes ativos
SELECT DISTINCT 
    state
FROM `e-commerce-488001.Vendas.Clientes`;