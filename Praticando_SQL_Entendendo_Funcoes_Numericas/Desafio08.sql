-- CuboComfort deseja projetar as vendas após 5 anos com base em uma taxa de crescimento anual composta.

SELECT Ano AS AnoBase,
       VendasBase,
       ROUND(VendasBase * POWER(1 + TaxaCrescimento, 5), 0) AS VendasProjecao5Anos
FROM TabelaEstimativaCrescimento;
