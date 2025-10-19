-- Você precisa exibir a data de nascimento dos clientes da tabela TabelaClientes no formato YYYY-MM-DD.
-- Use a função de formatação para ajustar o formato de exibição.

SELECT Nome, DATE_FORMAT(DataNascimento, '%Y-%m-%d') AS DataFormatada
FROM TabelaClientes;

--Observação:

--No SQL Server, a função equivalente seria:

--SELECT Nome, FORMAT(DataNascimento, 'yyyy-MM-dd') AS DataFormatada
--FROM TabelaClientes;


--Em PostgreSQL, você pode usar:

--SELECT Nome, TO_CHAR(DataNascimento, 'YYYY-MM-DD') AS DataFormatada
--FROM TabelaClientes;