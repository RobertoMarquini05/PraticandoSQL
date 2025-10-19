-- A equipe de análise deseja identificar clientes que estão abaixo da média de idade do público da instituição,
-- pois podem representar um nicho de mercado específico para produtos financeiros direcionados a jovens adultos.
-- Crie duas CTEs: uma para calcular a idade média dos clientes e outra para identificar os clientes com idade abaixo dessa média.

WITH IdadeMedia AS (
    SELECT AVG(DATEDIFF(YEAR, DataNascimento, GETDATE())) AS MediaIdade
    FROM TabelaClientes
),
ClientesAbaixoMedia AS (
    SELECT Nome, DATEDIFF(YEAR, DataNascimento, GETDATE()) AS Idade
    FROM TabelaClientes, IdadeMedia
    WHERE DATEDIFF(YEAR, DataNascimento, GETDATE()) < IdadeMedia.MediaIdade
)
SELECT *
FROM ClientesAbaixoMedia;
