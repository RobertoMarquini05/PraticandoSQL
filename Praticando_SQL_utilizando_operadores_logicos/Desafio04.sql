-- A equipe de marketing deseja criar campanhas voltadas exclusivamente para clientes maiores de idade, garantindo que todas as ofertas estejam em conformidade com as regulamentações.
-- Liste os clientes que possuem 18 anos ou mais.

SELECT Nome, DataNascimento, CPF
FROM TabelaClientes
WHERE DataNascimento <= DATEADD(YEAR, -18, GETDATE());

--Observação:

--No SQL Server, DATEADD(YEAR, -18, GETDATE()) calcula a data correspondente a 18 anos atrás.

--Para MySQL ou PostgreSQL, a função muda:

--MySQL:

--WHERE DataNascimento <= DATE_SUB(CURDATE(), INTERVAL 18 YEAR);


--PostgreSQL:

--WHERE DataNascimento <= CURRENT_DATE - INTERVAL '18 years';