-- Para otimizar o acompanhamento financeiro e melhorar a gestão de riscos, a empresa deseja um relatório que vincule os clientes não apenas aos seus empréstimos, mas também aos pagamentos realizados para esses empréstimos. Este relatório ajudará a equipe financeira a entender melhor a saúde financeira dos clientes e a eficácia das cobranças.

SELECT
    c.Nome AS NomeCliente,
    e.Tipo AS TipoEmprestimo,
    e.Valor AS ValorEmprestimo,
    p.DataPagamento,
    p.Valor AS ValorPago
FROM Clientes c
LEFT JOIN Emprestimos e ON c.id_cliente = e.id_cliente
LEFT JOIN Pagamentos p ON e.id_emprestimo = p.id_emprestimo
ORDER BY c.Nome;
