-- A equipe de crédito deseja analisar pagamentos de empréstimos que ocorreram ao longo de 2023 e tiveram valores entre R$ 500 e R$ 1.000. 
-- Essas informações serão utilizadas para entender a capacidade de pagamento dos clientes e possíveis ajustes em políticas de crédito.
-- Liste os pagamentos realizados no ano de 2023 com valores entre R$ 500 e R$ 1.000.

SELECT id_pagamento, DataPagamento, Valor, Status
FROM TabelaPagamentos
WHERE DataPagamento BETWEEN '2023-01-01' AND '2023-12-31'
  AND Valor BETWEEN 500 AND 1000;
