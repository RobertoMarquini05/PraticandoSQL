-- A equipe de análise de risco deseja identificar clientes que possuem uma pontuação de crédito abaixo de 700. 
-- Esses clientes podem precisar de acompanhamento adicional para evitar inadimplência e receber orientações sobre planejamento financeiro.
-- Liste os clientes que possuem uma pontuação de crédito menor ou igual a 700.

SELECT id_cliente, Pontuacao, Fonte
FROM TabelaCredito
WHERE Pontuacao <= 700;
