-- Consulta para calcular o total de salários pagos por departamento

SELECT
    id_departamento,
    SUM(Salario) AS TotalSalarios
FROM TabelaColaboradores
GROUP BY id_departamento;
