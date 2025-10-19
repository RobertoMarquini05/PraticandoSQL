-- O time de marketing precisa identificar o ano de nascimento dos clientes para uma campanha segmentada.
-- Extraia o ano da coluna DataNascimento na tabela TabelaClientes.

SELECT Nome, YEAR(DataNascimento) AS AnoNascimento
FROM TabelaClientes;