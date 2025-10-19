-- A equipe financeira deseja calcular o total de pagamentos realizados para cada empréstimo e identificar aqueles que já receberam pagamentos acima de R$ 1.000.
-- Isso ajudará a monitorar a recuperação de crédito e avaliar padrões de pagamento dos clientes.
-- Crie duas CTEs: uma para calcular o total de pagamentos por empréstimo e outra para filtrar os empréstimos com total de pagamentos superior a R$ 1.000.

WITH TotalPagamentosPorEmprestimo AS (
    SELECT id_emprestimo, SUM(ValorPago) AS TotalPagamentos
    FROM TabelaPagamentos
    GROUP BY id_emprestimo
),
EmprestimosAcimaDeMil AS (
    SELECT id_emprestimo, TotalPagamentos
    FROM TotalPagamentosPorEmprestimo
    WHERE TotalPagamentos >= 1000
)
SELECT *
FROM EmprestimosAcimaDeMil;
