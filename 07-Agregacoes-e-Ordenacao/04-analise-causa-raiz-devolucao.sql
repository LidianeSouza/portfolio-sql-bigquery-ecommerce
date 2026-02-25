/* OBJETIVO: Identificar os motivos de devolução por filial e por produto.
CONCEITO: Agrupamento multi-nível (Filial e Motivo) para identificar gargalos operacionais.
*/

-- Devoluções por Filial e Motivo
SELECT 
    Filial, 
    Motivo, 
    COUNT(Quantidade_Devolvida) AS Devolucao
FROM `e-commerce-488001.Join.Devolucao`
GROUP BY Filial, Motivo
ORDER BY Filial;

-- ESTUDO DE CASO 2: Produtos com maior índice de devolução e seus motivos (via JOIN)
SELECT 
    p.Produto,
    d.Motivo,
    COUNT(d.Quantidade_Devolvida) AS Total_Devolucoes
FROM `e-commerce-488001.Join.Devolucao` AS d
JOIN `e-commerce-488001.Join.Cad_Produto` AS p
    ON d.SKU = p.SKU
GROUP BY p.Produto, d.Motivo
ORDER BY Total_Devolucoes DESC;