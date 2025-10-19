-- A empresa precisa de um relatório detalhado sobre os dados de contato dos clientes para melhorar as estratégias de comunicação. A informação do telefone é essencial para a equipe de marketing, e sua tarefa é assegurar que possamos definir quem precisa de atualizações nos registros de contato.

SELECT 
    c.id_cliente,
    c.Nome,
    t.Telefone
FROM Clientes c
LEFT JOIN Telefones t ON c.id_cliente = t.id_cliente
ORDER BY c.id_cliente;
