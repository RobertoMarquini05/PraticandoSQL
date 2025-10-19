-- O gerente da loja quer analisar os maiores empréstimos realizados. 
-- Considere que a tabela de produtos se chama TabelaEmprestimo e que ela possui uma coluna Valor. 
-- Crie uma consulta para listar apenas os empréstimos cujo valor seja maior ou igual a R$10.000.

SELECT *
FROM TabelaEmprestimo
WHERE Valor >= 10000;