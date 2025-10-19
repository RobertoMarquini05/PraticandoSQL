-- A gerência deseja entender melhor a distribuição dos custos salariais por departamento,
-- a fim de otimizar o orçamento e planejar futuros investimentos em contratações e promoções.
-- Crie uma CTE para calcular o total de salários pagos em cada departamento.

WITH SalariosPorDepartamento AS (
    SELECT id_departamento, SUM(Salario) AS TotalSalarios
    FROM TabelaColaboradores
    GROUP BY id_departamento
)
SELECT *
FROM SalariosPorDepartamento;
