-- Durante a validação de cadastros de clientes, foi identificado que alguns nomes estão muito curtos ou longos, 
-- o que pode causar problemas nos contratos ou nos sistemas integrados. 
-- O setor de qualidade solicitou uma análise que mostrasse o nome do cliente e o comprimento de cada registro.
-- Crie uma consulta que retorne os nomes dos clientes e o número de caracteres de cada um.

SELECT Nome, LENGTH(Nome) AS Comprimento
FROM TabelaClientes;