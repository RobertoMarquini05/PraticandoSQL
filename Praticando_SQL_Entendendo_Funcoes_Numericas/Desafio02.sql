-- A CuboComfort deseja calcular o lucro bruto mensal em 2024.
-- Utilize a tabela TabelaVendasMensais para calcular lucro bruto (Receita - Despesa).

SELECT Mes,
       Ano,
       CAST((Quantidade * Preco_Unitario) - (Quantidade * Custo_Unitario) AS DECIMAL(10,2)) AS [Lucro Bruto]
FROM TabelaVendasMensais
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
