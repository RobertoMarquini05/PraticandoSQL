-- A equipe de vendas quer planejar uma campanha específica para clientes do estado de São Paulo (SP). 
-- Utilize a tabela TabelaClientes para listar os clientes que residem nesse estado.

SELECT Nome, Estado
FROM TabelaClientes
WHERE Estado = 'SP';