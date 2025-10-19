-- A equipe financeira deseja mapear a quantidade de clientes em cada estado,
-- com o objetivo de identificar regiões estratégicas para expansão e direcionamento de novos produtos financeiros.
-- Crie uma CTE para calcular a quantidade de clientes por estado.

WITH ClientesPorEstado AS (
    SELECT Estado, COUNT(*) AS QuantidadeClientes
    FROM TabelaClientes
    GROUP BY Estado
)
SELECT *
FROM ClientesPorEstado;
