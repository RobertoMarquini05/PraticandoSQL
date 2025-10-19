-- A empresa deseja visualizar todos os empréstimos realizados, seus valores e status (Ativo/Inativo), independentemente do cliente.

SELECT
    Tipo AS TipoEmprestimo,
    Valor,
    CASE
        WHEN Status = 1 THEN 'Ativo'
        ELSE 'Inativo'
    END AS Status
FROM Emprestimos;
