-- A organização dos registros de pagamentos está sendo aprimorada pela equipe financeira para tornar o sistema mais eficiente. 
-- Cada pagamento deve receber um identificador único baseado no status e no ID do pagamento. 
-- Por exemplo, pagamentos com status "Pago" geram identificadores como "PagP01".
-- Gere um identificador único para cada pagamento, exibindo o status e o ID concatenados.

SELECT id_pagamento,
       CONCAT(
           CASE 
               WHEN Status = 'Pago' THEN 'Pag'
               WHEN Status = 'Pendente' THEN 'Pen'
               ELSE 'Out' 
           END,
           id_pagamento
       ) AS IdentificadorPagamento
FROM TabelaPagamentos;
