-- CuboComfort deseja calcular o preço total a pagar por cada cliente após aplicar o desconto,
-- arredondando o valor **para baixo** para garantir o menor preço possível.

SELECT id_pedido,
       Quantidade AS [Quantidade Vendida],
       PrecoUnitario AS [Preço Unitário],
       Desconto,
       FLOOR(Quantidade * PrecoUnitario * (1 - Desconto)) AS [Preço Total]
FROM TabelaPedidos
WHERE id_pedido IN ('P001', 'P002', 'P003', 'P004', 'P005')
ORDER BY id_pedido;
