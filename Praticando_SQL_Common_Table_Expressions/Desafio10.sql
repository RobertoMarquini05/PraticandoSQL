-- A equipe de análise deseja entender o comportamento das contas bancárias abertas recentemente.
-- Para isso, é necessário calcular quantas contas foram abertas após 2023 e qual é o saldo médio dessas contas.
-- Crie duas CTEs: uma para calcular o número total de contas abertas após 2023 e outra para calcular o saldo médio dessas contas.

WITH ContasRecentes AS (
    SELECT *
    FROM TabelaContas
    WHERE AnoAbertura > 2023
),
TotalContas AS (
    SELECT COUNT(*) AS TotalContas
    FROM ContasRecentes
),
MediaSaldo AS (
    SELECT AVG(Saldo) AS MediaSaldo
    FROM ContasRecentes
)
SELECT t.TotalContas, m.MediaSaldo
FROM TotalContas t
CROSS JOIN MediaSaldo m;
