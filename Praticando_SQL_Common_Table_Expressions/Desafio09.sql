-- A equipe de crédito deseja cruzar dados para encontrar clientes que possuem empréstimos pendentes
-- e, ao mesmo tempo, uma pontuação de crédito inferior a 500. 
-- Essa análise permitirá definir estratégias para lidar com clientes de alto risco.
-- Crie duas CTEs: uma para listar os clientes com empréstimos pendentes e outra para identificar os clientes com pontuação de crédito baixa.
-- Encontre a interseção entre esses grupos.

WITH ClientesPendentes AS (
    SELECT c.id_cliente, c.Nome
    FROM TabelaClientes c
    JOIN TabelaEmprestimos e ON c.id_cliente = e.id_cliente
    WHERE e.Status = 'Pendente'
),
ClientesBaixoScore AS (
    SELECT id_cliente, Nome
    FROM TabelaClientes
    WHERE Pontuacao < 500
)
SELECT cp.Nome
FROM ClientesPendentes cp
INNER JOIN ClientesBaixoScore cb ON cp.id_cliente = cb.id_cliente;
