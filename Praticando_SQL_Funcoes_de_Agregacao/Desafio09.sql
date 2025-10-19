-- Consulta para calcular total, média, maior e menor valor dos empréstimos concedidos

SELECT
    SUM(Valor) AS TotalEmprestimos,
    AVG(Valor) AS MediaEmprestimos,
    MAX(Valor) AS MaiorEmprestimo,
    MIN(Valor) AS MenorEmprestimo
FROM TabelaEmprestimo;
