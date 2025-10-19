-- A liderança da DataFinance solicitou um relatório detalhado dos responsáveis pelos departamentos da empresa. 
-- O setor de Recursos Humanos precisa exibir o nome completo do colaborador, seguido de seu cargo no departamento, em uma única coluna.
-- Apresente essas informações de maneira clara e organizada.

SELECT CONCAT(NomeColaborador, ' - ', Cargo) AS Nome_Completo_Cargo
FROM TabelaColaboradores;
