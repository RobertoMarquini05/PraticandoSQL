-- A gerência deseja uma lista detalhada que mostre o nome de cada colaborador, seu email e o nome do departamento ao qual pertence.

SELECT 
    c.Nome AS NomeColaborador,
    d.Nome AS NomeDepartamento,
    c.Email
FROM Colaboradores c
JOIN Departamentos d ON c.id_departamento = d.id_departamento;
