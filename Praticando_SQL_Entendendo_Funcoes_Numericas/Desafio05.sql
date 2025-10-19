-- CuboComfort deseja calcular o número mínimo de caixas necessárias para enviar almofadas,
-- considerando que cada caixa comporta até 8 almofadas, para uma amostra de 5 pedidos.

SELECT id_pedido,
       Quantidade AS [Quantidade Vendida],
       CEILING(Quantidade / 8.0) AS [Qtd Caixas]
FROM TabelaPedidos
WHERE id_pedido IN ('P001', 'P002', 'P003', 'P004', 'P005')
ORDER BY id_pedido;
