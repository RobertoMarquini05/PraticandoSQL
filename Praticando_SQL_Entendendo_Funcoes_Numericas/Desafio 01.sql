-- A empresa CuboComfort deseja calcular a receita e o custo para cada mês de 2024.
-- Utilize a tabela TabelaVendasMensais para obter receita (quantidade * preco_unitario) e despesa (quantidade * custo_unitario).

SELECT Mes,
       Ano,
       CAST(Quantidade * Preco_Unitario AS DECIMAL(10,2)) AS Receitas,
       CAST(Quantidade * Custo_Unitario AS DECIMAL(10,2)) AS Despesas
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
