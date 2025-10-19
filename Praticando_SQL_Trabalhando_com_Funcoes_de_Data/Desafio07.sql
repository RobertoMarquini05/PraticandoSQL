-- A equipe de suporte quer saber a idade atual dos clientes com base na coluna DataNascimento.
-- Crie uma consulta SQL que calcule a idade dos clientes.

SELECT Nome,
       TIMESTAMPDIFF(YEAR, DataNascimento, CURDATE()) AS Idade
FROM TabelaClientes;
