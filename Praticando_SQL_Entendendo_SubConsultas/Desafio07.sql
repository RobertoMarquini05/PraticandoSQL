-- Consulta para listar clientes com empréstimos ativos
SELECT 
    c.Nome AS Cliente,
    COUNT(e.IdEmprestimo) AS QtdEmprestimosAtivos
FROM 
    Clientes c
JOIN 
    Emprestimos e ON c.IdCliente = e.IdCliente
WHERE 
    e.Status = 'Ativo'  -- Considerando que Status indica se o empréstimo está ativo
GROUP BY 
    c.Nome
HAVING 
    COUNT(e.IdEmprestimo) > 0
ORDER BY 
    QtdEmprestimosAtivos DESC;
