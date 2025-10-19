-- Consulta para calcular a média dos pagamentos por tipo de empréstimo
SELECT 
    e.Tipo AS TipoEmprestimo,
    (SELECT AVG(p.Valor)
     FROM Pagamentos p
     WHERE p.IdEmprestimo = e.IdEmprestimo) AS MediaPagamentos
FROM 
    Emprestimos e
GROUP BY 
    e.Tipo;
