-- Para melhorar o acompanhamento e a gestão dos relacionamentos com clientes, a empresa deseja um relatório que detalhe quais colaboradores estão responsáveis por cada cliente. Importante também é identificar colaboradores que ainda não possuem clientes atribuídos, para possível redistribuição de tarefas ou para fins de treinamento.

SELECT 
    col.Nome AS NomeColaborador,
    cli.Nome AS NomeCliente
FROM Colaboradores col
LEFT JOIN Clientes cli ON col.id_colaborador = cli.id_colaborador_responsavel
ORDER BY col.Nome, cli.Nome;
