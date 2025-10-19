-- A equipe de crédito precisa calcular o total de valores de empréstimos que ainda estão pendentes de pagamento.
-- Esse levantamento ajudará na previsão de recebíveis e no monitoramento do fluxo de caixa da instituição.
-- Crie uma CTE para filtrar os empréstimos pendentes e calcular o total de seus valores.

WITH EmprestimosPendentes AS (
    SELECT Valor
    FROM TabelaEmprestimo
    WHERE Status = 0 -- assumindo 0 = pendente
)
SELECT SUM(Valor) AS TotalEmprestimosPendentes
FROM EmprestimosPendentes;
