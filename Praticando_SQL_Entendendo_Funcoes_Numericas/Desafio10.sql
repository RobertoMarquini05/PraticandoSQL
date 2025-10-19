-- Consulta para calcular a distância euclidiana entre a sede da CuboComfort e os clientes,
-- e calcular o valor do frete considerando R$50 por caixa se a distância >= 60 km

SELECT
    id_pedido,
    CidadeCliente,
    ROUND(
        SQRT(
            POWER(LatitudeCliente - (-23.588161), 2) + 
            POWER(LongitudeCliente - (-46.632344), 2)
        ) * 111.19, 1
    ) AS Distancia,
    CASE
        WHEN SQRT(
                 POWER(LatitudeCliente - (-23.588161), 2) + 
                 POWER(LongitudeCliente - (-46.632344), 2)
             ) * 111.19 < 60 THEN 0
        ELSE CEILING(QtdCaixas * 50)
    END AS Frete
FROM TabelaPedidos;
