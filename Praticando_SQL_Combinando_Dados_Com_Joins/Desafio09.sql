-- A empresa deseja entender melhor o comportamento dos empréstimos de seus clientes em relação à média geral de valores de empréstimo. O objetivo é identificar clientes cujos valores de empréstimo se destacam, seja por estarem significativamente acima ou abaixo da média geral, para possíveis revisões de políticas de crédito ou ações de marketing específicas.

SELECT 
    c.Nome AS NomeCliente,
    e.Valor AS ValorEmprestimo
FROM Clientes c
JOIN Emprestimos e ON c.id_cliente = e.id_cliente
WHERE e.Valor > (SELECT AVG(Valor) FROM Emprestimos);
