-- Consulta para listar clientes com pontuação de crédito acima da média
SELECT 
    Nome AS Cliente,
    Pontuacao
FROM 
    Clientes
WHERE 
    Pontuacao > (
        SELECT AVG(Pontuacao) 
        FROM Clientes
    );
