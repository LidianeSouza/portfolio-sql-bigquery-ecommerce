/* OBJETIVO: Filtrar grupos específicos de clientes para campanhas direcionadas.
CONCEITO: Aplicação de filtros IN para inclusão e NOT IN combinado com AND para exclusão e segmentação regional.
*/

-- Filtro de clientes específicas (Campanha VIP)
SELECT 
  first_name, 
  last_name, 
  state
FROM `e-commerce-488001.Vendas.Clientes`
WHERE first_name IN ('Mariana', 'Carol', 'Ana');

-- Filtro de prospecção regional (Excluindo nomes específicos em estados selecionados)
SELECT 
  first_name, 
  last_name, 
  state
FROM `e-commerce-488001.Vendas.Clientes`
WHERE first_name NOT IN ('Mariana', 'Carol', 'Ana')
  AND state IN ('Bahia', 'Pará', 'Goiás');