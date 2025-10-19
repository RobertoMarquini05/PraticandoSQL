-- O setor de análise de crédito precisa padronizar os relatórios utilizados em apresentações para investidores. 
-- Padronize as fontes de consulta do score de crédito: "Serasa" → "SER", "SPC" → "SPC", "Boa Vista" → "BOA".

SELECT id_score, Fonte,
       CASE 
           WHEN Fonte = 'Serasa' THEN 'SER'
           WHEN Fonte = 'SPC' THEN 'SPC'
           WHEN Fonte = 'Boa Vista' THEN 'BOA'
           ELSE Fonte
       END AS FonteAbreviada
FROM TabelaCredito;
