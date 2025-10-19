-- Consulta para identificar o maior valor de empréstimo concedido pela instituição

SELECT
    MAX(Valor) AS MaiorEmprestimo
FROM TabelaEmprestimo;
