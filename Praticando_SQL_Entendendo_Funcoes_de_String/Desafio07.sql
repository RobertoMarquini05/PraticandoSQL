-- Aprimorar a apresentação dos dados de empréstimos para facilitar a leitura e a interpretação rápida das informações essenciais.
-- Combine as informações de tipo, status e valor do empréstimo em uma única string formatada para cada registro.

SELECT CONCAT(Tipo, ' - ', Status, ' - $', Valor) AS DescricaoEmprestimo
FROM TabelaEmprestimo;
