/* OBJETIVO: Filtrar registros com base em padrões de texto e padronizar a exibição de strings.
CONCEITO: Uso de STARTS_WITH para busca de prefixos e funções LOWER/UPPER para normalização de caracteres.
*/

-- Busca de vendedores cujo nome inicia com o padrão "An"
SELECT
  ID_Vendedor,
  Vendedor
FROM `e-commerce-488001.Join.Vendedor`
WHERE STARTS_WITH(Vendedor,"An");

-- Busca explícita utilizando validação booleana (True)
SELECT
  ID_Vendedor,
  Vendedor
FROM `e-commerce-488001.Join.Vendedor`
WHERE STARTS_WITH(Vendedor,"An") IS True;

-- Exclusão de registros que iniciam com o padrão "An" (Uso do IS False)
SELECT
  ID_Vendedor,
  Vendedor
FROM `e-commerce-488001.Join.Vendedor`
WHERE STARTS_WITH(Vendedor,"An") IS False;

-- Padronização de nomes de Filiais para maiúsculo e minúsculo
SELECT
  Filial,
  LOWER(Filial) AS Minusculo,
  UPPER(Filial) AS Maiusculo
FROM `e-commerce-488001.Join.Vendas`;