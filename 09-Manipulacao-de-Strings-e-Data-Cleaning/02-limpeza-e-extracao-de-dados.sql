/* OBJETIVO: Realizar a limpeza de caracteres indesejados e desmembrar informações compostas.
CONCEITO: Aplicação de TRIM para higienização e SPLIT com ORDINAL para extração de partes específicas de uma string.
*/

-- Desmembramento do nome completo em colunas separadas (Nome e Sobrenome)
SELECT
  ID_Vendedor,
  SPLIT(Vendedor, " ") [ORDINAL (1)] AS Nome,
  SPLIT(Vendedor, " ") [ORDINAL (2)] AS Sobrenome
FROM `e-commerce-488001.Join.Vendedor`;

-- Higienização de campos com caracteres especiais ou espaços em branco
SELECT
  TRIM("    123.456.789-00", " ") AS CPF,
  TRIM("---Ana Almeida---", "-") AS Nome;