-- Você está criando um sistema para gerar códigos personalizados de identificação de clientes. 
-- Esses códigos serão usados em contratos de empréstimos e outras interações com o banco. 
-- Eles precisam ser baseados nos três primeiros caracteres do nome e CPF do cliente, garantindo unicidade.
-- Extraia os três primeiros caracteres do nome e CPF de cada cliente para formar um identificador único.

SELECT CONCAT(SUBSTRING(Nome, 1, 3), SUBSTRING(CPF, 1, 3)) AS Identificador
FROM TabelaClientes;
