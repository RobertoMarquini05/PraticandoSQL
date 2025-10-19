-- Consulta para calcular o total de valores concedidos e a quantidade de empréstimos por tipo

SELECT
    Tipo,
    SUM(Valor) AS TotalValor,
    COUNT(*) AS QuantidadeEmprestimos
FROM TabelaEmprestimo
GROUP BY Tipo;
