-- A empresa quer focar em clientes de alto valor para otimizar suas estratégias de relacionamento e oferecer produtos e serviços adicionais ajustados às necessidades desses clientes. Para isso, é crucial identificar quais clientes têm acumulado grandes somas, ultrapassando $10,000, em empréstimos.

SELECT
    c.Nome AS Cliente,
    SUM(e.Valor) AS TotalEmprestimos
FROM Clientes c
JOIN Emprestimos e ON c.id_cliente = e.id_cliente
GROUP BY c.Nome
HAVING SUM(e.Valor) > 10000
ORDER BY TotalEmprestimos DESC;
