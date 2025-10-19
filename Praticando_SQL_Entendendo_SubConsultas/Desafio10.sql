-- Consulta para calcular o valor total de empréstimos por cidade
SELECT 
    Cidade,
    (SELECT SUM(Valor) 
     FROM Emprestimos e2 
     WHERE e2.Cidade = e1.Cidade) AS TotalEmprestimos
FROM 
    Emprestimos e1
GROUP BY 
    Cidade;
