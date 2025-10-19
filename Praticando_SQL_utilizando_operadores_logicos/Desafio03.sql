-- A equipe financeira precisa revisar todos os empréstimos concedidos ao longo do primeiro trimestre de 2023 para garantir conformidade regulatória e analisar padrões de concessão.
-- Liste todos os empréstimos concedidos entre 01/01/2023 e 31/03/2023.

SELECT id_emprestimo, DataInicio, Tipo, Valor
FROM TabelaEmprestimo
WHERE DataInicio BETWEEN '2023-01-01' AND '2023-03-31';
