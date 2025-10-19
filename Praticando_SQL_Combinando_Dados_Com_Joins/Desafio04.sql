-- A empresa precisa de um relatório detalhado apresentando quais clientes possuem empréstimos, destacando quais empréstimos ainda não foram associados a nenhum cliente e os clientes que não possuem empréstimos. Este relatório ajudará a equipe financeira a avaliar a eficácia das políticas de crédito e identificar oportunidades de negócios adicionais.

SELECT 
    cli.Nome AS NomeCliente,
    emp.Tipo AS TipoEmprestimo,
    emp.Valor
FROM Clientes cli
INNER JOIN Emprestimos emp ON cli.id_cliente = emp.id_cliente
ORDER BY cli.Nome;
