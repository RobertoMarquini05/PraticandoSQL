-- Calcule o próximo pagamento de cada empréstimo na tabela TabelaEmprestimo,
-- considerando um intervalo fixo de 30 dias a partir da DataInicio.

SELECT id_emprestimo,
       DataInicio,
       DATEADD(DAY, 30, DataInicio) AS ProximoPagamento
FROM TabelaEmprestimo;