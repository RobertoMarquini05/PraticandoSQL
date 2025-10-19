-- Consulta para listar clientes com empréstimos acima da média geral
SELECT 
    c.Nome AS NomeCliente,
    e.Valor AS ValorEmprestimo
FROM 
    Clientes c
JOIN 
    Emprestimos e ON c.id_cliente = e.id_cliente
WHERE 
    e.Valor > (SELECT AVG(Valor) FROM Emprestimos);
