-- Consulta para identificar categorias de empréstimos com total concedido superior a R$ 20.000

SELECT
    Tipo,
    SUM(Valor) AS TotalPorTipo
FROM TabelaEmprestimo
GROUP BY Tipo
HAVING SUM(Valor) > 20000;
