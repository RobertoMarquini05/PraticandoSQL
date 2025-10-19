-- Consulta para exibir cada colaborador com o departamento ao qual está vinculado

SELECT 
    c.Nome AS NomeColaborador,
    d.Nome AS NomeDepartamento
FROM Colaboradores c
JOIN Departamentos d ON c.id_departamento = d.id_departamento;
