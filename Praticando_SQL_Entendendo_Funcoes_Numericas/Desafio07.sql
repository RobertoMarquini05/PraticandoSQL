-- CuboComfort deseja calcular a diferença absoluta entre as vendas mensais de 2024
-- e a média das vendas dos últimos cinco anos para cada mês.

SELECT Mes,
       Ano,
       ABS(Vendas2024 - MediaUltimos5Anos) AS DiferencaAbsolutaVendas
FROM TabelaMetasVendasMensais
WHERE Ano = 2024
ORDER BY CASE Mes
            WHEN 'Janeiro' THEN 1
            WHEN 'Fevereiro' THEN 2
            WHEN 'Março' THEN 3
            WHEN 'Abril' THEN 4
            WHEN 'Maio' THEN 5
            WHEN 'Junho' THEN 6
            WHEN 'Julho' THEN 7
            WHEN 'Agosto' THEN 8
            WHEN 'Setembro' THEN 9
            WHEN 'Outubro' THEN 10
            WHEN 'Novembro' THEN 11
            WHEN 'Dezembro' THEN 12
         END;
