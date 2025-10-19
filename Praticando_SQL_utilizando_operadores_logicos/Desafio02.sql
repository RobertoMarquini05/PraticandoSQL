-- O gerente de contas deseja oferecer benefícios exclusivos para clientes que se encaixam em critérios específicos: 
-- ter nascido antes de 1990 ou residir no estado de São Paulo (SP). Esses clientes serão alvo de uma campanha especial de fidelização.
-- Liste os clientes que nasceram antes de 1990 ou que residem no estado de São Paulo.

SELECT Nome, DataNascimento, Estado
FROM TabelaClientes
WHERE DataNascimento < '1990-01-01'
   OR Estado = 'SP';
