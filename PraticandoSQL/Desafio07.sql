-- Você quer visualizar os colaboradores organizados em ordem alfabética de seus nomes. 
-- Use a tabela TabelaColaboradores e ordene os resultados pela coluna NomeColaborador.

SELECT NomeColaborador, Cargo
FROM TabelaColaboradores
ORDER BY NomeColaborador ASC;