/* OBJETIVO: Realizar uma inspeção rápida na estrutura da tabela de clientes.
CONTEXTO: Antes de iniciar qualquer análise, é necessário entender quais campos estão disponíveis 
e como os dados estão populados. O LIMIT 10 evita o processamento desnecessário de dados (custo).
*/

SELECT *
FROM `e-commerce-488001.Vendas.Clientes`
    LIMIT 10;