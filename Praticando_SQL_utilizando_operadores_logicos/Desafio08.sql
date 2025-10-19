-- A equipe de suporte deseja filtrar clientes que residem no Rio de Janeiro ou em Salvador e cujo CPF começa com "6", 
-- pois esses clientes poderão receber benefícios personalizados.
-- Liste os clientes que moram no Rio de Janeiro ou Salvador e cujo CPF inicie com "6".

SELECT Nome, CPF, Cidade, Estado
FROM TabelaClientes
WHERE (Cidade = 'Rio de Janeiro' OR Cidade = 'Salvador')
  AND CPF LIKE '6%';
