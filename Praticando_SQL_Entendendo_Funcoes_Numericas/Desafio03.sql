-- A CuboComfort deseja calcular a margem de lucro bruto mensal em 2024.
-- Utilize a tabela TabelaVendasMensais para calcular Margem Lucro Bruto (%) como ((Receita - Custo) / Receita) * 100.

SELECT Mes,
       Ano,
       ROUND(((Quantidade * Preco_Unitario) - (Quantidade * Custo_Unitario)) / (Quantidade * Preco_Unitario) * 100, 1) AS [Margem Lucro Bruto (%)]
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
