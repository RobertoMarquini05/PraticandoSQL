-- Consulta para calcular a média dos valores de empréstimos usando soma total dividido pela quantidade de empréstimos

SELECT
    SUM(Valor) / COUNT(*) AS MediaEmprestimos
FROM TabelaEmprestimo;
