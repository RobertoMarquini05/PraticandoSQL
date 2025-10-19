-- Durante uma auditoria, o setor financeiro identificou inconsistências nos registros de tipos de empréstimos. 
-- Alguns registros possuem espaços extras no início ou no final dos valores, causando problemas em relatórios e sistemas integrados.
-- Corrija essas inconsistências removendo os espaços extras na coluna Tipo.

SELECT id_emprestimo, TRIM(Tipo) AS Tipo
FROM TabelaEmprestimo;
