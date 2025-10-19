-- O gerente de produtos precisa analisar o volume de empréstimos concedidos especificamente para as categorias "Pessoal" e "Imobiliário", 
-- pois essas modalidades são estratégicas para a instituição.
-- Liste os empréstimos que pertencem às categorias "Pessoal" ou "Imobiliário".

SELECT id_emprestimo, Tipo, Valor
FROM TabelaEmprestimo
WHERE Tipo IN ('Pessoal', 'Imobiliário');
