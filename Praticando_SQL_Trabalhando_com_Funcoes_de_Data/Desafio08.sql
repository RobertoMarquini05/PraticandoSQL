-- Verifique quais empréstimos estão vencidos com base na data atual no SQL Server.
-- Exiba "Vencido" se a data de vencimento já passou ou "No Prazo" caso contrário na tabela TabelaEmprestimo.

SELECT id_emprestimo,
       CASE 
           WHEN DATEADD(DAY, Prazo, DataInicio) < GETDATE() THEN 'Vencido'
           ELSE 'No Prazo'
       END AS StatusEmprestimo
FROM TabelaEmprestimo;
