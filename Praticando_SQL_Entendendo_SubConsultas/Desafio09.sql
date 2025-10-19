-- Consulta para listar clientes com suas contas e respectivos saldos
SELECT
    c.Nome AS Cliente,
    a.NumeroConta AS Conta,
    (SELECT Saldo 
     FROM Contas co 
     WHERE co.NumeroConta = a.NumeroConta) AS Saldo
FROM 
    Clientes c
JOIN 
    Contas a ON c.IdCliente = a.IdCliente;
