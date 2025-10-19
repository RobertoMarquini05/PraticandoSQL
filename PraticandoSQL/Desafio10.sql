-- O gerente financeiro quer identificar rapidamente os dois colaboradores com os maiores salários acima de R$5.000 
-- para revisar uma proposta de aumento. Utilize a tabela TabelaColaboradores e crie uma consulta que ordene os colaboradores 
-- por seus IDs em ordem decrescente, listando apenas os dois primeiros registros que atendam ao critério de salário.

SELECT TOP 2 *
FROM TabelaColaboradores
WHERE Salario > 5000
ORDER BY id_colaborador DESC;
