-- Consulta para listar clientes com todos os empréstimos quitados
SELECT 
    c.Nome AS Cliente
FROM 
    Clientes c
WHERE 
    c.id_cliente NOT IN (
        SELECT DISTINCT 
            e.id_cliente
        FROM 
            Emprestimos e
        JOIN 
            Pagamentos p ON e.id_emprestimo = p.id_emprestimo
        WHERE 
            p.Status = 'Pendente'
    );
