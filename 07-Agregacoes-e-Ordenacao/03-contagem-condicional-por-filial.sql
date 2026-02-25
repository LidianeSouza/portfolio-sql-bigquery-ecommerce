/* OBJETIVO: Analisar devoluções específicas de uma filial dentro de um agrupamento geral.
CONCEITO: Combinação de CASE WHEN dentro de um COUNT para criar métricas customizadas por ano.
*/

SELECT
  COUNT(CASE WHEN Filial = 'Salvador' THEN Quantidade_Devolvida END) AS Dev_Salvador,
  FORMAT_TIMESTAMP('%Y', Data_devolucao) AS Ano
FROM `e-commerce-488001.Join.Devolucao`
GROUP BY Ano;