-- A equipe de análise deseja avaliar quais departamentos possuem um nível salarial médio acima de R$ 4.500.
-- Essa informação ajudará na alocação de orçamento e na identificação de áreas que demandam maior investimento em remuneração.
-- Crie duas CTEs: uma para calcular a média de salários por departamento e outra para filtrar os departamentos com média acima de R$ 4.500.

WITH MediaSalarialPorDepartamento AS (
    SELECT id_departamento, AVG(Salario) AS MediaSalarial
    FROM TabelaColaboradores
    GROUP BY id_departamento
),
DepartamentosAcimaDe4500 AS (
    SELECT id_departamento, MediaSalarial
    FROM MediaSalarialPorDepartamento
    WHERE MediaSalarial > 4500
)
SELECT *
FROM DepartamentosAcimaDe4500;
