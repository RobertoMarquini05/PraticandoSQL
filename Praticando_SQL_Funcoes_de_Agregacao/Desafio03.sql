-- Consulta para identificar o menor valor de empréstimo já concedido pela instituição

SELECT
    MIN(Valor) AS MenorEmprestimo
FROM TabelaEmprestimo;
