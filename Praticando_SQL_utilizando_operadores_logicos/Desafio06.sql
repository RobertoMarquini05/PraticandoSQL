-- A equipe de crédito precisa identificar empréstimos concedidos entre R$ 10.000 e R$ 50.000 nas categorias "Consignado" e "Automóvel" 
-- para avaliar a performance dessas linhas de crédito.
-- Liste os empréstimos que possuem valores entre R$ 10.000 e R$ 50.000 e pertencem às categorias "Consignado" ou "Automóvel".

SELECT id_emprestimo, Tipo, Valor
FROM TabelaEmprestimo
WHERE Valor BETWEEN 10000 AND 50000
  AND Tipo IN ('Consignado', 'Automóvel');
