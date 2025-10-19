-- A empresa está empenhada em otimizar a eficiência operacional e melhorar a satisfação do cliente através de uma distribuição equilibrada de trabalho entre seus colaboradores. A consulta deve listar os clientes de São Paulo e os colaboradores responsáveis por eles, incluindo os departamentos aos quais esses colaboradores pertencem.

SELECT
    c.Nome AS NomeCliente,
    c.Cidade,
    col.Nome AS NomeColaborador,
    d.Nome AS NomeDepartamento
FROM Clientes c
JOIN ColaboradoresClientes cc ON c.id_cliente = cc.id_cliente
JOIN Colaboradores col ON cc.id_colaborador = col.id_colaborador
JOIN Departamentos d ON col.id_departamento = d.id_departamento
WHERE c.Cidade = 'São Paulo';
