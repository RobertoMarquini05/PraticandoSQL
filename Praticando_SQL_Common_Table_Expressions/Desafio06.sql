-- A equipe de crédito deseja analisar os clientes que possuem mais de uma conta bancária e verificar quais empréstimos foram concedidos a esses clientes.
-- Esse levantamento ajudará a entender se há um padrão entre clientes que diversificam suas contas bancárias e os tipos de empréstimos que contratam.
-- Crie duas CTEs: uma para identificar os clientes com mais de uma conta e outra para listar os empréstimos desses clientes.

WITH ClientesMultiplasContas AS (
    SELECT id_cliente
    FROM TabelaContas
    GROUP BY id_cliente
    HAVING COUNT(*) > 1
),
EmprestimosClientes AS (
    SELECT e.id_emprestimo, e.id_cliente, e.Valor
    FROM TabelaEmprestimos e
    INNER JOIN ClientesMultiplasContas c
        ON e.id_cliente = c.id_cliente
)
SELECT *
FROM EmprestimosClientes;
