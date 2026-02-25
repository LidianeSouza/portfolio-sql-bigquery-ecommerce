/* OBJETIVO: Monitorar a taxa de devolução ao longo do tempo (Ano e Mês).
CONCEITO: Uso de FORMAT_TIMESTAMP para extração de partes da data e agregação cronológica.
*/

-- Devoluções por Mês
SELECT  
  FORMAT_TIMESTAMP('%m', Data_devolucao) AS Mes,
  COUNT(Quantidade_Devolvida) AS Quantidade_Devolvida
FROM `e-commerce-488001.Join.Devolucao`
GROUP BY Mes
ORDER BY Mes;