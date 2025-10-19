-- A equipe financeira precisa treinar a geração de relatórios que envolvem operações com datas no banco de dados.
-- Na tabela TabelaEmprestimo, calcule quantos dias existem entre a DataInicio e a data correspondente ao término do empréstimo (DataInicio + Prazo).
-- Embora a coluna Prazo já contenha o número de dias, use funções de data para praticar a manipulação de datas no SQL.

SELECT id_emprestimo, 
       DATEDIFF(DAY, DataInicio, DATEADD(DAY, Prazo, DataInicio)) AS DiasTotais
FROM TabelaEmprestimo;
