-- A tarefa de revisar os relatórios internos da DataFinance faz parte de uma atualização nos processos de gestão. 
-- Durante uma reunião, foi decidido que os nomes dos departamentos precisam ser simplificados para melhorar a clareza nos relatórios. 
-- Substitua "Recursos Humanos" por "RH" nos nomes exibidos.

SELECT CASE 
         WHEN NomeDepartamento = 'Recursos Humanos' THEN 'RH'
         ELSE NomeDepartamento
       END AS Nome_Atualizado
FROM TabelaDepartamentos;
