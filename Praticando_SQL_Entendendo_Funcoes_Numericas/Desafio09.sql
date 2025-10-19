-- Consulta para calcular distância euclidiana entre a sede da CuboComfort e cada cliente
-- e definir se a entrega será gratuita ou cobrada

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
             ) * 111.19 < 60 THEN 'Entrega gratuita'
        ELSE 'Cobrar entrega'
    END AS StatusEntrega
FROM TabelaPedidos;
