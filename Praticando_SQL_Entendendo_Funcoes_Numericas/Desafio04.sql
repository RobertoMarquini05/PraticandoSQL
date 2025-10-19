-- A CuboComfort deseja calcular o lucro líquido mensal em 2024.
-- Lucro líquido = Receita - Custo - Impostos (30% do custo total)

SELECT Mes,
       Ano,
       ROUND((Quantidade * Preco_Unitario) - (Quantidade * Custo_Unitario) - ((Quantidade * Custo_Unitario) * 0.30), 2) AS [Lucro Líquido]
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
