-- A equipe de marketing deseja criar uma campanha exclusiva para clientes considerados financeiramente confiáveis,
-- ou seja, aqueles com pontuação de crédito superior a 700. Para isso, será necessário listar esses clientes.
-- Crie uma CTE para identificar os clientes que possuem uma pontuação de crédito acima de 700.

WITH ClientesConfiaveis AS (
    SELECT id_cliente, Nome, Pontuacao
    FROM TabelaClientes
    WHERE Pontuacao > 700
)
SELECT *
FROM ClientesConfiaveis;
