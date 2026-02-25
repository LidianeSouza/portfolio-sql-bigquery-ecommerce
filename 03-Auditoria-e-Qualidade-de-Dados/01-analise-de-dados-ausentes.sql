/* OBJETIVO: Identificar falhas no processo de cadastro e integridade dos dados.
CONCEITO: Uso de IS NULL e IS NOT NULL para auditoria de campos obrigatórios.
*/

-- Identifica clientes que não informaram e-mail (Gap de comunicação)
SELECT *
FROM `e-commerce-488001.Vendas.Clientes`
WHERE email IS NULL;

-- Auditoria de cadastros críticos: Clientes que possuem E-mail, Rua e Complemento (Base Higienizada)
SELECT *
FROM `e-commerce-488001.Vendas.Clientes`
WHERE email IS NOT NULL
  AND street IS NOT NULL
  AND additionals IS NOT NULL;