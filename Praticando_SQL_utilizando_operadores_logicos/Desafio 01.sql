-- O setor de Recursos Humanos deseja mapear os colaboradores que possuem salários acima da média para avaliar políticas de remuneração e retenção. 
-- O foco inicial será no departamento de Tecnologia da Informação (TI), cujo identificador é D03, onde os salários tendem a ser mais elevados.
-- Liste os colaboradores do departamento de TI que possuem um salário superior a R$ 4.500.

SELECT *
FROM TabelaColaboradores
WHERE id_departamento = 'D03' 
  AND Salario > 4500;
