-- Liste os empréstimos registrados entre 2023-01-01 e 2023-03-31 na tabela TabelaEmprestimo.

SELECT *
FROM TabelaEmprestimo
WHERE DataInicio BETWEEN '2023-01-01' AND '2023-03-31';