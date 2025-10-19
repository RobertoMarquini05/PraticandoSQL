-- Listar todos os empréstimos ativos no sistema, considerando que a coluna Status indica se o empréstimo está ativo (1 = ativo, 0 = inativo).

SELECT *
FROM TabelaEmprestimo
WHERE Status = 1;
