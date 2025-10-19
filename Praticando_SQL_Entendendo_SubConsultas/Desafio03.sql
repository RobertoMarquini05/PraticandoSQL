-- Consulta para contar o número de empréstimos ativos por cidade
SELECT 
    c.Cidade AS Cidade,
    COUNT(e.id_emprestimo) AS TotalEmprestimosAtivos
FROM 
    Clientes c
JOIN 
    Emprestimos e ON c.id_cliente = e.id_cliente
WHERE 
    e.Status = 1  -- Considerando que 1 = Ativo
GROUP BY 
    c.Cidade;
